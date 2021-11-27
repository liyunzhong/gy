using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class quit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["LoginUser"] = null;
            Session["UserName"] = null;
            Session["UserID"] = null;
            Session["UserType"] = null;

            Response.Redirect("/apps/login.aspx");
        }
    }
}