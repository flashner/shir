using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
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

    }
    string list = "00000000000000000000";
    protected void Registration_Botton_Click(object sender, EventArgs e)
    {
        con.Open();
        string select = MakeSQL("select", Request.Params["UserName"], Request.Params["Password"], Request.Params["Gender"],Request.Params["Email"], Request.Params["music"], list);
        SqlDataReader read = RunSQL(select);
        bool isRow = read.HasRows;
        con.Close();
        if (isRow)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('the user already exists');", true);
        }
        else
        {
            con.Open();
            string inset = MakeSQL("Insert", Request.Params["UserName"], Request.Params["Password"], Request.Params["Gender"], Request.Params["Email"], Request.Params["music"],list);
            RunSQL(inset);
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
 
    protected string MakeSQL(string name, string fN, string lN, string gender,string email,string type, string list)
    {
        if (name == "Delete")
        {
            return "DELETE FROM [EmployeeCaseStudy].[dbo].[Shir_New] WHERE UserName='" + fN + "' AND Password='" + lN + "'";
        }
        if (name == "Insert")
        {
            return "INSERT INTO [EmployeeCaseStudy].[dbo].[Shir_New](UserName, Password, Gender, Email, Type, List ) VALUES ('" + fN + "','" + lN + "','" + gender + "','" + email + "','" + type + "','" + list + "')";
        }
        return "SELECT * FROM [EmployeeCaseStudy].[dbo].[Shir_New] WHERE UserName='" + fN + "' AND Password='" + lN + "'";
    }
}