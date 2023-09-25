using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emp
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                lilogin.Style.Add("display","none");
                lilist.Style.Add("display", "block");
                lilogout.Style.Add("display", "block");
            }
            else
            {
                lilogin.Style.Add("display", "block");
                lilist.Style.Add("display", "none");
                lilogout.Style.Add("display", "none");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}