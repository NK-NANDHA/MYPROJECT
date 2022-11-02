using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml.Linq;

namespace exam
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["CMPDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)

        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);



            
           


            SqlDataAdapter adpt = new SqlDataAdapter("select * from test",con);




            DataTable dt = new DataTable();


            con.Open(); adpt.Fill(dt);
         


            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("select * from test where (name ='" + TextBox1.Text + "',id ='" + TextBox1.Text + "')", con);

                SqlDataAdapter ad = new SqlDataAdapter(cmd);




                DataTable d = new DataTable();


                con.Open(); ad.Fill(d);
                GridView1.DataSource = dt; GridView1.DataBind();


                msg.Text = "Record Founded!";
                con.Close();


            }
            else { msg.Text = "Record Not Founded!"; }


        }
    }
}
    

        