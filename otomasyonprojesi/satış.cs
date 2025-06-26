using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
namespace otomasyonprojesi
{
    public partial class satış : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public satış()
        {
            InitializeComponent();
        }
        private void vericek()
        {
            string verial = "SELECT * FROM urunler";
            DataTable dt = veriler.vericek(verial);
            datasatis.DataSource = dt;
        }

        private void satış_Load(object sender, EventArgs e)
        {

            vericek();

            datasatislistesi.Columns.Clear();

            datasatislistesi.Columns.Add("urunadi", "Ürün Adı");
            datasatislistesi.Columns.Add("fiyat", "Satış Fiyatı");
            datasatislistesi.Columns.Add("miktar", "Miktar");
            datasatislistesi.Columns.Add("barkod", "Barkod");
        }
        private void datasatis_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Convert.ToInt32(datasatis.CurrentRow.Cells["id"].Value);
            lblid.Text = id.ToString();

            txturunadi.Text = datasatis.CurrentRow.Cells["ürün_adı"].Value.ToString();
            txtbarkod.Text = datasatis.CurrentRow.Cells["barkod"].Value.ToString();
            txtmiktar.Text = datasatis.CurrentRow.Cells["stok_miktarı"].Value.ToString();
            txtsatisfiyati.Text = datasatis.CurrentRow.Cells["satış_fiyatı"].Value.ToString();
            txtmiktar.Text = "";


        }

        private void btnsatis_Click(object sender, EventArgs e)
        {
            bool urunVarMi = false;
            bool basariylaSatilanUrunVar = false;

            // Satış listesinde ürün var mı kontrolü
            foreach (DataGridViewRow row in datasatislistesi.Rows)
            {
                if (!row.IsNewRow)
                {
                    urunVarMi = true;
                    break;
                }
            }

            if (!urunVarMi)
            {
                MessageBox.Show("Satış listesi boş. Lütfen önce ürün ekleyin.");
                return;
            }

            // Toplam miktar ve toplam fiyatı hesapla
            int toplamMiktar = 0;
            decimal toplamFiyat = 0m;

            foreach (DataGridViewRow row in datasatislistesi.Rows)
            {
                if (row.IsNewRow) continue;

                int miktar = Convert.ToInt32(row.Cells[2].Value);
                decimal fiyat = Convert.ToDecimal(row.Cells[1].Value);

                toplamMiktar += miktar;
                toplamFiyat += fiyat * miktar;
            }

            using (SqlConnection conn = new SqlConnection(db))
            {
                conn.Open();

                // 1) "TOPLAM" satırını ekle ve fatura_no değerini al
                SqlCommand cmdInsertToplam = new SqlCommand(@"
            INSERT INTO satis_kayitlari (urun_adi, barkod, miktar, fiyat, satis_tarihi) 
            VALUES ('TOPLAM', '', @toplamMiktar, @toplamFiyat, @tarih);
            SELECT SCOPE_IDENTITY();", conn);

                cmdInsertToplam.Parameters.AddWithValue("@toplamMiktar", toplamMiktar);
                cmdInsertToplam.Parameters.AddWithValue("@toplamFiyat", toplamFiyat);
                cmdInsertToplam.Parameters.AddWithValue("@tarih", DateTime.Now);
              


                int faturaNo = Convert.ToInt32(cmdInsertToplam.ExecuteScalar());

                // 2) Her ürün için stok kontrolü ve satış kaydı ekleme
                foreach (DataGridViewRow row in datasatislistesi.Rows)
                {
                    if (row.IsNewRow) continue;

                    string urunAdi = row.Cells[0].Value.ToString();
                    decimal fiyat = Convert.ToDecimal(row.Cells[1].Value);
                    int miktar = Convert.ToInt32(row.Cells[2].Value);
                    string barkod = row.Cells[3].Value.ToString();

                    // Stok miktarını kontrol et
                    int mevcutStok = 0;
                    SqlCommand cmdStok = new SqlCommand("SELECT stok_miktarı FROM urunler WHERE ürün_adı = @ad", conn);
                    cmdStok.Parameters.AddWithValue("@ad", urunAdi);
                    SqlDataReader dr = cmdStok.ExecuteReader();

                    if (dr.Read())
                    {
                        mevcutStok = Convert.ToInt32(dr["stok_miktarı"]);
                    }
                    dr.Close();

                    if (miktar > mevcutStok)
                    {
                        MessageBox.Show($"{urunAdi} için yeterli stok yok. Satış yapılmadı.");
                        continue;
                    }

                    // Stok güncelle
                    SqlCommand cmdUpdate = new SqlCommand("UPDATE urunler SET stok_miktarı = stok_miktarı - @miktar WHERE ürün_adı = @ad", conn);
                    cmdUpdate.Parameters.AddWithValue("@miktar", miktar);
                    cmdUpdate.Parameters.AddWithValue("@ad", urunAdi);
                    cmdUpdate.ExecuteNonQuery();


                    
                    // Satış kaydını fatura_no ile ekle
                    SqlCommand cmdInsert = new SqlCommand(@"
                INSERT INTO satis_kayitlari (urun_adi, barkod, miktar, fiyat, satis_tarihi, fatura_no) 
                VALUES (@urunadi, @barkod, @miktar, @fiyat, @tarih, @faturaNo)", conn);

                    cmdInsert.Parameters.AddWithValue("@urunadi", urunAdi);
                    cmdInsert.Parameters.AddWithValue("@barkod", barkod);
                    cmdInsert.Parameters.AddWithValue("@miktar", miktar);
                    cmdInsert.Parameters.AddWithValue("@fiyat", fiyat);
                    cmdInsert.Parameters.AddWithValue("@tarih", DateTime.Now);
                    cmdInsert.Parameters.AddWithValue("@faturaNo", faturaNo);

                    cmdInsert.ExecuteNonQuery();

                    basariylaSatilanUrunVar = true;

                }
                    
            }

            if (basariylaSatilanUrunVar)
            {

                using (SqlConnection conn = new SqlConnection(db))
                {
                    conn.Open();
                    SqlCommand cmdKasaGuncelle = new SqlCommand("UPDATE kasa SET kasa_tutari = kasa_tutari + @eklenecek WHERE id = 1", conn);
                    cmdKasaGuncelle.Parameters.AddWithValue("@eklenecek", toplamFiyat);
                    cmdKasaGuncelle.ExecuteNonQuery();
                }
                MessageBox.Show("Ürünler başarıyla satıldı.");
                datasatislistesi.Rows.Clear();
                vericek();
            }
        }








        private void btnara_Click_1(object sender, EventArgs e)
        {
            string urunAdi = txtara.Text.Trim();

            if (string.IsNullOrWhiteSpace(urunAdi))
            {
                MessageBox.Show("Lütfen aramak istediğiniz ürünün adını tam olarak giriniz.");
                return;
            }

            string sorgu = "SELECT * FROM urunler WHERE ürün_adı = @adi";

            using (SqlConnection conn = new SqlConnection(db))
            {
                SqlCommand cmd = new SqlCommand(sorgu, conn);
                cmd.Parameters.AddWithValue("@adi", urunAdi);

                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblid.Text = dr["id"].ToString();
                    txturunadi.Text = dr["ürün_adı"].ToString();
                    txtbarkod.Text = dr["barkod"].ToString();

                    
                    txtmiktar.Text = "";
                }
                else
                {
                    MessageBox.Show("Tam adla eşleşen ürün bulunamadı.");
                }

                dr.Close();
            }
        }



        private void btnlisteyeekle_Click_1(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txturunadi.Text) ||
                string.IsNullOrWhiteSpace(txtbarkod.Text) ||
                string.IsNullOrWhiteSpace(txtmiktar.Text) ||
                string.IsNullOrWhiteSpace(txtsatisfiyati.Text))
            {
                MessageBox.Show("Lütfen tüm alanları doldurun.");
                return;
            }

            
            if (!int.TryParse(txtmiktar.Text, out int miktar) || miktar <= 0)
            {
                MessageBox.Show("Geçerli bir miktar girin.");
                return;
            }

            if (!decimal.TryParse(txtsatisfiyati.Text, out decimal fiyat) || fiyat <= 0)
            {
                MessageBox.Show("Geçerli bir satış fiyatı girin.");
                return;
            }

            datasatislistesi.Rows.Add(
                txturunadi.Text,
                txtsatisfiyati.Text, 
                txtmiktar.Text,
                txtbarkod.Text
            );


            
            txturunadi.Clear();
            txtbarkod.Clear();
            txtmiktar.Clear();
            txtsatisfiyati.Clear();
            txtara.Text = "";


        }

        private void btnsil_Click(object sender, EventArgs e)
        {
            if (datasatislistesi.SelectedRows.Count > 0)
            {
                foreach (DataGridViewRow row in datasatislistesi.SelectedRows)
                {
                    if (!row.IsNewRow)
                    {
                        datasatislistesi.Rows.Remove(row);
                    }
                }
            }
            else
            {
                MessageBox.Show("Lütfen silmek istediğiniz satırı seçin.");
            }
        }
    }
}
