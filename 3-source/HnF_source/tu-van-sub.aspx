﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site-tv.master" AutoEventWireup="true"
    CodeFile="tu-van-sub.aspx.cs" Inherits="tu_van" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lstSupportCategory" runat="server" DataSourceID="odsSupportCategory"
                    EnableModelValidation="True" OnItemDataBound="lstSupportCategory_ItemDataBound">
                    <ItemTemplate>
                        <div id='<%# "supportShow" + Eval("ArticleCategoryID") %>' class="text-center wrapper-880 border-none wrap-suicide">
                            <h4 class="text-uppercase title-2">
                                <span>
                                    <%# Eval("ArticleCategoryName")%></span></h4>
                        </div>
                        <div class="wrap-section">
                            <asp:HiddenField ID="hdnSupportCategory" runat="server" Value='<%# Eval("ArticleCategoryID") %>' />
                            <asp:ListView ID="lstSupport" runat="server" DataSourceID="odsSupport" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="col-lg-4 col-xs-6 element-item">
                                        <div class="box-suicide">
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>'
                                                class="suicide-img">
                                                <img class="corner" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/suicide-img-1.jpg" %>'
                                                    runat="server" />
                                            </a>
                                            <h4 class="title-suicide">
                                                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>'>
                                                    <%# Eval("ArticleTitle") %></a></h4>
                                            <div class="description">
                                                <%# Eval("Description") %>
                                            </div>
                                            <div class="more-details text-center">
                                                <a class="link-view" href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>'>
                                                    Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div class="productw">
                                        <div class="section-tb row">
                                            <span runat="server" id="itemPlaceholder" />
                                        </div>
                                    </div>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsSupport" runat="server" SelectMethod="ArticleSelectAll"
                                TypeName="TLLib.Article">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ArticleTitle" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:ControlParameter ControlID="hdnSupportCategory" Name="ArticleCategoryID" PropertyName="Value"
                                        Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                            <div class="pager">
                                <%-- <a class="first fa fa-backward" href="#"></a><a class="prev fa fa-caret-left" href="#">
                        </a><a class="current" href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">
                            4</a> <a href="#">5</a> <a class="next fa fa-caret-right" href="#"></a><a class="last fa fa-forward"
                                href="#"></a>--%>
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstSupport">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                            ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                                            FirstPageText="" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                                            ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                                            PreviousPageText="" />
                                        <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                                            ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                            NextPageText="" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                                            ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                            LastPageText="" />
                                    </Fields>
                                </asp:DataPager>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsSupportCategory" runat="server" SelectMethod="ArticleCategorySelectOne"
                    TypeName="TLLib.ArticleCategory">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ArticleCategoryID" QueryStringField="tci" 
                            Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
