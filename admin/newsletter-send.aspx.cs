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

public partial class admin_newsletter_send : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {

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