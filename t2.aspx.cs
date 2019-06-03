using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
        //const string connectionString = "Data Source=192.168.20.103;Initial Catalog=EmployeeCaseStudy;Persist Security Info=True; User Id=STUD; Password=By123456";
    //const string connectionString = @"Data Source=(localdb)\ProjectsV12;Initial Catalog=EmployeeCaseStudy;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        private SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con == null)
        {
            con = new SqlConnection(Consts.ConnectionString);
        }
        Session["Name"] = Request.Params["UserName"];
        Session["Password"] = Request.Params["Password"];
    }
    protected void Delete_Button_Click(object sender, EventArgs e)
    {
        con.Open();
        string select = MakeSQL("select", Request.Params["UserName"], Request.Params["Password"]);
        SqlDataReader read = RunSQL(select);
        bool isRow = read.HasRows;
        con.Close();
        if (!isRow)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('Cant Find User for deleted');", true);
        }
        else
        {
            con.Open();
            string delete = MakeSQL("Delete", Request.Params["UserName"], Request.Params["Password"]);
            RunSQL(delete);
            con.Close();
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('User deleted');", true);
        }
    }

    protected void Login_Button_Click(object sender, EventArgs e)
    {
        con.Open();
        string select = MakeSQL("select", Request.Params["UserName"], Request.Params["Password"]);
        SqlDataReader read = RunSQL(select);
        bool isRow = read.HasRows;
        con.Close();
        if (!isRow)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('cant find user,please regisrer first');", true);
        }
        else
        {
            con.Open();
            string login = MakeSQL("Login", Request.Params["UserName"], Request.Params["Password"]);
            RunSQL(login);
            con.Close();
            HttpContext.Current.Response.Redirect("home.aspx");
        }

    }

    protected SqlDataReader RunSQL(string sql)
    {
        SqlCommand Command = new SqlCommand(sql, con);
        SqlDataReader read = Command.ExecuteReader();
        return read;
    }
    protected string MakeSQL(string name, string fN, string lN)
    {
        if (name == "Delete")
        {
            return "DELETE FROM [EmployeeCaseStudy].[dbo].[Shir_New] WHERE UserName='" + fN + "' AND Password='" + lN + "'";
        }
        return "SELECT * FROM [EmployeeCaseStudy].[dbo].[Shir_New] WHERE UserName='" + fN + "' AND Password='" + lN + "'";
    }
}
