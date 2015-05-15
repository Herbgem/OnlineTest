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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlDataAdapter da;
        Models.UsersDb ds;
        SqlCommandBuilder sc;

        public WebForm8()
        {
            ds = new Models.UsersDb();
            da = new SqlDataAdapter(
                string.Format("select * from {0}", ds.UserTests.TableName),
                System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
            da.Fill(ds, ds.UserTests.TableName);
            sc = new SqlCommandBuilder(da);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvUsers.DataSource = ds.Tables[ds.UserTests.TableName];
                gvUsers.DataBind();
            }
        }
    }
}