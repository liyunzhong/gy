using Maticsoft.DBUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class deldata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tabName = Request.QueryString["tab"];
            string ret = Request.QueryString["ret"];
            string id = Request.QueryString["id"];
            string sql = "DELETE FROM " + tabName + " WHERE id=" + id;
            DbHelperSQL.ExecuteSql(sql);
            Response.Write("<script>");
            Response.Write("alert('操作成功!');");
            Response.Write("window.location.href='" + ret + ".aspx';");
            Response.Write("</script>");
        }
    }
}