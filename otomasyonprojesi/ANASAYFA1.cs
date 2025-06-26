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
    public partial class ANASAYFA1 : Form
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public ANASAYFA1()
        {
            InitializeComponent();
        }

        private void ANASAYFA1_Load(object sender, EventArgs e)
        {
            KasaTutariniGoster();

            menuStrip1.Renderer = new MyRenderer();
            menuStrip1.BackColor = Color.LightBlue;
            menuStrip1.ForeColor = Color.Black;
            menuStrip1.Font = new Font("Segoe UI", 11, FontStyle.Bold);
        }
        private void KasaTutariniGoster()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT kasa_tutari FROM kasa WHERE id = 1", conn);
                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    decimal kasaTutar = Convert.ToDecimal(result);
                    labelKasaTutar.Text = "₺" + kasaTutar.ToString("N2");
                }
            }
        }


        private void anasayfaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ANASAYFA1 an1 = new ANASAYFA1();
            this.Hide();
            an1.Show();
        }

        private void üToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tedarikciler ted = new tedarikciler();
            this.Hide();
            ted.Show();
        }

        private void kategorilerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            kategoriler kat = new kategoriler();
            this.Hide();
            kat.Show();
        }

        private void ürünlerToolStripMenuItem_Click(object sender, EventArgs e)
        {

            urunler urun = new urunler();
            this.Hide();
            urun.Show();


        }

        private void personelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            personel pers = new personel();
            this.Hide();
            pers.Show();
        }

        private void satışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            satış sat = new satış();
            this.Hide();
            sat.Show();

        }

        private void satışRapolarıToolStripMenuItem_Click(object sender, EventArgs e)
        {
            satis_rapoları satrap = new satis_rapoları();
            this.Hide();
            satrap.Show();
        }

        private void çıkışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
