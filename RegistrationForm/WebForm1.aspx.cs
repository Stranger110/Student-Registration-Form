using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace RegistrationForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                record();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-9VTJUVQ4\\SQLEXPRESS;Initial Catalog=CMS;Integrated Security=True;Encrypt=False");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Student values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "')", conn);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('REgistered Successfully!');",true);
            conn.Close();
            record();
        }
        
        void record()
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-9VTJUVQ4\\SQLEXPRESS;Initial Catalog=CMS;Integrated Security=True;Encrypt=False");
            SqlCommand cmd = new SqlCommand("select * from Student", conn);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
}