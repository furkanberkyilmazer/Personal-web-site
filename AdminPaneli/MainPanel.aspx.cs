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
    public partial class MainPanel : System.Web.UI.Page
    {

        string islem;
        string projeId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
                SqlConnection bag = new SqlConnection(connStr);

             
                try
                {
                    islem = Request.QueryString["islem"];
                    projeId = Request.QueryString["projeId"];
                    if (islem == "sil")
                    {

                        SqlCommand kmt6 = new SqlCommand("Delete from Proje where proje_id= " + projeId, bag);
                        SqlCommand kmt7 = new SqlCommand("Delete from ProjeDetay where proje_id= " + projeId, bag);
                        bag.Open();
                        kmt6.ExecuteNonQuery();
                        kmt7.ExecuteNonQuery();
                        Response.Redirect("MainPanel.aspx");

                        bag.Close();
                    }
                }
                catch (Exception)
                {
                }







                SqlCommand kmt = new SqlCommand("Select * from Kisiler", bag);

                bag.Open();
                SqlDataReader dr = kmt.ExecuteReader();

                while (dr.Read())//dr de okunacak veri varsa;
                {

                    Image1.ImageUrl = "~/" + dr[4].ToString();
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[7].ToString();
                    TextBox4.Text = dr[6].ToString();
                    TextBox5.Text = dr[3].ToString();
                }
                bag.Close();


                SqlCommand kmt2 = new SqlCommand("Select * from Proje where  kisi_id =1", bag);
                bag.Open();
                SqlDataReader dr2 = kmt2.ExecuteReader();
                DataList1.DataSource = dr2;
                DataList1.DataBind();
                bag.Close();

                SqlCommand kmt3 = new SqlCommand("Select * from Egitim where  kisi_id =1", bag);
                bag.Open();
                SqlDataReader dr3 = kmt3.ExecuteReader();
                DataList2.DataSource = dr3;
                DataList2.DataBind();
                bag.Close();

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string resimAdi = ""; string uzanti = "";
            if (FileUpload1.HasFile)//file uploadda resim seçilmişse 
            {
                uzanti = Path.GetExtension(FileUpload1.PostedFile.FileName);
                resimAdi = "/assets/images/" + TextBox3.Text + DateTime.Now.Day + uzanti;
                FileUpload1.SaveAs(Server.MapPath(resimAdi));

            }
            else
            {
                string connStr3 = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
                SqlConnection bag3 = new SqlConnection(connStr3);

                SqlCommand kmt3 = new SqlCommand("Select * from Kisiler", bag3);

                bag3.Open();
                SqlDataReader dr3 = kmt3.ExecuteReader();
                while (dr3.Read())//dr de okunacak veri varsa;
                {
                    resimAdi = dr3[4].ToString();

                }
                bag3.Close();

            }
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;


            SqlConnection bag = new SqlConnection(connStr);
            bag.Open();

            SqlCommand kmt = new SqlCommand("update kisiler set adSoyad=@adSoyad, unvan=@unvan , ozetBilgi=@ozetBilgi , foto=@foto , sifre=@sifre , kullaniciAdi=@kullaniciAdi , aktiflik=1 where id= 1", bag);


            kmt.Parameters.Add("@adSoyad", TextBox1.Text);
            kmt.Parameters.Add("@unvan", TextBox2.Text);
            kmt.Parameters.Add("@ozetBilgi", TextBox5.Text);
            kmt.Parameters.Add("@foto", resimAdi);
            kmt.Parameters.Add("@sifre", TextBox4.Text);
            kmt.Parameters.Add("@kullaniciAdi", TextBox3.Text);



            kmt.ExecuteNonQuery();
            bag.Close();
            Response.Redirect("MainPanel.aspx");
        }
    }
}



