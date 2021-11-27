using Maticsoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];

                string sql = @"  username='" + username + "' AND password='" + password + "';";
                DataSet ds = new Dormitory.BLL.users().GetList(sql);
                int count = ds.Tables.Count;
                DataTable dt = ds.Tables[0];
                if (dt.Rows.Count != 1)
                {
                    MessageBox.ShowAndRedirect(this, "账户或者密码错误，请重试", "Login.aspx");
                }
                else
                {
                    string usertype = dt.Rows[0]["usertype"]+"";
                    if("1".Equals(usertype)||"2".Equals(usertype))
                    {
                        MessageBox.ShowAndRedirect(this, "账户或者密码错误，请重试", "Login.aspx");
                    }
                    else { 
                    Session["LoginUser"] = dt.Rows[0];
                    Session["UserName"] = dt.Rows[0]["username"];
                    Session["UserID"] = dt.Rows[0]["id"];
                    Session["UserType"] = dt.Rows[0]["usertype"];

                    MessageBox.ShowAndRedirect(this, "恭喜您，登录成功", "default.aspx");
                    }
                }
            }
        }
    }
}