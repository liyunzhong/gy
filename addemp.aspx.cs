
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
    public partial class addemp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                users model = new users();
                model.created = DateTime.Now.ToString();
                model.username = Request.Form["username"];
                model.realname = Request.Form["realname"];
                model.sex = Request.Form["sex"];
                model.address = Request.Form["address"];
                model.addressfloor = Request.Form["addressfloor"];
                model.addressroom = Request.Form["addressroom"];             
                model.usertype = 2 + "";
                new Dormitory.BLL.users().Add(model);

                MessageBox.ShowAndRedirect(this, "新增成功", "addemp.aspx");
            }
        }
    }
}