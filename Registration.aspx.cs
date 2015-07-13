using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static bool checkemail(string s)
    {
        bool result = true;
        SqlCommand cmd = new SqlCommand("select email from students", con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (con.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (s == dr["email"].ToString().Trim())
                {
                    result = false;
                }
            }
            dr.Close();
        }
        if (con.State == ConnectionState.Closed)
        {
            con.Close();
        }
        return result;
    }
    public static bool checkroll(string s)
    {
        bool result = true;
        SqlCommand cmd = new SqlCommand("select regno from students", con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (con.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (s == dr["regno"].ToString().Trim())
                {
                    result = false;
                }
            }
            dr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        return result;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (TextBox6.Text == TextBox7.Text)
        {
            if (checkemail(TextBox4.Text))
            {
                if (checkroll(TextBox2.Text))
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("insert into students (name, email, password, regno, course, batch, mob, image, type, dob) values('" + TextBox5.Text + "', '" + TextBox4.Text + "', '" + TextBox6.Text + "', '" + TextBox2.Text + "', '" +DropDownList1.SelectedValue + "', '" + TextBox1.Text + "', '" + TextBox3.Text + "', 'no-image.jpg', 'student', '01/01/1990')", con);
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
                        Response.Redirect("login.aspx");
                    }
                    catch
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Some Error Occured Try Again";
                    }
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Student already Registratered for this Roll no.\n Claim this Roll No\n Mail details at admin@placementcell.com";
                }
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Email already registered";
            }
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Password and re-type Password must be same";
        }
    }
}