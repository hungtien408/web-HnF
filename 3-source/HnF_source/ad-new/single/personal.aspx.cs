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
using System.Web.Services;

public partial class ad_single_personal : System.Web.UI.Page
{

    #region Common Method

    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (RadComboBox)sender;
        cbo.Items.Insert(0, new RadComboBoxItem(""));
    }

    void DeleteImage(string strImageName)
    {
        if(!string.IsNullOrEmpty(strImageName))
        {
            var strImagePath = Server.MapPath("~/res/personal/" + strImageName);

            if(File.Exists(strImagePath))
                File.Delete(strImagePath);
        }
    }
    void DeleteFileDownload(string strFileDownload)
    {
        if (!string.IsNullOrEmpty(strFileDownload))
        {
            var strFileDownloadPath = Server.MapPath("~/res/quotation/" + strFileDownload);

            if (File.Exists(strFileDownloadPath))
                File.Delete(strFileDownloadPath);
        }
    }

    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            TempImage = new DataTable();
            TempImage.Columns.Add("ImageName");
        }
    }
    public void RadGrid1_ItemCreated(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        if(e.Item is GridCommandItem)
        {
            GridCommandItem commandItem = (e.Item as GridCommandItem);
            PlaceHolder container = (PlaceHolder)commandItem.FindControl("PlaceHolder1");
            Label label = new Label();
            label.Text = "&nbsp;&nbsp;";

            container.Controls.Add(label);

            for(int i = 65; i <= 65 + 25; i++)
            {
                LinkButton linkButton1 = new LinkButton();

                LiteralControl lc = new LiteralControl("&nbsp;&nbsp;");

                linkButton1.Text = "" + (char)i;

                linkButton1.CommandName = "alpha";
                linkButton1.CommandArgument = "" + (char)i;

                container.Controls.Add(linkButton1);
                container.Controls.Add(lc);
            }

            LiteralControl lcLast = new LiteralControl("&nbsp;");
            container.Controls.Add(lcLast);

            LinkButton linkButtonAll = new LinkButton();
            linkButtonAll.Text = "Tất cả";
            linkButtonAll.CommandName = "NoFilter";
            container.Controls.Add(linkButtonAll);
        }
    }
    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if(e.CommandName == "alpha" || e.CommandName == "NoFilter")
        {
            String value = null;
            switch(e.CommandName)
            {
                case ("alpha"):
                    {
                        value = string.Format("{0}%", e.CommandArgument);
                        break;
                    }
                case ("NoFilter"):
                    {
                        value = "%";
                        break;
                    }
            }
            ObjectDataSource1.SelectParameters["Name"].DefaultValue = value;
            ObjectDataSource1.DataBind();
            RadGrid1.Rebind();
        }
        else if (e.CommandName == "QuickUpdate")
        {
            string PersonalID, WorkHistory, Status, IsPV, IsChuyenTien, IsCatHang, IsDuyetMau, IsIn, IsTheu, IsMay, IsGiaoHang;
            var oPersonal = new Personal();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                PersonalID = item.GetDataKeyValue("PersonalID").ToString();
                WorkHistory = ((TextBox)item.FindControl("txtWorkHistory")).Text.Trim();
                Status = ((TextBox)item.FindControl("txtStatus")).Text.Trim();
                IsPV = ((CheckBox)item.FindControl("chkIsPV")).Checked.ToString();
                IsChuyenTien = ((CheckBox)item.FindControl("chkIsChuyenTien")).Checked.ToString();
                IsCatHang = ((CheckBox)item.FindControl("chkIsCatHang")).Checked.ToString();
                IsDuyetMau = ((CheckBox)item.FindControl("chkIsDuyetMau")).Checked.ToString();
                IsIn = ((CheckBox)item.FindControl("chkIsIn")).Checked.ToString();
                IsTheu = ((CheckBox)item.FindControl("chkIsTheu")).Checked.ToString();
                IsMay = ((CheckBox)item.FindControl("chkIsMay")).Checked.ToString();
                IsGiaoHang = ((CheckBox)item.FindControl("chkIsGiaoHang")).Checked.ToString();

                oPersonal.PersonalQuickUpdate(
                    PersonalID,
                    WorkHistory,
                    Status,
                    IsPV,
                    IsChuyenTien, 
                    IsCatHang, 
                    IsDuyetMau, 
                    IsIn, 
                    IsTheu, 
                    IsMay, 
                    IsGiaoHang
                );
            }
        }
        else if(e.CommandName == "DeleteSelected")
        {
            string OldImageName, OldFileDownload;
            var oPersonal = new TLLib.Personal();

            string errorList = "", Name = "";

            foreach(GridDataItem item in RadGrid1.SelectedItems)
            {
                try
                {
                    var PersonalID = item.GetDataKeyValue("PersonalID").ToString();
                    Name = item["Name"].Text;
                    oPersonal.PersonalDelete(PersonalID);

                    OldImageName = ((HiddenField)item.FindControl("hdnImageName")).Value;
                    OldFileDownload = ((HiddenField)item.FindControl("hdnFileDownload")).Value;
                    DeleteImage(OldImageName);
                    DeleteFileDownload(OldFileDownload);
                }
                catch(Exception ex)
                {
                    lblError.Text = ex.Message;
                    if(ex.Message == ((int)ErrorNumber.ConstraintConflicted).ToString())
                        errorList += ", " + Name;
                }
            }
            if(!string.IsNullOrEmpty(errorList))
            {
                e.Canceled = true;
                string strAlertMessage = "Cá nhân <b>\"" + errorList.Remove(0, 1).Trim() + " \"</b> đang có thông tin tham chiếu .<br /> Xin xóa thông tin tham chiếu trước.";
                lblError.Text = strAlertMessage;
            }
            RadGrid1.Rebind();
        }
        else if(e.CommandName == "InitInsert" || e.CommandName == "EditSelected" || e.CommandName == "Edit")
        {
            TempImage.Rows.Clear();
        }
        else if(e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var FileLinkDownload = (RadUpload)row.FindControl("FileLinkDownload");

            string PersonalID = ((HiddenField)row.FindControl("hdnPersonalID")).Value;
            string OldImageName = ((HiddenField)row.FindControl("hdnOldImageName")).Value;
            string OldLinkDownload = ((HiddenField)row.FindControl("hdnOldLinkDownload")).Value;
            string ImageName = FileImageName.UploadedFiles.Count > 0 ? FileImageName.UploadedFiles[0].GetName() : "";
            string LinkDownload = FileLinkDownload.UploadedFiles.Count > 0 ? FileLinkDownload.UploadedFiles[0].GetName() : "";
            string Name = ((RadTextBox)row.FindControl("txtName")).Text.Trim();
            string ConvertedName = TLLib.Common.ConvertTitle(Name);
            string ConvertedFileDownload = TLLib.Common.ConvertTitle(LinkDownload.Substring(0, LinkDownload.LastIndexOf('.')));
            string DoB = ((RadDatePicker)row.FindControl("dpDoB")).SelectedDate.ToString();
            string PoB = ((RadTextBox)row.FindControl("txtPoB")).Text.Trim();
            string Tel = ((RadTextBox)row.FindControl("txtTel")).Text.Trim();
            Tel = Tel.Replace(" ", string.Empty).Replace(".", string.Empty).Replace("_", string.Empty).ToString();
            string Email = ((RadTextBox)row.FindControl("txtEmail")).Text.Trim();
            string Sex = ((RadioButtonList)row.FindControl("RadioButtonListSex")).SelectedValue.ToString();
            string MaritalStatus = ((CheckBox)row.FindControl("chkMaritalStatus")).Checked.ToString();
            string Address = ((RadTextBox)row.FindControl("txtAddress")).Text.Trim();
            string Certificate = ((RadComboBox)row.FindControl("ddlCertificate")).SelectedValue;
            string Education = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtEducation")).Content.Trim());
            string WorkHistory = ((RadTextBox)row.FindControl("txtWorkHistory1")).Text.Trim();//FCKEditorFix.Fix(((RadEditor)row.FindControl("txtWorkHistory")).Content.Trim());
            string Status = ((RadTextBox)row.FindControl("txtStatus1")).Text.Trim();
            string Link = ((RadTextBox)row.FindControl("txtLink")).Text.Trim();
            string IsPV = ((CheckBox)row.FindControl("chkIsPV")).Checked.ToString();
            string IsChuyenTien = ((CheckBox)row.FindControl("chkIsChuyenTien")).Checked.ToString();
            string IsCatHang = ((CheckBox)row.FindControl("chkIsCatHang")).Checked.ToString();
            string IsDuyetMau = ((CheckBox)row.FindControl("chkIsDuyetMau")).Checked.ToString();
            string IsIn = ((CheckBox)row.FindControl("chkIsIn")).Checked.ToString();
            string IsTheu = ((CheckBox)row.FindControl("chkIsTheu")).Checked.ToString();
            string IsMay = ((CheckBox)row.FindControl("chkIsMay")).Checked.ToString();
            string IsGiaoHang = ((CheckBox)row.FindControl("chkIsGiaoHang")).Checked.ToString();

            if(e.CommandName == "PerformInsert")
            {
                var oPersonal = new Personal();

                ImageName = oPersonal.PersonalInsert(
                    ImageName,
                    Name,
                    ConvertedName,
                    ConvertedFileDownload,
                    DoB,
                    PoB,
                    Tel,
                    Email,
                    Sex,
                    MaritalStatus,
                    Address,
                    Certificate,
                    Education,
                    WorkHistory,
                    Status,
                    Link,
                    LinkDownload,
                    IsPV,
                    IsChuyenTien,
                    IsCatHang,
                    IsDuyetMau,
                    IsIn,
                    IsTheu,
                    IsMay,
                    IsGiaoHang
                );

                string strFullPath = "~/res/personal/" + ImageName;
                if(!string.IsNullOrEmpty(ImageName))
                {
                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 200, 200);
                }

                if (!string.IsNullOrEmpty(LinkDownload))
                {
                    //LinkDownload = (string.IsNullOrEmpty(ConvertedName) ? "" : ConvertedName + "-") + PersonalID + LinkDownload.Substring(LinkDownload.LastIndexOf('.'));
                    LinkDownload = (string.IsNullOrEmpty(ConvertedFileDownload) ? "" : ConvertedFileDownload + "-") + PersonalID + LinkDownload.Substring(LinkDownload.LastIndexOf('.'));
                    string strFullPathLinkDownload = "~/res/quotation/" + LinkDownload;
                    FileLinkDownload.UploadedFiles[0].SaveAs(Server.MapPath(strFullPathLinkDownload));
                }

                RadGrid1.Rebind();
            }
            else
            {
                var strOldImagePath = Server.MapPath("~/res/personal/" + OldImageName);
                var strOldImagePathLinkDownload = Server.MapPath("~/res/quotation/" + OldLinkDownload);
                new Personal().PersonalUpdate(
                    PersonalID,
                    ImageName,
                    Name,
                    ConvertedName,
                    ConvertedFileDownload,
                    DoB,
                    PoB,
                    Tel,
                    Email,
                    Sex,
                    MaritalStatus,
                    Address,
                    Certificate,
                    Education,
                    WorkHistory,
                    Status,
                    Link,
                    LinkDownload,
                    IsPV,
                    IsChuyenTien,
                    IsCatHang,
                    IsDuyetMau,
                    IsIn,
                    IsTheu,
                    IsMay,
                    IsGiaoHang
                );
                if (!string.IsNullOrEmpty(LinkDownload))
                {
                    if (File.Exists(strOldImagePathLinkDownload))
                        File.Delete(strOldImagePathLinkDownload);

                    //LinkDownload = (string.IsNullOrEmpty(ConvertedName) ? "" : ConvertedName + "-") + PersonalID + LinkDownload.Substring(LinkDownload.LastIndexOf('.'));
                    LinkDownload = (string.IsNullOrEmpty(LinkDownload) ? "" : ConvertedFileDownload + "-") + PersonalID + LinkDownload.Substring(LinkDownload.LastIndexOf('.'));

                    string strFullPathLinkDownload = "~/res/quotation/" + LinkDownload;

                    FileLinkDownload.UploadedFiles[0].SaveAs(Server.MapPath(strFullPathLinkDownload));
                }

                if (!string.IsNullOrEmpty(ImageName))
                {
                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);

                    ImageName = (string.IsNullOrEmpty(ConvertedName) ? "" : ConvertedName + "-") + PersonalID + ImageName.Substring(ImageName.LastIndexOf('.'));

                    string strFullPath = "~/res/personal/" + ImageName;

                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 200, 200);
                }
                RadGrid1.Rebind();
            }
        }
        else if(e.CommandName == "Cancel")
        {
            //if (TempImage.Rows.Count > 0)
            //{
            //    foreach (DataRow row in TempImage.Rows)
            //    {
            //        //DeletePhotoAlbum(row["ImageName"].ToString());
            //    }
            //    TempImage.Rows.Clear();
            //}
        }
        else if(e.CommandName == "DeleteImage")
        {
            var oPersonal = new TLLib.Personal();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strPersonalID = s[0];
            var ImageName = s[1];

            oPersonal.PersonalImageDelete(strPersonalID);
            DeleteImage(ImageName);
            RadGrid1.Rebind();
        }
        else if (e.CommandName == "DeleteFileDownload")
        {
            var oPersonal = new TLLib.Personal();
            var lnkDeleteFileDownload = (LinkButton)e.CommandSource;
            var s = lnkDeleteFileDownload.Attributes["rel"].ToString().Split('#');
            var strPersonalID = s[0];
            var FileDownload = s[1];

            oPersonal.PersonalFileDownloadDelete(strPersonalID);
            DeleteFileDownload(FileDownload);
            RadGrid1.Rebind();
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if(e.Item is GridEditableItem && e.Item.IsInEditMode)
        {
            var itemtype = e.Item.ItemType;
            var row = itemtype == GridItemType.EditFormItem ? (GridEditFormItem)e.Item : (GridEditFormInsertItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var FileLinkDownload = (RadUpload)row.FindControl("FileLinkDownload");

            var dv = (DataView)ObjectDataSource1.Select();
            var PersonalID = ((HiddenField)row.FindControl("hdnPersonalID")).Value;
            var ddlCertificate = (RadComboBox)row.FindControl("ddlCertificate");
            var dpDoB = (RadDatePicker)row.FindControl("dpDoB");

            if(!string.IsNullOrEmpty(PersonalID))
            {
                dv.RowFilter = "PersonalID = " + PersonalID;
                if(!string.IsNullOrEmpty(dv[0]["Certificate"].ToString()))
                    ddlCertificate.SelectedValue = dv[0]["Certificate"].ToString();
                if(!string.IsNullOrEmpty(dv[0]["DoB"].ToString()))
                    dpDoB.SelectedDate = Convert.ToDateTime(dv[0]["DoB"]);
            }
            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileImageName.ClientID));
            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId2'] = '{0}';", FileLinkDownload.ClientID));
        }
    }

    [WebMethod]
    public static string ServerSideMethod(string param1)
    {
        var dv = new TLLib.Personal().PersonalSelectName(param1).DefaultView;
        return dv.Count > 0 ? "Tên: " + dv[0]["Name"].ToString() + "\n" + "ĐT: " + dv[0]["Tel"].ToString()  +"\n" + "Email: " + dv[0]["Email"].ToString()  + "\n": "0";
    }
    #endregion

    #region Properties

    private DataTable TempImage
    {
        get { return (DataTable)ViewState["TempImage"]; }
        set { ViewState["TempImage"] = value; }
    }

    #endregion
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var dsSelect = ObjectDataSource1.SelectParameters;
        dsSelect["Name"].DefaultValue = TLLib.Common.ChangeToNoSymBol(txtNameSearch.Text.Trim());
    }
}