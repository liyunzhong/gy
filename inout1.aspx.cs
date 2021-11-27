using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class inout1 : System.Web.UI.Page
    {
        protected List<Dormitory.Model.Tinout> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.Tinout().GetModelList("1=1");
        }
    }
}