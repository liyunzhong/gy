using Maticsoft.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class editinout1 : System.Web.UI.Page
    {
        protected Dormitory.Model.Tinout model;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            this.model = new Dormitory.BLL.Tinout().GetModel(id);
            if (IsPostBack)
            {
                id = int.Parse(Request.Form["id"]);
                this.model = new Dormitory.BLL.Tinout().GetModel(id);
                this.model.Username = Request.Form["Username"];
                this.model.Dh = Request.Form["Dh"];
                this.model.Room = Request.Form["Room"];
                this.model.Type =int.Parse( Request.Form["Type"]);
                this.model.Wplx = Request.Form["Wplx"];
                this.model.Remark = Request.Form["Remark"];

                new Dormitory.BLL.Tinout().Update(model);
                MessageBox.ShowAndRedirect(this, "操作成功", "inout1.aspx");
            }

        }
    }
}