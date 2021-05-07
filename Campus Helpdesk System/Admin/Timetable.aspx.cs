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
    public partial class Timetable : System.Web.UI.Page
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

        public void AddTimetable()
        {



            SqlCommand cmd = new SqlCommand(" insert into TimeTable (Coursename,coursecode,Date,Timestart,TimeEnd,level_L,Department) values (@Coursename,@coursecode,@Date,@Timestart,@TimeEnd,@level_L,@Department)", con);

            cmd.Parameters.AddWithValue("@Coursename", txt_coursename.Text.Trim());
            cmd.Parameters.AddWithValue("@coursecode", txt_coursecode.Text.Trim());
            cmd.Parameters.AddWithValue("@Date", txt_dob.Text.Trim());
            cmd.Parameters.AddWithValue("@Timestart", txt_timestart.Text.Trim());
            cmd.Parameters.AddWithValue("@TimeEnd", txt_timeEnd.Text.Trim());
            cmd.Parameters.AddWithValue("@Level_L", txt_levle.Text.Trim());
            cmd.Parameters.AddWithValue("@Department", TextBox1.Text.Trim());
            


            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            AddTimetable();
        }
    }
}