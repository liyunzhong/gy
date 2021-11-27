using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class outlist : System.Web.UI.Page
    {
        protected List<Dormitory.Model.users> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.users().GetModelList("outed=1 AND usertype=1");
        }
    }
}