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
    public partial class tedarikciler : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public tedarikciler()
        {
            InitializeComponent();
        }
        private void vericek()
        {
            string verial = "SELECT * FROM tedarikciler";
            DataTable dt = veriler.vericek(verial);
            datatedarikci.DataSource = dt;
        }

        private void tedarikciler_Load(object sender, EventArgs e)
        {
            vericek();

        }

        private void datatedarikci_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btntedkaydet_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txttedadi.Text) ||
               string.IsNullOrWhiteSpace(txttedadresi.Text) ||
               string.IsNullOrWhiteSpace(txttedtel.Text) ||
               string.IsNullOrWhiteSpace(txttedemail.Text) ||
               string.IsNullOrWhiteSpace(txttedyetkili.Text))
            {
                MessageBox.Show("Lütfen tüm alanları doldurun.", "Eksik Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            string veriekle = "INSERT INTO tedarikciler(tedarikci_adi,tedarikci_adresi,tedarikci_telefon,tedarikci_email,tedarikci_yetkilisi) VALUES('" + txttedadi.Text + "','" + txttedadresi.Text + "','" + txttedtel.Text + "','" + txttedemail.Text + "','" + txttedyetkili.Text + "')";
            MessageBox.Show(veriler.kayit(veriekle));
            vericek();
        }
        private void datatedarikci_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Convert.ToInt32(datatedarikci.SelectedRows[0].Cells["id"].Value);
            string ad = Convert.ToString(datatedarikci.SelectedRows[0].Cells["tedarikci_adi"].Value);
            string adres = Convert.ToString(datatedarikci.SelectedRows[0].Cells["tedarikci_adresi"].Value);
            string telefon = Convert.ToString(datatedarikci.SelectedRows[0].Cells["tedarikci_telefon"].Value);
            string email = Convert.ToString(datatedarikci.SelectedRows[0].Cells["tedarikci_email"].Value);
            string yetkili = Convert.ToString(datatedarikci.SelectedRows[0].Cells["tedarikci_yetkilisi"].Value);

            txttedyetkili.Text = yetkili;
            txttedemail.Text = email;
            txttedtel.Text = telefon;
            txttedadresi.Text = adres;
            lbltedid.Text = id.ToString();
            txttedadi.Text = ad;
        }

        private void btntedguncelle_Click(object sender, EventArgs e)
        {
            string id = lbltedid.Text, ad = txttedadi.Text, adres=txttedadresi.Text, telefon=txttedtel.Text,email=txttedemail.Text, yetkili=txttedyetkili.Text;
            string guncelle = "UPDATE tedarikciler SET tedarikci_adi = '" + ad + "', tedarikci_adresi = '" + adres + "', tedarikci_telefon = '" + telefon + "', tedarikci_email = '" + email + "', tedarikci_yetkilisi = '" + yetkili + "' WHERE id = " + id;
            MessageBox.Show(veriler.veriguncelle(guncelle));
            vericek();

        }

        private void btntedsil_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(datatedarikci.SelectedRows[0].Cells["id"].Value);
            string sorgu = "DELETE FROM tedarikciler WHERE id=" + id;
            MessageBox.Show(veriler.verisil(sorgu));
            vericek();
        }
    }
}
