<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HnF</title>
    <meta name="description" content="HnF" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
    <div id="banner" class="banner-ser">
        <div class="slider-wrapper">
            <h2 class="title-tv">
                <span>Liên hệ</span></h2>
            <img class="img-responsive" src="assets/images/banner-contact.jpg" alt="" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="contact">
            <div class="contact-form">
                <div class="node">
                    Mọi thắc mắc hoặc yêu cầu, đóng góp của quý khách xin hãy liên hệ với chúng tôi:
                    0917 377 999 Hoặc điền vào form bên dưới chúng tôi sẽ liên hệ với quý khách
                </div>
                <div class="form-input">
                    <label class="form-lb">
                        Họ tên<%--<span class="error">*</span>--%></label>
                    <div class="form-text">
                        <asp:TextBox CssClass="input-text corner" ID="txtHoTen" runat="server" Text="Nhập họ tên..."></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                            Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtHoTen" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">
                        Company</label>
                    <div class="form-text">
                        <asp:TextBox CssClass="input-text corner" ID="txtCompany" runat="server" Text="Nhập công ty..."></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                            Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtCompany"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">
                        Email</label>
                    <div class="form-text">
                        <asp:TextBox CssClass="input-text corner" ID="txtEmail" runat="server" Text="Nhập email..."></asp:TextBox>
                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                            runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                            ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">
                        Điện thoại</label>
                    <div class="form-text">
                        <asp:TextBox CssClass="input-text corner" ID="txtPhone" runat="server" Text="Nhập điện thoại..."></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" Display="Dynamic"
                            runat="server" ControlToValidate="txtPhone" ValidationGroup="SendEmail" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb form-radio">
                        Quý khách muốn liên lạc qua:</label>
                    <div class="form-text">
                        <ul class="list-contact">
                                <li id="rbtMoneyShow" runat="server">
                                    <asp:RadioButton ID="rbtEmail" runat="server" GroupName="checkradio" />
                                    <label for="rbtEmail">Email</label>
                                </li>
                                <li>
                                    <asp:RadioButton ID="rbtPhone" runat="server"
                                        GroupName="checkradio" />
                                    <label for="rbtPhone">Phone</label>
                                </li>
                            </ul>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">
                        Nội dung</label>
                    <div class="form-text">
                        <asp:TextBox CssClass="input-area corner" ID="txtNoiDung" runat="server" TextMode="MultiLine"
                            Text="Nhập nội dung..."></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                            ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox"  Text="Subscribe to e-newsletter"/>
                    </div>
                </div>
                <div class="form-input">
                    <div class="wrap-btn">
                        <asp:Button ID="btGui" CssClass="btn-a corner" runat="server" Text="gửi" ValidationGroup="SendEmail" />
                    </div>
                </div>
                <div class="form-input">
                    <asp:Label runat="server" ID="lblMessage" ForeColor="red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <div class="paragraph-banner paragraph-contact">
            <p class="paragraph-1 text-uppercase">
                Địa chỉ</p>
            <p class="border-bottom"></p>
            <p class="paragraph-2 text-uppercase">
                32 Đường 18, Phường Bình Trị Đông B, Quận Bình Tân, Thành phố Hồ Chí Minh</p>
            <p class="paragraph-2">
                Điện thoại: 0917 377 999  |  Email: <a href="mailTo:info@hnf.vn">info@hnf.vn</a></p>
     </div>
     <div id="mapshow"></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
