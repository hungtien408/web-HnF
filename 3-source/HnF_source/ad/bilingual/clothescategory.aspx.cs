﻿using System;
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


public partial class ad_single_productcategory : System.Web.UI.Page
{
    #region Common Method

    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (RadComboBox)sender;
        cbo.Items.Insert(0, new RadComboBoxItem(""));
    }

    void DeleteImage(string strImageName)
    {
        if (!string.IsNullOrEmpty(strImageName))
        {
            string strOldImagePath = Server.MapPath("~/res/productcategory/" + strImageName);
            if (File.Exists(strOldImagePath))
                File.Delete(strOldImagePath);
        }
    }

    void DeleteImageMenu(string strImageMenu)
    {
        if (!string.IsNullOrEmpty(strImageMenu))
        {
            string strOldImageMenuPath = Server.MapPath("~/res/productcategory/menu/" + strImageMenu);
            if (File.Exists(strOldImageMenuPath))
                File.Delete(strOldImageMenuPath);
        }
    }

    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if (e.CommandName == "QuickUpdate")
        {
            string ProductCategoryID, IsShowOnMenu, IsShowOnHomePage, IsAvailable;
            var oProductCategory = new ProductCategory();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                ProductCategoryID = item.GetDataKeyValue("ProductCategoryID").ToString();
                IsShowOnMenu = ((CheckBox)item.FindControl("chkIsShowOnMenu")).Checked.ToString();
                IsShowOnHomePage = ((CheckBox)item.FindControl("chkIsShowOnHomePage")).Checked.ToString();
                IsAvailable = ((CheckBox)item.FindControl("chkIsAvailable")).Checked.ToString();

                oProductCategory.ProductCategoryQuickUpdate(
                    ProductCategoryID,
                    IsShowOnMenu,
                    IsShowOnHomePage,
                    IsAvailable
                );
            }
        }
        else if (e.CommandName == "DeleteSelected")
        {
            var oProductCategory = new ProductCategory();
            var errorList = "";

            foreach (GridDataItem item in RadGrid1.SelectedItems)
            {
                var isChildCategoryExist = oProductCategory.ProductCategoryIsChildrenExist(item.GetDataKeyValue("ProductCategoryID").ToString());
                var ProductCategoryName = ((Label)item.FindControl("lblProductCategoryName")).Text;
                var ProductCategoryNameEn = ((Label)item.FindControl("lblProductCategoryNameEn")).Text;
                if (isChildCategoryExist)
                {
                    errorList += ", " + ProductCategoryName;
                }
                else
                {
                    string strImageName = ((HiddenField)item.FindControl("hdnImageName")).Value;

                    if (!string.IsNullOrEmpty(strImageName))
                    {
                        string strSavePath = Server.MapPath("~/res/productcategory/" + strImageName);
                        if (File.Exists(strSavePath))
                            File.Delete(strSavePath);
                    }

                    string strImageMenu = ((HiddenField)item.FindControl("hdnImageMenu")).Value;

                    if (!string.IsNullOrEmpty(strImageMenu))
                    {
                        string strSavePathMenu = Server.MapPath("~/res/productcategory/menu/" + strImageMenu);
                        if (File.Exists(strSavePathMenu))
                            File.Delete(strSavePathMenu);
                    }
                }
            }
            if (!string.IsNullOrEmpty(errorList))
            {
                e.Canceled = true;
                string strAlertMessage = "Danh mục <b>\"" + errorList.Remove(0, 1).Trim() + "\"</b> đang có danh mục con hoặc sản phẩm.<br /> Xin xóa danh mục con hoặc sản phẩm trong danh mục này hoặc thiết lập hiển thị = \"không\".";
                lblError.Text = strAlertMessage;
            }
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var FileImageMenu = (RadUpload)row.FindControl("FileImageMenu");

            string strProductCategoryName = ((RadTextBox)row.FindControl("txtProductCategoryName")).Text.Trim();
            string strProductCategoryNameEn = ((RadTextBox)row.FindControl("txtProductCategoryNameEn")).Text.Trim();
            string strConvertedProductCategoryName = Common.ConvertTitle(strProductCategoryName);
            string strServiceCategoryID = ((RadComboBox)row.FindControl("ddlServiceCategory")).SelectedValue;
            string strDescription = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtDescription")).Content.Trim()));
            string strDescriptionEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtDescriptionEn")).Content.Trim()));
            string strContent = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContent")).Content.Trim()));
            string strContentEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContentEn")).Content.Trim()));
            string strMetaTitle = ((RadTextBox)row.FindControl("txtMetaTitle")).Text.Trim();
            string strMetaTitleEn = ((RadTextBox)row.FindControl("txtMetaTitleEn")).Text.Trim();
            string strMetaDescription = ((RadTextBox)row.FindControl("txtMetaDescription")).Text.Trim();
            string strMetaDescriptionEn = ((RadTextBox)row.FindControl("txtMetaDescriptionEn")).Text.Trim();
            string strImageName = FileImageName.UploadedFiles.Count > 0 ? FileImageName.UploadedFiles[0].GetName() : "";
            string strImageMenu = FileImageMenu.UploadedFiles.Count > 0 ? FileImageMenu.UploadedFiles[0].GetName() : "";
            string strParentID = ((RadComboBox)row.FindControl("ddlParent")).SelectedValue;
            if ("".Equals(strParentID))
                strParentID = "2";
            string strIsAvailable = ((CheckBox)row.FindControl("chkIsAvailable")).Checked.ToString();
            string strIsShowOnMenu = ((CheckBox)row.FindControl("chkIsShowOnMenu")).Checked.ToString();
            string strIsShowOnHomePage = ((CheckBox)row.FindControl("chkIsShowOnHomePage")).Checked.ToString();


            var oProductCategory = new ProductCategory();

            if (e.CommandName == "PerformInsert")
            {
                strImageName = oProductCategory.ProductCategoryInsert(
                    strProductCategoryName,
                    strProductCategoryNameEn,
                    strConvertedProductCategoryName,
                    strServiceCategoryID,
                    strDescription,
                    strDescriptionEn,
                    strContent,
                    strContentEn,
                    strMetaTitle,
                    strMetaTitleEn,
                    strMetaDescription,
                    strMetaDescriptionEn,
                    strImageName,
                    strImageMenu,
                    strParentID,
                    strIsShowOnMenu,
                    strIsShowOnHomePage,
                    strIsAvailable
                );

                string ProductCategoryID = oProductCategory.ProductCategoryID;
                string strFullPath = "~/res/productcategory/" + strImageName;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    //ResizeCropImage.ResizeByCondition(strFullPath, 40, 40);
                }

                strImageMenu = (string.IsNullOrEmpty(strConvertedProductCategoryName) ? "" : strConvertedProductCategoryName + "-") + ProductCategoryID + strImageMenu.Substring(strImageMenu.LastIndexOf('.'));

                string strFullPathMenu = "~/res/productcategory/menu/" + strImageMenu;

                if (!string.IsNullOrEmpty(strImageMenu))
                {
                    FileImageMenu.UploadedFiles[0].SaveAs(Server.MapPath(strFullPathMenu));
                    //ResizeCropImage.ResizeByCondition(strFullPath, 40, 40);
                }
                RadGrid1.Rebind();
            }
            else
            {
                var dsUpdateParam = ObjectDataSource1.UpdateParameters;
                var strProductCategoryID = row.GetDataKeyValue("ProductCategoryID").ToString();
                var strOldImageName = ((HiddenField)row.FindControl("hdnImageName")).Value;
                var strOldImagePath = Server.MapPath("~/res/productcategory/" + strOldImageName);
                var strOldImageMenu = ((HiddenField)row.FindControl("hdnImageMenu")).Value;
                var strOldImagePathMenu = Server.MapPath("~/res/productcategory/menu/" + strOldImageMenu);

                dsUpdateParam["ProductCategoryName"].DefaultValue = strProductCategoryName;
                dsUpdateParam["ProductCategoryNameEn"].DefaultValue = strProductCategoryNameEn;
                dsUpdateParam["ConvertedProductCategoryName"].DefaultValue = strConvertedProductCategoryName;
                dsUpdateParam["ServiceCategoryID"].DefaultValue = strServiceCategoryID;
                dsUpdateParam["Description"].DefaultValue = strDescription;
                dsUpdateParam["DescriptionEn"].DefaultValue = strDescriptionEn;
                dsUpdateParam["Content"].DefaultValue = strContent;
                dsUpdateParam["ContentEn"].DefaultValue = strContentEn;
                dsUpdateParam["ImageName"].DefaultValue = strImageName;
                dsUpdateParam["ImageMenu"].DefaultValue = strImageMenu;
                dsUpdateParam["ParentID"].DefaultValue = strParentID;
                dsUpdateParam["IsShowOnMenu"].DefaultValue = strIsShowOnMenu;
                dsUpdateParam["IsShowOnHomePage"].DefaultValue = strIsShowOnHomePage;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    var strFullPath = "~/res/productcategory/" + strConvertedProductCategoryName + "-" + strProductCategoryID + strImageName.Substring(strImageName.LastIndexOf('.'));

                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);

                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    //ResizeCropImage.ResizeByCondition(strFullPath, 40, 40);
                }

                if (!string.IsNullOrEmpty(strImageMenu))
                {
                    var strFullPathMenu = "~/res/productcategory/menu/" + strConvertedProductCategoryName + "-" + strProductCategoryID + strImageMenu.Substring(strImageMenu.LastIndexOf('.'));

                    if (File.Exists(strOldImagePathMenu))
                        File.Delete(strOldImagePathMenu);

                    FileImageMenu.UploadedFiles[0].SaveAs(Server.MapPath(strFullPathMenu));
                    //ResizeCropImage.ResizeByCondition(strFullPath, 40, 40);
                }
            }
        }
        if (e.CommandName == "DeleteImage")
        {
            var oProductCategory = new ProductCategory();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strProductCategoryID = s[0];
            var strImageName = s[1];

            oProductCategory.ProductCategoryImageDelete(strProductCategoryID);
            DeleteImage(strImageName);
            RadGrid1.Rebind();
        }
        if (e.CommandName == "DeleteImageMenu")
        {
            var oProductCategory = new ProductCategory();
            var lnkDeleteImageMenu = (LinkButton)e.CommandSource;
            var s = lnkDeleteImageMenu.Attributes["rel"].ToString().Split('#');
            var strProductCategoryID = s[0];
            var strImageMenu = s[1];

            oProductCategory.ProductCategoryImageMenuDelete(strProductCategoryID);
            DeleteImageMenu(strImageMenu);
            RadGrid1.Rebind();
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if (e.Item is GridEditableItem && e.Item.IsInEditMode)
        {
            var itemtype = e.Item.ItemType;
            var row = itemtype == GridItemType.EditFormItem ? (GridEditFormItem)e.Item : (GridEditFormInsertItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var FileImageMenu = (RadUpload)row.FindControl("FileImageMenu");
            var ProductCategoryID = ((HiddenField)row.FindControl("hdnProductCategoryID")).Value;
            var dv = (DataView)ObjectDataSource1.Select();
            var ddlParent = (RadComboBox)row.FindControl("ddlParent");
            var ddlServiceCategory = (RadComboBox)row.FindControl("ddlServiceCategory");

            if (!string.IsNullOrEmpty(ProductCategoryID))
            {
                dv.RowFilter = "ProductCategoryID = " + ProductCategoryID;

                if (!string.IsNullOrEmpty(dv[0]["ParentID"].ToString()))
                    ddlParent.SelectedValue = dv[0]["ParentID"].ToString();
                if (!string.IsNullOrEmpty(dv[0]["ServiceCategoryID"].ToString()))
                    ddlServiceCategory.SelectedValue = dv[0]["ServiceCategoryID"].ToString();
            }

            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileImageName.ClientID));
            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId2'] = '{0}';", FileImageMenu.ClientID));
        }
    }

    protected void lnkUpOrder_Click(object sender, EventArgs e)
    {
        var lnkUpOrder = (LinkButton)sender;
        var strProductCategoryID = lnkUpOrder.Attributes["rel"];
        var oProductCategory = new ProductCategory();
        oProductCategory.ProductCategoryUpOrder(strProductCategoryID);
        RadGrid1.Rebind();

    }
    protected void lnkDownOrder_Click(object sender, EventArgs e)
    {
        var lnkDownOrder = (LinkButton)sender;
        var strProductCategoryID = lnkDownOrder.Attributes["rel"];
        var oProductCategory = new ProductCategory();
        oProductCategory.ProductCategoryDownOrder(strProductCategoryID);
        RadGrid1.Rebind();
    }
    #endregion
}