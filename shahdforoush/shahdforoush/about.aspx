<%@ Page Title="بورس فروش عسل طبیعی" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript" src="js/jquery.onebyone.min.js"></script>
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
                                    <div class="span12 module_cont module_layer_slider">
                                        <div class="module_content slider_type1">
                                            <div id="banner1" class="OneByOne_container">  
                                                                                                                                                      
                                                <div class="oneByOne_item sl_about1">
                                                    <p class="ls1_txt1 font_about blue" data-animate="fadeInDown" style="top: 110px;left: 55%;">کیفیت را از ما بخواهید،با اطمینان خرید کنید</p>
                                                </div>

                                                <div class="oneByOne_item sl_about2">
                                                    <p class="ls2_txt2 font_about blue" data-animate="fadeInDown" style="left: 37%;">با یک بار خرید ، مشتری ما می شوید</p>
                                                </div>

                                                <div class="oneByOne_item sl_about3">
                                                    <p class="ls3_txt1 font_about blue" data-animate="fadeInRight" style="top: 21%;right: 3%;">توضیحات و راهنمایی راجع به محصولی را که انتخاب کردید</p>
                                                    
                                                    <p class="ls3_txt1 font_about blue" data-animate="fadeInLeft" style="left: 50%;">را به صورت آنلاین از پشتیبان سایت بخواهید</p>
                                                </div>

                                                <div class="oneByOne_item sl_about4">
                                                    <p class="ls4_txt1 font_about blue" data-animate="fadeInLeft" style="top: 50px;left: 95%;">چگونه یک عسل خوب را بشناسیم؟</p>
                                                    <p class="ls4_txt9 font_about blue" data-animate="fadeInDown" style="bottom: 130px;right: 12%;margin-left: 0;">با مطالعه درباره عسل در قسمت های دیگر سایت می توانید.</p>
                                                    <p class="ls4_txt9 font_about blue" data-animate="fadeInDown" style="bottom: 9%;right: 26%;margin-left: 0px;">یک عسل خوب را خودتان شناسایی کنید</p>
                                                </div>

                                                <div class="oneByOne_item sl_about5">
                                                    <p class="ls5_txt1 font_about blue" data-animate="fadeInUp" style="top: 40px;left: 33%;">با تکمیل فرم خرید در ،محصول خریداری شده خود را در محل دریافت کنید</p>
                                                    <img src="img/slider/slider1/ls4_txt9.png" class="ls3_txt1" data-animate="fadeInLeft" style="bottom: 0px;left: 69%;" alt="باشگاه مشتریان عسل حکیم باشی"/>

                                                    <p class="ls4_txt1 common_font" data-animate="fadeInRight" style="color: rgb(245, 245, 245);top: 35%;right: 32%;font-weight: bold;text-shadow: orange -5px 5px 3px;">هم اکنون ثبت نام کنید...</p>
                                                    <div style=" margin-top: 20%;margin-left: 34%;direction: rtl;">
                                                        <input type="text" name="field-name" placeholder="ایمیل خود را وارد نمایید..." title="Enter your Email..." class="subscribe_field common_font" />
                                                        <input type="submit" name="submit" class="btn_subscribe btn_about common_font" id="btn_subscribe" onclick="register.aspx" value="ثبت نام!" />
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
										<script type="text/javascript">
										    $(window).load(function () {
										        $('#banner1').oneByOne({
										            className: 'oneByOne1',
										            easeType: 'random',
										            responsive: true,
										            enableDrag: false,
										            width: 1170,
										            height: 500,
										            minWidth: 300,
										            slideShow: true,
										            slideShowDelay: 5000
										        });
										    });
                                        </script>
                                    </div>
                                </div><!-- .row-fluid -->

                                <div class="row-fluid">
                                    <div id="aboutCoHtml" runat="server" class="span_full module_cont module_text_area common_div">
                                        <h4 class="headInModule">مرکز پخش عسل حکیم باشی</h4>
                                        

                                        


                                    </div>								
                                </div><!-- .row-fluid -->
                            </div><!-- .contentarea -->
                        </div>
                    </div>
                    <div class="clear"><!-- ClearFix --></div>
                </div><!-- .fl-container -->
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

