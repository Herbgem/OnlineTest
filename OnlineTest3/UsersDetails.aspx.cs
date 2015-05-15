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
        Models.UsersDb ds;
        SqlDataAdapter da;
        SqlCommandBuilder sc;

        public WebForm6()
        {
            ds = new Models.UsersDb();
            da = new SqlDataAdapter(
                    string.Format("select * from {0}", ds.UserProfiles.TableName),
                    System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
            da.Fill(ds, ds.UserProfiles.TableName);
            sc = new SqlCommandBuilder(da);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvUsers.DataSource = ds.Tables[ds.UserProfiles.TableName];
                gvUsers.DataBind();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < gvUsers.Rows.Count; ++i)
            {
                CheckBox cb = gvUsers.Rows[i].Cells[0].FindControl("chkbox") as CheckBox;
                if (cb.Checked == true)
                {
                    ds.Tables[ds.UserProfiles.TableName].Rows[i].Delete();
                }
            }
            da.Update(ds, ds.UserProfiles.TableName);
            gvUsers.DataSource = ds.Tables[ds.UserProfiles.TableName];
            gvUsers.DataBind();
        }

        protected void HeaderChkBox_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox cb = sender as CheckBox;
            if (cb.Checked == true) 
            {
                foreach (GridViewRow vr in this.gvUsers.Rows)
                {
                    (vr.FindControl("chkbox") as CheckBox).Checked = true;
                }
            }
            else
            {
                foreach (GridViewRow vr in this.gvUsers.Rows)
                {
                    (vr.FindControl("chkbox") as CheckBox).Checked = false;
                }
            }
        }
    }
}