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
    public partial class Lectures : System.Web.UI.Page
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


        public void AddLecturers()
        {



            SqlCommand cmd = new SqlCommand(" insert into lecturer (Lecturer,Department) values (@Lecturer,@Department)", con);

            cmd.Parameters.AddWithValue("@Lecturer", txt_lecturername.Text.Trim());
            cmd.Parameters.AddWithValue("@Department", txt_department.Text.Trim());



            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            AddLecturers();
        }
    }
}