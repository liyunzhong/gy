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
    public partial class adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                users model = new users();
                model.created = DateTime.Now.ToString();
                model.username = Request.Form["username"];
                model.realname = Request.Form["realname"];
                model.sex = Request.Form["sex"];
                model.college = Request.Form["college"];
                model.major = Request.Form["major"];
                model.classs = Request.Form["classs"];
                model.nation = Request.Form["nation"];
                model.zzmm = Request.Form["zzmm"];
                model.tel = Request.Form["tel"];
                model.usertype = 1+"";
                new Dormitory.BLL.users().Add(model);

                MessageBox.ShowAndRedirect(this,"新增成功","adduser.aspx");
            }
        }
    }
}