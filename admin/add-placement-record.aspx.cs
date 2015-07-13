using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class admin_add_placement_record : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        try
        {
            SqlCommand cmd = new SqlCommand("insert into placement (name,course,session,company,email,mobile) values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            if (con.State == ConnectionState.Open)
            {
                cmd.ExecuteNonQuery();
            }
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Successfully Added";
        }
        catch
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Some Error Occured Try Again";
        }
    }
}