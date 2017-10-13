using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectTimPauley
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegisterForClass_Click(object sender, EventArgs e)
        {
            GridViewRow objGVR = GridViewClassList.SelectedRow;
            if (objGVR != null)
            {
                Response.Redirect("RegisterForClasses.aspx?ClassId=" + objGVR.Cells[1].Text);
            }
        }
    }
}