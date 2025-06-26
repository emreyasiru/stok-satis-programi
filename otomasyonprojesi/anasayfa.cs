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
    public partial class anasayfa : Form
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public anasayfa()
        {
            InitializeComponent();
           
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

        private void personelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            personel pers = new personel();
            this.Hide();
            pers.Show();
        }


       

        private void anasayfa_Load(object sender, EventArgs e)
        {
            


            menuStrip1.Renderer = new MyRenderer();
            menuStrip1.BackColor = Color.LightBlue;
            menuStrip1.ForeColor = Color.Black;
            menuStrip1.Font = new Font("Segoe UI", 11, FontStyle.Bold);

            if (this.GetType() == typeof(anasayfa))
            {
                logobereket.Visible = true;
            }
            else
            {
                logobereket.Visible = false;
            }
        }
        
        private void ürünlerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            urunler urun = new urunler();
            this.Hide();
            urun.Show();
        }

        private void anasayfaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ANASAYFA1 ana1= new ANASAYFA1();
            this.Hide();
            ana1.Show();
        }

        private void satışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            satış sat = new satış();
            this.Hide();
            sat.Show();
        }

        private void çıkışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void satışRapolarıToolStripMenuItem_Click(object sender, EventArgs e)
        {
            satis_rapoları satis_rap= new satis_rapoları();
            this.Hide();
            satis_rap.Show();
        }
    }
}
