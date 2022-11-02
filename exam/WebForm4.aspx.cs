using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exam
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["CMPDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["CMPDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("TEST_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    com.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        int v = com.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                    }

                }
            }

            protected void btnsub_Click(object sender, EventArgs e)
            {

                using (SqlConnection con = new SqlConnection(cs))
                {
                    using (SqlCommand cmd = new SqlCommand("TEST_CRUD"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "INSERT");
                        cmd.Parameters.AddWithValue("@name", txtname.Text);
                        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
                        cmd.Parameters.AddWithValue("@email", txtmail.Text);
                        cmd.Parameters.AddWithValue("@password", txtpass.Text);
                        cmd.Parameters.AddWithValue("@country", txtcountry.SelectedValue);
                        cmd.Parameters.AddWithValue("@gender", txtgender.SelectedValue);
                        cmd.Parameters.AddWithValue("@address", txtaddr.Text);




                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                GridView1.EditIndex = -1;
                this.BindGrid();
            }
            protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
            {
                GridView1.EditIndex = -1;
                this.BindGrid();
            }


            protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];

                using (SqlConnection con = new SqlConnection(cs))
                {
                    using (SqlCommand cmd = new SqlCommand("TEST_CRUD"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "INSERT");
                        cmd.Parameters.AddWithValue("@name", txtname.Text);
                        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
                        cmd.Parameters.AddWithValue("@email", txtmail.Text);
                        cmd.Parameters.AddWithValue("@password", txtpass.Text);
                        cmd.Parameters.AddWithValue("@country", txtcountry.SelectedValue);
                        cmd.Parameters.AddWithValue("@gender", txtgender.SelectedValue);
                        cmd.Parameters.AddWithValue("@address", txtaddr.Text);




                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }
                }

                protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
                {

                }


            }
        }
    }
}


    