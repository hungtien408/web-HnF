<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="~/uc/ucFooter.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HnF</title>
    <meta name="description" content="HnF" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
    <div id="banner">
        <div class="slider-wrapper">
            <%--<div id="slider" class="nivoSlider">
                <img class="img-responsive" src="assets/images/banner-aboutus-1.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-aboutus-2.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-aboutus-3.jpg" alt="" />
            </div>--%>
            <div class="slider-main">
                <img class="img-responsive" src="assets/images/banner-aboutus-1.jpg" alt="" />
                <%--<img class="img-responsive" src="assets/images/banner-aboutus-2.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-aboutus-3.jpg" alt="" />--%>
            </div>
        </div>
        <div class="paragraph-banner">
            <p class="paragraph-1 text-uppercase">
                Kể từ năm 2016, Hnf chuyên cung cấp các giải pháp hoàn diện về may mặc như áo thun
                đồng phục, áo thun quảng cáo nhằm đáp ứng nhu cầu của các doanh nghiệp trên địa
                bàn Thành Phố Hồ Chí Minh và cả nước.</p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="text-center wrapper-880 wrap-why">
            <h4 class="title-1">
                Tại sao lại chọn chúng tôi</h4>
            <div class="desription deswhy">
                Tại Hnf, chúng tôi cam kết cung cấp cho Khách hàng với tiêu chuẩn cao nhất về chất
                lượng từ khâu sản xuất cho đến dịch vụ khách hàng nhằm đảm bảo sự hài lòng cũng
                như thiết lập sự phát triển lâu dài - bền vững cho cả hai bên. Chúng tôi phấn đấu
                duy trì sự trẻ trung - năng động và sáng tạo để cho ra đời những sản phẩm hiện đại,
                phù hợp với xu hướng thời trang của thế giới.
            </div>
        </div>
        <div class="wrap-section">
            <div id="whyShow" class="section-tb row mobile100">
                <div class="col-lg-4 col-xs-6 element-item">
                    <div class="why-box">
                        <a href="#" class="why-img">
                            <img src="assets/images/why-img-1.png" alt="" class="corner" /></a>
                        <div class="why-content">
                            <h5 class="why-name">
                                <a href="#">Dịch vụ khách hàng hoàn hảo</a></h5>
                            <%--<div class="description">
                                We always strive to deliver the best of our services for the customers.
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-6 element-item">
                    <div class="why-box">
                        <a href="#" class="why-img">
                            <img src="assets/images/why-img-2.png" alt="" class="corner" /></a>
                        <div class="why-content">
                            <h5 class="why-name">
                                <a href="#">Thiết kế áo mẫu miễn phí</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-6 element-item">
                    <div class="why-box">
                        <a href="#" class="why-img">
                            <img src="assets/images/why-img-3.png" alt="" class="corner" /></a>
                        <div class="why-content">
                            <h5 class="why-name">
                                <a href="#">Sản phẩm chất lượng</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-6 element-item">
                    <div class="why-box">
                        <a href="#" class="why-img">
                            <img src="assets/images/why-img-4.png" alt="" class="corner" /></a>
                        <div class="why-content">
                            <h5 class="why-name">
                                <a href="#">Giải pháp in và thêu tiên tiến</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-6 element-item">
                    <div class="why-box">
                        <a href="#" class="why-img">
                            <img src="assets/images/why-img-5.png" alt="" class="corner" /></a>
                        <div class="why-content">
                            <h5 class="why-name">
                                <a href="#">Giá cả phù hợp với nhu cầu khách hàng</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-6 element-item">
                    <div class="why-box">
                        <a href="#" class="why-img">
                            <img src="assets/images/why-img-6.png" alt="" class="corner" /></a>
                        <div class="why-content">
                            <h5 class="why-name">
                                <a href="#">Giao hàng đúng hẹn Chăm sóc khách hàng sau bán hàng</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap-section" style="padding: 10px 0 0;">
        <div class="bg-why wow">
            <img src="assets/images/why-background.jpg" alt="" /></div>
        <div class="bg-content">
            <p class="content-1 text-uppercase">
                Để mang lại một sản phẩm may mặc phù hợp xu hướng và chất lượng vượt trội, công
                việc thiết kế đòi hỏi sự kết hợp của sự sáng tạo, máy móc và kinh nghiệm thực tiễn</p>
            <p class="content-2">
                Đội ngũ chuyên gia của chúng tôi luôn áp dụng các kỹ thuật tiên tiến nhất để phát
                triển và tạo ra các giải pháp về nguyên liệu may mặc. Bên cạnh đó chúng tôi còn
                nghiên cứu về form dáng, kích cỡ size của người Việt, màu sắc trong bộ nhận diện
                thương hiệu của mỗi doanh nghiệp để có được một chiếc áo phù hợp.
            </p>
        </div>
    </div>
    <%--<div class="container">
        <div class="text-center wrapper-880 wrap-why">
            <h4 class="title-1 text-uppercase">
                Khách hàng của chúng tôi</h4>
        </div>
        <div class="wrap-section">
            <div id="parner" class="row-in">
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-1.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-2.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-3.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-4.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-5.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-6.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-7.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-8.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-9.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-10.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-11.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-4 col-box element-item">
                    <div class="box-in">
                        <a href="#" class="parner-img"><img src="assets/images/parner-img-12.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
            <ul class="list-parner">
                <li><a href="#"><img src="assets/images/parner-img-1.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-2.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-3.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-4.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-5.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-6.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-7.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-8.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-9.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-10.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-11.jpg" alt="" /></a></li>
                <li><a href="#"><img src="assets/images/parner-img-12.jpg" alt="" /></a></li>
            </ul>
        </div>
    </div>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" runat="Server">
    <uc1:footer ID="footer1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
