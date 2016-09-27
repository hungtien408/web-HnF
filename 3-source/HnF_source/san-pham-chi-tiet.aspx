<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<%@ Register TagPrefix="uc1" TagName="footer" Src="~/uc/ucFooter.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-pro">
        <div class="container">
            <div class="product-details">
                <div class="col-details">
                    <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div id="sliderDetails" class="product-images">
                                <div class="wrap-small">
                                    <div class="slider-nav">
                                        <asp:ListView ID="lstProductAlbumSmall" runat="server" DataSourceID="odsProductAlbum"
                                            EnableModelValidation="True">
                                            <ItemTemplate>
                                                <div class="slide">
                                                    <a href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                                        data-img='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-img-1.jpg" %>'
                                                        data-page="roast-groud-content.aspx" class='cloud-zoom-gallery small-imga' title='Thumbnail 1'
                                                        rel="useZoom: 'zoom1', smallImage: '<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-img-1.jpg" %>'">
                                                        <span>
                                                            <img src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "~/assets/images/details-small-1.jpg" %>'
                                                                alt="" /></span> </a>
                                                </div>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <span runat="server" id="itemPlaceholder" />
                                            </LayoutTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                                <div class="wrap-images">
                                    <asp:ListView ID="lstProductAlbum" runat="server" DataSourceID="odsProductAlbum"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="slide">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                    runat="server" />
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <div class="detailimg-desktop">
                                                <div class="zoom-box">
                                                    <a id="zoom1" href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                        class="cloud-zoom" rel="showTitle: false, zoomWidth: '350', adjustY:0, adjustX:5">
                                                        <img class="img-responsive" src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                            alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="detailimg-mobile">
                                                <div class="slider-for">
                                                    <span runat="server" id="itemPlaceholder" />
                                                </div>
                                            </div>
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsProductAlbum" runat="server" SelectMethod="ProductImageSelectAll"
                                        TypeName="TLLib.ProductImage">
                                        <SelectParameters>
                                            <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                            <asp:Parameter Name="Priority" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                            <div class="detail-content">
                                <h2 class="product-name">
                                    <%# Eval("ProductName") %></h2>
                                <div class="description">
                                    <%--<ul>
                                        <li>Contrast trim on neck, sleeve and pockets</li>
                                        <li>Concealed front zip </li>
                                        <li>Two pockets Round collar </li>
                                        <li>Action back </li>
                                        <li>Multiple colours and fabrics available </li>
                                        <li>Selected colours available in
                                            <img src="assets/images/img-logo-prodetails.jpg" alt="" /></li>
                                        <li>Size Range: 6 – 30 and special make </li>
                                    </ul>
                                    <p style="font-style: italic;">
                                        Please CONTACT us by email or phone to enquire about ordering this garment. For
                                        any garments not in stock please allow 20 working days for New Zealand production.
                                    </p>--%>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                                    <%--<img class="img-responsive" src="assets/images/productdetails-fb.jpg" alt="" />--%>
                                    <div id="fb-root">
                                    </div>
                                    <script>                                        (function (d, s, id) {
                                            var js, fjs = d.getElementsByTagName(s)[0];
                                            if (d.getElementById(id)) return;
                                            js = d.createElement(s); js.id = id;
                                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                                            fjs.parentNode.insertBefore(js, fjs);
                                        } (document, 'script', 'facebook-jssdk'));</script>
                                    <div class="fb-comments" data-href="http://www.hnf.vn/" data-numposts="5" data-colorscheme="light"></div>  
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="col-same">
                    <h4 class="title-same">
                        Sản phẩm liên quan</h4>
                    <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="box-in">
                                <div class="boxa">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                                        class="box-img">
                                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/product-same-1.jpg" %>'
                                            runat="server" />
                                    </a>
                                    <h5 class="box-name">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductName") %></a></h5>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div class="listAside">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                            <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi"
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" runat="Server">
    <uc1:footer ID="footer1" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter2" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
