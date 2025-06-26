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
    public partial class personel : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public personel()
        {
            InitializeComponent();
        }
        private void il()
        {
            string il_sql = "SELECT * FROM il";
            using (SqlConnection baglan = new SqlConnection(db))
            {
                SqlDataAdapter da = new SqlDataAdapter(il_sql, baglan);
                DataTable dt = new DataTable();
                da.Fill(dt);

                comboil.DataSource = dt;
                comboil.DisplayMember = "ad";
                comboil.ValueMember = "id";
            }
        }
        private void vericek()
        {
            string verial = "SELECT * FROM personel";
            DataTable dt = veriler.vericek(verial);
            datapersonel.DataSource = dt;
        }

        private void personel_Load(object sender, EventArgs e)
        {
            vericek();
            il();
            comboil.SelectedIndex = -1;
            comboil.SelectedIndexChanged += comboil_SelectedIndexChanged;
            datapersonel.CellDoubleClick += datapersonel_CellDoubleClick;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btngoster_Click(object sender, EventArgs e)
        {
            if (!datapersonel.Visible)
            {
                datapersonel.Visible = true;
            }
        }

        private void btngizle_Click(object sender, EventArgs e)
        {
            if (datapersonel.Visible)
            {
                datapersonel.Visible = false;
            }
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }
        private void comboil_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (comboil.SelectedValue == null || comboil.SelectedValue is DataRowView)
                return;

            string il_id = comboil.SelectedValue.ToString();

            string ilce_sql = "SELECT * FROM ilce WHERE il_id = @il_id";

            using (SqlConnection baglan = new SqlConnection(db))
            {
                SqlDataAdapter da = new SqlDataAdapter(ilce_sql, baglan);
                da.SelectCommand.Parameters.AddWithValue("@il_id", il_id);
                DataTable dt = new DataTable();
                da.Fill(dt);


                comboilce.DataSource = null;
                comboilce.DataSource = dt;
                comboilce.DisplayMember = "ad";
                comboilce.ValueMember = "id";
                comboilce.SelectedIndex = -1;
            }
        }

        private void btnkaydet_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtad.Text) ||
                string.IsNullOrWhiteSpace(txtsoyad.Text) ||
                string.IsNullOrWhiteSpace(txttc.Text) ||
                string.IsNullOrWhiteSpace(txttel.Text) ||
                string.IsNullOrWhiteSpace(txtmail.Text) ||
                string.IsNullOrWhiteSpace(txtadres.Text) ||
                string.IsNullOrWhiteSpace(txtunvan.Text) ||
                string.IsNullOrWhiteSpace(txtucret.Text) ||
                comboil.SelectedIndex == -1 ||
                comboilce.SelectedIndex == -1 ||
                (!radioErkek.Checked && !radioKadin.Checked) ||
                (!radioEvli.Checked && !radioBekar.Checked))
            {
                MessageBox.Show("Lütfen tüm alanları eksiksiz doldurun!", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            string dogumTarihi = dtpDogumTarihi.Value.ToString("yyyy-MM-dd");

            string cinsiyet = "";

            if (radioErkek.Checked)
                cinsiyet = "Erkek";
            else if (radioKadin.Checked)
                cinsiyet = "Kadın";

            string medeniDurum = "";

            if (radioEvli.Checked)
                medeniDurum = "Evli";
            else if (radioBekar.Checked)
                medeniDurum = "Bekar";

            string veriekle = "INSERT INTO personel(personel_adı,personel_soyadı,personel_tc,personel_tel,personel_mail,personel_il,personel_ilçe,personel_adres,personel_cinsiyet,personel_doğumtarihi,personel_ünvan,personel_ücret,personel_medenidurum)VALUES('" + txtad.Text + "','" + txtsoyad.Text + "','" + txttc.Text + "','" + txttel.Text + "','" + txtmail.Text + "','" + comboil.Text + "','" + comboilce.Text + "','" + txtadres.Text + "','" + cinsiyet + "','" + dogumTarihi + "','" + txtunvan.Text + "','" + txtucret.Text + "','" + medeniDurum + "')";
            MessageBox.Show(veriler.kayit(veriekle));
            vericek();
        }

        private void btnsil_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(datapersonel.SelectedRows[0].Cells["id"].Value);
            string sorgu = "DELETE FROM personel WHERE id=" + id;
            MessageBox.Show(veriler.verisil(sorgu));
            vericek();
        }
        private void datapersonel_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Convert.ToInt32(datapersonel.SelectedRows[0].Cells["id"].Value);
            lblpersonelid.Text = id.ToString();
            txtad.Text = datapersonel.CurrentRow.Cells["personel_adı"].Value.ToString();
            txtsoyad.Text = datapersonel.CurrentRow.Cells["personel_soyadı"].Value.ToString();
            txttc.Text = datapersonel.CurrentRow.Cells["personel_tc"].Value.ToString();
            txttel.Text = datapersonel.CurrentRow.Cells["personel_tel"].Value.ToString();
            txtmail.Text = datapersonel.CurrentRow.Cells["personel_mail"].Value.ToString();
            comboil.Text = datapersonel.CurrentRow.Cells["personel_il"].Value.ToString();
            comboilce.Text = datapersonel.CurrentRow.Cells["personel_ilçe"].Value.ToString();
            txtadres.Text = datapersonel.CurrentRow.Cells["personel_adres"].Value.ToString();
            txtunvan.Text = datapersonel.CurrentRow.Cells["personel_ünvan"].Value.ToString();
            txtucret.Text = datapersonel.CurrentRow.Cells["personel_ücret"].Value.ToString();


            string cinsiyet = datapersonel.CurrentRow.Cells["personel_cinsiyet"].Value.ToString();
            if (cinsiyet == "Erkek")
                radioErkek.Checked = true;
            else if (cinsiyet == "Kadın")
                radioKadin.Checked = true;


            string medeniDurum = datapersonel.CurrentRow.Cells["personel_medenidurum"].Value.ToString();
            if (medeniDurum == "Evli")
                radioEvli.Checked = true;
            else if (medeniDurum == "Bekar")
                radioBekar.Checked = true;


            dtpDogumTarihi.Value = Convert.ToDateTime(datapersonel.CurrentRow.Cells["personel_doğumtarihi"].Value);
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            
        }

        private void btnGuncelle_Click_1(object sender, EventArgs e)
        {
            string cinsiyet = radioErkek.Checked ? "Erkek" : "Kadın";
            string medeniDurum = radioEvli.Checked ? "Evli" : "Bekar";
            string dogumTarihi = dtpDogumTarihi.Value.ToString("yyyy-MM-dd");
            string id = lblpersonelid.Text;

            string sql = "UPDATE personel SET " +
             "personel_adı = '" + txtad.Text + "', " +
             "personel_soyadı = '" + txtsoyad.Text + "', " +
             "personel_tel = '" + txttel.Text + "', " +
             "personel_mail = '" + txtmail.Text + "', " +
             "personel_il = '" + comboil.Text + "', " +
             "personel_ilçe = '" + comboilce.Text + "', " +
             "personel_adres = '" + txtadres.Text + "', " +
             "personel_cinsiyet = '" + cinsiyet + "', " +
             "personel_doğumtarihi = '" + dogumTarihi + "', " +
             "personel_ünvan = '" + txtunvan.Text + "', " +
             "personel_medenidurum = '" + medeniDurum + "', " +  
             "personel_ücret = '" + txtucret.Text + "' " +        
             "WHERE id = " + id;


            MessageBox.Show(veriler.veriguncelle(sql));
            vericek();
        }
    }

}
