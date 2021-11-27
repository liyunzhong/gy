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
    public partial class addout : System.Web.UI.Page
    {
        protected List<Dormitory.Model.users> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.users().GetModelList("1=1 AND usertype=1");
            if(IsPostBack)
            {
                string uid = Request.Form["id"];
                users model = new Dormitory.BLL.users().GetModel(int.Parse(uid));

                model.outed = 1; 
                model.grade = Request.Form["grade"];
                model.outdate = Request.Form["outdate"];
                model.outreason = Request.Form["outreason"];
             

                new Dormitory.BLL.users().Update(model);

                MessageBox.ShowAndRedirect(this, "操作成功", "outlist.aspx");
            }
        }
    }
}