<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBanner" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="text-center wrapper-880">
        <h4 class="text-uppercase title-1">
            Chúng tôi cung cấp</h4>
        <div class="desription">
            AO THUN RUBIC is the "go-to" design business wardrobe brand with everyday-inspired
            combinations, making dressing your business easy.
        </div>
    </div>
    <div class="wrap-section">
        <div class="section-box">
            <a href="#" class="section-img">
                <img src="assets/images/provide-img-1.jpg" alt="" />
            </a>
            <div class="content">
                <div class="section-name">
                    <a href="#">Áo thun <strong>Đồng phục</strong></a></div>
                <div class="desription">
                    Led by originality and our fashion design heritage</div>
                <p class="more-details">
                    <a href="#">Chi tiết</a></p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
