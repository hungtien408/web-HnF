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

public partial class ad_single_article : System.Web.UI.Page
{
    DataView oPosition = new DataView();
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
        oPosition = new Position().PositionSelectAll("", "", "").DefaultView;
    }
    public void RadGrid1_ItemCreated(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {

        if(e.Item is GridDataItem)
        {

            var dataItem = (DataRowView)e.Item.DataItem;
            if(dataItem != null)
            {
                var ddlPosition = (RadComboBox)e.Item.FindControl("ddlPosition");
                ddlPosition.DataSource = oPosition;
                ddlPosition.DataBind();
                var InterViewID = dataItem["InterViewID"].ToString();
                var dpInterviewDate = (RadDatePicker)e.Item.FindControl("dpInterviewDate");

                if(!string.IsNullOrEmpty(InterViewID))
                {
                    var dv = (DataView)(new TLLib.InterView().InterViewSelectOne(InterViewID.ToString()).DefaultView);

                    if(!string.IsNullOrEmpty(dv[0]["InterviewDate"].ToString()))
                        dpInterviewDate.SelectedDate = Convert.ToDateTime(dv[0]["InterviewDate"]);
                }
                else
                {
                    dpInterviewDate.SelectedDate = DateTime.Now;
                }
            }

        }
    }
    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if(e.CommandName == "DeleteSelected")
        {
            foreach(GridDataItem item in RadGrid1.SelectedItems)
            {
                try
                {
                    var InterviewID = item.GetDataKeyValue("InterViewID").ToString();
                    new InterView().InterViewDelete(InterviewID);
                }
                catch(Exception ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }
        else if(Request.QueryString["ID"] != null)
        {
            if(e.CommandName == "EditSelected")
            {
                for(int i = 0; i < RadGrid1.Items.Count; i++)
                {
                    var item = RadGrid1.Items[i];
                    if(item.ItemType == GridItemType.Item || item.ItemType == GridItemType.AlternatingItem)
                    {
                        string PersonalID = Request.QueryString["ID"].ToString();
                        string InterviewID = item["InterviewID"].Text.Trim();
                        string InterviewDate = (item.FindControl("dpInterviewDate") as RadDatePicker).SelectedDate.ToString();
                        string InterveiwPosition = ((RadComboBox)item.FindControl("ddlPosition")).Text.Trim();
                        string Company = (item.FindControl("txtCompany") as TextBox).Text.Trim();
                        string EnglishLevel = (item.FindControl("txtEnglishLevel") as TextBox).Text.Trim();
                        string HighTechLevel = (item.FindControl("txtHighTechLevel") as TextBox).Text.Trim();
                        string Attitude = (item.FindControl("txtAttitude") as TextBox).Text.Trim();
                        string Salary = (item.FindControl("txtSalary") as TextBox).Text.Trim();
                        string Experience = (item.FindControl("txtExperience") as TextBox).Text.Trim();
                        string TelSummary = FCKEditorFix.Fix((item.FindControl("txtTelSummary") as RadEditor).Content.Trim());
                        string InterviewContent = FCKEditorFix.Fix((item.FindControl("txtInterviewContent") as RadEditor).Content.Trim());

                        new TLLib.InterView().InterViewUpdate(
                              InterviewID,
                              PersonalID,
                              InterviewDate,
                              InterveiwPosition,
                              Company,
                              TelSummary,
                              EnglishLevel,
                              HighTechLevel,
                              Attitude,
                              Salary,
                              Experience,
                              InterviewContent
                         );
                    }
                }
                RadGrid1.Rebind();
            }
            else if(e.CommandName == "Insert")
            {
                string PersonalID = Request.QueryString["ID"].ToString();

                new TLLib.InterView().InterViewInsert(
                    Guid.NewGuid().GetHashCode().ToString("X"),
                    PersonalID,
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
               );
               RadGrid1.Rebind();
            }
        }
    }

    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if(e.Item is GridDataItem)
        {
            var dataItem = (DataRowView)e.Item.DataItem;
            if(dataItem != null)
            {
                var ddlPosition = (RadComboBox)e.Item.FindControl("ddlPosition");
                var InterViewID = dataItem["InterViewID"].ToString();
                var itemtype = e.Item.ItemType;
                var dv = new TLLib.InterView().InterViewSelectOne(InterViewID.ToString()).DefaultView;
                if(!string.IsNullOrEmpty(InterViewID))
                {
                    if(!string.IsNullOrEmpty(dv[0]["InterveiwPosition"].ToString()))
                        ddlPosition.SelectedValue = dv[0]["InterveiwPosition"].ToString();
                }
            }
        }
    }
    protected void RadGrid1_DataBound(object sender, EventArgs e)
    {

    }
}
    #endregion

