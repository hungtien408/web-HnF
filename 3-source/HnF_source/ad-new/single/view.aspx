<%@ Page Title="" Language="C#" MasterPageFile="~/ad-new/template/inside.master" AutoEventWireup="true"
    CodeFile="view.aspx.cs" Inherits="ad_single_view" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <link href="../assets/styles/rating.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div style="margin: 0 auto; width: 980px;">
        <h3 style="font-weight: bold;">PERSONAL DETAILS</h3>
        <asp:ListView ID="ListView3" runat="server"
            DataSourceID="ObjectDataSource1"
            EnableModelValidation="True">
            <ItemTemplate>
                <table cellspacing="0" style="border-collapse: collapse" width="100%" cellpadding="10" border="1">
                    <tbody>
                        <tr>
                            <td><%# Eval("Name") %></td>
                            <td><%# string.Format("{0:dd/MM/yyyy}", Eval("DoB")) %></td>
                            <td><%# Eval("PoB") %></td>
                            <td rowspan="5" style="width: auto; max-width: 200px;">
                                <img id="Img1" alt="" style="border: 1px solid #000" src='<%# "~/res/personal/" + Eval("ImageName") %>' runat="server"
                                    visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' /></td>
                        </tr>
                        <tr>
                            <td><%# Eval("Tel") %></td>
                            <td><a href='<%# "mailto:" + Eval("Email") %>'><%# Eval("Email") %></a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><%# Eval("Sex").ToString() == "True" ? "Nữ" : "Nam" %>, <%# Eval("MaritalStatus").ToString() == "True" ? "Độc thân" : "Có gia đình" %></td>
                            <td><%# Eval("Address") %></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>TA: <%# Eval("EnglishLevel") %></td>
                            <td>Lương: <%# Eval("Salary") %></td>
                            <td><%# Eval("InterveiwPosition") %></td>
                        </tr>
                        <tr>
                            <td>KN: <%# Eval("Experience") %> năm</td>
                            <td>Bằng Cấp: <%# Eval("Certificate") %></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <h3 style="font-weight: bold;">EDUCATION</h3>
                <%# Eval("Education") %>
                <h3 style="font-weight: bold;">WORK HISTORY</h3>
                <%# Eval("WorkHistory") %>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="PersonalSelectOne"
            TypeName="TLLib.Personal">
            <SelectParameters>
                <asp:QueryStringParameter Name="PersonalID" QueryStringField="ID" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ListView ID="ListView1" runat="server"
            DataSourceID="ObjectDataSource2"
            EnableModelValidation="True">
            <ItemTemplate>
                <li style="margin-bottom:10px;"><span style="font-weight: bold">Lần <%# Container.DisplayIndex + 1 %>: </span><%# string.Format("{0: dd/MM/yyyy}", Eval("InterviewDate")) %> - Vị trí: <span style="font-weight: bold"> <%# Eval("InterveiwPosition") %></span>
                    <br />
                    - Nội dung qua điện thoại: 
                    <%# Eval("TelSummary") %>
                    <br />
                    - Nội dung phỏng vấn:
                    <table cellspacing="0" cellpadding="10" border="0">
                        <tr>
                            <td><span style="font-weight: bold">TA: <%# Eval("EnglishLevel") %></span></td>
                            <td><span style="font-weight: bold">KT: <%# Eval("HighTechLevel") %></span></td>
                            <td><span style="font-weight: bold">TD: <%# Eval("Attitude") %></span></td>
                            <td><span style="font-weight: bold">Lương: <%# Eval("Salary") %></span></td>
                        </tr>
                    </table>
                    - Tóm tắt nội dung phỏng vấn:
                <%# Eval("InterviewContent") %>
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <h3 style="font-weight: bold;">INTERVIEW</h3>
                <ul><span runat="server" id="itemPlaceholder" /></ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="InterViewSelectAll"
            TypeName="TLLib.InterView">
            <SelectParameters>
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="InterviewID" Type="String" />
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
        </asp:ObjectDataSource>
    </div>
</asp:Content>
