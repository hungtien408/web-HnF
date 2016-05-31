<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="dich-vu.aspx.cs" Inherits="services" %>

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
                    <li><a href="tu-van.aspx">Tư vấn</a></li>
                    <li><a href="#">Liên Hệ</a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
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
                            HF has built a reputation for providing a consistent quality product with long wearing
                            garments that have a</div>
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
                        <div class="desription">
                            HF has built a reputation for providing a consistent quality product with long wearing
                            garments that have a distinctive</div>
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
                you are what matters most. That's why we offer a diverse and personal service from
                the most passionate and knowledgeable people in suiting
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
                        <li><a href="#">
                            <img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                    </ul>
                </div>
                <div id="tab-2" class="section-tabs">
                    <ul class="list-models">
                        <li><a href="#">
                            <img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                    </ul>
                </div>
                <div id="tab-3" class="section-tabs">
                    <ul class="list-models">
                        <li><a href="#">
                            <img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                    </ul>
                </div>
                <div id="tab-4" class="section-tabs">
                    <ul class="list-models">
                        <li><a href="#">
                            <img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                    </ul>
                </div>
                <div id="tab-5" class="section-tabs">
                    <ul class="list-models">
                        <li><a href="#">
                            <img src="assets/images/product-img-1.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-2.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-3.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-4.jpg" alt="" /></a></li>
                        <li><a href="#">
                            <img src="assets/images/product-img-5.jpg" alt="" /></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Chất vải</h4>
            <div class="desription">
                Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi
                là đơn vị đầu tiên sử dụng vải 100% cotton
            </div>
        </div>
        <div class="wrap-section">
            <div class="table-responsive">
                <table class="table table-fabric">
                    <thead>
                        <tr>
                            <th>
                                Chất vải
                            </th>
                            <th>
                                Hình
                            </th>
                            <th>
                                Đặc điểm
                            </th>
                            <th>
                                Bảng màu
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                VẢI CÁ SẤU 100% cotton
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-1.jpg" alt="" />
                            </td>
                            <td rowspan="4">
                                <div class="fabric-content">Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi
                                là đơn vị đầu tiên sử dụng vải 100% cotton. Chúng tôi có nhiều loại chất vải để
                                khách hàng lựa chọn. Thế mạnh của chúng tôi là đơn vị đầu tiên sử dụng vải 100%
                                cotton. Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng
                                tôi là đơn vị đầu tiên sử dụng vải 100% cotton</div>
                            </td>
                            <td rowspan="4">
                                <ul class="list-color">
                                    <li>
                                        <img src="assets/images/color-img-1.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-2.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-3.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-4.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-5.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-6.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-7.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-8.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-9.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-10.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-11.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-12.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-13.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-14.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-15.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-16.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-17.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-18.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-19.png" alt="" /></li>
                                    <li>
                                        <img src="assets/images/color-img-20.png" alt="" /></li>
                                </ul>
                                <p class="note-color">
                                    Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                VẢI CÁ SẤU 35% cotton
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-2.jpg" alt="" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                VẢI CÁ SẤU 100% cotton
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-3.jpg" alt="" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                VẢI CÁ SẤU 65% cotton
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-4.jpg" alt="" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Công nghệ sản xuất</h4>
            <div class="desription">
                Chúng tôi có nhiều loại chất vải để khách hàng lựa chọn. Thế mạnh của chúng tôi
                là đơn vị đầu tiên sử dụng vải 100% cotton
            </div>
        </div>
        <div class="wrap-section">
            <div id="isotopelist" class="wrap-boximg">
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-images">
                            <h2 class="name-link">
                                <a href="#">Cắt vải</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-1.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-images">
                            <h2 class="name-link">
                                <a href="#">May thành phẩm</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-2.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-images">
                            <h2 class="name-link">
                                <a href="#">In bằng công nghệ ép chuyển nhiệt</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-3.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-images">
                            <h2 class="name-link">
                                <a href="#">In thường</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-4.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-images">
                            <h2 class="name-link">
                                <a href="#">Thêu</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-5.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Bảng giá</h4>
            <div class="desription">
                Giá bao gồm chi phí in tối đa 4 màu (kích thước hình in lớn nhất tương ứng khổ A4
                và in không quá 2 vị trí). Hoặc thêu với kích thước lớn nhất tương ứng 10 x 10cm.
                Đơn vị tính: 1000đ
            </div>
        </div>
        <div class="wrap-section">
            <div id="priceTab">
                <div class="head-2">
                    <ul class="menu-control menu-price">
                        <li><a class="link-tabs" href="#price-1">Áo thun cổ tròn</a></li>
                        <li><a class="link-tabs" href="#price-2">Áo thun polo thường</a></li>
                        <li><a class="link-tabs" href="#price-3">Áo thun polo cao cấp</a></li>
                        <li><a class="link-tabs" href="#price-4">Một số yêu cầu thêm</a></li>
                    </ul>
                </div>
                <div id="price-1" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-price">
                            <thead>
                                <tr>
                                    <th rowspan="2">
                                        Số lượng
                                    </th>
                                    <th colspan="5">
                                        Chất liệu
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        PE
                                    </th>
                                    <th>
                                        35/65 2 chiều
                                    </th>
                                    <th>
                                        35/65 4 chiều
                                    </th>
                                    <th>
                                        100% cotton 2 chiều
                                    </th>
                                    <th>
                                        100% cotton 4 chiều
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        10 - 20
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        100
                                    </td>
                                    <td>
                                        105
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        21 - 30
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        80
                                    </td>
                                    <td>
                                        86
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        31 - 50
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        70
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        51 - 100
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        60
                                    </td>
                                    <td>
                                        65
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        83
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        101 - 300
                                    </td>
                                    <td>
                                        45
                                    </td>
                                    <td>
                                        54
                                    </td>
                                    <td>
                                        58
                                    </td>
                                    <td>
                                        67
                                    </td>
                                    <td>
                                        75
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        301 - 1.000
                                    </td>
                                    <td>
                                        40
                                    </td>
                                    <td>
                                        48
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        61
                                    </td>
                                    <td>
                                        69
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        >1.000
                                    </td>
                                    <td colspan="5">
                                        Liên hệ để có giá tốt
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="price-2" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-price">
                            <thead>
                                <tr>
                                    <th rowspan="2">
                                        Số lượng
                                    </th>
                                    <th colspan="5">
                                        Chất liệu
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        PE
                                    </th>
                                    <th>
                                        35/65 2 chiều
                                    </th>
                                    <th>
                                        35/65 4 chiều
                                    </th>
                                    <th>
                                        100% cotton 2 chiều
                                    </th>
                                    <th>
                                        100% cotton 4 chiều
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        10 - 20
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        100
                                    </td>
                                    <td>
                                        105
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        21 - 30
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        80
                                    </td>
                                    <td>
                                        86
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        31 - 50
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        70
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        51 - 100
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        60
                                    </td>
                                    <td>
                                        65
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        83
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        101 - 300
                                    </td>
                                    <td>
                                        45
                                    </td>
                                    <td>
                                        54
                                    </td>
                                    <td>
                                        58
                                    </td>
                                    <td>
                                        67
                                    </td>
                                    <td>
                                        75
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        301 - 1.000
                                    </td>
                                    <td>
                                        40
                                    </td>
                                    <td>
                                        48
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        61
                                    </td>
                                    <td>
                                        69
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        >1.000
                                    </td>
                                    <td colspan="5">
                                        Liên hệ để có giá tốt
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="price-3" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-price">
                            <thead>
                                <tr>
                                    <th rowspan="2">
                                        Số lượng
                                    </th>
                                    <th colspan="5">
                                        Chất liệu
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        PE
                                    </th>
                                    <th>
                                        35/65 2 chiều
                                    </th>
                                    <th>
                                        35/65 4 chiều
                                    </th>
                                    <th>
                                        100% cotton 2 chiều
                                    </th>
                                    <th>
                                        100% cotton 4 chiều
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        10 - 20
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        100
                                    </td>
                                    <td>
                                        105
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        21 - 30
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        80
                                    </td>
                                    <td>
                                        86
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        31 - 50
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        70
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        51 - 100
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        60
                                    </td>
                                    <td>
                                        65
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        83
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        101 - 300
                                    </td>
                                    <td>
                                        45
                                    </td>
                                    <td>
                                        54
                                    </td>
                                    <td>
                                        58
                                    </td>
                                    <td>
                                        67
                                    </td>
                                    <td>
                                        75
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        301 - 1.000
                                    </td>
                                    <td>
                                        40
                                    </td>
                                    <td>
                                        48
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        61
                                    </td>
                                    <td>
                                        69
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        >1.000
                                    </td>
                                    <td colspan="5">
                                        Liên hệ để có giá tốt
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="price-4" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-price">
                            <thead>
                                <tr>
                                    <th rowspan="2">
                                        Số lượng
                                    </th>
                                    <th colspan="5">
                                        Chất liệu
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        PE
                                    </th>
                                    <th>
                                        35/65 2 chiều
                                    </th>
                                    <th>
                                        35/65 4 chiều
                                    </th>
                                    <th>
                                        100% cotton 2 chiều
                                    </th>
                                    <th>
                                        100% cotton 4 chiều
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        10 - 20
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        100
                                    </td>
                                    <td>
                                        105
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        21 - 30
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        80
                                    </td>
                                    <td>
                                        86
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        31 - 50
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        70
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        51 - 100
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        60
                                    </td>
                                    <td>
                                        65
                                    </td>
                                    <td>
                                        75
                                    </td>
                                    <td>
                                        83
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        101 - 300
                                    </td>
                                    <td>
                                        45
                                    </td>
                                    <td>
                                        54
                                    </td>
                                    <td>
                                        58
                                    </td>
                                    <td>
                                        67
                                    </td>
                                    <td>
                                        75
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        301 - 1.000
                                    </td>
                                    <td>
                                        40
                                    </td>
                                    <td>
                                        48
                                    </td>
                                    <td>
                                        52
                                    </td>
                                    <td>
                                        61
                                    </td>
                                    <td>
                                        69
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        >1.000
                                    </td>
                                    <td colspan="5">
                                        Liên hệ để có giá tốt
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap-section">
        <div class="bg-order wow">
            <img src="assets/images/img-quytrinh.jpg" alt="" /></div>
        <div class="container">
            <div id="orderTab">
                <div class="head-2">
                    <ul class="menu-control menu-qt">
                        <li><a class="link-tabs" href="#order-1"><span class="bg-button-left"></span>Tư vấn<span
                            class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-2"><span class="bg-button-left"></span>Báo giá<span
                            class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-3"><span class="bg-button-left"></span>Ký hợp
                            đồng<span class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-4"><span class="bg-button-left"></span>Thiết kế
                            mẫu<span class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-5"><span class="bg-button-left"></span>Chỉnh sửa
                            &amp; duyệt mẫu<span class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-6"><span class="bg-button-left"></span>Sản xuất<span
                            class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-7"><span class="bg-button-left"></span>Giao hàng<span
                            class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-8"><span class="bg-button-left"></span>Kiểm tra
                            chất lượng<span class="bg-button-right"></span></a></li>
                    </ul>
                </div>
                <h2 class="title-1 text-uppercase title-order">
                    Quy trình đặt hàng</h2>
                    <div class="wrap-order wow">
                <div id="order-1" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-2" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-3" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-4" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-5" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-6" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-7" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                <div id="order-8" class="section-tabs order-tabs">
                    <h4 class="title-design">
                        Thiết kế mẫu <span class="fa fa-arrow-right"></span></h4>
                    <div class="desription">
                        If you are like me you live and breathe fashion. You are constantly inspired with
                        so many new designs racing through your mind, so many you can't seem to get them
                        all down quick enough at the pace they arrive. You constantly dream of the day your
                        fashions will be on the fashion runway with the lights beaming brightly overhead,
                        the cameras flashing.</div>
                </div>
                </div>
            </div>
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
