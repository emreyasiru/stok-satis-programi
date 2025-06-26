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
    public partial class urunler : anasayfa
    {
        string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";

        public urunler()
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
                k.kategori_adı,
                t.tedarikci_adi AS tedarikçi_firma
                FROM 
                    urunler u
                JOIN 
                    kategori k ON u.kategori_adı = k.id
                JOIN 
                    tedarikciler t ON u.tedarikçi_firma = t.id";

            DataTable table = veriler.vericek(verial);
            dataurunler.DataSource = table;
        }
        private void urunler_Load(object sender, EventArgs e)
        {
            vericek();
        }

        private void btnurunislemleri_Click(object sender, EventArgs e)
        {
            urunislemleri urunislem = new urunislemleri();
            this.Hide();
            urunislem.Show();
        }
    }
}
