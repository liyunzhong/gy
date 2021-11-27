using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class roomlist : System.Web.UI.Page
    {
        protected List<Dormitory.Model.Room> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new Dormitory.BLL.Room().GetModelList("1=1");
        }
    }
}