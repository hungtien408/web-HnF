<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HnF</title>
    <meta name="description" content="HnF" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
    <div id="banner">
        <div class="slider-wrapper">
            <div id="slider" class="nivoSlider">
                <img class="img-responsive" src="assets/images/banner-img-1.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-img-2.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-img-3.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-img-4.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-img-5.jpg" alt="" />
                <img class="img-responsive" src="assets/images/banner-img-6.jpg" alt="" />
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
                AO THUN RUBIC is the "go-to" design business wardrobe brand with everyday-inspired
                combinations, making dressing your business easy.
            </div>
        </div>
        <div id="productShow" class="wrap-section">
            <ul class="section-list">
                <li><a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-1.jpg" alt="" />
                </a>
                    <div class="content">
                        <div class="section-name">
                            <a href="#">Áo thun <strong>Đồng phục</strong></a></div>
                        <p class="more-details">
                            <a href="#">Chi tiết</a></p>
                    </div>
                </li>
                <li><a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-2.jpg" alt="" />
                </a>
                    <div class="content">
                        <div class="section-name">
                            <a href="#">Áo nhóm - Áo lớp</a></div>
                        <p class="more-details">
                            <a href="#">Chi tiết</a></p>
                    </div>
                </li>
                <li><a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-3.jpg" alt="" />
                </a>
                    <div class="content">
                        <div class="section-name">
                            <a href="#">Sản xuất áo thun theo yêu cầu</a></div>
                        <p class="more-details">
                            <a href="#">Chi tiết</a></p>
                    </div>
                </li>
            </ul>
            <div class="section-box">
                <a href="#" class="section-img">
                    <img class="img-responsive" src="assets/images/provide-img-4.jpg" alt="" />
                </a>
                <div class="content">
                    <div class="section-name">
                        <a href="#">Áo thun <strong>Quảng cáo sự kiện</strong></a></div>
                    <p class="more-details">
                        <a href="#">Chi tiết</a></p>
                </div>
            </div>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Mẫu áo thun tiêu biểu</h4>
            <div class="desription">
                AO THUN RUBIC is the "go-to" design business wardrobe brand with everyday-inspired
                combinations, making dressing your business easy.
            </div>
            <div class="more-details text-center details-2">
                <a class="btn-4" href="#">Xem thêm</a>
            </div>
        </div>
        <div class="wrap-section">
            <div id="isotopelist" class="section-tb row mobile100">
                <div class="col-lg-4 col-md-4 col-xs-4  element-item">
                    <div class="box-clothes">
                        <a class="section-img" href="#">
                            <img src="assets/images/img-clothes-1.jpg" alt="" />
                        </a>
                        <div class="section-content">
                            <h3 class="section-name">
                                <a href="#">Áo thun dip dye</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-4  element-item">
                    <div class="box-clothes">
                        <a class="section-img" href="#">
                            <img src="assets/images/img-clothes-2.jpg" alt="" />
                        </a>
                        <div class="section-content content-bottom">
                            <h3 class="section-name">
                                <a href="#">Áo trơn cổ tròn</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-4  element-item">
                    <div class="box-clothes">
                        <a class="section-img" href="#">
                            <img src="assets/images/img-clothes-3.jpg" alt="" />
                        </a>
                        <div class="section-content">
                            <h3 class="section-name">
                                <a href="#">Áo polo trơn</a></h3>
                        </div>
                    </div>
                </div>
                <%--<div class="col-lg-4 col-md-6 col-sm-4 col-xs-6  element-item">
                    <div class="box-clothes">
                        <a class="section-img" href="#">
                            <img src="assets/images/img-clothes-3.jpg" alt="" />
                        </a>
                        <div class="section-content">
                            <h3 class="section-name">
                                <a href="#">Áo polo trơn</a></h3>
                            <div class="description text-uppercase">
                                Bộ sưu tập 2016</div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
        <div class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Chúng tôi khác biệt</h4>
            <div class="desription">
                AO THUN RUBIC are suppliers of high quality, affordable and fashion forward corporate
                apparel for Australia and New Zealand. We provide complete tailored uniform solutions
                for businesses and focus on outstanding customer service.
            </div>
            <div class="more-details text-center details-3">
                <a class="btn-4" href="#">Xem thêm về chúng tôi</a>
            </div>
        </div>
        <div class="wrap-section">
            <div class="productw">
                <div id="weShow" class="section-tb row">
                    <div class="col-lg-4 col-xs-4 element-item">
                        <div class="box-services">
                            <a href="#" class="services-img">
                                <img src="assets/images/we-other.png" alt="" class="corner" />
                            </a>
                            <h4 class="title-services">
                                <a href="#">Tư vấn giải pháp hợp lý</a></h4>
                            <div class="description">
                                We offer high quality stock service items and unique custom pieces that are well
                                designed and well priced. We work closely with our suppliers and manufacturers to
                                ensure
                            </div>
                            <div class="more-details text-center">
                                <a class="link-view" href="services-view.aspx">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xs-4 element-item">
                        <div class="box-services">
                            <a href="#" class="services-img">
                                <img src="assets/images/we-other.png" alt="" class="corner" />
                            </a>
                            <h4 class="title-services">
                                <a href="#">Chất lượng dịch vụ tương xứng với giá cả</a></h4>
                            <div class="description">
                                We offer high quality stock service items and unique custom pieces that are well
                                designed and well priced. We work closely with our suppliers and manufacturers to
                                ensure
                            </div>
                            <div class="more-details text-center">
                                <a class="link-view" href="services-view.aspx">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xs-4 element-item">
                        <div class="box-services">
                            <a href="#" class="services-img">
                                <img src="assets/images/we-other.png" alt="" class="corner" />
                            </a>
                            <h4 class="title-services">
                                <a href="#">Chia sẻ kiến thức về sản phẩm</a></h4>
                            <div class="description">
                                We offer high quality stock service items and unique custom pieces that are well
                                designed and well priced. We work closely with our suppliers and manufacturers to
                                ensure
                            </div>
                            <div class="more-details text-center">
                                <a class="link-view" href="services-view.aspx">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
