<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>

<%@ Register TagPrefix="uc1" TagName="footer" Src="~/uc/ucFooter.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                Hnf chuyên cung cấp các giải pháp hoàn diện về may mặc như áo thun
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
                <asp:ListView ID="lstWhy" runat="server" DataSourceID="odsWhy" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-lg-4 col-xs-6 element-item">
                            <div class="why-box">
                                <a href="javascript:void(0);" class="why-img">
                                    <img class="corner" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/why-img-1.png" %>' runat="server" /></a>
                                <div class="why-content">
                                    <h5 class="why-name">
                                        <a href="javascript:void(0);"><%# Eval("ArticleTitle")%></a></h5>
                                    <div class="description">
                                        <%# Eval("Description")%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsWhy" runat="server" 
                    SelectMethod="ArticleSelectAll" TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="12" Name="ArticleCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
    <div class="wrap-section" style="padding: 10px 0 0;">
        <asp:ListView ID="lstAboutUs" runat="server" DataSourceID="odsAboutUs" EnableModelValidation="True">
            <ItemTemplate>
                <div class="bg-why wow">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/why-background.jpg" %>'
                        runat="server" /></div>
                <div class="bg-content">
                    <p class="content-1 text-uppercase">
                        <%# Eval("Description")%></p>
                    <p class="content-2">
                        <%# Eval("Content")%>
                    </p>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsAboutUs" runat="server" SelectMethod="ArticleSelectAll"
            TypeName="TLLib.Article">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ArticleTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
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
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter2" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
