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
    public partial class ProjectDuzenle : System.Web.UI.Page
    {
        string projeId;
        string islem;
        string projeFoto;
        protected void Page_Load(object sender, EventArgs e)
        {
            try

            {
                string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
                SqlConnection bag = new SqlConnection(connStr);




                projeFoto = Request.QueryString["projeFoto"];
                islem = Request.QueryString["islem"];
                if (islem == "sil")
                {

                    SqlCommand kmt3 = new SqlCommand("Select * from ProjeDetay where projeFoto='" + projeFoto + "'", bag);
                    bag.Open();
                    SqlDataReader dr3 = kmt3.ExecuteReader();
                    string id = "";
                    while (dr3.Read())//dr de okunacak veri varsa;
                    {

                        id = dr3[0].ToString();
                        Label1.Text = id;

                    }
                    bag.Close();

                    SqlCommand kmt4 = new SqlCommand("Delete from ProjeDetay where projeFoto='" + projeFoto + "'", bag);
                    bag.Open();

                    kmt4.ExecuteNonQuery();


                    bag.Close();
                    Response.Redirect("ProjectDuzenle.aspx?projeId=" + id.ToString());


                }

            }
            catch (Exception)
            {


            }
            if (!Page.IsPostBack)
            {

                try
                {
                    string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
                    SqlConnection bag = new SqlConnection(connStr);

                  

                    projeId = Request.QueryString["projeId"];

                    SqlCommand kmt = new SqlCommand("Select * from Proje where  proje_id=" + projeId, bag);
                    bag.Open();
                    SqlDataReader dr = kmt.ExecuteReader();

                    while (dr.Read())//dr de okunacak veri varsa;
                    {

                        TextBox1.Text = dr[1].ToString();
                        TextBox2.Text = dr[2].ToString();

                    }
                    bag.Close();

                    SqlCommand kmt2 = new SqlCommand("Select * from ProjeDetay where  proje_id =" + projeId, bag);
                    bag.Open();
                    SqlDataReader dr2 = kmt2.ExecuteReader();
                    DataList1.DataSource = dr2;
                    DataList1.DataBind();
                    bag.Close();




                }
                catch (Exception)
                {

                }



            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            projeId = Request.QueryString["projeId"];

            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;


            SqlConnection bag = new SqlConnection(connStr);
            bag.Open();

            SqlCommand kmt = new SqlCommand("update Proje set projeAdi=@projeAdi, projeAciklama=@projeAciklama where proje_id=@proje_id", bag);


            kmt.Parameters.Add("@projeAdi", TextBox1.Text);
            kmt.Parameters.Add("@projeAciklama", TextBox2.Text);
            kmt.Parameters.Add("@proje_id", projeId);
            kmt.ExecuteNonQuery();
            bag.Close();

            if (FileUpload1.HasFile)
            {


                string resimAdi = "";
                string fizikselPath = Server.MapPath("/assets/images/");

                foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                {
                    bag.Open();
                    resimAdi = "/assets/images/" + projeId + file.FileName;
                    SqlCommand kmt4 = new SqlCommand("insert into ProjeDetay(proje_id,projeFoto) values(" + projeId + ", '" + resimAdi.ToString() + "')", bag);
                    file.SaveAs(fizikselPath + projeId + file.FileName);

                    // kmt4.Parameters.AddWithValue("@projeFoto", resimAdi);
                    kmt4.ExecuteNonQuery();
                    bag.Close();
                }



            }
            Response.Redirect("ProjectDuzenle.aspx?projeId=" + projeId);
        }
    }
}