using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object Sender, EventArgs e)
        {

        }
        protected void Button1_Click(object Sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI;Initial Catalog=asplogin;Integrated Security=True;Encrypt=True;Trust Server Certificate=True");
            con.Open();
            String loginQuery = "SELECT COUNT(*) FROM login WHERE username=@username AND password= @password";
            SqlCommand cmd = new SqlCommand(loginQuery, con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            int Count = (int)cmd.ExecuteScalar();
            con.Close();
            if (Count > 0)
            {
                Response.Write("<Script>alert('login Succes');</Script>");
            }
            else
            {
                Response.Write("<Script>alert('login Succes');</Script>");
            }
        }

    }
}

