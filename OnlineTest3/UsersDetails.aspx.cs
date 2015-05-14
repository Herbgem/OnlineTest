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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Models.UsersDb ds = new Models.UsersDb();
                SqlDataAdapter da = new SqlDataAdapter(
                    string.Format("select * from {0}", ds.UserProfiles.TableName),
                    System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
                da.Fill(ds, ds.UserProfiles.TableName);
                gvUsers.DataSource = ds.Tables[ds.UserProfiles.TableName];
                gvUsers.DataBind();
            }
        }
    }
}