<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<%@ Register TagPrefix="uc1" TagName="footer" Src="~/uc/ucFooter.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-pro">
        <div class="container">
            <div class="col-aside">
                <div class="box-aside">
                    <%--<ul class="menu-list menu-iconr">
                        <li><a href="#">Áo thun đồng phục</a>
                            <ul>
                                <li><a href="#"><span>Ngành tài chính ngân hàng</span></a></li>
                                <li><a href="#"><span>Ngành xây dựng</span></a></li>
                                <li><a href="#"><span>Ngành hàng tiêu dùng</span></a></li>
                                <li><a href="#"><span>Ngành Logistic</span></a></li>
                                <li><a href="#"><span>Ngành kỹ thuật - Công nghệ thông tin</span></a></li>
                                <li><a href="#"><span>Ngành truyền thông giải trí</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#">Áo thun quảng cáo</a>
                            <ul>
                                <li><a href="#"><span>Áo thun tiếp thị</span></a></li>
                                <li><a href="#"><span>Áo thun sự kiện</span></a></li>
                                <li><a href="#"><span>Áo thun quà tặng</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#">Áo lớp</a></li>
                        <li><a href="#">Áo thun sản xuất theo yêu cầu</a></li>
                    </ul>--%>
                    <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                <%# Eval("ProductCategoryName") %></a>
                                <asp:HiddenField ID="hdnProductCategoryID" runat="server" Value='<%# Eval("ProductCategoryID") %>' />
                                <asp:ListView ID="lstProductCategorySub" runat="server" DataSourceID="odsProductCategorySub"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                            <span>
                                                <%# Eval("ProductCategoryName") %></span></a></li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul>
                                            <li runat="server" id="itemPlaceholder"></li>
                                        </ul>
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsProductCategorySub" runat="server" SelectMethod="ProductCategorySelectAll"
                                    TypeName="TLLib.ProductCategory">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="hdnProductCategoryID" Name="parentID" PropertyName="Value"
                                            Type="Int32" />
                                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul class="menu-list menu-iconr">
                                <li runat="server" id="itemPlaceholder"></li>
                            </ul>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductCategory" runat="server" SelectMethod="ProductCategorySelectAll"
                        TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
            <div class="col-main">
                <div class="slider-sub">
                    <div id="sliderBanner">
                        <asp:ListView ID="lstBannerProduct" runat="server" DataSourceID="odsBannerProduct"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide">
                                    <img alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/slider-img-1.jpg" %>'
                                        runat="server" /></div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsBannerProduct" runat="server" SelectMethod="AdsBannerSelectAll"
                            TypeName="TLLib.AdsBanner">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
                                <asp:QueryStringParameter QueryStringField="pci" Name="ProductCategoryID" Type="String" />
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Website" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
                <div class="product-wrap">
                    <div class="text-center wrapper-880">
                        <asp:ListView ID="lstContentProductCategory" runat="server" DataSourceID="odsContentProductCategory"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <h4 class="text-uppercase title-1 title-pro">
                                    <span>
                                        <%# Eval("ProductCategoryName") %></span></h4>
                                <div class="desription">
                                    <%# Eval("Content") %>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsContentProductCategory" runat="server" SelectMethod="ProductCategorySelectOne"
                            TypeName="TLLib.ProductCategory">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductCategoryID" QueryStringField="pci" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="product-group row">
                        <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="col-md-4 col-xs-6 element-item">
                                    <div class="product-box">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                                            class="product-img fullbox-img">
                                            <img class="hideo" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/img-product-1.jpg" %>'
                                                runat="server" /></a>
                                        <h4 class="product-name">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                <%# Eval("ProductName") %></a></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:QueryStringParameter Name="CategoryID" QueryStringField="pci" Type="String" />
                                <asp:Parameter Name="ServiceCategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
                <div class="pager pager-pro">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstProduct">
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
            <%--<div id="mobileAside">
                <div class="box-aside">
                    <ul class="menu-list menu-iconr">
                        <li><a href="#">Áo thun đồng phục</a>
                            <ul>
                                <li><a href="#"><span>Ngành tài chính ngân hàng</span></a></li>
                                <li><a href="#"><span>Ngành xây dựng</span></a></li>
                                <li><a href="#"><span>Ngành hàng tiêu dùng</span></a></li>
                                <li><a href="#"><span>Ngành Logistic</span></a></li>
                                <li><a href="#"><span>Ngành kỹ thuật - Công nghệ thông tin</span></a></li>
                                <li><a href="#"><span>Ngành truyền thông giải trí</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#">Áo thun quảng cáo</a>
                            <ul>
                                <li><a href="#"><span>Áo thun tiếp thị</span></a></li>
                                <li><a href="#"><span>Áo thun sự kiện</span></a></li>
                                <li><a href="#"><span>Áo thun quà tặng</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#">Áo lớp</a></li>
                        <li><a href="#">Áo thun sản xuất theo yêu cầu</a></li>
                        <li><a href="#">Mẫu áo thun</a>
                            <ul class="menu-ma">
                                <li><a href="#"><span class="menu-box"><span class="iconai">
                                    <img src="assets/images/menuma-img-1.jpg" alt="" /></span></span>Áo thun cổ trụ<span
                                        class="menubg fa fa-caret-right"></span></a> </li>
                                <li><a href="#"><span class="menu-box"><span class="iconai">
                                    <img src="assets/images/menuma-img-2.jpg" alt="" /></span></span>Áo thun cổ tròn<span
                                        class="menubg fa fa-caret-right"></span></a> </li>
                                <li><a href="#"><span class="menu-box"><span class="iconai">
                                    <img src="assets/images/menuma-img-3.jpg" alt="" /></span></span>Áo thun cổ tim<span
                                        class="menubg fa fa-caret-right"></span></a> </li>
                                <li><a href="#"><span class="menu-box"><span class="iconai">
                                    <img src="assets/images/menuma-img-4.jpg" alt="" /></span></span>Sản phẩm khác<span
                                        class="menubg fa fa-caret-right"></span></a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" runat="Server">
    <uc1:footer ID="footer1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
