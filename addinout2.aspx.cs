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
    public partial class addinout2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Inouts model = new Inouts();
                model.Created = DateTime.Now.ToString();
                model.Dh = Request.Form["Dh"];
                model.Room = Request.Form["Room"];
                model.Username = Request.Form["Username"];
                model.Outdate = Request.Form["Outdate"];
                model.Cards = Request.Form["Cards"];
                model.Calluser = Request.Form["Calluser"];
                model.Remark = Request.Form["Remark"];
                new Dormitory.BLL.Inouts().Add(model);
                MessageBox.ShowAndRedirect(this, "记录成功", "addinout2.aspx");
            }
        }
    }
}