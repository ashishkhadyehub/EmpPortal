using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emp
{
    public partial class Employee : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeId"] != null)
            {
                liregister.Style.Add("display","none");
                lilogin.Style.Add("display", "none");
                lilogout.Style.Add("display", "block");
            }
            else
            {
                liregister.Style.Add("display", "block");
                lilogin.Style.Add("display", "block");
                lilogout.Style.Add("display", "none");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}