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
    public partial class editroom : System.Web.UI.Page
    {

        protected Room model { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            this.model = new Dormitory.BLL.Room().GetModel(id);
            if(IsPostBack)
            {
                id = int.Parse(Request.Form["id"]);
                 this.model = new Dormitory.BLL.Room().GetModel(id);
                 this.model.Area = Request.Form["Area"];
                 this.model.Dh = Request.Form["Dh"];
                 this.model.Lc = Request.Form["Lc"];
                 this.model.Sex = Request.Form["Sex"];
                 this.model.Roomnum = Request.Form["Roomnum"];
                 this.model.Roomusers = Request.Form["Roomusers"];
                 this.model.Price = Request.Form["Price"];

                new Dormitory.BLL.Room().Update(model);
                MessageBox.ShowAndRedirect(this, "操作成功", "roomlist.aspx");
            }

        }
    }
}