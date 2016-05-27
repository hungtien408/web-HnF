<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="Server">
    <div id="banner" class="banner-ser">
            <div class="slider-wrapper">
                <div class="logoServices">
                    <img class="img-responsive" src="assets/images/logo-banner-services.png" /></div>
                <img class="img-responsive" src="assets/images/banner-services.jpg" alt="" />
            </div>
            <div class="link-show text-center">
                <a href="#serviceShow">Trải nghiệm<span class="fa fa-chevron-down"></span></a></div>
        </div>
    <div class="header-services">
        <div class="container">
            <div class="logo">
                <a id="A2" href="~/" runat="server">
                    <img class="img-responsive" src="assets/images/logo.png" alt="logo" /></a>
            </div>
            <div class="wrapper-menu">
                <a class="panel-a menu-mo ipadmo-992" href="#menumobile" data-position="true" data-type="false">
                    <span class="fa fa-reorder"></span>Menu</a>
                <ul id="menu" class="desktop-992">
                    <li><a href="#">Dịch vụ chuyên nghiệp</a></li>
                    <li><a href="#">Đồng phục các ngành</a></li>
                    <li><a href="#">Mẫu áo</a></li>
                    <li><a href="#">Sản Phẩm</a></li>
                    <li><a href="#">Thông số size</a></li>
                    <li><a href="#">Dự án</a></li>
                    <li><a href="#">Tư vấn</a></li>
                    <li><a href="#">Liên Hệ</a></li>
                </ul>
                <div class="clearfix">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="text-center wrapper-880 border-none">
        <h4 class="text-uppercase title-1">
            Dịch vụ chuyên nghiệp</h4>
        <div class="desription font-20">
            Hãy trải nghiệm một dịch vụ hoàn toàn khác biệt
        </div>
    </div>
    <div class="wrap-section">
        <div class="productw">
        <div id="serviceShow" class="section-tb row">
            <div class="col-lg-3 col-xs-6 element-item">
                <div class="box-services">
                    <a href="#" class="services-img">
                        <img src="assets/images/services-img-1.png" alt="" class="corner" />
                    </a>
                    <h4 class="title-services">
                        <a href="#">Tư vấn &amp; thiết kế miễn phí</a></h4>
                    <div class="description">
                        Stafford Corporate has built a reputation for providing a consistent quality product
                        with long wearing garments that have a distinctive edge…
                    </div>
                    <div class="more-details text-center">
                        <a class="link-view" href="services-view.aspx">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6 element-item">
                <div class="box-services">
                    <a href="#" class="services-img">
                        <img src="assets/images/services-img-1.png" alt="" class="corner" />
                    </a>
                    <h4 class="title-services">
                        <a href="#">Giải pháp toàn diện khép kín</a></h4>
                    <div class="description">
                        Stafford Corporate has built a reputation for providing a consistent quality product
                        with long wearing garments that have a distinctive edge…
                    </div>
                    <div class="more-details text-center">
                        <a class="link-view" href="services-view.aspx">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6 element-item">
                <div class="box-services">
                    <a href="#" class="services-img">
                        <img src="assets/images/services-img-1.png" alt="" class="corner" />
                    </a>
                    <h4 class="title-services">
                        <a href="#">Chất lượng sản phẩm đúng cam kết</a></h4>
                    <div class="description">
                        Stafford Corporate has built a reputation for providing a consistent quality product
                        with long wearing garments that have a distinctive edge…
                    </div>
                    <div class="more-details text-center">
                        <a class="link-view" href="services-view.aspx">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6 element-item">
                <div class="box-services">
                    <a href="#" class="services-img">
                        <img src="assets/images/services-img-1.png" alt="" class="corner" />
                    </a>
                    <h4 class="title-services">
                        <a href="#">Dịch vụ chu đáo nhiệt tình</a></h4>
                    <div class="description">
                        Stafford Corporate has built a reputation for providing a consistent quality product
                        with long wearing garments that have a distinctive edge…
                    </div>
                    <div class="more-details text-center">
                        <a class="link-view" href="services-view.aspx">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    <div class="text-center wrapper-880">
        <h4 class="text-uppercase title-1">
            Phục vụ cho nhiều đối tượng</h4>
        <div class="desription font-20">
            Phục vụ cho nhiều đối tượng doanh nghiệp
        </div>
    </div>
    <div class="wrap-section">
        <ul class="list-object">
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/provide-img-1.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Áo thun <strong>Đồng phục</strong></a></div>
                    <div class="desription">
                        Led by originality and our fashion design heritage</div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/provide-img-2.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Áo nhóm - Áo lớp</a></div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/provide-img-3.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Sản xuất áo thun theo yêu cầu</a></div>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMenuMobile" runat="Server">
    <!--menumobile-->
    <div id="menumobile" class="mobile-panel mobilep-left">
        <div class="close-menu">
            <a href="#menumobile" class="glyphicon glyphicon-remove-circle">close</a></div>
        <div class="menu-in">
            <div class="menu-mobile">
                <div class="logo">
                    <a id="A1" href="~/" runat="server">
                        <img class="img-responsive" src="assets/images/logo.png" alt="logo" /></a>
                </div>
                <ul id="menuMobile" class="menu-nav">
                </ul>
            </div>
        </div>
    </div>
    <!--menumobile-->
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
