using Microsoft.Data.SqlClient;
namespace otomasyonprojesi
{
    public partial class Form1 : Form

    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btngiris_Click(object sender, EventArgs e)
        {
            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();
                string sorgu = "SELECT * FROM kullanici WHERE users=@user AND pass=@pas";
                SqlCommand komut = new SqlCommand(sorgu, baglan);
                komut.Parameters.AddWithValue("@user", txtkullanici.Text);
                komut.Parameters.AddWithValue("@pas", txtsifre.Text);
                SqlDataReader reader = komut.ExecuteReader();
                if (reader.Read())
                {
                    ANASAYFA1 an1=new ANASAYFA1();
                    this.Hide();
                    an1.Show();

                }
                else
                {
                    MessageBox.Show("kullanýcý adý veya þifre hatalý");
                }
            }
        }

        private void btnyenikayit_Click(object sender, EventArgs e)
        {
            yenikayýt yeni = new yenikayýt();
            this.Hide();    
            yeni.Show();
        }
    }
}
