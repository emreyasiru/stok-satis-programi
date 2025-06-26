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
    public partial class satis_rapoları : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public satis_rapoları()
        {
            InitializeComponent();
        }

        private void satis_rapoları_Load(object sender, EventArgs e)
        {
            listViewDetay.Visible = false;
            vericek();
            ListViewSutunlariHazirla();

        }
        private void ListViewSutunlariHazirla()
        {
            listViewDetay.View = View.Details;
            listViewDetay.FullRowSelect = true;
            listViewDetay.GridLines = true;
            listViewDetay.Columns.Clear();

            listViewDetay.Columns.Add("Ürün Adı", 150);
            listViewDetay.Columns.Add("Miktar", 80, HorizontalAlignment.Right);
            listViewDetay.Columns.Add("Tutar", 100, HorizontalAlignment.Right);   
            listViewDetay.Columns.Add("Barkod", 120);
            listViewDetay.Columns.Add("Satış Tarihi", 140);
        }


        private void vericek()
        {
            string verial = @"
                SELECT 
                    fatura_no,
                    STRING_AGG(urun_adi, ', ')     AS urun_adlari,
                    STRING_AGG(barkod, ', ')       AS barkodlar,
                    SUM(CONVERT(int, miktar))      AS toplam_miktar,
                    SUM(CONVERT(decimal(18,2), fiyat) * CONVERT(int, miktar)) AS toplam_tutar,
                    MIN(satis_tarihi)              AS satis_tarihi
                FROM satis_kayitlari
                WHERE fatura_no IS NOT NULL
                GROUP BY fatura_no
                ORDER BY satis_tarihi DESC;";

            DataTable dt = veriler.vericek(verial);
            datasatisrapor.DataSource = dt;
        }

        private void btnDetayGoster_Click(object sender, EventArgs e)
        {
            if (datasatisrapor.CurrentRow == null)
            {
                MessageBox.Show("Lütfen önce bir fatura seçin.");
                return;
            }

            int faturaNo = Convert.ToInt32(datasatisrapor.CurrentRow.Cells["fatura_no"].Value);
            listViewDetay.Items.Clear();

            int toplamMiktar = 0;
            decimal toplamTutar = 0m;

            using (SqlConnection conn = new SqlConnection(db))
            using (SqlCommand cmd = new SqlCommand(
                @"SELECT urun_adi, miktar, fiyat, barkod, satis_tarihi 
          FROM satis_kayitlari 
          WHERE fatura_no = @fn AND urun_adi <> 'TOPLAM'", conn))
            {
                cmd.Parameters.AddWithValue("@fn", faturaNo);
                conn.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        string urunAdi = dr["urun_adi"].ToString();
                        int miktar = Convert.ToInt32(dr["miktar"]);
                        decimal fiyat = Convert.ToDecimal(dr["fiyat"]);
                        decimal tutar = fiyat * miktar;           // <— kalem tutarı
                        string barkod = dr["barkod"].ToString();
                        DateTime tarih = Convert.ToDateTime(dr["satis_tarihi"]);

                        var item = new ListViewItem(urunAdi);
                        item.SubItems.Add(miktar.ToString());
                        item.SubItems.Add(tutar.ToString("N2"));    // <— tutarı ekliyoruz
                        item.SubItems.Add(barkod);
                        item.SubItems.Add(tarih.ToString("g"));

                        listViewDetay.Items.Add(item);

                        toplamMiktar += miktar;
                        toplamTutar += tutar;                     // <— toplama da tutarı ekliyoruz
                    }
                }
            }

            // En alttaki toplam satırı
            var toplamSatir = new ListViewItem("TOPLAM");
            toplamSatir.SubItems.Add(toplamMiktar.ToString());
            toplamSatir.SubItems.Add(toplamTutar.ToString("N2"));
            toplamSatir.SubItems.Add("");
            toplamSatir.SubItems.Add("");
            toplamSatir.BackColor = Color.LightGray;
            toplamSatir.Font = new Font(listViewDetay.Font, FontStyle.Bold);
            listViewDetay.Items.Add(toplamSatir);
            listViewDetay.Visible = true;
        }


        private void btnfaturayisil_Click(object sender, EventArgs e)
        {
            if (datasatisrapor.CurrentRow == null)
            {
                MessageBox.Show("Lütfen silmek istediğiniz bir faturayı seçin.");
                return;
            }

            int faturaNo = Convert.ToInt32(datasatisrapor.CurrentRow.Cells["fatura_no"].Value);

            using (SqlConnection conn = new SqlConnection(db))
            using (SqlCommand cmd = new SqlCommand("DELETE FROM satis_kayitlari WHERE fatura_no = @faturaNo", conn))
            {
                cmd.Parameters.AddWithValue("@faturaNo", faturaNo);
                conn.Open();
                cmd.ExecuteNonQuery();
            }

            MessageBox.Show("Fatura başarıyla silindi.");
            vericek(); // tabloyu yenile
            listViewDetay.Items.Clear(); // detay görünümünü temizle
        }
    }
}
