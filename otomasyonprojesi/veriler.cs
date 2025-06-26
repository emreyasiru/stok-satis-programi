using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace otomasyonprojesi
{
    public class veriler
    {
        private static string db = "Server=DESKTOP-9TAOJGA\\SQLEXPRESS; Database=emre2; User Id=sa; Password=123; TrustServerCertificate=True;";
        public static string kayit(string veri_ekleme_kodu)
        {
            using (SqlConnection baglan = new SqlConnection(db))
            {

                SqlCommand command = new SqlCommand(veri_ekleme_kodu, baglan);

                baglan.Open();
                if (command.ExecuteNonQuery() > 0)
                {


                    return "kayıt başarılı bir şekilde eklendi";
                }
                else
                {
                    return "kayıt eklenemedi";
                }

            }

        }
        public static string veriguncelle(string kod)
        {
            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();
                SqlCommand command = new SqlCommand(kod, baglan);
                if (command.ExecuteNonQuery() > 0)
                {
                    return "kayıt güncelleme işlemi başarılı!";

                }
                else
                {
                    return "kayıt güncelleme işlemi başarısız!";
                }

            }
        }
        public static string verisil(string sorgu)
        {
            using (SqlConnection baglan = new SqlConnection(db))
            {
                baglan.Open();
                SqlCommand command = new SqlCommand(sorgu, baglan);
                if (command.ExecuteNonQuery() > 0)
                {
                    return "kayıt silme işlemi başarılı";

                }
                else
                {
                    return "kayıt silme işlemi başarısız";
                }
            }
        }
        public static DataTable vericek(string sorgu)

        {
            DataTable veriler = new DataTable();
            using (SqlConnection veri = new SqlConnection(db))
            {
                veri.Open();
                SqlDataAdapter da = new SqlDataAdapter(sorgu, veri);
                da.Fill(veriler);
                veri.Close();
                return veriler;
            }
        }
    }
}
