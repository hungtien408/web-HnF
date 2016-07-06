using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class thong_so_size : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Thông Số Size";
        var meta = new HtmlMeta() { Name = "description", Content = "Thông Số Size" };
        Header.Controls.Add(meta);
    }
}