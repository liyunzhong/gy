using Maticsoft.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class editinout2 : System.Web.UI.Page
    {
        protected Dormitory.Model.Inouts model;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            this.model = new Dormitory.BLL.Inouts().GetModel(id);
            if (IsPostBack)
            {
                id = int.Parse(Request.Form["id"]);
                this.model = new Dormitory.BLL.Inouts().GetModel(id);
                this.model.Username = Request.Form["Username"];
                this.model.Dh = Request.Form["Dh"];
                this.model.Room = Request.Form["Room"];
                this.model.Calluser = Request.Form["Calluser"];
                this.model.Cards = Request.Form["Cards"];
                this.model.Remark = Request.Form["Remark"];

                new Dormitory.BLL.Inouts().Update(model);
                MessageBox.ShowAndRedirect(this, "操作成功", "inout2.aspx");
            }

        }
    }
}