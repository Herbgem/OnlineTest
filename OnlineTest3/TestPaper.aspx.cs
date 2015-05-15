using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
 
namespace OnlineTest3
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Models.UsersDb ds;
        SqlDataAdapter da;
        SqlCommandBuilder sc;

        public WebForm10()
        {
            ds = new Models.UsersDb();
            da = new SqlDataAdapter(
                string.Format("select * from {0}", ds.TestPaper.TableName),
                System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
            da.Fill(ds, ds.TestPaper.TableName);
            sc = new SqlCommandBuilder(da);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvUsers.DataSource = ds.Tables[ds.TestPaper.TableName];
                gvUsers.DataBind();
            }
        }
    }
}