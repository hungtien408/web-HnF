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
            <div class="wrap-guarantee">
                <div class="guarantee-content">
                    <p>
                        18001529 - Cửa sổ tiếp nhận và xử lý thông tin Tháng 6-2004, Trung tâm tư vấn khách
                        hàng (call center) của Công ty Toshiba Việt Nam chính thức ra mắt. Đây là một trong
                        những call center đầu tiên của cả nước trong ngành hàng điện tử, điện lạnh và đến
                        nay bao gồm cả mảng laptop. Trước đó, qua bề dày hoạt động tại Việt Nam, Toshiba
                        đã thực hiện nhiều hoạt động và chính sách chăm sóc khách hàng hết sức qui mô và
                        chuyên nghiệp. Việc ra đời đội ngũ call center là một trong những bước đột phá của
                        Toshiba Việt Nam nhằm nâng cao hơn nữa chất lượng dịch vụ hậu mãi, qua đó gia tăng
                        uy tín và sức lan toả của thương hiệu Toshiba.</p>
                    <p>
                        Đội ngũ call center Toshiba hoàn toàn là nhân viên của công ty, được đào tạo trở
                        thành tư vấn viên chuyên nghiệp, am hiểu các tính năng vượt trội của sản phẩm Toshiba
                        để giải đáp các thắc mắc của khách hàng, tiếp nhận và xử lý thông tin sản phẩm cần
                        bảo hành, Thông qua giao tiếp với khách hàng, call center xác định được trường hợp
                        nào không phải là hư hỏng máy móc, chỉ cần hướng dẫn khách hàng sử dụng; trường
                        hợp nào cần kỹ thuật viên trực tiếp kiểm tra, khắc phục. Bước sàng lọc này của nhân
                        viên giúp tiết kiệm thời gian của khách hàng, rút ngắn tối đa thời gian sữa chữa,
                        đồng thời hỗ trợ đội ngũ kỹ thuật viên bảo hành hoạt động hiệu quả hơn. Với vai
                        trò đó, call center như là cửa sổ tiếp nhận thông tin, là một mắc xích quan trọng
                        trong hệ thống bảo hành. Mọi nỗ lực của call center đều nhằm làm gia tăng sự hài
                        lòng của khách hàng, để khách hàng ngày càng thêm an tâm và tin tưởng sử dụng các
                        sản phẩm, dịch vụ của Toshiba.</p>
                </div>
            </div>
        </div>
        <div id="tab-2" class="section-tabs">
            <div class="wrap-guarantee">
                <div class="guarantee-content">
                    <p>
                        18001529 - Cửa sổ tiếp nhận và xử lý thông tin Tháng 6-2004, Trung tâm tư vấn khách
                        hàng (call center) của Công ty Toshiba Việt Nam chính thức ra mắt. Đây là một trong
                        những call center đầu tiên của cả nước trong ngành hàng điện tử, điện lạnh và đến
                        nay bao gồm cả mảng laptop. Trước đó, qua bề dày hoạt động tại Việt Nam, Toshiba
                        đã thực hiện nhiều hoạt động và chính sách chăm sóc khách hàng hết sức qui mô và
                        chuyên nghiệp. Việc ra đời đội ngũ call center là một trong những bước đột phá của
                        Toshiba Việt Nam nhằm nâng cao hơn nữa chất lượng dịch vụ hậu mãi, qua đó gia tăng
                        uy tín và sức lan toả của thương hiệu Toshiba.</p>
                    <p>
                        Đội ngũ call center Toshiba hoàn toàn là nhân viên của công ty, được đào tạo trở
                        thành tư vấn viên chuyên nghiệp, am hiểu các tính năng vượt trội của sản phẩm Toshiba
                        để giải đáp các thắc mắc của khách hàng, tiếp nhận và xử lý thông tin sản phẩm cần
                        bảo hành, Thông qua giao tiếp với khách hàng, call center xác định được trường hợp
                        nào không phải là hư hỏng máy móc, chỉ cần hướng dẫn khách hàng sử dụng; trường
                        hợp nào cần kỹ thuật viên trực tiếp kiểm tra, khắc phục. Bước sàng lọc này của nhân
                        viên giúp tiết kiệm thời gian của khách hàng, rút ngắn tối đa thời gian sữa chữa,
                        đồng thời hỗ trợ đội ngũ kỹ thuật viên bảo hành hoạt động hiệu quả hơn. Với vai
                        trò đó, call center như là cửa sổ tiếp nhận thông tin, là một mắc xích quan trọng
                        trong hệ thống bảo hành. Mọi nỗ lực của call center đều nhằm làm gia tăng sự hài
                        lòng của khách hàng, để khách hàng ngày càng thêm an tâm và tin tưởng sử dụng các
                        sản phẩm, dịch vụ của Toshiba.</p>
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
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
