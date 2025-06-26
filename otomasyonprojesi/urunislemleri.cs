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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace otomasyonprojesi
{
    public partial class urunislemleri : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public urunislemleri()
        {
            InitializeComponent();
        }

        private void vericek()
        {
            string verial = @"
                SELECT 
                u.id,
                u.ürün_adı,
                u.barkod,
                u.stok_miktarı,
                u.alış_fiyatı,
                u.satış_fiyatı,
                k.kategori_adı,
                t.tedarikci_adi AS tedarikçi_firma
                FROM 
                    urunler u
                JOIN 
                    kategori k ON u.kategori_adı = k.id
                JOIN 
                    tedarikciler t ON u.tedarikçi_firma = t.id";

            DataTable table = veriler.vericek(verial);
            dataurunislemleri.DataSource = table;
        }
        private void urunislemleri_Load(object sender, EventArgs e)
        {
            vericek();
            kategori_doldur();
            tedarikcifirma_doldur();

        }
        private void kategori_doldur()
        {
            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();
                string sorgu = "SELECT id, kategori_adı FROM kategori";
                SqlDataAdapter da = new SqlDataAdapter(sorgu, baglan);
                DataTable dt = new DataTable();
                da.Fill(dt);

                combokategori.DataSource = dt;
                combokategori.DisplayMember = "kategori_adı";
                combokategori.ValueMember = "id";
                combokategori.SelectedIndex = -1;
            }
        }
        private void tedarikcifirma_doldur()
        {
            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();
                string sorgu = "SELECT id, tedarikci_adi FROM tedarikciler";
                SqlDataAdapter da = new SqlDataAdapter(sorgu, baglan);
                DataTable dt = new DataTable();
                da.Fill(dt);

                combotedfirma.DataSource = dt;
                combotedfirma.DisplayMember = "tedarikci_adi";
                combotedfirma.ValueMember = "id";
                combotedfirma.SelectedIndex = -1;
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txturunadi.Text) ||
                string.IsNullOrWhiteSpace(txtbarkod.Text) ||
                string.IsNullOrWhiteSpace(txtstokmiktari.Text) ||
                string.IsNullOrWhiteSpace(txtalisfiyati.Text) ||
                combokategori.SelectedIndex == -1 ||
                combotedfirma.SelectedIndex == -1)
            {
                MessageBox.Show("Lütfen tüm alanları doldurunuz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();

                string sorgu = @"
                                INSERT INTO urunler (ürün_adı, barkod, stok_miktarı, alış_fiyatı,satış_fiyatı, kategori_adı, tedarikçi_firma)
                                VALUES (@ad, @barkod, @stok, @alis,@satis, @kategori, @tedarikci)";

                using (SqlCommand komut = new SqlCommand(sorgu, baglan))
                {
                    komut.Parameters.AddWithValue("@ad", txturunadi.Text);
                    komut.Parameters.AddWithValue("@barkod", txtbarkod.Text);
                    komut.Parameters.AddWithValue("@stok", Convert.ToInt32(txtstokmiktari.Text));
                    komut.Parameters.AddWithValue("@alis", Convert.ToDecimal(txtalisfiyati.Text));
                    komut.Parameters.AddWithValue("@satis", Convert.ToDecimal(txtalisfiyati.Text));
                    komut.Parameters.AddWithValue("@kategori", Convert.ToInt32(combokategori.SelectedValue));
                    komut.Parameters.AddWithValue("@tedarikci", Convert.ToInt32(combotedfirma.SelectedValue));

                    komut.ExecuteNonQuery();
                }

                MessageBox.Show("Ürün başarıyla eklendi.");
                decimal toplamAlisFiyati = Convert.ToDecimal(txtalisfiyati.Text) * Convert.ToInt32(txtstokmiktari.Text);
                using (SqlCommand kasaKomut = new SqlCommand("UPDATE kasa SET kasa_tutari = kasa_tutari - @alis", baglan))
                {
                    kasaKomut.Parameters.AddWithValue("@alis", toplamAlisFiyati);
                    kasaKomut.ExecuteNonQuery();
                }

                vericek();

            }
        }

        private void btnsil_Click(object sender, EventArgs e)
        {
            int secilenId = Convert.ToInt32(dataurunislemleri.CurrentRow.Cells["id"].Value);

            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();

                string sorgu = "DELETE FROM urunler WHERE id = @id";

                using (SqlCommand komut = new SqlCommand(sorgu, baglan))
                {
                    komut.Parameters.AddWithValue("@id", secilenId);
                    komut.ExecuteNonQuery();
                }

                MessageBox.Show("Ürün başarıyla silindi.");
                vericek();
            }
        }
        private void dataurunislemleri_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Convert.ToInt32(dataurunislemleri.CurrentRow.Cells["id"].Value);
            lblid.Text = id.ToString();

            txturunadi.Text = dataurunislemleri.CurrentRow.Cells["ürün_adı"].Value.ToString();
            txtbarkod.Text = dataurunislemleri.CurrentRow.Cells["barkod"].Value.ToString();
            txtstokmiktari.Text = dataurunislemleri.CurrentRow.Cells["stok_miktarı"].Value.ToString();
            txtalisfiyati.Text = dataurunislemleri.CurrentRow.Cells["alış_fiyatı"].Value.ToString();
            txtsatisfiyati.Text = dataurunislemleri.CurrentRow.Cells["satış_fiyatı"].Value.ToString();
            combokategori.Text = dataurunislemleri.CurrentRow.Cells["kategori_adı"].Value.ToString();
            combotedfirma.Text = dataurunislemleri.CurrentRow.Cells["tedarikçi_firma"].Value.ToString();
        }

        private void btnguncelle_Click(object sender, EventArgs e)
        {
            int secilenId = Convert.ToInt32(lblid.Text); 

            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();

                string sorgu = @"
                        UPDATE urunler
                        SET ürün_adı = @ad,
                            barkod = @barkod,
                            stok_miktarı = @stok,
                            alış_fiyatı = @alis,
                            satış_fiyatı=@satis,
                            kategori_adı = @kategori,
                            tedarikçi_firma = @tedarikci
                        WHERE id = @id";

                using (SqlCommand komut = new SqlCommand(sorgu, baglan))
                {
                    komut.Parameters.AddWithValue("@ad", txturunadi.Text);
                    komut.Parameters.AddWithValue("@barkod", txtbarkod.Text);
                    komut.Parameters.AddWithValue("@stok", Convert.ToInt32(txtstokmiktari.Text));
                    komut.Parameters.AddWithValue("@alis", Convert.ToDecimal(txtalisfiyati.Text));
                    komut.Parameters.AddWithValue("@satis", Convert.ToDecimal(txtsatisfiyati.Text));
                    komut.Parameters.AddWithValue("@kategori", Convert.ToInt32(combokategori.SelectedValue));
                    komut.Parameters.AddWithValue("@tedarikci", Convert.ToInt32(combotedfirma.SelectedValue));
                    komut.Parameters.AddWithValue("@id", secilenId);

                    komut.ExecuteNonQuery();
                }

                MessageBox.Show("Ürün güncellendi.");
                vericek(); 
            }
        }
    }
}
