using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
namespace otomasyonprojesi
{
    public partial class kategoriler : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public kategoriler()
        {
            InitializeComponent();
        }
        private void vericek()
        {
            string verial = "SELECT * FROM kategori";
            DataTable dt = veriler.vericek(verial);
            datakategoriler.DataSource = dt;
        }

        private void kategoriler_Load(object sender, EventArgs e)
        {
            vericek();
        }

        private void txtkaydet_Click(object sender, EventArgs e)
        {

            if (
               string.IsNullOrWhiteSpace(txtkaydet.Text) ||
               string.IsNullOrWhiteSpace(txtsil.Text) ||
               string.IsNullOrWhiteSpace(txtguncelle.Text) ||
               string.IsNullOrWhiteSpace(txtkategoriadi.Text))
            {
                MessageBox.Show("Lütfen tüm alanları doldurun.", "Eksik Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            string veriekle = "INSERT INTO kategori(kategori_adı)VALUES('" + txtkategoriadi.Text + "')";
            MessageBox.Show(veriler.kayit(veriekle));
            vericek();
        }

        private void txtsil_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(datakategoriler.SelectedRows[0].Cells["id"].Value);
            string sorgu = "DELETE FROM kategori WHERE id=" + id;
            MessageBox.Show(veriler.verisil(sorgu));
            vericek();
        }
        private void datakategoriler_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Convert.ToInt32(datakategoriler.SelectedRows[0].Cells["id"].Value);
            string ad = Convert.ToString(datakategoriler.SelectedRows[0].Cells["kategori_adı"].Value);
            lblktgid.Text = id.ToString();
            txtkategoriadi.Text = ad;
        }

        private void txtguncelle_Click(object sender, EventArgs e)
        {
            string id = lblktgid.Text, ad = txtkategoriadi.Text;
            string guncelle = "UPDATE kategori SET kategori_adı='" + ad + "' WHERE id=" + id;
            MessageBox.Show(veriler.veriguncelle(guncelle));
            vericek();
        }

        private void datakategoriler_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
