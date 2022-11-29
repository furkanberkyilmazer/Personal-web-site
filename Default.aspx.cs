using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace WebApplication1
{
       
    public partial class Default : System.Web.UI.Page
    {
     


        protected void Page_Load(object sender, EventArgs e)
        {
            Session["aktif"] = null;
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection bag = new SqlConnection(connStr);
            

           

            SqlCommand kmt5 = new SqlCommand("update kisiler set aktiflik=0 where id= 1", bag);
            bag.Open();
            kmt5.ExecuteNonQuery();
            bag.Close();

            SqlCommand kmt = new SqlCommand("Select * from Kisiler", bag);
            
            bag.Open();
            SqlDataReader dr = kmt.ExecuteReader();
            
            while (dr.Read())//dr de okunacak veri varsa;
            {
            
            LiteralAdSoyad.Text = dr[1].ToString();
            LiteralUnvan.Text = dr[2].ToString();
            LiteralOzet.Text= dr[3].ToString();
           
            }            
            bag.Close();


            SqlCommand kmt4 = new SqlCommand("Select * from Kisiler ", bag);
            bag.Open();
            SqlDataReader dr4 = kmt4.ExecuteReader();
            DataList3.DataSource = dr4;
            DataList3.DataBind();
            bag.Close();


            SqlCommand kmt2 = new SqlCommand("Select * from Egitim where kisi_id =1", bag);
            bag.Open();
            SqlDataReader dr2 = kmt2.ExecuteReader();
            DataList1.DataSource = dr2;
            DataList1.DataBind();
            bag.Close();

            SqlCommand kmt3 = new SqlCommand("Select * from Proje where kisi_id =1" , bag);
            bag.Open();
            SqlDataReader dr3 = kmt3.ExecuteReader();
            DataList2.DataSource = dr3;
            DataList2.DataBind();
            bag.Close();
           

        }
      

       

        protected void Button1_Click(object sender, EventArgs e)
        {

             try
             {


                     SmtpClient clientSMTP = new SmtpClient("smtp.office365.com", 587);
                     clientSMTP.EnableSsl = true;
                     clientSMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                     clientSMTP.UseDefaultCredentials = false;
                     clientSMTP.Credentials = new NetworkCredential("fby_website@hotmail.com", "123456Berk-");
                     using (MailMessage message = new MailMessage())
                     {
                         message.From = new MailAddress("fby_website@hotmail.com");
                         message.Subject = "Sitemden: " + txtKonu.Text;
                         message.IsBodyHtml = true;
                         message.To.Add("furkan_berk_yilmazer@hotmail.com");
                         message.Body = "Adı :" + txtAd.Text + "     Mail:" + txtMail.Text + "   <br /> " + txtMesaj.Text;
                         clientSMTP.Send(message);
                         lblGoster.Text = "Mesajınız gönderildi...";


                    txtAd.Text = "";
                    txtMail.Text = "";
                    txtMesaj.Text = "";
                    txtKonu.Text = "";
                    lblGoster.Text = "";

                }


             }
             catch (Exception ex)
             {
                 lblGoster.Text = "Mesajınız Gönderilemedi. Alanları doldurunuz.";
             }

          
 //Response.Redirect("AdminPaneli/Login.aspx");
        }

    }
}