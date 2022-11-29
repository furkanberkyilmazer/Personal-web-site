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

namespace WebApplication1
{
    public partial class ProjeDetay : System.Web.UI.Page
    {
        
        string projeId;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["aktif"] = null;
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection bag = new SqlConnection(connStr);
            projeId = Request.QueryString["projeId"];

            SqlCommand kmt3 = new SqlCommand("update kisiler set aktiflik=0 where id= 1", bag);
            bag.Open();
            kmt3.ExecuteNonQuery();
            bag.Close();


            SqlCommand kmt = new SqlCommand("select *  from Proje where proje_id= " + projeId, bag);
            bag.Open();
            SqlDataReader dr = kmt.ExecuteReader();
            
            while (dr.Read())
            {
                Label1.Text = dr[1].ToString();
                Label2.Text = dr[2].ToString();
            }
            bag.Close();

            SqlCommand kmt2 = new SqlCommand("select *  from ProjeDetay where proje_id= " + projeId, bag);
            bag.Open();
            SqlDataReader dr2 = kmt2.ExecuteReader();
            
           
                DataList1.DataSource = dr2;
                DataList1.DataBind();
                
            
            bag.Close();
        }
    }
}