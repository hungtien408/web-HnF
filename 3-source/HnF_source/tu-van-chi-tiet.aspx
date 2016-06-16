<%@ Page Title="" Language="C#" MasterPageFile="~/site-tv.master" AutoEventWireup="true"
    CodeFile="tu-van-chi-tiet.aspx.cs" Inherits="tu_van_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="text-center wrapper-880 border-none wrap-suicide">
            <h4 class="text-uppercase title-2">
                <span>
                    <asp:Label ID="lblTitleCategory" runat="server"></asp:Label></span></h4>
        </div>
        <div class="wrap-section">
            <div class="col-aside">
                <asp:ListView ID="lstSupportSame" runat="server" DataSourceID="odsSupportSame" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="box-in">
                            <div class="boxa">
                                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>'
                                    class="box-img">
                                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/tuvan-img-1.jpg" %>'
                                        runat="server" />
                                </a>
                                <h5 class="box-name">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>'>
                                        <%# Eval("ArticleTitle")%></a></h5>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div class="listAside">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsSupportSame" runat="server" SelectMethod="ArticleSameSelectAll"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="5" Name="RerultCount" Type="String" />
                        <asp:QueryStringParameter DefaultValue="" Name="ArticleID" QueryStringField="tv"
                            Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="col-main">
                <asp:ListView ID="lstSupportDetails" runat="server" DataSourceID="odsSupportDetails"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <h4 class="title-tuvan text-uppercase">
                            <%# Eval("ArticleTitle")%></h4>
                        <div class="wrapper-text">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsSupportDetails" runat="server" SelectMethod="ArticleSelectOne"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ArticleID" QueryStringField="tv" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div id="mobileAside">
                <asp:ListView ID="lstSupportSameMobi" runat="server" DataSourceID="odsSupportSame"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-md-4 col-xs-6">
                            <div class="box-in">
                                <div class="boxa">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>' class="box-img">
                                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/tuvan-img-1.jpg" %>'
                                        runat="server" />
                                    </a>
                                    <h5 class="box-name">
                                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tv-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitle")%></a></h5>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div class="listAside">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
