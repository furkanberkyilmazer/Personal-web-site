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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection bag = new SqlConnection(connStr);

            SqlCommand kmt8 = new SqlCommand("Select aktiflik from Kisiler where id=1", bag);
            bag.Open();
            string aktiflik = kmt8.ExecuteScalar().ToString();
            bag.Close();
            if (aktiflik == "0")
            {
                
                if (Session["aktif"] != null) //giris islemi doğru yapıldıysa
                {

                  
                }
                else
                {

                    Response.Redirect("Login.aspx");

                }
            }
            else
            {
                if (Session["aktif"] != null) //giris islemi doğru yapıldıysa
                {

                 
                }
                else
                {
                    Session["aktif"] = "1";
                    SqlCommand kmt7 = new SqlCommand("update kisiler set aktiflik=0 where id= 1", bag);
                    bag.Open();
                    kmt7.ExecuteNonQuery();
                    bag.Close();

                   

                }
            }
           

        }
    }
}