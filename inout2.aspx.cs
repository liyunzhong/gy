using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class inout2 : System.Web.UI.Page
    {
        protected List<Dormitory.Model.Inouts> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.Inouts().GetModelList("1=1");
        }
    }
}