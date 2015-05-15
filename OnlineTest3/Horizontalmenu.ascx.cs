using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTest3
{
    public partial class Horizontalmenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UserName"] != null)
            {
                hlLogin.Visible = false;
                hlRegister.Visible = false;
                
                if (Models.UserInfo.UserName == "admin")
                {
                    UserOPS.Visible = true;
                    TestOPS.Visible = true;
                }
            }
        }
    }
}