using Dormitory.Model;
using Maticsoft.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class addmsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Helpinfo model = new Helpinfo();
                model.Created = DateTime.Now.ToString();
                model.Subject = Request.Form["Subject"];
                model.Contents = Request.Form["Contents"];
                model.Userid = int.Parse(Session["UserID"]+"");
                new Dormitory.BLL.Helpinfo().Add(model);
                MessageBox.ShowAndRedirect(this, "记录成功", "addmsg.aspx");
            }
        }
    }
}