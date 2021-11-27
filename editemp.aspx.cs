using Maticsoft.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class editemp : System.Web.UI.Page
    {
        protected Dormitory.Model.users model;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int userid = int.Parse(Session["UserID"] + "");
                string getUserId = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(getUserId))
                {
                    userid = int.Parse(getUserId);
                }
                this.model = new Dormitory.BLL.users().GetModel(userid);
            }
            else
            {
                string uid = Request.Form["id"];
                this.model = new Dormitory.BLL.users().GetModel(int.Parse(uid));


               this.model.username = Request.Form["username"];
               this.model.realname = Request.Form["realname"];
               this.model.sex = Request.Form["sex"];
               this.model.address = Request.Form["address"];
               this.model.addressfloor = Request.Form["addressfloor"];
               this.model.addressroom = Request.Form["addressroom"];     
               
                new Dormitory.BLL.users().Update(this.model);

                MessageBox.ShowAndRedirect(this, "操作成功", "editemp.aspx?id=" + uid);
            }

        }
    }
}