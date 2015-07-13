using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_CompanyNotification : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con =new SqlConnection (constring);
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
    void mailsnd(string emailid)
    {
        string Username = "gipsum.eddy@gmail.com";  //Change with your gmail id here.
        string Password = "openlock";  //Change with your gmail id password here.
        string To = emailid.Trim();
        string Subject = "Placement News Letter";
        string Body = TextBox1.Text + "<br>" + "<a href=\'http://www.internshala.com'> College Placement News Letter</a>"; ;
        bool flag1;
        if (Username != "" || Password != "" || Subject != "" || Body != "" || To != "")
        {
            flag1 = SendEmail(Username, Password, To, Subject, Body, System.Web.Mail.MailFormat.Html, "");
            if (flag1)
            {
                Label1.Text = Label1.Text + "\n" + "Mail sent to: " + emailid + "";
            }
            else
            {
                Label1.Text = Label1.Text + "\n" + "Mail not sent to: " + emailid + "";
            }
        }
        else
        {
            Response.Write("Please Insert all Information.");

        }
    }



    public static bool SendEmail(
    string pGmailEmail,
    string pGmailPassword,
    string pTo,
    string pSubject,
    string pBody,
    MailFormat pFormat,
    string pAttachmentPath)
    {
        MailMessage myMail = new MailMessage();
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/smtpserver",
             "smtp.gmail.com");
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/smtpserverport",
             "465");
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/sendusing",
             "2");
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
        //Use 0 for anonymous
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/sendusername",
             pGmailEmail);
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/sendpassword",
             pGmailPassword);
        myMail.Fields.Add
            ("http://schemas.microsoft.com/cdo/configuration/smtpusessl",
             "true");
        myMail.Priority = MailPriority.High;
        myMail.From = pGmailEmail;
        myMail.To = pTo;
        myMail.Subject = pSubject;
        myMail.BodyFormat = pFormat;
        myMail.Body = pBody;
        //pAttachmentPath = 
        if (pAttachmentPath.Trim() != "")
        {
            MailAttachment MyAttachment =
                new MailAttachment(pAttachmentPath);
            myMail.Attachments.Add(MyAttachment);
            myMail.Priority = MailPriority.High;
        }
        SmtpMail.SmtpServer = "smtp.gmail.com:465";
        System.Web.Mail.SmtpMail.Send(myMail);
        return true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        int i = 0;
        try
        {
            SqlCommand cmd = new SqlCommand("select name, regno, email from students where course = '" + course.Text + "'AND batch = '" + year.Text + "'AND tnper >= " + tenth.Text + "AND twper >= " + twelveth.Text + "AND grper >= " + graduation.Text + " order by sid desc", con); 
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            if (con.State == ConnectionState.Open)
            {
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    i = i + 1;
                    string emailid = dr[0].ToString();
                    mailsnd(emailid);
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
