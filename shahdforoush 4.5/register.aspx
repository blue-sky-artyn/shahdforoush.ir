<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row-fluid common_div" style="position: fixed;top: 40%;left: 25%;width:675px;">
                                        <div class="span12 module_cont module_messageboxes margin10" style="border: 2px dashed black;">
                                            <div class="shortcode_messagebox box_type1 common_font" style="background-color: rgb(204, 204, 204);">
                                                <h4 class="headInModule common_font"><a name="anchor17"></a>مزایای ثبت نام در سایت</h4>
                                                 <p class="common_font close_box">شما با ثبت نام در سایت می توانید از اخبار سایت با خبر شوید</p><br />
                                                 <p class="common_font close_box">ثبت نام در سایت،در مراجعات بعدی برای خرید کار شما را سهل تر می کند.</p><br />
                                                 <p class="common_font close_box">از تخفیف ها و تعرفه هایی که به اعضای سایت تعقل می گیرد استفاده نمایید</p>
                                                <a href="javascript:void(0)" class="box_close"></a>
                                            </div>
                                        </div><!-- .module_cont -->
								    </div><!-- .row-fluid -->




<!-- C O N T E N T -->
    <div class="content_wrapper">
    	<div class="container">
            <div class="content_block right-sidebar row">
                <div class="fl-container span9">
                	<div class="row">
                        <div class="posts-block span9">
                            <div class="contentarea">
                            
                                <div class="row-fluid">
                                    <div class="span12 module_cont module_feedback_form" style="direction: rtl;text-align: right;">
                                        <h4 class="headInModule"><a name="anchor3"></a>فرم ثبت نام</h4>
                                        <p class="common_font">لطفا اطلاعات را کامل و صحیح وارد نمایید...</p>
                                        <div name="feedback_form" class="feedback_form">
                                            <asp:TextBox ID="txt_name" runat="server" placeholder="نام و نام خانوادگی" class="field-name form_field" Width="38%" style="margin-bottom: 35px;"></asp:TextBox>
                                            <asp:TextBox ID="txt_code_meli" runat="server" placeholder="کد ملی" class="field-name form_field" Width="37.4%" style="margin-bottom: 35px;"></asp:TextBox><br />
                                            
                                            <asp:TextBox ID="txt_name_co" runat="server" placeholder="نام شرکت/فروشگاه" class="field-name form_field" Width="38%"></asp:TextBox>
                                            <asp:TextBox ID="txt_email" runat="server" placeholder="ایمیل" class="field-email form_field" Width="37.4%"></asp:TextBox>
                                            <asp:TextBox ID="txt_tel" runat="server" placeholder="تلفن" class="field-name form_field" style="margin-bottom: 35px;"></asp:TextBox>
                                            <asp:TextBox ID="txt_mob" runat="server" placeholder="موبایل" class="field-name form_field" style="margin-bottom: 35px;"></asp:TextBox>

                                            <asp:TextBox ID="txt_addr" runat="server" placeholder="آدرس" class="field-name form_field" style="width: 79.4%;" TextMode="MultiLine" Height="110"></asp:TextBox>
                                            
                                            <br />

                                            <div style="text-align:left;margin-top: 15px;">
                                                <asp:Label ID="lbl_msg" runat="server" Text="" style="margin-left: 40px;"></asp:Label>
                                                <input type="reset" name="reset" id="reset2" value="برگشت به قبل" class="feedback_reset common_font" />
                                                <asp:Button ID="btn_save" runat="server" value="Save Detail" 
                                                    class="feedback_go common_font"  Text="ذخیره اطلاعات" 
                                                    onclick="btn_save_Click" />
                                            </div>
                                            <div class="ajaxanswer"></div>
                                        </div>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid (sample form) -->

                                    
                                
                            </div><!-- .contentarea -->
                        </div>
                        <div class="left-sidebar-block span3">
                            <!-- Left Sidebar Text -->
                        </div><!-- .left-sidebar -->
                    </div>
                    <div class="clear"><!-- ClearFix --></div>
                </div><!-- .fl-container -->
                <div class="right-sidebar-block span3">
                    <aside class="sidebar">
                        <div class="sidepanel widget_nav_menu">
                            <ul class="menu">
                            </ul>
                        </div>                        
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

