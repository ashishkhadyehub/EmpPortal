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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["EmployeeId"] != null)
                {
                    getemployeedata();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            
        }

        protected void getemployeedata()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from EmpRegister where Srno='"+ Session["EmployeeId"] + "'",con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.HasRows)
            {
                sdr.Read();
                txtName.Text=sdr.GetValue(1).ToString();
                txtEmail.Text=sdr.GetValue(2).ToString();
                txtContact.Text=sdr.GetValue(3).ToString();
                txtdept.Text=sdr.GetValue(4).ToString();
                
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("update EmpRegister set Name=@name,Email=@email,Contact=@contact where Srno='"+ Session["EmployeeId"] + "'", con);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            getemployeedata();
        }
    }
}