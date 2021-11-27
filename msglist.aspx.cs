using Dormitory.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class msglist : System.Web.UI.Page
    {
        protected List<Dormitory.Model.Helpinfo> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new List<Helpinfo>();
            List<Helpinfo> list1 =  new Dormitory.BLL.Helpinfo().GetModelList("1=1");
            if(list1.Count>0)
            {
                foreach (var item in list1)
	{
		 item.u = new Dormitory.BLL.users().GetModel(item.Userid);
         this.list.Add(item);
	}
            }

            
        }
    }
}