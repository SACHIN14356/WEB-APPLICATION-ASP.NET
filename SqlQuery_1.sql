using System.Data.SqlClient
 
SqlConnection con = new SqlConnection("Data Source=YOUR-COMPUTER-NAME;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate=True");
con.Open();
string loginQuery = "SELECT COUNT(*) FROM login WHERE username=@username AND password=@password";
SqlCommand cmd = new SqlCommand(loginQuery, con);
cmd.Parameters.AddWithValue("@username", TextBox1.Text);
cmd.Parameters.AddWithValue("@password", TextBox2.Text);
int count = (int)cmd.ExecuteScalar();
con.Close();
if (count > 0)
{
Response.Write("<script>alert('login success');</script>");
}
else
{
Response.Write("<script>alert('login error');</script>");
}