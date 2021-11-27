using Maticsoft.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class editfix : System.Web.UI.Page
    {
        protected Dormitory.Model.Fix model;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            this.model = new Dormitory.BLL.Fix().GetModel(id);
            if (IsPostBack)
            {
                id = int.Parse(Request.Form["id"]);
                this.model = new Dormitory.BLL.Fix().GetModel(id);
                this.model.Username = Request.Form["Username"];
                this.model.Reason = Request.Form["Reason"];
                this.model.Room = Request.Form["Room"];                
                this.model.Thing = Request.Form["Thing"];
                this.model.Remark = Request.Form["Remark"];

                new Dormitory.BLL.Fix().Update(model);
                MessageBox.ShowAndRedirect(this, "操作成功", "fixlist.aspx");
            }

        }
    }
}