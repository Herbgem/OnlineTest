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
    public partial class WebForm9 : System.Web.UI.Page
    {
        Models.UsersDb ds;
        SqlDataAdapter da;
        SqlCommandBuilder sc;

        public WebForm9()
        {
            ds = new Models.UsersDb();
            da = new SqlDataAdapter(
                string.Format("select * from {0}", ds.Subjects.TableName),
                System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
            sc = new SqlCommandBuilder(da);
            da.Fill(ds, ds.Subjects.TableName);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                gvUsers.DataSource = ds.Tables[ds.Subjects.TableName];
                gvUsers.DataBind();
            }
        }

        protected void AddSubject_Click(object sender, EventArgs e)
        {
            AddArea.Visible = true;
        }

        protected void HeaderChkBox_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void BtnSummitAdd_Click(object sender, EventArgs e)
        {
            ds.Subjects.AddSubjectsRow(txtSubject.Text);
            da.Update(ds, ds.Subjects.TableName);
            ds.Subjects.Clear();
            da.Fill(ds, ds.Subjects.TableName);
            gvUsers.DataSource = ds.Subjects;
            gvUsers.DataBind();
        }
    }
}