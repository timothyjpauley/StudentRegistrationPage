using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalProjectTimPauley
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataProcessingClass dp = new DataProcessingClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonRequestLogin_Click(object sender, EventArgs e)
        {

            try
            {

                dp.RequestNewLogin(TextBoxName.Text, TextBoxEmailAddress.Text, TextBoxLoginName.Text, TextBoxNewOrReactivate.Text, TextBoxReason.Text, DateTime.Parse(TextBoxDateNeededBy.Text));

            }
            catch (Exception ex) { Console.WriteLine("Your entered in the wrong data") ; }
            //finally { objOleCon.Close(); } //4. Run clean up code
            {
           
            }

            TextBoxName.Text = "";
            TextBoxEmailAddress.Text = "";
            TextBoxLoginName.Text = "";
            TextBoxNewOrReactivate.Text = "";
            TextBoxReason.Text = "";
            TextBoxDateNeededBy.Text = "";

            TextBoxName.Focus();
        }
    }
}