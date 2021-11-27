using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class adminlist : System.Web.UI.Page
    {
        protected List<Dormitory.Model.users> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.users().GetModelList("usertype=3 OR usertype=4");
        }
    }
}