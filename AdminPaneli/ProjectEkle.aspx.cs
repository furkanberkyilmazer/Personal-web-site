using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;
namespace WebApplication1.AdminPaneli
{
    public partial class ProjectEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string resimAdi = "";

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection bag = new SqlConnection(connStr);



            SqlCommand kmt2 = new SqlCommand("insert into Proje(projeAdi,projeAciklama,kisi_id) values(@projeAdi,@projeAciklama,1)", bag);
            kmt2.Parameters.Add("@projeAdi", TextBox1.Text);
            kmt2.Parameters.Add("@projeAciklama", TextBox2.Text);

            bag.Open();
            kmt2.ExecuteNonQuery();
            bag.Close();

            SqlCommand kmt3 = new SqlCommand("select max(proje_id) from Proje", bag);

            bag.Open();

            string EkleneninIdsi = kmt3.ExecuteScalar().ToString();
            bag.Close();


            if (FileUpload1.HasFile)
            {



                string fizikselPath = Server.MapPath("/assets/images/");

                foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                {
                    bag.Open();
                    resimAdi = "/assets/images/" + EkleneninIdsi + file.FileName;
                    SqlCommand kmt4 = new SqlCommand("insert into ProjeDetay(proje_id,projeFoto) values(" + EkleneninIdsi + ", '" + resimAdi.ToString() + "')", bag);
                    file.SaveAs(fizikselPath + EkleneninIdsi + file.FileName);

                    // kmt4.Parameters.AddWithValue("@projeFoto", resimAdi);
                    kmt4.ExecuteNonQuery();
                    bag.Close();
                }



            }

            Response.Redirect("MainPanel.aspx");
        }
    }
}