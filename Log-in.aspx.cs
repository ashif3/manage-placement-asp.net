using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Log_in : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["StudentUser"] != "NotAvailable")
        {
            Response.Redirect("Profile.aspx");
        }
    }
    public static bool checkemail(string Email)
    {
        SqlParameter p1, p2;
        SqlCommand cmd = new SqlCommand("select email from students where email=@email", con); 
        p1 = new SqlParameter(); 
        p1.ParameterName = "@email"; 
        p1.Value = Email; 
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

    public string CheckAuthentication(string Email, string Password)
    {
        if (checkemail(Email))
        {
            SqlParameter p1, p2; 
            SqlCommand cmd = new SqlCommand("select email, password from students where email=@email AND password=@password", con); p1 = new SqlParameter(); p1.ParameterName = "@email"; p1.Value = Email; p1.SqlDbType = SqlDbType.VarChar;
            p1.Size = 50; p1.Direction = ParameterDirection.InputOutput; cmd.Parameters.Add(p1); p2 = new SqlParameter(); p2.ParameterName = "@password"; p2.Value = Password; p2.SqlDbType = SqlDbType.VarChar; p2.Size = 50; p2.Direction = ParameterDirection.InputOutput; cmd.Parameters.Add(p2); DataTable dt = new DataTable(); try { if (cmd.Connection.State != ConnectionState.Open) { cmd.Connection.Open(); } SqlDataReader reader = cmd.ExecuteReader(); dt.Load(reader); }
            catch (Exception ex) { throw new Exception("Invalid Command !" + ex.Message); }
            finally { if (cmd.Connection.State != ConnectionState.Closed) { cmd.Connection.Close(); } } if (dt.Rows.Count > 0)
            {
                string sUser = dt.Rows[0]["email"].ToString(); return sUser;
            }
            else { return "Fail"; }
        }
        else { return "Fail"; }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strUserName = emailbox.Text; 
        string strPassword = passwordbox.Text; 
        string sResult = CheckAuthentication(strUserName, strPassword); 
        if (sResult == "Fail") 
        { 
            Error.Text = "<li>Either UserName or Password is incorrect!</li>"; 
        } 
        else 
        {
            Session["StudentUser"] = sResult; 
            Response.Redirect("profile.aspx"); 
        }
    }
}