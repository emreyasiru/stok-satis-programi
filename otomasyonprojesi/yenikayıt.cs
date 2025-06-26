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
    public partial class yenikayıt : Form
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public yenikayıt()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 giris = new Form1();
            this.Hide();
            giris.Show();
        }

        private void btnkaydet_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtkullaniciadi.Text.Trim();
            string sifre = txtsifre.Text;
            string sifreTekrar = txtsifretekrar.Text;

            if (kullaniciAdi == "" || sifre == "" || sifreTekrar == "")
            {
                MessageBox.Show("Lütfen tüm alanları doldurun.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (sifre != sifreTekrar)
            {
                MessageBox.Show("Şifreler uyuşmuyor!", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            string veriekle = "INSERT INTO kullanici(users,pass)VALUES('" + txtkullaniciadi.Text + "','"+txtsifre.Text+"')";
            MessageBox.Show(veriler.kayit(veriekle));
           
        }
    }
}
