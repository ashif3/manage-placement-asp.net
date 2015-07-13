using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_filter_students : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        { 
            string crse = "Select"; 
            if (Request.QueryString["course"] != "" && Request.QueryString["course"] != null) 
            {
                crse = Request.QueryString["course"]; 
            } 
            string yr = "2014";
            if (Request.QueryString["pyear"] != "" && Request.QueryString["pyear"] != null) 
            { 
                yr = Request.QueryString["pyear"]; 
            } 
            string ten = "0"; 
            if (Request.QueryString["tenth"] != "" && Request.QueryString["tenth"] != null)
            { 
                ten = Request.QueryString["tenth"]; 
            } 
            string twelve = "0"; 
            if (Request.QueryString["twelveth"] != "" && Request.QueryString["twelveth"] != null) 
            { 
                twelve = Request.QueryString["twelveth"]; 
            } 
            string grad = "0"; 
            if (Request.QueryString["graduation"] != "" && Request.QueryString["graduation"] != null) 
            { 
                grad = Request.QueryString["graduation"]; 
            } 
            course.Text = crse; year.Text = yr; tenth.Text = ten; twelveth.Text = twelve; graduation.Text = grad; 
            BindData(crse, yr, ten, twelve, grad); 
        }
    }
    protected void BindData(string crse, string yr, string ten, string twelve, string grad) 
    { 
        stulist.DataSource = Getstu(crse, yr, ten, twelve, grad); 
        stulist.DataBind(); 
    }
    public DataTable Getstu(string crse, string yr, string ten, string twelve, string grad) 
    { 
        SqlCommand cmd = new SqlCommand("select name, regno, email from students where course = '" + crse + "'AND batch = '" + yr + "'AND tnper >= " + ten + "AND twper >= " + twelve + "AND grper >= " + grad + " order by sid desc", con); 
        DataTable dt = new DataTable(); 
        try 
        { 
            if (cmd.Connection.State != ConnectionState.Open) 
            { 
                cmd.Connection.Open(); 
            } 
            SqlDataReader reader = cmd.ExecuteReader(); dt.Load(reader); 
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
        return dt; 
    }
    protected void filter_Click(object sender, EventArgs e)
    {
        string crse = course.Text; string yr = year.Text; string ten = tenth.Text; string twelve = twelveth.Text; string grad = graduation.Text; Response.Redirect("filter-students.aspx?course=" + crse + "&pyear=" + yr + "&tenth=" + ten + "&twelveth=" + twelve + "&graduation=" + grad);
    }
    public void ExportToExcel(DataTable dt)
    { 
        if (dt.Rows.Count > 0) 
        { 
            string filename = "Student Record.xls"; System.IO.StringWriter tw = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(tw); DataGrid dgGrid = new DataGrid(); dgGrid.DataSource = dt; dgGrid.DataBind(); //Get the HTML for the control. 
            dgGrid.RenderControl(hw); //Write the HTML back to the browser. //Response.ContentType = application/vnd.ms-excel; 
            Response.ContentType = "application/vnd.ms-excel"; 
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename + ""); 
            this.EnableViewState = false; 
            Response.Write(tw.ToString()); Response.End(); 
        } 
    }
    protected void excelExport_Click(object sender, EventArgs e)
    {
        DataTable ddt = Getstu(course.Text, year.Text, tenth.Text, twelveth.Text, graduation.Text); 
        if (ddt != null && ddt.Rows.Count > 0) 
        { 
            ExportToExcel(ddt); 
        }
        else 
        { 
            dstatus.ForeColor = System.Drawing.Color.Red; dstatus.Text = "No Record is available to Download."; 
        }
    }
}