using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminUser"] != "NotAvailable")
        {
            Response.Redirect("Default.aspx");
        }
    }

    public static string checktrue(string Name, string Password)
    {
        if (isexist(Name))
        {
            SqlParameter p1, p2;
            SqlCommand cmd = new SqlCommand("select name, pass from login where name=@name AND pass=@pass", con);

            p1 = new SqlParameter();
            p1.ParameterName = "@name";
            p1.Value = Name;
            p1.SqlDbType = SqlDbType.VarChar;
            p1.Size = 50;
            p1.Direction = ParameterDirection.InputOutput;
            cmd.Parameters.Add(p1);

            p2 = new SqlParameter();
            p2.ParameterName = "@pass";
            p2.Value = Password;
            p2.SqlDbType = SqlDbType.VarChar;
            p2.Size = 50;
            p2.Direction = ParameterDirection.InputOutput;
            cmd.Parameters.Add(p2);

            DataTable dt = new DataTable();
            try
            {
                if (cmd.Connection.State != ConnectionState.Open)
                {
                    cmd.Connection.Open();
                }
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
            catch (Exception ex)
            {
                 throw new Exception("Invalid Command !" + ex.Message);
            }
            finally
            {
                if (cmd.Connection.State != ConnectionState.Closed)
                {
                    cmd.Connection.Close();
                }
            }



            if (dt.Rows.Count > 0)
            {
                string sUser = dt.Rows[0]["name"].ToString();
                return sUser;
            }
            else
            {
                return "Fail";
            }
        }
        else
        {
            return "Fail";
        }
    }
    public static bool isexist(string Name)
    {
        SqlParameter p1, p2;
        SqlCommand cmd = new SqlCommand("select name from login where name=@name", con);
        p1 = new SqlParameter();
        p1.ParameterName = "@name";
        p1.Value = Name;
        p1.SqlDbType = SqlDbType.VarChar;
        p1.Size = 50;
        p1.Direction = ParameterDirection.InputOutput;
        cmd.Parameters.Add(p1);
        string str = "";
        try
        {
            if (cmd.Connection.State != ConnectionState.Open)
            {
                cmd.Connection.Open();
            }
            str = cmd.ExecuteScalar().ToString();

        }
        catch //(Exception ex)
        {
            return false;// throw new Exception("Invalid Command !" + ex.Message);
        }
        finally
        {
            if (cmd.Connection.State != ConnectionState.Closed)
            {
                cmd.Connection.Close();
            }
        }

        if (str != "")
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        string result=checktrue(username,password);
        if (result=="Fail")
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Either UserName or Password is incorrect!"; 
        }
        else
        {
            Session["AdminUser"] = result; 
            Response.Redirect("Default.aspx");
        }
    }

}