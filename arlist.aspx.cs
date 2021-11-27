using Dormitory.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.apps
{
    public partial class arlist : System.Web.UI.Page
    {
        protected List<Dormitory.Model.users> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.list = new List<users>();
            List<users> list1 = new Dormitory.BLL.users().GetModelList("1=1 AND usertype=1");
            if(list1.Count>0)
            {
                foreach (var item in list1)
                {
                    List<Arrange> x = new Dormitory.BLL.Arrange().GetModelList(" Userid="+item.id);
                    if (x.Count > 0)
                    {
                        Arrange ax = x[0];
                        ax.room = new Dormitory.BLL.Room().GetModel(int.Parse(ax.Roomid+""));
                        item.a = ax;
                    }
                    else { item.a = null; }
                    this.list.Add(item);   
                }
            }

        }
    }
}