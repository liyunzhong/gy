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
    public partial class addinout1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                Tinout model = new Tinout();
                model.Created = DateTime.Now.ToString();
                model.Dh = Request.Form["Dh"];
                model.Room = Request.Form["Room"];
                model.Username = Request.Form["Username"];
                model.Type = int.Parse(Request.Form["Type"]);
                model.Wplx = Request.Form["Wplx"];
                model.Remark = Request.Form["Remark"];
                new Dormitory.BLL.Tinout().Add(model);
                MessageBox.ShowAndRedirect(this, "记录成功", "addinout1.aspx");
            }
        }
    }
}