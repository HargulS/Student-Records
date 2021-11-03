using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class _Default : Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }

    
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
             SqlConnection con = new SqlConnection("Data Source=DESKTOP-KJ3D7HA\\SQLEXPRESS;Initial Catalog=StudentRecords;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
           

            con.Open();
            // Sql connection string
            SqlCommand comm = new SqlCommand("Insert into dbo.StudentInfo_Tab values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();

        }
        //To show inserted values in the grid view
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab",con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            con.Open();
            //Sql connection string
           SqlCommand comm = new SqlCommand("update dbo.StudentInfo_Tab set StudentName='" + TextBox2.Text + "', Address='" + DropDownList1.SelectedValue + "', Age='" + double.Parse(TextBox3.Text) + "', Contact='" + TextBox4.Text + "' where StudentId = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            con.Open();
            //Sql connection string
            SqlCommand comm = new SqlCommand("Delete dbo.StudentInfo_Tab where StudentId = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab where StudentId = '" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab where StudentId = '" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                DropDownList1.SelectedValue = r.GetValue(2).ToString();
                TextBox3.Text = r.GetValue(3).ToString();
                TextBox4.Text = r.GetValue(4).ToString();
            }
        }
    }
}