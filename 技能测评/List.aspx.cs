using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 技能测评
{
    public partial class Projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)//不是回发，是首次加载
            {
                Repeater1.DataSource = DALProject.GetAllProjects();
                Repeater1.DataBind(); 
            }
        }
    }
}