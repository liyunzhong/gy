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
    public partial class domin : System.Web.UI.Page
    {
        protected List<Dormitory.Model.Room> list;
        protected List<Dormitory.Model.users> list1;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.Room().GetModelList("1=1");
            this.list1 = new Dormitory.BLL.users().GetModelList("1=1 AND usertype=1");
            if(IsPostBack)
            {
                Arrange model = new Arrange();
                model.Userid = int.Parse(Request.Form["Userid"]);
                model.Roomid = int.Parse(Request.Form["Roomid"]);
                model.RNo = Request.Form["RNo"];
                model.Indate = DateTime.Now.ToString();
                new Dormitory.BLL.Arrange().Add(model);

                MessageBox.ShowAndRedirect(this, "操作成功", "arlist.aspx");
            }

        }
    }
}