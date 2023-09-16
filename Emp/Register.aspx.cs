using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emp
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("insert into EmpRegister values (@name,@email,@contact,@dept,@password)",con);
            cmd.Parameters.AddWithValue("@name",txtName.Text);
            cmd.Parameters.AddWithValue("@email",txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact",txtContact.Text);
            cmd.Parameters.AddWithValue("@dept",ddldept.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@password",txtPassword.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            txtName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtContact.Text = "";
            ddldept.SelectedIndex= 0;
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Registered successfully..!','you can log-in now','success');", true);

        }
    }
}