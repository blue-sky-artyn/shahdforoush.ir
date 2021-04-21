<%@ Page Title="همه چیز درباره انواع عسل" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .list-contact {
            text-align: right;
            list-style: none;
        }
        .list-contact li::before {
            content: ' ' !important;
        }
            .list-contact span {
                padding: 0 15px;
                color: orange;
            }
        .list-contact li p {direction: rtl;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- C O N T E N T -->
    <div class="content_wrapper">
    	<div class="container">
            <div class="content_block no-sidebar row">
                <div class="fl-container span12">
                	<div class="row">
                        <div class="posts-block span12">
                            <div class="contentarea">

                                <div class="row-fluid">
                                    <div class="span12 module_cont module_text_area common_div">
                                        <h4 class="headInModule">ارتباط مستقیم با مدیریت</h4>
                                        <p id="aboutHtml" runat="server" class="common_font">ضمن خوش آمد گویی به شما عزیز،منتظر پیشنهادات و انتقادات شما هستیم.</p>
                                        
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid -->
                                <hr class="light" />
                                
                                <div class="row-fluid">
                                    <div class="span6 module_cont module_contact_info">
                                        <h4 class="headInModule common_font" style="font-size:22px;margin-bottom:70px;">ارتباط با ما از طریق:</h4>
                                        <ul id="contactDetHtml" runat="server" class="list-contact">
                                            <li><p><span>آدرس:</span>مشهد-بلوار بعثت</p></li>
                                        </ul>
                                        

                                       <%-- <div class="continfo_item"><span class="ico_socialize_google2 ico_socialize type1"></span>admin@gmail.com</div>
                                        <div class="continfo_item"><span class="ico_socialize_yahoo ico_socialize type1"></span>admin@yahoo.com</div>--%>

                                    </div><!-- .module_cont -->	

                                    <div class="span6 module_cont module_feedback_form common_div common_font">
                                        <h4 class="headInModule">ارتباط با مدیر</h4>
                                            لطفاتمام فیلد ها را کامل کنید...<br /><br />
                                        <div name="feedback_form" class="feedback_form">
                                            <asp:TextBox ID="txt_name" class="field-name form_field" placeholder="نام و نام خانوادگی" runat="server" style="width: 90%;"></asp:TextBox>
                                            <asp:TextBox ID="txt_email" placeholder="Email" class="field-email form_field" runat="server" style="width: 90%;"></asp:TextBox>
                                            <asp:TextBox ID="txt_subject" placeholder="موضوع" class="field-subject form_field" style="width: 90%;margin-top: 10px;" runat="server"></asp:TextBox><br />
                                            <asp:TextBox ID="txt_detail"  cols="45" rows="5" placeholder="متن پیغام" class="field-message form_field" style="width: 90%;" runat="server"></asp:TextBox><br />

                                            <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="#FF3300" Font-Names="tahoma" Font-Bold="True"></asp:Label>

                                            <asp:Button ID="btn_reset" runat="server" Text="پاک کردن" 
                                                class="feedback_reset common_font" 
                                                style="float: left;margin-left: 12px;margin-top: 10px;margin-right: 5px;" 
                                                onclick="btn_reset_Click"/>
                                            <asp:Button ID="btn_send" runat="server" Text="ارسال" 
                                                class="feedback_go common_font" style="float: left;margin-top: 10px;" 
                                                onclick="btn_send_Click"/>
                                        </div>
                                    </div><!-- .module_cont -->									
                                   								
								</div><!-- .row-fluid -->
                            </div><!-- .contentarea -->
                        </div>
                        <div class="left-sidebar-block span3">
                            <!-- Left Sidebar Text -->
                        </div><!-- .left-sidebar -->
                    </div>
                    <div class="clear"><!-- ClearFix --></div>
                </div><!-- .fl-container -->

               <div class="clear"><!-- ClearFix --></div>

            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

