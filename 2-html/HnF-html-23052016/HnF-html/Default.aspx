<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            </div>
        </div>
        <div class="link-show text-center">
            <a href="#productShow">Chúng tôi cung cấp<span class="fa fa-chevron-down"></span></a></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    <div class="desription">
                        Led by originality and our fashion design heritage</div>
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
                </div>
            </li>
            <li><a href="#" class="section-img">
                <img class="img-responsive" src="assets/images/provide-img-3.jpg" alt="" />
            </a>
                <div class="content">
                    <div class="section-name">
                        <a href="#">Sản xuất áo thun theo yêu cầu</a></div>
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
                <div class="desription">
                    Led by originality and our fashion design heritage</div>
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
    </div>
    <div class="wrap-section">
        <div id="isotopelist" class="section-tb row mobile100">
            <div class="col-lg-4 col-md-6 col-sm-4 col-xs-6  element-item">
                <div class="box-clothes">
                    <a class="section-img" href="#">
                        <img src="assets/images/clothes-img-1.jpg" alt="" />
                        </a>
                    <div class="section-content">
                        <h3 class="section-name">
                            <a href="#">Áo thun dip dye</a></h3>
                        <div class="description text-uppercase">Bộ sưu tập 2016</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-4 col-xs-6  element-item">
                <div class="box-clothes">
                    <a class="section-img" href="#">
                        <img src="assets/images/clothes-img-2.jpg" alt="" />
                        </a>
                    <div class="section-content content-bottom">
                        <h3 class="section-name">
                            <a href="#">Áo trơn cổ tròn</a></h3>
                        <div class="description text-uppercase">Bộ sưu tập 2016</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-4 col-xs-6  element-item">
                <div class="box-clothes">
                    <a class="section-img" href="#">
                        <img src="assets/images/clothes-img-3.jpg" alt="" />
                        </a>
                    <div class="section-content">
                        <h3 class="section-name">
                            <a href="#">Áo polo trơn</a></h3>
                        <div class="description text-uppercase">Bộ sưu tập 2016</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
