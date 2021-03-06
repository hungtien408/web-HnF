﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="uc/ucFooter.ascx" TagName="footer" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>Áo Thun Đồng Phục Cao Cấp HnF</title>
    <meta name="description" content="HnF chuyên Áo Thun Đồng Phục Cao Cấp, áo thun quảng cáo sự kiện, áo nhóm, áo lớp. Ao Thun Dong Phuc được may đẹp, vải đẹp, in thêu sắc sảo, áo thun được thiết kế theo yêu cầu của bạn, giao hàng nhanh." />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
    <div id="banner">
        <div class="slider-wrapper">
            <div class="slider-main">
                <asp:ListView ID="lstBannerMain" runat="server" DataSourceID="odsBannerMain" EnableModelValidation="True">
                    <ItemTemplate>
                        <img class="img-responsive" alt='Ao Thun Dong Phuc' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner-img-2.jpg" %>'
                            runat="server" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBannerMain" runat="server" SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                        <asp:Parameter Name="ProductCategoryID" Type="String" />
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
        <div class="link-show text-center">
            <a href="#productShow">Chúng tôi cung cấp<span class="fa fa-chevron-down"></span></a></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Chúng tôi cung cấp</h4>
            <div class="desription">
                HNF cung cấp các giải pháp toàn diện về áo thun thời trang và áo thun cho doanh
                nghiệp. Bằng kinh nghiệm và sự đam mê sáng tạo, chúng tôi luôn cố gắng đáp ứng tốt
                nhất các yêu cầu của khách hàng, đặc biệt là các khách hàng doanh nghiệp. Thế mạnh
                của HNF là:
            </div>
        </div>
        <div id="productShow" class="wrap-section wrap-provide">
            <%--<ul class="section-list">
                <li><a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-1.jpg" alt="Áo Thun Đồng Phục" />
                </a>
                    <div class="content">
                        <div class="section-name">
                            <a href="#">Áo thun <strong>Đồng phục</strong></a></div>
                        <p class="more-details">
                            <a href="#">Chi tiết</a></p>
                    </div>
                </li>
                <li><a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-2.jpg" alt="áo nhóm – áo lớp" />
                </a>
                    <div class="content">
                        <div class="section-name">
                            <a href="#">Áo nhóm - Áo lớp</a></div>
                        <p class="more-details">
                            <a href="#">Chi tiết</a></p>
                    </div>
                </li>
                <li><a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-3.jpg" alt="sản xuất áo thun theo yêu cầu" />
                </a>
                    <div class="content">
                        <div class="section-name">
                            <a href="#">Sản xuất áo thun theo yêu cầu</a></div>
                        <p class="more-details">
                            <a href="#">Chi tiết</a></p>
                    </div>
                </li>
            </ul>--%>
            <asp:ListView ID="lstProvide1" runat="server" DataSourceID="odsProvide1" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'
                        class="section-img">
                        <img class="img-responsive" alt='<%# Eval("ProductCategoryName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/provide-img-1.jpg" %>'
                            runat="server" />
                    </a>
                        <div class="content">
                            <div class="section-name">
                                <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                    <%# Eval("ProductCategoryName")%></a></div>
                            <p class="more-details">
                                <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                    Chi tiết</a></p>
                        </div>
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul class="section-list">
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProvide1" runat="server" SelectMethod="ProductCategorySelectAll"
                TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <%--<div class="section-box">
                <a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-4.jpg" alt="áo thun quảng cáo sự kiện" />
                </a>
                <div class="content">
                    <div class="section-name">
                        <a href="#">Áo thun <strong>Quảng cáo sự kiện</strong></a></div>
                    <p class="more-details">
                        <a href="#">Chi tiết</a></p>
                </div>
            </div>--%>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Mẫu áo thun tiêu biểu</h4>
            <div class="desription">
                Không những đẹp mà còn phải phù hợp với xu thế thời trang, đội ngũ Designer của
                chúng tôi luôn không ngừng cải tiến và cho ra mắt nhiều kiểu áo thun phù hợp với
                từng nhu cầu cụ thể của khách hàng.
            </div>
            <div class="more-details text-center details-2">
                <a class="btn-4" href="#">Xem thêm</a>
            </div>
        </div>
        <div class="wrap-section">
            <div id="isotopelist" class="section-tb row mobile100">
                <asp:ListView ID="lstClothes" runat="server" DataSourceID="odsClothes" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-4 col-xs-4  element-item">
                            <div class="box-clothes">
                                <a class="section-img" href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                    <img alt='<%# Eval("ProductCategoryName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/img-clothes-1.jpg" %>'
                                        runat="server" />
                                </a>
                                <div class="section-content">
                                    <h3 class="section-name">
                                        <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                            <%# Eval("ProductCategoryName")%></a></h3>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsClothes" runat="server" SelectMethod="ProductCategorySelectAll"
                    TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="parentID" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter DefaultValue="" Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Chúng tôi khác biệt</h4>
            <div class="desription">
                Không chỉ mong muốn cung cấp các sản phẩm thời trang chất lượng, chúng tôi hướng
                đến việc xây dựng chuỗi giá trị lợi ích cho khách hàng, trở thành một đối tác thật
                sự đáng tin cậy, cả về chuyên môn lẫn dịch vụ. Chúng tôi dám mơ ước – dám thực hiện,
                đó là sự khác biệt lớn nhất của chúng tôi!
            </div>
            <div class="more-details text-center details-3">
                <a class="btn-4" href="gioi-thieu.aspx">Xem thêm về chúng tôi</a>
            </div>
        </div>
        <div class="wrap-section">
            <div class="productw">
                <div id="weShow" class="section-tb row">
                    <asp:ListView ID="lstOurDifferent" runat="server" DataSourceID="odsOurDifferent"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="col-lg-4 col-xs-4 element-item">
                                <div class="box-services">
                                    <a href="javascript:void(0);" class="services-img">
                                        <img class="corner" alt='<%# Eval("MetaTittle") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/we-other-1.png" %>'
                                            runat="server" />
                                    </a>
                                    <h4 class="title-services">
                                        <a href="javascript:void(0);">
                                            <%# Eval("ArticleTitle")%></a></h4>
                                    <div class="description">
                                        <%# Eval("Description")%>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsOurDifferent" runat="server" SelectMethod="ArticleSelectAll"
                        TypeName="TLLib.Article">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ArticleTitle" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter DefaultValue="5" Name="ArticleCategoryID" Type="String" />
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" runat="Server">
    <uc1:footer ID="footer1" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter2" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-xs-4">
                <h4 class="text-uppercase">
                    Dịch vụ</h4>
                <ul class="list-address">
                    <li><a href="http://www.hnf.vn/ao-thun-dong-phuc-dv-1.aspx">Áo thun đồng phục</a></li>
                    <li><a href="http://www.hnf.vn/ao-thun-dong-phuc-cong-ty-tci-10-tv-35.aspx">Áo thun
                        đồng phục công ty</a></li>
                    <li><a href="http://www.hnf.vn/ao-thun-dong-phuc-dep-tci-10-tv-40.aspx">Áo thun đồng
                        phục đẹp</a></li>
                    <li><a href="http://www.hnf.vn/may-ao-thun-dong-phuc-tci-10-tv-34.aspx">May áo thun
                        đồng phục</a></li>
                    <li><a href="http://www.hnf.vn/dat-ao-thun-dong-phuc-tci-10-tv-42.aspx">Đặt áo thun
                        đồng phục</a></li>
                    <li><a href="http://www.hnf.vn/dat-may-ao-thun-dong-phuc-tci-10-tv-46.aspx">Đặt may
                        áo thun đồng phục</a></li>
                    <li><a href="http://www.hnf.vn/ao-thun-dong-phuc-khach-san-tci-10-tv-51.aspx">Áo thun
                        đồng phục khách sạn</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-xs-4">
                <h4 class="text-uppercase">
                    Thông tin đặt hàng</h4>
                <ul class="list-address">
                    <li><a href="#">Các bước đặt áo thun</a></li>
                    <li><a href="#">Bảng giá áo thun</a></li>
                    <li><a href="#">Thông số size áo</a></li>
                    <li><a href="#">Uniform Branding</a></li>
                    <li><a href="#">Styling Service</a></li>
                    <li><a href="#">Subcribe to News</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-xs-4">
                <h4 class="text-uppercase">
                    Kiến thức sản phẩm</h4>
                <ul class="list-address">
                    <li><a href="#">Cách nhận biết vải áo thun</a></li>
                    <li><a href="#">Quy trình sản xuất</a></li>
                    <li><a href="#">Cách bảo quản áo thun</a></li>
                    <li><a href="#">Cách in áo thun</a></li>
                    <li><a href="#">Công nghệ in áo thun</a></li>
                    <li><a href="#">Cách in chữ lên áo</a></li>
                </ul>
            </div>
            <%--<div class="col-md-3 col-xs-6">
                            <h4 class="text-uppercase">
                                Follow us on facebook</h4>
                            <img class="img-responsive" src="assets/images/img-facebook.jpg" alt="" />
                        </div>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
