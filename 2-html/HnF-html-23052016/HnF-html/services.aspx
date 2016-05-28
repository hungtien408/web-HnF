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
                <img class="img-responsive" src="assets/images/object-img-1.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Ngân hàng tài chính</a></div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/object-img-2.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Ngành xây dựng</a></div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/object-img-3.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Ngành hàng tiêu dùng</a></div>
                    <div class="desription">
                        HF has built a reputation for providing a consistent quality product with long wearing garments that have a</div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/object-img-4.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Ngành logistic</a></div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/object-img-5.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Kỹ thuật - công nghệ thông tin</a></div>
                    <div class="desription">HF has built a reputation for providing a consistent quality product with long wearing garments that have a distinctive</div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/object-img-6.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Truyền thông giải trí</a></div>
                </div>
            </li>
            <li><a href="#" class="object-img">
                <img class="img-responsive" src="assets/images/object-img-7.jpg" alt="">
            </a>
                <div class="content">
                    <div class="object-name">
                        <a href="#">Nhà hàng khách sạn</a></div>
                </div>
            </li>
        </ul>
    </div>
    <div class="text-center wrapper-880">
        <h4 class="text-uppercase title-1">
            Mẫu mã đa dạng</h4>
        <div class="desription">
            you are what matters most. That's why we offer a diverse and personal service from the most passionate and knowledgeable people in suiting
        </div>
    </div>
    <div class="wrap-section">
        <div id="sectionTab">
            <div class="head-2">
                <ul class="menu-control">
                    <li><a class="link-tabs" href="#tab-1">Áo cổ trụ - cổ bo</a></li>
                    <li><a class="link-tabs" href="#tab-2">Áo cổ trụ - cổ sơ mi</a></li>
                    <li><a class="link-tabs" href="#tab-3">Áo cổ tròn</a></li>
                    <li><a class="link-tabs" href="#tab-4">Áo cổ tim</a></li>
                    <li><a class="link-tabs" href="#tab-5">Áo cổ tròn, tay raglan</a></li>
                </ul>
            </div>
            <div id="tab-1" class="section-tabs">
                <ul class="list-models">
                    <li><a href="#"><img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                </ul>
            </div>  
            <div id="tab-2" class="section-tabs">
                <ul class="list-models">
                    <li><a href="#"><img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                </ul>
            </div>
            <div id="tab-3" class="section-tabs">
                <ul class="list-models">
                    <li><a href="#"><img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                </ul>
            </div>
            <div id="tab-4" class="section-tabs">
                <ul class="list-models">
                    <li><a href="#"><img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                </ul>
            </div>
            <div id="tab-5" class="section-tabs">
                <ul class="list-models">
                    <li><a href="#"><img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="text-center wrapper-880">
        <h4 class="text-uppercase title-1">
            Chất vải</h4>
        <div class="desription">
            Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi là đơn vị đầu tiên sử dụng vải 100% cotton
        </div>
    </div>
    <div class="wrap-section">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Chất vải</th>
                        <th>Hình</th>
                        <th>Đặc điểm</th>
                        <th>Bảng màu</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>VẢI CÁ SẤU 100% cotton</td>
                        <td><img src="assets/images/fabric-img-1.jpg" alt="" /></td>
                        <td>Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi là đơn vị đầu tiên sử dụng vải 100% cotton</td>
                        <td>Vải cá sấu 65% cotton</td>
                    </tr>
                    <tr>
                        <td>VẢI CÁ SẤU 35% cotton</td>
                        <td><img src="assets/images/fabric-img-2.jpg" alt="" /></td>
                        <td>Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi là đơn vị đầu tiên sử dụng vải 100% cotton</td>
                        <td>Vải cá sấu 65% cotton</td>
                    </tr>
                    <tr>
                        <td>VẢI CÁ SẤU 100% cotton</td>
                        <td><img src="assets/images/fabric-img-3.jpg" alt="" /></td>
                        <td>Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi là đơn vị đầu tiên sử dụng vải 100% cotton</td>
                        <td>Vải cá sấu 65% cotton</td>
                    </tr>
                    <tr>
                        <td>VẢI CÁ SẤU 65% cotton</td>
                        <td><img src="assets/images/fabric-img-4.jpg" alt="" /></td>
                        <td>Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi là đơn vị đầu tiên sử dụng vải 100% cotton</td>
                        <td>Vải cá sấu 65% cotton</td>
                    </tr>
                </tbody>
            </table>
        </div>
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
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter" runat="Server">
    <div class="container">
        <div class="row">
            <div class="footer-left">
            </div>
            <div class="footer-right">
            </div>
            <div class="col-md-8 col-xs-6">
                <h4 class="title-footer text-uppercase">
                    Đồng phục là một trong những yếu tố ảnh hưởng đến sự thành công của một doanh nghiệp</h4>
                <p class="footer-content">
                    Hãy để chúng tôi cải thiện hình ảnh doanh nghiệp của bạn!</p>
            </div>
            <div class="col-md-4 col-xs-6">
                <div class="hotline">
                    <p>
                        Liên hệ</p>
                    <span>0917 377 999</span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
