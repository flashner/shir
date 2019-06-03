using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void NewString(object sender, EventArgs e,int index,bool heart)
    {
        string username=this.Session["Name"].ToString();
        string list = MakeSQL(username);
            char[] listChars = list.ToCharArray();
            if(!heart)
            {
                listChars[index] = '1';
            }
            else
            {
                listChars[index] = '0';
            }

            string updatedList = listChars.ToString();
            string sql="UPDATE [EmployeeCaseStudy].[dbo].[Shir_New] SET List='list' WHERE UserName='" + updatedList + "'";

    }
    protected string MakeSQL(string user)
    {
            return "SELECT FROM [EmployeeCaseStudy].[dbo].[Shir_New] WHERE UserName='" + user + "'";
    }
}