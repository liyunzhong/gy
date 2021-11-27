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
    public partial class addroom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                Room model = new Room();
                model.Area = Request.Form["Area"];
                model.Dh = Request.Form["Dh"];
                model.Lc = Request.Form["Lc"];
                model.Sex = Request.Form["Sex"];
                model.Roomnum = Request.Form["Roomnum"];
                model.Roomusers = Request.Form["Roomusers"];
                model.Price = Request.Form["Price"];

                new Dormitory.BLL.Room().Add(model);
                MessageBox.ShowAndRedirect(this, "操作成功", "roomlist.aspx");
            }
        }
    }
}