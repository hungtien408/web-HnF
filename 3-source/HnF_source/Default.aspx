<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HnF</title>
    <meta name="description" content="HnF" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
    <div id="banner">
        <div class="slider-wrapper">
            <div class="slider-main">
                <asp:ListView ID="lstBannerMain" runat="server" DataSourceID="odsBannerMain" EnableModelValidation="True">
                    <ItemTemplate>
                        <img class="img-responsive" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner-img-2.jpg" %>'
                            runat="server" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBannerMain" runat="server" 
                    SelectMethod="AdsBannerSelectAll" TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
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
                <div class="col-lg-4 col-md-4 col-xs-4  element-item">
                    <div class="box-clothes">
                        <a class="section-img" href="#">
                            <img src="assets/images/img-clothes-1.jpg" alt="" />
                        </a>
                        <div class="section-content">
                            <h3 class="section-name">
                                <a href="#">Áo thun cổ trụ</a></h3>
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
                                <a href="#">Áo thun cổ tròn</a></h3>
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
                                <a href="#">Áo thun cổ tim</a></h3>
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
                Không chỉ mong muốn cung cấp các sản phẩm thời trang chất lượng, chúng tôi hướng
                đến việc xây dựng chuỗi giá trị lợi ích cho khách hàng, trở thành một đối tác thật
                sự đáng tin cậy, cả về chuyên môn lẫn dịch vụ. Chúng tôi dám mơ ước – dám thực hiện,
                đó là sự khác biệt lớn nhất của chúng tôi!
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
                                <img src="assets/images/we-other-1.png" alt="" class="corner" />
                            </a>
                            <h4 class="title-services">
                                <a href="#">Tư vấn giải pháp hợp lý</a></h4>
                            <div class="description">
                                We offer high quality stock service items and unique custom pieces that are well
                                designed and well priced. We work closely with our suppliers and manufacturers to
                                ensure
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xs-4 element-item">
                        <div class="box-services">
                            <a href="#" class="services-img">
                                <img src="assets/images/we-other-2.png" alt="" class="corner" />
                            </a>
                            <h4 class="title-services">
                                <a href="#">Chất lượng dịch vụ tương xứng với giá cả</a></h4>
                            <div class="description">
                                We offer high quality stock service items and unique custom pieces that are well
                                designed and well priced. We work closely with our suppliers and manufacturers to
                                ensure
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xs-4 element-item">
                        <div class="box-services">
                            <a href="#" class="services-img">
                                <img src="assets/images/we-other-3.png" alt="" class="corner" />
                            </a>
                            <h4 class="title-services">
                                <a href="#">Chia sẻ kiến thức về sản phẩm</a></h4>
                            <div class="description">
                                We offer high quality stock service items and unique custom pieces that are well
                                designed and well priced. We work closely with our suppliers and manufacturers to
                                ensure
                            </div>
                            <%--<div class="more-details text-center">
                                <a class="link-view" href="services-view.aspx">Xem thêm</a>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
