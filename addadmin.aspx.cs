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
    public partial class addadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                users model = new users();
                model.created = DateTime.Now.ToString();
                model.username = Request.Form["username"];
                model.password = Request.Form["password"];
                model.realname = Request.Form["realname"];
                model.sex = Request.Form["sex"];
                model.address = Request.Form["address"];
                model.tel = Request.Form["tel"];
                model.email = Request.Form["email"];
                model.usertype = Request.Form["usertype"] + "";
                new Dormitory.BLL.users().Add(model);

                MessageBox.ShowAndRedirect(this, "新增成功", "addadmin.aspx");
            }
        }
    }
}