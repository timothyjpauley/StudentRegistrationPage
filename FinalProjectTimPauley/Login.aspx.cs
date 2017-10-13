using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace FinalProjectTimPauley
{
    public partial class WebForm3 : System.Web.UI.Page
    {
       

        //Page Load
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (Session["StudentId"] == null)
            {
                LabelMessage.Text = "Please Login using the textboxes below:";
                ButtonLogOut.Visible = false;
            }
            else
            {
                LabelMessage.Text = "You are already logged in.";
                ButtonLogOut.Visible = true;
                ButtonLogin.Enabled = false;
            }
        }
        //CANCEL Button
        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxStudentLogin.Text = "";
            TextBoxStudentPassword.Text = "";

        }

        //REQUEST LOGIN ID
        protected void ButtonLoginRequestLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("RequestNewLogin.aspx");
        }
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {

            DataProcessingClass objDBPC = new DataProcessingClass();

            int StudentID = objDBPC.WebsiteLogin(TextBoxStudentLogin.Text, TextBoxStudentPassword.Text);
            if (StudentID == -1)
            {
                LabelMessage.Text = "Login Failed!";
                ButtonLogOut.Visible = false;
                ButtonReturn.Visible = false;
            }
            else
            {
                Session["StudentId"] = StudentID;
                LabelMessage.Text = "Thank you!  You can now register for new classes or view your current classes.";
                ButtonReturn.Visible = true;
                ButtonReturn.BackColor = System.Drawing.Color.Cornsilk;
            }
        }

        protected void ButtonReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Classes.aspx");
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session["StudentId"] = null;
            Session["StudentName"] = null;
            Response.Redirect("Classes.aspx");
        }

        protected void ButtonRequestNewLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("RequestNewLogin.aspx");
        }
    }


}

