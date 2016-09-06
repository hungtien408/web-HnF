<%@ Page Title="" Language="C#" MasterPageFile="~/ad-new/template/admin.master" AutoEventWireup="true"
    CodeFile="personal.aspx.cs" Inherits="ad_single_personal" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="Spaanjaars.Toolkit" Namespace="Spaanjaars.Toolkit" TagPrefix="isp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <link href="../assets/styles/rating.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var tableView = null;
        function RowDblClick(sender, eventArgs) {
            sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
        }

        function RowMouseOver(sender, eventArgs) {
            var selectedRows = sender.get_masterTableView().get_selectedItems();
            var elem = $get(eventArgs.get_id());
            if (selectedRows.length > 0)
                for (var i = 0; i < selectedRows.length; i++) {
                    var selectedID = selectedRows[i].get_id();

                    if (selectedID != eventArgs.get_id())
                        elem.className += (" rgSelectedRow");
                }
            else
                elem.className += (" rgSelectedRow");
        }

        function RowMouseOut(sender, eventArgs) {
            var className = "rgSelectedRow";
            var elem = $get(eventArgs.get_id());

            var selectedRows = sender.get_masterTableView().get_selectedItems();

            if (selectedRows.length > 0)
                for (var i = 0; i < selectedRows.length; i++) {
                    var selectedID = selectedRows[i].get_id();
                    if (selectedID != eventArgs.get_id())
                        removeCssClass(className, elem);
                }
            else
                removeCssClass(className, elem);
        }

        function removeCssClass(className, element) {
            element.className = element.className.replace(className, "").replace(/^\s+/, '').replace(/\s+$/, '');
        }

        function pageLoad(sender, args) {
            tableView = $find("<%= RadGrid1.ClientID %>").get_masterTableView();
        }

        function RadComboBox1_SelectedIndexChanged(sender, args) {
            tableView.set_pageSize(sender.get_value());
        }

        function changePage(argument) {
            tableView.page(argument);
        }

        function RadNumericTextBox1_ValueChanged(sender, args) {
            tableView.page(sender.get_value());
        }

        //On insert and update buttons click temporarily disables ajax to perform upload actions
        function conditionalPostback(sender, eventArgs) {
            var theRegexp = new RegExp("\.lnkUpdate$|\.lnkUpdateTop$|\.PerformInsertButton$", "ig");
            if (eventArgs.get_eventTarget().match(theRegexp)) {
                var upload = $find(window['UploadId']);

                //AJAX is disabled only if file is selected for upload
                if (upload.getFileInputs()[0].value != "") {
                    eventArgs.set_enableAjax(false);
                }
            }
            else if (eventArgs.get_eventTarget().indexOf("ExportToExcelButton") >= 0 || eventArgs.get_eventTarget().indexOf("ExportToWordButton") >= 0 || eventArgs.get_eventTarget().indexOf("ExportToPdfButton") >= 0)
                eventArgs.set_enableAjax(false);
        }

        function validateRadUpload(source, e) {
            e.IsValid = false;

            var upload = $find(source.parentNode.getElementsByTagName('div')[0].id);
            var inputs = upload.getFileInputs();
            for (var i = 0; i < inputs.length; i++) {
                //check for empty string or invalid extension
                if (upload.isExtensionValid(inputs[i].value)) {
                    e.IsValid = true;
                    break;
                }
            }
        }

        function containerMouseover(sender) {
            sender.getElementsByTagName("div")[0].style.display = "";
        }
        function containerMouseout(sender) {
            sender.getElementsByTagName("div")[0].style.display = "none";
        }
        function ClientValidationFunction(sender) {
            var editedItemsArray = tableView.get_editItems();
            if (editedItemsArray.length == 0) { // neu grid dang insert
                var Name = sender.get_value();
                $.ajax({

                    type: "POST",

                    url: "personal.aspx/ServerSideMethod",

                    data: "{'param1': '" + Name + "'}",

                    contentType: "application/json; charset=utf-8",

                    dataType: "json",

                    async: true,

                    cache: false,

                    success: function (msg) {
                        if (msg.d != "0") {
                            var r = confirm(msg.d + "\nTên ứng viên được tìm thấy trong hệ thống, OK tiếp tục, hoặc Cancle Hủy.");
                            if (r == true) {
                            }
                            else {
                                tableView.cancelAll();
                            }
                        }
                    }

                });
            }
        }
    </script>
    <style type="text/css">
        .myClass:hover {
            background-color: #a1da29 !important;
        }

        .txt {
            border: 0px !important;
            background: #eeeeee !important;
            color: Black !important;
            margin-left: 25%;
            margin-right: auto;
            width: 100%;
            filter: alpha(opacity=50); /* IE's opacity*/
            opacity: 0.50;
            text-align: center;
            display: block;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="WorkHistorySelectAll"
        TypeName="TLLib.WorkHistory">
        <SelectParameters>
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="WorkHistoryID" Type="String" />
            <asp:ControlParameter ControlID="ddlSearchCertificate" Name="PersonalID" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="WorkHistryPosition" Type="String" />
            <asp:Parameter Name="Reference" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <h3 class="mainTitle">Thông Tin Cá Nhân
    </h3>
    <asp:RadAjaxPanel ID="RadAjaxPanel1" runat="server" ClientEvents-OnRequestStart="conditionalPostback">
        <asp:Panel ID="pnlSearch" DefaultButton="btnSearch" runat="server">
            <h4 class="searchTitle">Tìm kiếm
            </h4>
            <table class="search">
                <tr>
                    <td class="left">Tên
                    </td>
                    <td>
                        <asp:RadTextBox ID="txtNameSearch" runat="server" Text='<%# Bind("Name") %>' EmptyMessage="Họ tên"
                            Width="130px">
                        </asp:RadTextBox>
                    </td>
                    <td class="left">Điện thoại
                    </td>
                    <td>
                        <asp:RadTextBox ID="txtTelSearch" runat="server" Text='<%# Bind("Tel") %>' EmptyMessage="Điện thoại"
                            Width="130px">
                        </asp:RadTextBox>
                    </td>
                    <td class="left">Email
                    </td>
                    <td>
                        <asp:RadTextBox ID="txtEmailSearch" runat="server" Text='<%# Bind("Mail") %>' EmptyMessage="Email"
                            Width="130px">
                        </asp:RadTextBox>
                    </td>
                    <td class="left">Công ty
                    </td>
                    <td>
                        <asp:RadTextBox ID="txtPoB" runat="server" Text='<%# Bind("PoB") %>' EmptyMessage="Công ty"
                            Width="130px">
                        </asp:RadTextBox>
                    </td>
                    <td class="left invisible">Vị trí tuyển dụng
                    </td>
                    <td class="invisible">
                        <asp:RadComboBox ID="ddPosition" DataSourceID="ObjectDataSource2" OnDataBound="DropDownList_DataBound" DataTextField="PositionName" DataValueField="PositionName" runat="server" Filter="Contains" Width="134px"
                            EmptyMessage="- Tất cả -">
                        </asp:RadComboBox>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="PositionSelectAll"
                            TypeName="TLLib.Position">
                            <SelectParameters>
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="PositionID" Type="String" />
                                <asp:Parameter Name="PositionName" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </td>


                </tr>
                <tr class="invisible">
                    <td class="left">Giới tính
                    </td>
                    <td>
                        <asp:RadComboBox ID="ddlSearchSex" runat="server" Filter="Contains" Width="134px"
                            EmptyMessage="- Tất cả -">
                            <Items>
                                <asp:RadComboBoxItem Value="" />
                                <asp:RadComboBoxItem Text="Nam" Value="False" />
                                <asp:RadComboBoxItem Text="Nữ" Value="True" />
                            </Items>
                        </asp:RadComboBox>
                    </td>
                    <td class="left">Tiếng anh
                    </td>
                    <td>
                        <asp:RadTextBox ID="txtSearchEnlishLevel" runat="server" Width="130px" EmptyMessage="Tiếng anh...">
                        </asp:RadTextBox>
                    </td>
                    <td class="left">Lương
                    </td>
                    <td>
                        <asp:RadNumericTextBox ID="RadNumericTextBox1" runat="server" Width="130px" EmptyMessage="Lương..."
                            Type="Number">
                            <NumberFormat AllowRounding="false" />
                        </asp:RadNumericTextBox>
                    </td>
                    <td class="left">Bằng cấp
                    </td>
                    <td>
                        <asp:RadComboBox Filter="Contains" ID="ddlSearchCertificate" runat="server" CssClass="dropdownlist"
                            Width="130px" EmptyMessage="- Tất cả -">
                            <Items>
                                <asp:RadComboBoxItem Value="" />
                                <asp:RadComboBoxItem Value="Đại học" Text="Đại học" />
                                <asp:RadComboBoxItem Value="Cao đẳng" Text="Cao đẳng" />
                                <asp:RadComboBoxItem Value="Trung cấp" Text="Trung cấp" />
                            </Items>
                        </asp:RadComboBox>
                    </td>
                </tr>
                <tr class="invisible">
                    <td class="left">Kinh nghiệm
                    </td>
                    <td>
                        <asp:RadNumericTextBox ID="RadNumericTextBox2" runat="server" Width="130px" EmptyMessage="Kinh nghiệm..."
                            Type="Number">
                            <NumberFormat AllowRounding="false" />
                        </asp:RadNumericTextBox>
                    </td>
                    <td class="left">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td class="left">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td class="left">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
            </table>
            <div align="right" style="padding: 5px 0 5px 0; border-bottom: 1px solid #ccc; margin-bottom: 10px">
                <asp:RadButton ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="Tìm kiếm">
                    <Icon PrimaryIconUrl="~/ad/assets/images/find.png" />
                </asp:RadButton>
            </div>
        </asp:Panel>
        <asp:Label ID="lblError" ForeColor="Red" runat="server"></asp:Label>
        <asp:RadGrid ID="RadGrid1" DataSourceID="ObjectDataSource1" runat="server" AllowPaging="True" Culture="vi-VN" AllowMultiRowSelection="True"
            AllowSorting="True" GridLines="Horizontal" AutoGenerateColumns="False"
            ShowStatusBar="True" OnItemCommand="RadGrid1_ItemCommand" OnItemDataBound="RadGrid1_ItemDataBound" CssClass="grid"
            CellSpacing="0">
            <ClientSettings EnableRowHoverStyle="true">
                <Selecting AllowRowSelect="True" />
                <ClientEvents OnRowDblClick="RowDblClick" />
                <Resizing AllowColumnResize="true" ClipCellContentOnResize="False" />
            </ClientSettings>
            <ExportSettings IgnorePaging="true" OpenInNewWindow="true" ExportOnlyData="true"
                Excel-Format="ExcelML" Pdf-AllowCopy="true">
            </ExportSettings>
            <MasterTableView CommandItemDisplay="TopAndBottom" DataSourceID="ObjectDataSource1"
                InsertItemPageIndexAction="ShowItemOnCurrentPage" AllowMultiColumnSorting="True" PageSize="100"
                DataKeyNames="PersonalID">
                <PagerStyle AlwaysVisible="true" Mode="NextPrevNumericAndAdvanced" PageButtonCount="10"
                    FirstPageToolTip="Trang đầu" LastPageToolTip="Trang cuối" NextPagesToolTip="Trang kế"
                    NextPageToolTip="Trang kế" PagerTextFormat="Đổi trang: {4} &nbsp;Trang <strong>{0}</strong> / <strong>{1}</strong>, Kết quả <strong>{2}</strong> - <strong>{3}</strong> trong <strong>{5}</strong>."
                    PageSizeLabelText="Kết quả mỗi trang:" PrevPagesToolTip="Trang trước" PrevPageToolTip="Trang trước" />
                <CommandItemTemplate>
                    <div class="command">
                        <div style="float: right">
                            <asp:Button ID="ExportToExcelButton" runat="server" CssClass="rgExpXLS" CommandName="ExportToExcel"
                                AlternateText="Excel" ToolTip="Xuất ra Excel" />
                            <asp:Button ID="ExportToPdfButton" runat="server" CssClass="rgExpPDF" CommandName="ExportToPdf"
                                AlternateText="PDF" ToolTip="Xuất ra PDF" />
                            <asp:Button ID="ExportToWordButton" runat="server" CssClass="rgExpDOC" CommandName="ExportToWord"
                                AlternateText="Word" ToolTip="Xuất ra Word" />
                        </div>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="InitInsert" Visible='<%# !RadGrid1.MasterTableView.IsItemInserted %>'
                            CssClass="item"><img class="vam" alt="" src="../assets/images/add.png" /> Thêm mới</asp:LinkButton>|
                        <asp:LinkButton ID="btnEditSelected" runat="server" CommandName="EditSelected" Visible='<%# RadGrid1.EditIndexes.Count == 0 %>'
                            CssClass="item"><img width="12px" class="vam" alt="" src="../assets/images/tools.png" /> Sửa</asp:LinkButton>|
                        <asp:LinkButton ID="LinkButton1" OnClientClick="javascript:return confirm('Xóa tất cả dòng đã chọn?')"
                            runat="server" CommandName="DeleteSelected" CssClass="item"><img class="vam" alt="" title="Xóa tất cả dòng được chọn" src="../assets/images/delete-icon.png" /> Xóa</asp:LinkButton>|
                        <asp:LinkButton ID="LinkButton6" runat="server" CommandName="QuickUpdate" Visible='<%# RadGrid1.EditIndexes.Count == 0 %>'
                            CssClass="item"><img class="vam" alt="" src="../assets/images/accept.png" /> Sửa nhanh</asp:LinkButton>|
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="RebindGrid" CssClass="item"><img class="vam" alt="" src="../assets/images/reload.png" /> Làm mới</asp:LinkButton>
                    </div>
                    <div class="clear">
                    </div>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </CommandItemTemplate>
                <Columns>
                    <asp:GridClientSelectColumn FooterText="CheckBoxSelect footer" HeaderStyle-Width="1%"
                        UniqueName="CheckboxSelectColumn" />
                    <asp:GridTemplateColumn HeaderStyle-Width="1%" HeaderText="STT">
                        <ItemTemplate>
                            <%# Container.DataSetIndex + 1 %>
                            <asp:HiddenField ID="hdnImageName" runat="server" Value='<%# Eval("ImageName") %>' />
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridBoundColumn DataField="Name" HeaderText="Họ tên" SortExpression="Name" />
                    <asp:GridBoundColumn DataField="Age" HeaderText="Tuổi" SortExpression="Age" Visible="False" />
                    <asp:GridTemplateColumn DataField="Sex" HeaderText="GT"
                        SortExpression="Sex" Visible="False">
                        <ItemTemplate>
                            <%# Eval("Sex").ToString() == "True" ? "Nữ" : "Nam" %>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridBoundColumn DataField="EnglishLevel" HeaderText="Tiếng anh" SortExpression="EnglishLevel" Visible="False" />
                    <asp:GridBoundColumn DataField="Salary" HeaderText="Lương" SortExpression="Salary" Visible="False" />
                    <asp:GridTemplateColumn HeaderText="Công ty">
                        <ItemTemplate>
                            <%--<%# Eval("Company").ToString() %>--%>
                            <%# Eval("PoB").ToString()%>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridBoundColumn DataField="Experience" HeaderText="KN" SortExpression="Experience" Visible="False" />
                    <asp:GridBoundColumn DataField="Tel" HeaderText="Điện thoại" SortExpression="Tel" />
                    <asp:GridBoundColumn DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:GridTemplateColumn HeaderText="Status" DataField="Status" SortExpression="Status">
                        <ItemTemplate>
                            <asp:TextBox ID="txtStatus" TextMode="MultiLine" Columns="60" Rows="12" runat="server"
                                Text='<%# Eval("Status")%>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn DataField="IsPV" HeaderStyle-Width="1%" HeaderText="Đang theo"
                        SortExpression="IsPV">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkIsPV" runat="server" Checked='<%# string.IsNullOrEmpty(Eval("IsPV").ToString()) ? false : Eval("IsPV") %>'
                                CssClass="checkbox" />
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn>
                        <ItemTemplate>
                            <div>
                                <button type="button" value="Xem thông tin" title="Xem thông tin"
                                    onclick="openWindow('view.aspx?ID=<%# Eval("PersonalID") %>','Xem thông tin')"
                                    style="cursor: pointer">
                                    Xem thông tin</button>
                                <button type="button" value="Phỏng vấn" title="Phỏng vấn"
                                    onclick="openWindow('interview.aspx?ID=<%# Eval("PersonalID") %>','Phỏng vấn')"
                                    style="cursor: pointer">
                                    Phỏng vấn</button>
                            </div>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn DataField="ImageName" HeaderText="Ảnh" SortExpression="ImageName">
                        <ItemTemplate>
                            <asp:Panel ID="Panel1" runat="server" Visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                Width="95">
                                <img alt="" src='<%# "~/res/personal/" + Eval("ImageName") %>' width="80" runat="server"
                                    visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                                <asp:LinkButton ID="lnkDeleteImage" runat="server" rel='<%#  Eval("PersonalID") + "#" + Eval("ImageName") %>'
                                    CommandName="DeleteImage" OnClientClick="return confirm('Xóa ảnh này ?')">
                                <img alt="Xóa ảnh" title="Xóa ảnh" src="../assets/images/delete-icon.png" />
                                </asp:LinkButton>
                            </asp:Panel>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Ngày tạo" SortExpression="CreateDate" HeaderStyle-Width="1%">
                        <ItemTemplate>
                            <%# string.Format("{0:dd/MM/yyyy hh:mm tt}", Eval("CreateDate"))%>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                </Columns>
                <EditFormSettings EditFormType="Template">
                    <FormTemplate>
                        <asp:Panel ID="Panel1" runat="server" DefaultButton="lnkUpdate">
                            <table width="100%">
                                <tr>
                                    <td valign="top">
                                        <div class="sub_box">
                                            <div class="head">
                                                Thông Tin Cá Nhân
                                            </div>
                                            <div class="cont">
                                                <table class="search">
                                                    <tr>
                                                        <td colspan="2" style="padding-left: 10px;">
                                                            <asp:HiddenField ID="hdnPersonalID" runat="server" Value='<%# Eval("PersonalID") %>' />
                                                            <asp:HiddenField ID="hdnOldImageName" runat="server" Value='<%# Eval("ImageName") %>' />
                                                            <asp:LinkButton ID="lnkUpdateTop" runat="server" CausesValidation="True" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'><img alt="" title="Cập nhật" src="../assets/images/ok.png" class="vam" /> <%# (Container is GridEditFormInsertItem) ? "Thêm" : "Cập nhật" %></asp:LinkButton>
                                                            &nbsp;&nbsp;
                                                            <asp:LinkButton ID="LinkButton7" runat="server" CausesValidation="False" CommandName="Cancel"> <img alt="" title="Hủy" src="../assets/images/cancel.png" class="vam" />&nbsp;&nbsp;Hủy </asp:LinkButton>
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                    <tr class="invisible">
                                                        <td class="left" valign="top">Ảnh đại diện
                                                        </td>
                                                        <td id="Td1" runat="server">
                                                            <asp:RadUpload ID="FileImageName" runat="server" ControlObjectsVisibility="None"
                                                                Culture="vi-VN" Language="vi-VN" InputSize="69" AllowedFileExtensions=".jpg,.jpeg,.gif,.png" />
                                                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Sai định dạng ảnh (*.jpg, *.jpeg, *.gif, *.png)"
                                                                ClientValidationFunction="validateRadUpload" Display="Dynamic"></asp:CustomValidator>
                                                            <asp:HiddenField ID="hdnNewImageName" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">Họ tên
                                                        </td>
                                                        <td>
                                                            <asp:RadTextBox ID="txtName" runat="server" Width="500px" Text='<%# Bind("Name") %>' ClientEvents-OnBlur="ClientValidationFunction"
                                                                EmptyMessage="Họ tên...">
                                                            </asp:RadTextBox>
                                                            <%-- <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtName" ClientValidationFunction="ClientValidationFunction"
                                                                Display="Dynamic" ErrorMessage="Tên ứng viên được tìm thấy trong hệ thống, tiếp tục thêm mới, hoặc nhấn button Hủy."></asp:CustomValidator>
                                                            <asp:Label ID="lblNameMessage" runat="server" ForeColor="Green"></asp:Label>--%>
                                                        </td>
                                                    </tr>
                                                    <td class="left invisible">Ngày sinh
                                                    </td>
                                                    <td class="invisible">
                                                        <asp:RadDatePicker ShowPopupOnFocus="True" ID="dpDoB" runat="server" Culture="vi-VN" Calendar-CultureInfo="vi-VN"
                                                            Width="208px">
                                                            <Calendar ID="Calendar1" runat="server">
                                                                <SpecialDays>
                                                                    <asp:RadCalendarDay Repeatable="Today">
                                                                        <ItemStyle CssClass="rcToday" />
                                                                    </asp:RadCalendarDay>
                                                                </SpecialDays>
                                                            </Calendar>
                                                        </asp:RadDatePicker>
                                                    </td>
                                                    <tr>
                                                        <td class="left">Công ty
                                                        </td>
                                                        <td>
                                                            <asp:RadTextBox ID="txtPoB" runat="server" Width="500px" Text='<%# Bind("PoB") %>'
                                                                EmptyMessage="Công ty...">
                                                            </asp:RadTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">Điện thoại
                                                        </td>
                                                        <td>
                                                            <asp:RadTextBox ID="txtTel" runat="server" Width="500px" Text='<%# Bind("Tel") %>'
                                                                EmptyMessage="Điện thoại...">
                                                            </asp:RadTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">Email
                                                        </td>
                                                        <td>
                                                            <asp:RadTextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'
                                                                Width="500px" EmptyMessage="Email...">
                                                            </asp:RadTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="invisible">
                                                        <td class="left">Giới tính
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList runat="server" ID="RadioButtonListSex" SelectedValue='<%# Bind("Sex") %>' RepeatDirection="Horizontal">
                                                                <asp:ListItem Value="False" Text="Nam" />
                                                                <asp:ListItem Value="True" Text="Nữ" />
                                                                <asp:ListItem Value="" Text="" Selected="true" style="display: none" />
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr class="invisible">
                                                        <td class="left">Tình trạng hôn nhân
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkMaritalStatus" runat="server" CssClass="checkbox" Text=" Độc thân"
                                                                Checked='<%# (Container is GridEditFormInsertItem) ? true : (Eval("MaritalStatus") == DBNull.Value ? false : Convert.ToBoolean(Eval("MaritalStatus"))) %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">Địa chỉ
                                                        </td>
                                                        <td>
                                                            <asp:RadTextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>'
                                                                Width="500px" EmptyMessage="Địa chỉ...">
                                                            </asp:RadTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="invisible">
                                                        <td class="left">Bằng cấp
                                                        </td>
                                                        <td>
                                                            <asp:RadComboBox Filter="Contains" ID="ddlCertificate" runat="server" CssClass="dropdownlist"
                                                                Width="204px">
                                                                <Items>
                                                                    <asp:RadComboBoxItem Value="" />
                                                                    <asp:RadComboBoxItem Value="Đại học" Text="Đại học" />
                                                                    <asp:RadComboBoxItem Value="Cao đẳng" Text="Cao đẳng" />
                                                                    <asp:RadComboBoxItem Value="Trung cấp" Text="Trung cấp" />
                                                                </Items>
                                                            </asp:RadComboBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="invisible">
                                                        <td class="left" valign="top">Education
                                                        </td>
                                                        <td>
                                                            <asp:RadEditor ID="txtEducation" runat="server" Language="vi-VN" Skin="Office2007"
                                                                Width="98%" Content='<%# Bind("Education") %>'>
                                                                <ImageManager DeletePaths="~/Uploads/Image/" UploadPaths="~/Uploads/Image/" ViewPaths="~/Uploads/Image/" />
                                                                <FlashManager DeletePaths="~/Uploads/Video/" UploadPaths="~/Uploads/Video/" ViewPaths="~/Uploads/Video/" />
                                                                <DocumentManager DeletePaths="~/Uploads/File/" UploadPaths="~/Uploads/File/" ViewPaths="~/Uploads/File/" />
                                                                <MediaManager DeletePaths="~/Uploads/Media/" UploadPaths="~/Uploads/Media/" ViewPaths="~/Uploads/Media/" />
                                                                <TemplateManager DeletePaths="~/Uploads/Template/" UploadPaths="~/Uploads/Template/"
                                                                    ViewPaths="~/Uploads/Template/" />
                                                            </asp:RadEditor>
                                                        </td>
                                                    </tr>
                                                    <tr class="invisible">
                                                        <td class="left" valign="top">Work History
                                                        </td>
                                                        <td>
                                                            <asp:RadEditor ID="txtWorkHistory" runat="server" Language="vi-VN" Skin="Office2007"
                                                                Width="98%" Content='<%# Bind("WorkHistory") %>'>
                                                                <ImageManager DeletePaths="~/Uploads/Image/" UploadPaths="~/Uploads/Image/" ViewPaths="~/Uploads/Image/" />
                                                                <FlashManager DeletePaths="~/Uploads/Video/" UploadPaths="~/Uploads/Video/" ViewPaths="~/Uploads/Video/" />
                                                                <DocumentManager DeletePaths="~/Uploads/File/" UploadPaths="~/Uploads/File/" ViewPaths="~/Uploads/File/" />
                                                                <MediaManager DeletePaths="~/Uploads/Media/" UploadPaths="~/Uploads/Media/" ViewPaths="~/Uploads/Media/" />
                                                                <TemplateManager DeletePaths="~/Uploads/Template/" UploadPaths="~/Uploads/Template/"
                                                                    ViewPaths="~/Uploads/Template/" />
                                                            </asp:RadEditor>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">Status
                                                        </td>
                                                        <td>
                                                            <asp:RadTextBox ID="txtStatus1" runat="server" Text='<%# Bind("Status") %>'
                                                                Width="500px" EmptyMessage="Status...">
                                                            </asp:RadTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left" colspan="2">
                                                            <asp:CheckBox ID="chkIsPV" runat="server" CssClass="checkbox" Text=" Đang Theo" Checked='<%# (Container is GridEditFormInsertItem) ? false : (string.IsNullOrEmpty(Eval("IsPV").ToString()) ? false : Eval("IsPV"))%>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="padding-left: 10px">
                                                            <hr />
                                                            <asp:LinkButton ID="lnkUpdate" runat="server" CausesValidation="True" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'> <img alt="" title="Cập nhật" src="../assets/images/ok.png" class="vam" /> <%# (Container is GridEditFormInsertItem) ? "Thêm" : "Cập nhật" %></asp:LinkButton>
                                                            &nbsp;&nbsp;
                                                            <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" CommandName="Cancel"> <img alt="" title="Hủy" src="../assets/images/cancel.png" class="vam" />&nbsp;&nbsp;Hủy </asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </FormTemplate>
                </EditFormSettings>
            </MasterTableView>
            <HeaderStyle Font-Bold="True" />
            <HeaderContextMenu EnableImageSprites="True" CssClass="GridContextMenu GridContextMenu_Default">
            </HeaderContextMenu>
        </asp:RadGrid>
    </asp:RadAjaxPanel>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="PersonalSelectAll"
        TypeName="TLLib.Personal" DeleteMethod="PersonalDelete">
        <DeleteParameters>
            <asp:Parameter Name="PersonalID" Type="String" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="PersonalID" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="DoB" Type="String" />
            <asp:ControlParameter ControlID="txtPoB" Name="PoB" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtTelSearch" Name="Tel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtEmailSearch" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ddlSearchSex" Name="Sex" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter Name="MaritalStatus" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:ControlParameter ControlID="ddlSearchCertificate" Name="Certificate" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtSearchEnlishLevel" Name="EnglishLevel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="RadNumericTextBox1" Name="Salary" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="RadNumericTextBox2" Name="Experience" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ddPosition" Name="Position" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:RadProgressManager ID="RadProgressManager1" runat="server" />
    <asp:RadProgressArea ID="ProgressArea1" runat="server" Culture="vi-VN" DisplayCancelButton="True"
        HeaderText="Đang tải" Skin="Office2007" Style="position: fixed; top: 228% !important; left: 51% !important; margin: -93px 0 0 -188px;" />
</asp:Content>
