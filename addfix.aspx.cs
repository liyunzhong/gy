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
    public partial class addfix : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Fix model = new Fix();
                model.Time = DateTime.Now.ToString();
                model.Thing = Request.Form["Thing"];
                model.Room = Request.Form["Room"];
                model.Username = Request.Form["Username"];                
                model.Reason = Request.Form["Reason"];
                model.Remark = Request.Form["Remark"];
                new Dormitory.BLL.Fix().Add(model);
                MessageBox.ShowAndRedirect(this, "记录成功", "addfix.aspx");
            }
        }
    }
}