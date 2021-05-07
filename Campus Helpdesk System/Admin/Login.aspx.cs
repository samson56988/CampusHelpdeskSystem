using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Data;

namespace Campus_Helpdesk_System.Admin
{
    public partial class Login : System.Web.UI.Page
        
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP\SQLEXPRESS;Initial Catalog=CampusHelpdesk;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();
        }

        protected void B1_Click(object sender, EventArgs e)
        {
             
        }

        protected void B1_Click1(object sender, EventArgs e)
        {
        int i = 0;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from admin where username ='" + username.Text + "' and password = '" + password.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i > 0)
            {
                Session["Admin"] = username.Text;
                Response.Redirect("Add Course.aspx");
            }
            else
            {

                error.Style.Add("display", "block");
            }
        }

        }




    }
