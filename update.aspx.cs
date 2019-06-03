using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class update : System.Web.UI.Page
{
    const string connectionString = "Data Source=192.168.20.103;Initial Catalog=EmployeeCaseStudy;Persist Security Info=True; User Id=STUD; Password=By123456";
    private SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con == null)
        {
            con = new SqlConnection(connectionString);
        }

    }
    protected void Delete_Button_Click(object sender, EventArgs e)
    {
        con.Open();
        string select = MakeSQL("select", Request.Params["firstname"], Request.Params["lastname"]);
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
            string delete = MakeSQL("Delete", Request.Params["firstname"], Request.Params["lastname"]);
            RunSQL(delete);
            con.Close();
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('User deleted');", true);
        }
    }

    protected void Login_Button_Click(object sender, EventArgs e)
    {
        con.Open();
        string select = MakeSQL("select", Request.Params["firstname"], Request.Params["lastname"]);
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
            string login = MakeSQL("Login", Request.Params["firstname"], Request.Params["lastname"]);
            RunSQL(login);
            con.Close();
        }

    }

    protected void Registration_Botton_Click(object sender, EventArgs e)
    {
        con.Open();
        string select = MakeSQL("select", Request.Params["firstname"], Request.Params["lastname"]);
        SqlDataReader read = RunSQL(select);
        bool isRow = read.HasRows;
        con.Close();
        if (isRow)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('the user is already exist');", true);
        }
        else
        {
            con.Open();
            string inset = MakeSQL("Insert", Request.Params["firstname"], Request.Params["lastname"]);
            RunSQL(inset);
            con.Close();
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
            return "DELETE FROM [EmployeeCaseStudy].[dbo].[Shir] WHERE FirstName='" + fN + "' AND LastName='" + lN + "'";
        }
        if (name == "Insert")
        {
            return "INSERT INTO [EmployeeCaseStudy].[dbo].[Shir](FirstName, LastName) VALUES ('" + fN + "','" + lN + "')";
        }
        return "SELECT * FROM [EmployeeCaseStudy].[dbo].[Shir] WHERE FirstName='" + fN + "' AND LastName='" + lN + "'";
    }
}