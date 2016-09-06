<%@ Page Title="" Language="C#" MasterPageFile="~/ad-new/template/inside.master" AutoEventWireup="true"
    CodeFile="interview.aspx.cs" Inherits="ad_single_article" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
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

            if (eventArgs.get_eventTarget().indexOf("ExportToExcelButton") >= 0 || eventArgs.get_eventTarget().indexOf("ExportToWordButton") >= 0 || eventArgs.get_eventTarget().indexOf("ExportToPdfButton") >= 0)
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">

    <asp:RadAjaxPanel ID="RadAjaxPanel1" runat="server" ClientEvents-OnRequestStart="conditionalPostback">
        <fieldset>
            <h3 class="searchTitle">Thông Tin Thành Viên</h3>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource3"
                Width="100%">
                <ItemTemplate>
                    <div class="mInfo" style="min-width: 800px">
                        <table class="search" style="border: 0">
                            <tr>
                                <td class="left">Tên:
                                </td>
                                <td>
                                    <%# Eval("Name") %>
                                </td>
                                <td class="left">Ngày Sinh:
                                </td>
                                <td>
                                    <%# string.Format("{0:dd/MM/yyyy}", Eval("DoB")) %>
                                </td>
                                <td class="left">Địa chỉ:
                                </td>
                                <td>
                                    <%# Eval("Address") %>
                                </td>
                            </tr>
                            <tr>
                                <td class="left">Email:
                                </td>
                                <td>
                                    <%# Eval("Email")%>
                                </td>
                                <td class="left">Điện thoại:
                                </td>
                                <td>
                                    <%# Eval("Tel") %>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:FormView>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="PersonalSelectOne"
                TypeName="TLLib.Personal">
                <SelectParameters>
                    <asp:QueryStringParameter Name="PersonalID" QueryStringField="ID" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </fieldset>
        <br />

        <asp:Label ID="lblError" ForeColor="Red" runat="server"></asp:Label>
        <asp:RadGrid ID="RadGrid1" runat="server" Culture="vi-VN" AllowMultiRowSelection="True"
            AllowSorting="True" DataSourceID="ObjectDataSource1" GridLines="Horizontal" AutoGenerateColumns="False"
            AllowAutomaticDeletes="True" ShowStatusBar="False" OnItemCommand="RadGrid1_ItemCommand" OnItemCreated="RadGrid1_ItemCreated"
            OnItemDataBound="RadGrid1_ItemDataBound" AllowAutomaticUpdates="True"
            CellSpacing="0" OnDataBound="RadGrid1_DataBound">
            <ClientSettings EnableRowHoverStyle="true">
                <Selecting AllowRowSelect="True" />
                <ClientEvents OnRowDblClick="RowDblClick" />
                <Resizing AllowColumnResize="true" ClipCellContentOnResize="False" />
            </ClientSettings>
            <ExportSettings IgnorePaging="true" OpenInNewWindow="true" ExportOnlyData="true"
                Excel-Format="ExcelML" Pdf-AllowCopy="true">
            </ExportSettings>
            <MasterTableView CommandItemDisplay="TopAndBottom" DataSourceID="ObjectDataSource1"
                InsertItemPageIndexAction="ShowItemOnCurrentPage" AllowMultiColumnSorting="True"
                DataKeyNames="InterViewID">
                <CommandItemTemplate>
                    <div class="command">
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Insert" CssClass="item"><img class="vam" alt="" src="../assets/images/add.png" /> Thêm mới</asp:LinkButton>|
                        <asp:LinkButton ID="btnEditSelected" runat="server" CommandName="EditSelected" Visible='<%# RadGrid1.EditIndexes.Count == 0 %>'
                            CssClass="item"><img width="12px" class="vam" alt="" src="../assets/images/tools.png" /> Sửa</asp:LinkButton>|
                        <asp:LinkButton ID="LinkButton1" OnClientClick="javascript:return confirm('Xóa tất cả dòng đã chọn?')"
                            runat="server" CommandName="DeleteSelected" CssClass="item"><img class="vam" alt="" title="Xóa tất cả dòng được chọn" src="../assets/images/delete-icon.png" /> Xóa</asp:LinkButton>|
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
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridBoundColumn Visible="false" DataField="InterviewID" HeaderText="ID" />
                    <asp:GridTemplateColumn DataField="InterviewDate" HeaderText="Ngày phỏng vấn" SortExpression="InterviewDate">
                        <ItemTemplate>
                            <asp:RadDatePicker ShowPopupOnFocus="True" ID="dpInterviewDate" runat="server" Culture="vi-VN" Calendar-CultureInfo="vi-VN"
                                Width="100px">
                                <Calendar ID="Calendar1" runat="server">
                                    <SpecialDays>
                                        <asp:RadCalendarDay Repeatable="Today">
                                            <ItemStyle CssClass="rcToday" />
                                        </asp:RadCalendarDay>
                                    </SpecialDays>
                                </Calendar>
                            </asp:RadDatePicker>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Vị trí">
                        <ItemTemplate>
                            <asp:RadComboBox Filter="Contains" EmptyMessage="- Chọn -" ID="ddlPosition"  Width="100" DataTextField="PositionName" OnDataBound="DropDownList_DataBound" DataValueField="PositionName" runat="server" CssClass="dropdownlist">
                            </asp:RadComboBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Cty">
                        <ItemTemplate>
                           <asp:TextBox ID="txtCompany" runat="server" Text='<%# Bind("Company") %>' Width="70"></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Tiếng Anh">
                        <ItemTemplate>
                            <asp:TextBox ID="txtEnglishLevel" runat="server" Width="30px" Text='<%# Bind("EnglishLevel") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Kỹ Thuật">
                        <ItemTemplate>
                            <asp:TextBox ID="txtHighTechLevel" runat="server" Text='<%# Bind("HighTechLevel") %>'
                                Width="30px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Thái độ">
                        <ItemTemplate>
                            <asp:TextBox ID="txtAttitude" runat="server" Text='<%# Bind("Attitude") %>'
                                Width="30px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Lương">
                        <ItemTemplate>
                            <asp:TextBox ID="txtSalary" runat="server" Text='<%# Bind("Salary") %>'
                                Width="30px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Kinh nghiệm">
                        <ItemTemplate>
                            <asp:TextBox ID="txtExperience" runat="server" Text='<%# Bind("Experience") %>'
                                Width="30px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="PV DT">
                        <ItemTemplate>
                            <asp:RadEditor ID="txtTelSummary" ToolbarMode="Default" runat="server" Language="vi-VN" Skin="Office2007"
                                Width="300px" Height="150px" Content='<%# Bind("TelSummary") %>'>
                                <Modules>
                                    <asp:EditorModule Enabled="false" />
                                </Modules>
                                <Tools>
                                    <telerik:EditorToolGroup>
                                        <telerik:EditorTool Name="InsertTable" />
                                        <asp:EditorTool Name="Bold" />
                                        <asp:EditorTool Name="Italic" />
                                        <asp:EditorTool Name="Underline" />
                                        <asp:EditorTool Name="ForeColor" />
                                    </telerik:EditorToolGroup>
                                </Tools>
                            </asp:RadEditor>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="PV TT">
                        <ItemTemplate>
                            <asp:RadEditor ID="txtInterviewContent" ToolbarMode="Default" runat="server" Language="vi-VN" Skin="Office2007"
                                Width="300px" Height="150px" Content='<%# Bind("InterviewContent") %>'>
                                <Modules>
                                    <asp:EditorModule Enabled="false" />
                                </Modules>
                                <Tools>
                                    <telerik:EditorToolGroup>
                                        <telerik:EditorTool Name="InsertTable" />
                                        <asp:EditorTool Name="Bold" />
                                        <asp:EditorTool Name="Italic" />
                                        <asp:EditorTool Name="Underline" />
                                        <asp:EditorTool Name="ForeColor" />
                                    </telerik:EditorToolGroup>
                                </Tools>
                            </asp:RadEditor>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                </Columns>
            </MasterTableView>
            <HeaderStyle Font-Bold="True" />
            <HeaderContextMenu EnableImageSprites="True" CssClass="GridContextMenu GridContextMenu_Default">
            </HeaderContextMenu>
        </asp:RadGrid>
        <asp:RadInputManager ID="RadInputManager1" runat="server">
            <asp:TextBoxSetting EmptyMessage="Ngày phỏng vấn  ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtInterviewDate" />
                </TargetControls>
            </asp:TextBoxSetting>
            <asp:TextBoxSetting EmptyMessage="Tiếng Anh ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtEnglishLevel" />
                </TargetControls>
            </asp:TextBoxSetting>
            <asp:TextBoxSetting EmptyMessage="Kỹ Thuật ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtHighTechLevel" />
                </TargetControls>
            </asp:TextBoxSetting>
            <asp:TextBoxSetting EmptyMessage="Lương ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtSalary" />
                </TargetControls>
            </asp:TextBoxSetting>
            <asp:TextBoxSetting EmptyMessage="Kinh Nghiệm ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtExperience" />
                </TargetControls>
            </asp:TextBoxSetting>
            <asp:TextBoxSetting EmptyMessage="Thái Độ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtAttitude" />
                </TargetControls>
            </asp:TextBoxSetting>
        </asp:RadInputManager>
    </asp:RadAjaxPanel>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="InterViewSelectAll"
        TypeName="TLLib.InterView" DeleteMethod="InterViewDelete" UpdateMethod="InterViewUpdate">
        <DeleteParameters>
            <asp:Parameter Name="InterViewID" Type="String" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="InterViewID" Type="String" />
            <asp:QueryStringParameter Name="PersonalID" QueryStringField="ID" Type="String" />
            <asp:Parameter Name="InterviewDate" Type="String" />
            <asp:Parameter Name="InterveiwPosition" Type="String" />
            <asp:Parameter Name="TelSummary" Type="String" />
            <asp:Parameter Name="EnglishLevel" Type="String" />
            <asp:Parameter Name="HighTechLevel" Type="String" />
            <asp:Parameter Name="Attitude" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter Name="Experience" Type="String" />
            <asp:Parameter Name="InterviewContent" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="InterViewID" Type="String" />
            <asp:QueryStringParameter Name="PersonalID" QueryStringField="ID" Type="String" />
            <asp:Parameter Name="InterviewDate" Type="String" />
            <asp:Parameter Name="InterveiwPosition" Type="String" />
            <asp:Parameter Name="TelSummary" Type="String" />
            <asp:Parameter Name="EnglishLevel" Type="String" />
            <asp:Parameter Name="HighTechLevel" Type="String" />
            <asp:Parameter Name="Attitude" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter Name="Experience" Type="String" />
            <asp:Parameter Name="InterviewContent" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:RadProgressManager ID="RadProgressManager1" runat="server" />
</asp:Content>
