using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using TLLib;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;


public partial class ad_single_careercategory : System.Web.UI.Page
{
    #region Common Method

    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (RadComboBox)sender;
        cbo.Items.Insert(0, new RadComboBoxItem(""));
    }
    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if (e.CommandName == "DeleteSelected")
        {
            var oPosition = new Position();
            var errorList = "";

            foreach(GridDataItem item in RadGrid1.SelectedItems)
            {
                //var isChildCategoryExist = oPosition.PositionIsChildrenExist(item.GetDataKeyValue("PositionID").ToString());
                var PositionName = ((Label)item.FindControl("lblPositionName")).Text;

                //if(isChildCategoryExist)
                //{
                //    errorList += ", " + PositionName;
                //}

            }
            if (!string.IsNullOrEmpty(errorList))
            {
                e.Canceled = true;
                string strAlertMessage = "Danh mục <b>\"" + errorList.Remove(0, 1).Trim() + "\"</b> đang có danh mục con.<br /> Xin xóa danh mục con trong danh mục này hoặc thiết lập hiển thị = \"không\".";
                lblError.Text = strAlertMessage;
            }
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            
            string strPositionName = ((RadTextBox)row.FindControl("txtPositionName")).Text.Trim();
          
            var oPosition = new Position();

            if(e.CommandName == "PerformInsert")
            {
                oPosition.PositionInsert(
                     strPositionName

                 );
                RadGrid1.Rebind();
            }
            else
            {
                var dsUpdateParam = ObjectDataSource1.UpdateParameters;
                var strPositionID = row.GetDataKeyValue("PositionID").ToString();
                dsUpdateParam["PositionName"].DefaultValue = strPositionName;
            }
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        
    }
    #endregion
}