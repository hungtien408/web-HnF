using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Áo Thun Đồng Phục Cao Cấp HnF";
        var meta = new HtmlMeta() { Name = "description", Content = "HnF chuyên Áo Thun Đồng Phục Cao Cấp, áo thun quảng cáo sự kiện, áo nhóm, áo lớp. Ao Thun Dong Phuc được may đẹp, vải đẹp, in thêu sắc sảo, áo thun được thiết kế theo yêu cầu của bạn, giao hàng nhanh." };
        Header.Controls.Add(meta);
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}