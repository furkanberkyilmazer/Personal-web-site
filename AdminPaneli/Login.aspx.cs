using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace WebApplication1.AdminPaneli
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["aktif"] = null;

        }
    
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection bag = new SqlConnection(connStr);

            SqlCommand kmt = new SqlCommand("Select * from Kisiler", bag);
           
            bag.Open();
            SqlDataReader dr = kmt.ExecuteReader();

            while (dr.Read())//dr de okunacak veri varsa;
            {

                string kAd = dr[7].ToString();
                string sifre = dr[6].ToString();
               
              
                if (Login1.UserName == kAd&&Login1.Password==sifre)
                { 
                    
                    SqlCommand kmt5 = new SqlCommand("update kisiler set aktiflik=1 where id= 1", bag);
                    bag.Close();
                    bag.Open();
                    kmt5.ExecuteNonQuery();
                    

                   // Response.Redirect("Kisiselislemler.aspx");


                    Response.Redirect("MainPanel.aspx");

                }


            }
            bag.Close();

            
        }
    }
}