<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="dich-vu.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HnF</title>
    <meta name="description" content="HnF" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="Server">
    <div id="banner" class="banner-ser">
        <div class="slider-wrapper">
            <div class="logoServices">
                <img class="img-responsive" src="assets/images/logo-banner-services.png" /></div>
            <img class="img-responsive" src="assets/images/banner-services.jpg" alt="" />
        </div>
        <div class="link-show link-show-dv text-center">
            <a href="#dvcnShow">Trải nghiệm<span class="fa fa-chevron-down"></span></a></div>
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
                    <li class="dvShow"><a href="#dvcnShow" class="btn-2">Dịch vụ chuyên nghiệp </a></li>
                    <li class="dvShow"><a href="#dpcnShow" class="btn-2">Đồng phục các ngành </a></li>
                    <li class="dvShow"><a href="#maShow" class="btn-2">Mẫu áo </a></li>
                    <li class="dvShow"><a href="#cvShow" class="btn-2">Chất vải </a></li>
                    <li class="dvShow"><a href="#cnsxShow" class="btn-2">Công nghệ sản xuất </a></li>
                    <li class="dvShow"><a href="#qtdhShow" class="btn-2">Quy trình đặt hàng </a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="dvcnShow" class="text-center wrapper-880 border-none">
            <h4 class="text-uppercase title-1">
                Dịch vụ chuyên nghiệp</h4>
            <div class="desription">
                Hãy trải nghiệm một dịch vụ hoàn toàn khác biệt
            </div>
        </div>
        <div class="wrap-section">
            <div class="productw">
                <div id="serviceShow" class="section-tb row">
                    <asp:ListView ID="lstDVCN" runat="server" DataSourceID="odsDVCN" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="col-lg-3 col-xs-6 element-item">
                                <div class="box-services">
                                    <a href="javascript:void(0);" class="services-img">
                                        <img class="corner" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/services-img-4.png" %>'
                                            runat="server" />
                                    </a>
                                    <h4 class="title-services">
                                        <a href="javascript:void(0);">
                                            <%# Eval("ProductName") %></a></h4>
                                    <div class="description content-services">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                                    </div>
                                    <%--<div class="more-details text-center">
                                <a class="link-view" href="services-view.aspx">Xem thêm</a>
                            </div>--%>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsDVCN" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                            <asp:QueryStringParameter Name="ServiceCategoryID" QueryStringField="dv" Type="String" />
                            <asp:Parameter Name="ManufacturerID" Type="String" />
                            <asp:Parameter Name="OriginID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="InStock" Type="String" />
                            <asp:Parameter Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="IsBestSeller" Type="String" />
                            <asp:Parameter Name="IsSaleOff" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
        <div id="dpcnShow" class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Phục vụ cho nhiều đối tượng</h4>
            <div class="desription">
                Am hiểu xu hướng thời trang, am hiểu thị trường doanh nghiệp, chúng tôi tự hào đã
                phục vụ cho nhiều đối tượng doanh nghiệp trong nhiều lĩnh vực, ngành nghề khác nhau.
            </div>
        </div>
        <div class="wrap-section wrap-object">
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
        <div id="maShow" class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Mẫu mã đa dạng</h4>
            <div class="desription">
                Đội ngũ Designer được đào tạo chuyên nghiệp, luôn sẵn sàng đem đến cho bạn nhiều
                ý tưởng về mẫu mã khác nhau. Chúng tôi luôn xem trọng tính thẫm mỹ và độ tiện ích
                của áo thun đồng phục.
            </div>
        </div>
        <div class="wrap-section wrap-models">
            <%--<div id="sectionTab">
                <div class="head-2">
                    <ul class="menu-control menu-models">
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
                    </ul>
                </div>
            </div>--%>
            <div class="row">
                <div class="head-2">
                    <ul class="menu-control menu-models simplefilter">
                        <li data-filter="1" data-shuffle><a class="link-tabs" href="javascript:void(0);">Áo
                            xẻ trụ - cổ bo</a></li>
                        <li data-filter="2" data-shuffle><a class="link-tabs" href="javascript:void(0);">Áo
                            xẻ trụ - cổ sơ mi</a></li>
                        <li data-filter="3" data-shuffle><a class="link-tabs" href="javascript:void(0);">Áo
                            cổ tròn</a></li>
                        <li data-filter="4" data-shuffle><a class="link-tabs" href="javascript:void(0);">Áo
                            cổ tim</a></li>
                        <li data-filter="5" data-shuffle><a class="link-tabs" href="javascript:void(0);">Áo
                            raglan</a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="filtr-container">
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-01.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-02.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-03.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-04.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-05.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-06.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-07.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="1">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucobo/ao-thun-dong-phuc-ca-sau-13.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-ca-sau-co-so-mi-01.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-01.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-02.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-03.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-04.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-05.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-06.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="2">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aoxetrucosomi/ao-thun-dong-phuc-co-so-mi-07.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="3">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotron/ao-thun-dong-phuc-co-tron-01.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="3">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotron/ao-thun-dong-phuc-co-tron-02.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="3">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotron/ao-thun-dong-phuc-co-tron-03-1.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="3">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotron/ao-thun-dong-phuc-co-tron-04.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="3">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotron/ao-thun-dong-phuc-co-tron-05.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="4">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotim/Ao-thun-dong-phuc-co-tim-01.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="4">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotim/Ao-thun-dong-phuc-co-tim-02.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="4">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotim/Ao-thun-dong-phuc-co-tim-03.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="4">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotim/Ao-thun-dong-phuc-co-tim-04.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="4">
                        <a href="javascript:void(0);">
                            <img src="assets/imgsp/aocotim/Ao-thun-dong-phuc-co-tim-05.png" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="5">
                        <a href="#">
                            <img src="assets/imgsp/aoraglan/ao-raglan-01.jpg" alt="" /></a>
                    </div>
                    <div class="models-tabs filtr-item" data-category="5">
                        <a href="#">
                            <img src="assets/imgsp/aoraglan/ao-raglan-02.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="cvShow" class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Chất vải</h4>
            <div class="desription">
                <p>
                    Chúng tôi có nhiều chất vải khác nhau, ứng với từng nhu cầu sử dụng khác nhau của
                    mỗi đối tượng doanh nghiệp. HNF là một trong những đơn vị đầu tiên sử dụng chất
                    vải hoàn toàn 100% cotton tự nhiên cũng như luôn công bố chính xác tỉ lệ % cấu tạo
                    của chất vải.</p>
                <p style="font-weight: 600; text-align: center;">
                    CHẤT LIỆU THẬT - TƯ VẤN THẬT - SẢN PHẨM THẬT</p>
            </div>
        </div>
        <div class="wrap-section desktop-showhide">
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
                        <tr id="fab-1">
                            <td>
                                VẢI CÁ SẤU 100% cotton
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-1.jpg" alt="" />
                            </td>
                            <td rowspan="4">
                                <div data-id="fab-1" class="fabric-content">
                                    <p>
                                        - Vải cá sấu có mắt lưới to hơn vải thun trơn, mắt vải thường đan nhau như lưới.</p>
                                    <p>
                                        - Đặc điểm của thun cá sấu 100% cotton:
                                        <ul style="list-style: none; margin: 0; padding: 0;">
                                            <li>• <b class="text-uppercase">Ưu điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Thấm hút mồ hôi cực tốt.</li>
                                                    <li><span class="fa fa-check"></span>Khi mặc cảm giác rất mát mẻ</li>
                                                    <li><span class="fa fa-check"></span>Co giãn 4 chiều, thoải mái vận động</li>
                                                    <li><span class="fa fa-check"></span>Ít xù long, bề mặt lán mịn</li>
                                                </ul>
                                            </li>
                                            <li>• <b class="text-uppercase">Nhược điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Hơi nhăn sau khi giặt</li>
                                                    <li><span class="fa fa-check"></span>Hạn chế về màu sắc. Chỉ có các màu như: trắng,
                                                        đen, xám tiêu, xanh bích.</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </p>
                                    <p>
                                        - Tại HNF, chúng tôi sử dụng vải với thành phần 100% cotton nhằm đem lại sự thoải
                                        mái và sang trọng nhất cho người mặc. Tuy nhiên, khi sử dụng cần ủi thường xuyên
                                        để duy trì tính thẩm mỹ cho áo.
                                    </p>
                                    <p>
                                        - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                        này!</p>
                                </div>
                                <div data-id="fab-2" class="fabric-content">
                                    <p>
                                        - Thành phần gồm 35 % xơ cotton và 65% xơ Polyeste</p>
                                    <p>
                                        - Đây là loại vải có bề mặt dệt đẹp, độ dày tương đối nên khi dùng may áo có cổ
                                        sẽ tạo form đứng cho áo.</p>
                                    <p>
                                        - Đặc điểm của thun cá sấu TC 65-35
                                        <ul style="list-style: none; margin: 0; padding: 0;">
                                            <li>• <b class="text-uppercase">Ưu điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Có độ dày tương đối, giữ Form đứng cho áo</li>
                                                    <li><span class="fa fa-check"></span>Vải mềm mại, ít nhàu khi giặt</li>
                                                    <li><span class="fa fa-check"></span>Co giãn 4 chiều</li>
                                                </ul>
                                            </li>
                                            <li>• <b class="text-uppercase">Nhược điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Thấm hút mồ hôi và không mát như Cá sấu 100% cotton</li>
                                                    <li><span class="fa fa-check"></span>Hơi dễ xù long</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </p>
                                    <p>
                                        - Vải cá sấu TC 65-35 có thể nói là loại vải được sử dụng đại trà hiện nay, được
                                        hầu như các công ty sản xuất đồng phục chọn lựa sử dụng vì chất lượng cũng khá tốt
                                        và nhất là tính kinh tế. Tại HNF, chúng tôi đầu tư xử lý thêm bề mặt vải để hạn
                                        chế thấp nhất tình trạng xù lông.
                                    </p>
                                    <p>
                                        - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                        này!</p>
                                </div>
                                <div data-id="fab-3" class="fabric-content">
                                    <p>
                                        - Polyeste, tên thường gọi PE</p>
                                    <p>
                                        - Đây là loại vải sử dụng cho các sản phẩm sử dụng vài lần, có giá thành cực tốt.</p>
                                    <p>
                                        <ul style="list-style: none; margin: 0; padding: 0;">
                                            <li>• <b class="text-uppercase">Ưu điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Mình vải cứng, giữ Form đứng cho áo</li>
                                                    <li><span class="fa fa-check"></span>Giá thành khá rẻ</li>
                                                </ul>
                                            </li>
                                            <li>• <b class="text-uppercase">Nhược điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Mình vải hơi thô ráp</li>
                                                    <li><span class="fa fa-check"></span>Thấm hút mồ hôi kém, gây nóng cho người mặc</li>
                                                    <li><span class="fa fa-check"></span>Màu nhuộm kém</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </p>
                                    <p>
                                        - Vải cá sấu PE là loại vải thông thường nhất, thường được sử dụng cho các sản phẩm
                                        mặc vài lần như áo cho sự kiện, ngày lễ, áo mặc khi đi du lịch…
                                    </p>
                                    <p>
                                        - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                        này!</p>
                                </div>
                                <div data-id="fab-4" class="fabric-content">
                                    <p>
                                        - Vải trơn có bề mặt sớ vải khít, mịn, cảm giác mát tay.</p>
                                    <p>
                                        - Đặc điểm của thun cá sấu 100% cotton:
                                        <ul style="list-style: none; margin: 0; padding: 0;">
                                            <li>• <b class="text-uppercase">Ưu điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Thấm hút mồ hôi cực tốt</li>
                                                    <li><span class="fa fa-check"></span>Khi mặc cảm giác rất mát mẻ</li>
                                                    <li><span class="fa fa-check"></span>Co giãn 4 chiều, thoải mái vận động</li>
                                                    <li><span class="fa fa-check"></span>Ít xù long, bề mặt lán mịn</li>
                                                </ul>
                                            </li>
                                            <li>• <b class="text-uppercase">Nhược điểm</b>
                                                <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                    <li><span class="fa fa-check"></span>Hơi nhăn sau khi giặt</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </p>
                                    <p>
                                        - Tại HNF, chúng tôi sử dụng vải với thành phần 100% cotton nhằm đem lại sự thoải
                                        mái và sang trọng nhất cho người mặc. Tuy nhiên, khi sử dụng cần ủi thường xuyên
                                        để duy trì tính thẩm mỹ cho áo.
                                    </p>
                                    <p>
                                        - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                        này!</p>
                                </div>
                            </td>
                            <td rowspan="4">
                                <div data-id="fab-1" class="fabric-color">
                                    <ul class="list-color">
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
                                        Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                        Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                </div>
                                <div data-id="fab-2" class="fabric-color">
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
                                        Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                        Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                </div>
                                <div data-id="fab-3" class="fabric-color">
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
                                            <img src="assets/images/color-img-20.png" alt="" /></li>
                                    </ul>
                                    <p class="note-color">
                                        Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                        Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                </div>
                                <div data-id="fab-4" class="fabric-color">
                                    <ul class="list-color">
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
                                        Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                        Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                </div>
                            </td>
                        </tr>
                        <tr id="fab-2">
                            <td>
                                VẢI CÁ SẤU TC 65-35
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-2.jpg" alt="" />
                            </td>
                        </tr>
                        <tr id="fab-3">
                            <td>
                                VẢI CÁ SẤU PE
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-3.jpg" alt="" />
                            </td>
                        </tr>
                        <tr id="fab-4">
                            <td>
                                VẢI TRƠN 100% cotton
                            </td>
                            <td>
                                <img src="assets/images/fabric-img-4.jpg" alt="" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="mobileChatVai" class="wrap-section mobile-showhide">
            <div id="fabricTab">
                <div class="head-2">
                    <ul class="menu-control menu-fabric-mo">
                        <li><a class="link-tabs" href="#fabric-1">VẢI CÁ SẤU 100% cotton</a></li>
                        <li><a class="link-tabs" href="#fabric-2">VẢI CÁ SẤU TC 65-35</a></li>
                        <li><a class="link-tabs" href="#fabric-3">VẢI CÁ SẤU PE</a></li>
                        <li><a class="link-tabs" href="#fabric-4">VẢI TRƠN 100% cotton</a></li>
                    </ul>
                </div>
                <div id="fabric-1" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-fabric-mobile">
                            <tbody>
                                <tr>
                                    <td>
                                        Hình
                                    </td>
                                    <td>
                                        <img src="assets/images/fabric-img-1.jpg" alt="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Đặc điểm
                                    </td>
                                    <td>
                                        <div class="fabric-content">
                                            <p>
                                                - Vải cá sấu có mắt lưới to hơn vải thun trơn, mắt vải thường đan nhau như lưới.</p>
                                            <p>
                                                - Đặc điểm của thun cá sấu 100% cotton:
                                                <ul style="list-style: none; margin: 0; padding: 0;">
                                                    <li>• <b class="text-uppercase">Ưu điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Thấm hút mồ hôi cực tốt.</li>
                                                            <li><span class="fa fa-check"></span>Khi mặc cảm giác rất mát mẻ</li>
                                                            <li><span class="fa fa-check"></span>Co giãn 4 chiều, thoải mái vận động</li>
                                                            <li><span class="fa fa-check"></span>Ít xù long, bề mặt lán mịn</li>
                                                        </ul>
                                                    </li>
                                                    <li>• <b class="text-uppercase">Nhược điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Hơi nhăn sau khi giặt</li>
                                                            <li><span class="fa fa-check"></span>Hạn chế về màu sắc. Chỉ có các màu như: trắng,
                                                                đen, xám tiêu, xanh bích.</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </p>
                                            <p>
                                                - Tại HNF, chúng tôi sử dụng vải với thành phần 100% cotton nhằm đem lại sự thoải
                                                mái và sang trọng nhất cho người mặc. Tuy nhiên, khi sử dụng cần ủi thường xuyên
                                                để duy trì tính thẩm mỹ cho áo.
                                            </p>
                                            <p>
                                                - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                                này!</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Bảng màu
                                    </td>
                                    <td>
                                        <ul class="list-color">
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
                                            Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                            Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="fabric-2" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-fabric-mobile">
                            <tbody>
                                <tr>
                                    <td>
                                        Hình
                                    </td>
                                    <td>
                                        <img src="assets/images/fabric-img-2.jpg" alt="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Đặc điểm
                                    </td>
                                    <td>
                                        <div class="fabric-content">
                                            <p>
                                                - Thành phần gồm 35 % xơ cotton và 65% xơ Polyeste</p>
                                            <p>
                                                - Đây là loại vải có bề mặt dệt đẹp, độ dày tương đối nên khi dùng may áo có cổ
                                                sẽ tạo form đứng cho áo.</p>
                                            <p>
                                                - Đặc điểm của thun cá sấu TC 65-35
                                                <ul style="list-style: none; margin: 0; padding: 0;">
                                                    <li>• <b class="text-uppercase">Ưu điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Có độ dày tương đối, giữ Form đứng cho áo</li>
                                                            <li><span class="fa fa-check"></span>Vải mềm mại, ít nhàu khi giặt</li>
                                                            <li><span class="fa fa-check"></span>Co giãn 4 chiều</li>
                                                        </ul>
                                                    </li>
                                                    <li>• <b class="text-uppercase">Nhược điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Thấm hút mồ hôi và không mát như Cá sấu 100% cotton</li>
                                                            <li><span class="fa fa-check"></span>Hơi dễ xù long</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </p>
                                            <p>
                                                - Vải cá sấu TC 65-35 có thể nói là loại vải được sử dụng đại trà hiện nay, được
                                                hầu như các công ty sản xuất đồng phục chọn lựa sử dụng vì chất lượng cũng khá tốt
                                                và nhất là tính kinh tế. Tại HNF, chúng tôi đầu tư xử lý thêm bề mặt vải để hạn
                                                chế thấp nhất tình trạng xù lông.
                                            </p>
                                            <p>
                                                - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                                này!</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Bảng màu
                                    </td>
                                    <td>
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
                                        </ul>
                                        <p class="note-color">
                                            Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                            Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="fabric-3" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-fabric-mobile">
                            <tbody>
                                <tr>
                                    <td>
                                        Hình
                                    </td>
                                    <td>
                                        <img src="assets/images/fabric-img-3.jpg" alt="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Đặc điểm
                                    </td>
                                    <td>
                                        <div class="fabric-content">
                                            <p>
                                                - Polyeste, tên thường gọi PE</p>
                                            <p>
                                                - Đây là loại vải sử dụng cho các sản phẩm sử dụng vài lần, có giá thành cực tốt.</p>
                                            <p>
                                                <ul style="list-style: none; margin: 0; padding: 0;">
                                                    <li>• <b class="text-uppercase">Ưu điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Mình vải cứng, giữ Form đứng cho áo</li>
                                                            <li><span class="fa fa-check"></span>Giá thành khá rẻ</li>
                                                        </ul>
                                                    </li>
                                                    <li>• <b class="text-uppercase">Nhược điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Mình vải hơi thô ráp</li>
                                                            <li><span class="fa fa-check"></span>Thấm hút mồ hôi kém, gây nóng cho người mặc</li>
                                                            <li><span class="fa fa-check"></span>Màu nhuộm kém</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </p>
                                            <p>
                                                - Vải cá sấu PE là loại vải thông thường nhất, thường được sử dụng cho các sản phẩm
                                                mặc vài lần như áo cho sự kiện, ngày lễ, áo mặc khi đi du lịch…
                                            </p>
                                            <p>
                                                - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                                này!</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Bảng màu
                                    </td>
                                    <td>
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
                                                <img src="assets/images/color-img-17.png" alt="" /></li>
                                            <li>
                                                <img src="assets/images/color-img-18.png" alt="" /></li>
                                            <li>
                                                <img src="assets/images/color-img-19.png" alt="" /></li>
                                            <li>
                                                <img src="assets/images/color-img-20.png" alt="" /></li>
                                        </ul>
                                        <p class="note-color">
                                            Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                            Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="fabric-4" class="section-tabs">
                    <div class="table-responsive">
                        <table class="table table-fabric-mobile">
                            <tbody>
                                <tr>
                                    <td>
                                        Hình
                                    </td>
                                    <td>
                                        <img src="assets/images/fabric-img-4.jpg" alt="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Đặc điểm
                                    </td>
                                    <td>
                                        <div class="fabric-content">
                                            <p>
                                                - Vải trơn có bề mặt sớ vải khít, mịn, cảm giác mát tay.</p>
                                            <p>
                                                - Đặc điểm của thun cá sấu 100% cotton:
                                                <ul style="list-style: none; margin: 0; padding: 0;">
                                                    <li>• <b class="text-uppercase">Ưu điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Thấm hút mồ hôi cực tốt</li>
                                                            <li><span class="fa fa-check"></span>Khi mặc cảm giác rất mát mẻ</li>
                                                            <li><span class="fa fa-check"></span>Co giãn 4 chiều, thoải mái vận động</li>
                                                            <li><span class="fa fa-check"></span>Ít xù long, bề mặt lán mịn</li>
                                                        </ul>
                                                    </li>
                                                    <li>• <b class="text-uppercase">Nhược điểm</b>
                                                        <ul style="list-style: none; margin: 0; padding: 10px 0 10px 10px;">
                                                            <li><span class="fa fa-check"></span>Hơi nhăn sau khi giặt</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </p>
                                            <p>
                                                - Tại HNF, chúng tôi sử dụng vải với thành phần 100% cotton nhằm đem lại sự thoải
                                                mái và sang trọng nhất cho người mặc. Tuy nhiên, khi sử dụng cần ủi thường xuyên
                                                để duy trì tính thẩm mỹ cho áo.
                                            </p>
                                            <p>
                                                - Quý khách vui lòng liên hệ nhân viên tư vấn để được trải nghiệm thêm về chất vải
                                                này!</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Bảng màu
                                    </td>
                                    <td>
                                        <ul class="list-color">
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
                                        </ul>
                                        <p class="note-color">
                                            Do chất lượng hình ảnh, màu vải trên Website có thể hơi khác so với vải thực tế.
                                            Quý khách vui lòng liên hệ chúng tôi để xem màu vải thật.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="cnsxShow" class="text-center wrapper-880">
            <h4 class="text-uppercase title-1">
                Công nghệ sản xuất</h4>
            <div class="desription">
                Công nghệ hiện đại, khép kín từ khâu nguyên liệu đầu vào cho đến khi thành phẩm,
                HNF luôn đảm bảo về năng lực sản xuất cũng như có thể đáp ứng hầu hết các yêu cầu
                khắc khe nhất của khách hàng.
            </div>
        </div>
        <div class="wrap-section">
            <div id="isotopelist" class="wrap-boximg">
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-img">
                            <h2 class="name-link text-uppercase">
                                <a href="#">Cắt vải</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-1.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-img">
                            <h2 class="name-link text-uppercase">
                                <a href="#">May thành phẩm</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-2.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-img">
                            <h2 class="name-link text-uppercase">
                                <a href="#">In bằng công nghệ ép chuyển nhiệt</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-3.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-img">
                            <h2 class="name-link text-uppercase">
                                <a href="#">In thường</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-4.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="box-col element-item">
                    <div class="box-in">
                        <div class="wrap-img">
                            <h2 class="name-link text-uppercase">
                                <a href="#">Thêu</a></h2>
                            <a href="#" class="intro-img">
                                <img src="assets/images/produce-img-5.png" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="text-center wrapper-880">
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
        </div>--%>
    </div>
    <div class="wrap-section wrap-qtdh">
        <div id="qtdhShow" class="bg-order wow">
        </div>
        <div class="container">
            <div id="orderTab">
                <div class="head-2">
                    <ul class="menu-control menu-qt">
                        <li><a id="a" class="link-tabs" href="#order-1"><span class="bg-button-left"></span>
                            Tư vấn<span class="bg-button-right"></span></a></li>
                        <li><a class="link-tabs" href="#order-2" data-img="quytrinh-baogia.jpg"><span class="bg-button-left">
                        </span>Báo giá<span class="bg-button-right"></span></a></li>
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
                    <div data-img="quytrinh-tuvan.jpg" id="order-1" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Tư vấn <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            Sau khi nhận được thông tin-yêu cầu của khách hàng, đội tư vấn sẽ xin hẹn gặp trực
                            tiếp và ghi nhận các yêu cầu cũng như giải thích các thắc mắc, đề xuất các phương
                            án-giải pháp cụ thể.</div>
                    </div>
                    <div data-img="quytrinh-baogia.jpg" id="order-2" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Báo giá <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            Nhân viên tư vấn sẽ cung cấp bảng báo giá cụ thể với nhiều phương án để khách lựa
                            chọn một cách chính xác và nhanh nhất.</div>
                    </div>
                    <div data-img="quytrinh-kyhopdong.jpg" id="order-3" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Ký hợp đồng <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            Nhân viên tư vấn sẽ cung cấp HĐ quy định rõ chất liệu, thông số size, các cam kết
                            của HNF về sản phẩm đối với khách hàng.</div>
                    </div>
                    <div data-img="quytrinh-thietkemau.jpg" id="order-4" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Thiết kế mẫu <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            Thông qua các yêu cầu của khách hàng, Bộ phận thiết kế sẽ cung cấp bảng vẽ thiết
                            kế 3D về sản phẩm, đem đến cho khách hàng cách nhìn trực quan, cụ thể nhất. Sau
                            từ 3-5 ngày, HNF sẽ cung cấp cho quý khách áo mẫu thực tế với chất liệu-hình in/thêu
                            đúng như yêu cầu của khách hàng. Giá của dịch vụ thiết kế áo mẫu là 500.000/mẫu
                            thiết kế. Khách hàng sẽ được trừ chi phí thiết kế áo mẫu khi ký Hợp Đồng chính thức.</div>
                    </div>
                    <div data-img="quytrinh-chinhsua.jpg" id="order-5" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Chỉnh sửa &amp; duyệt mẫu <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            Một lần nữa, nhân viên tư vấn ghi nhận các chỉnh sửa, các yêu cầu cộng thêm của
                            khách hàng để chuẩn bị tiến hành sản xuất hàng loạt. Khách hàng và HNF cùng ký vào
                            văn bản duyệt mẫu sau cùng nhằm đảm bảo sản phẩm đúng như mẫu đã cam kết..</div>
                    </div>
                    <div data-img="quytrinh-sanxuat.jpg" id="order-6" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Sản xuất <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            HNF tiến hành sản xuất hàng loạt các sản phẩm từ 7-20 ngày tùy vào số lượng và độ
                            khó của đơn hàng.</div>
                    </div>
                    <div data-img="quytrinh-giaohang.jpg" id="order-7" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Giao hàng <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            HNF đóng gói và giao hàng tận nơi cho khách hàng (Khu vực ngoại thành, các tỉnh,
                            khách hàng vui lòng hỗ trợ phí giao nhận).</div>
                    </div>
                    <div data-img="quytrinh-kiemtra.jpg" id="order-8" class="section-tabs order-tabs">
                        <h4 class="title-design">
                            Kiểm tra chất lượng <span class="fa fa-arrow-right"></span>
                        </h4>
                        <div class="desription">
                            Đội ngũ chăm sóc khách hàng sẽ gọi điện để lắng nghe, khảo sát ý kiến của khách
                            hàng về thái độ, chất lượng phục vụ của HNF trong suốt quá trình hợp tác. Đồng thời
                            cũng xin ý kiến về chất lượng sản phẩm qua quá trình sử dụng sản phẩm.</div>
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
                <ul id="menuMobileDV" class="menu-nav">
                    <li><a href="~/" runat="server">Trang chủ <span class="fa fa-chevron-circle-right iconar">
                    </span></a></li>
                    <li><a href="gioi-thieu.aspx">Về chúng tôi <span class="fa fa-chevron-circle-right iconar">
                    </span></a></li>
                    <li><a href="dich-vu.aspx">Dịch vụ <span class="fa fa-chevron-circle-right iconar"></span>
                    </a>
                        <div class="menu-sub">
                            <div class="menu-subin">
                                <ul>
                                    <li><a href="#"><span class="menu-box"><span class="iconai">
                                        <img src="assets/images/menusub-img-1.jpg" alt="" /></span></span>Áo thun đồng phục<span
                                            class="menubg fa fa-caret-right"></span></a> </li>
                                    <li><a href="#"><span class="menu-box"><span class="iconai">
                                        <img src="assets/images/menusub-img-2.jpg" alt="" /></span></span>Áo thun quảng
                                        cáo - sự kiện<span class="menubg fa fa-caret-right"></span></a> </li>
                                    <li><a href="#"><span class="menu-box"><span class="iconai">
                                        <img src="assets/images/menusub-img-3.jpg" alt="" /></span></span>Áo nhóm - áo lớp<span
                                            class="menubg fa fa-caret-right"></span></a> </li>
                                    <li><a href="#"><span class="menu-box"><span class="iconai">
                                        <img src="assets/images/menusub-img-4.jpg" alt="" /></span></span>Sản xuất áo thun
                                        theo yêu cầu<span class="menubg fa fa-caret-right"></span></a> </li>
                                    <li><a href="#"><span class="menu-box"><span class="iconai">
                                        <img src="assets/images/menusub-img-5.jpg" alt="" /></span></span>In ấn công nghệ
                                        cao<span class="menubg fa fa-caret-right"></span></a> </li>
                                    <li><a href="#"><span class="menu-box"><span class="iconai">
                                        <img src="assets/images/menusub-img-6.jpg" alt="" /></span></span>Thêu vi tính<span
                                            class="menubg fa fa-caret-right"></span></a> </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="#">Quy trình thực hiện <span class="fa fa-chevron-circle-right iconar">
                    </span></a></li>
                    <li><a href="san-pham.aspx">Sản Phẩm <span class="fa fa-chevron-circle-right iconar">
                    </span></a>
                        <div class="menu-sub menu-sub2">
                            <div class="menu-content">
                                <ul class="menu-procat">
                                    <li><a href="#">Áo thun đồng phục</a>
                                        <ul class="menu-procat-sub">
                                            <li><a href="#">Ngành tài chính ngân hàng<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Ngành xây dựng<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Ngành hàng tiêu dùng<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Ngành Logistic<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Ngành kỹ thuật - Công nghệ thông tin<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Ngành truyền thông giải trí<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Ngành nhà hàng khách sạn<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Áo thun quảng cáo</a>
                                        <ul class="menu-procat-sub">
                                            <li><a href="#">Áo thun tiếp thị<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Áo thun sự kiện<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                            <li><a href="#">Áo thun quà tặng<span class="icon-right menubg fa fa-caret-right"></span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Áo lớp</a></li>
                                    <li><a href="#">Áo thun sản xuất theo yêu cầu</a></li>
                                </ul>
                                <div class="menu-procat2">
                                    <h4>
                                        Mẫu áo thun</h4>
                                    <ul>
                                        <li><a href="#"><span class="menu-box"><span class="iconai">
                                            <img src="assets/images/menusub-img-1.jpg" alt="" /></span></span>Áo thun cổ trụ<span
                                                class="menubg fa fa-caret-right"></span></a> </li>
                                        <li><a href="#"><span class="menu-box"><span class="iconai">
                                            <img src="assets/images/menusub-img-2.jpg" alt="" /></span></span>Áo thun cổ tròn<span
                                                class="menubg fa fa-caret-right"></span></a> </li>
                                        <li><a href="#"><span class="menu-box"><span class="iconai">
                                            <img src="assets/images/menusub-img-3.jpg" alt="" /></span></span>Áo thun cổ tim<span
                                                class="menubg fa fa-caret-right"></span></a> </li>
                                        <li><a href="#"><span class="menu-box"><span class="iconai">
                                            <img src="assets/images/menusub-img-4.jpg" alt="" /></span></span>Sản phẩm khác<span
                                                class="menubg fa fa-caret-right"></span></a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a href="#">Thông số size <span class="fa fa-chevron-circle-right iconar"></span>
                    </a></li>
                    <li><a href="#">Dự án <span class="fa fa-chevron-circle-right iconar"></span></a>
                    </li>
                    <li><a href="tu-van.aspx">Tư vấn <span class="fa fa-chevron-circle-right iconar"></span>
                    </a></li>
                    <li><a href="lien-he.aspx">Liên Hệ <span class="fa fa-chevron-circle-right iconar"></span>
                    </a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--menumobile-->
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter" runat="Server">
    <div class="wrap-footer">
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
                        <span>
                            <img src="assets/images/img-phone.png" alt="" /></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
