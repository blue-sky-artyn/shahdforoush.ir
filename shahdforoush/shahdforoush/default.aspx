<%@ Page Title="عسل حکیم باشی" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                                                <div class="oneByOne_item ls_bg1">
                                                    <img src="img/slider/slider1/ls1_txt1.png" class="ls1_txt1" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls1_txt5.png" class="ls1_txt5" data-animate="fadeInUp" />
                                                    <a class="ls1_txt6" data-animate="fadeInUp" style="display: none; font-family: tahoma; font-size: 15pt; color: rgb(245, 245, 245); text-shadow: gray 0.2pc 0.2pc 3px;">عسل تهیه شده از گیاهان دارویی</a>
                                                    <img src="img/slider/slider1/ls1_txt7.png" class="ls1_txt7" data-animate="fadeInUp" />
                                                </div>
                                                <div class="oneByOne_item ls_bg2">
                                                    <img src="img/slider/slider1/ls2_txt2.png" class="ls2_txt2" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls2_txt9.png" class="ls2_txt9" data-animate="fadeInDown" />                                        	
                                                </div>
                                                <div class="oneByOne_item ls_bg3">
                                                    <img src="img/slider/slider1/ls3_txt1.png" class="ls3_txt1" data-animate="fadeInLeft" />
                                                    <img src="img/slider/slider1/ls3_txt2.png" class="ls3_txt2" data-animate="fadeInRight" />
                                                    <img src="img/slider/slider1/ls3_txt3.png" class="ls3_txt3" data-animate="fadeInUp" />
                                                </div>
                                                <div class="oneByOne_item ls_bg4">
                                                    <img src="img/slider/slider1/ls4_txt2.png" class="ls4_txt2" data-animate="fadeInUp" />
                                                    <img src="img/slider/slider1/ls4_txt3.png" class="ls4_txt3" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls4_txt4.png" class="ls4_txt4" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls4_txt5.png" class="ls4_txt5" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls4_txt6.png" class="ls4_txt6" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls4_txt7.png" class="ls4_txt7" data-animate="fadeInDown" />
                                                    <img src="img/slider/slider1/ls4_txt8.png" class="ls4_txt8" data-animate="fadeInDown" />
                                                </div>
                                                <div class="oneByOne_item ls_bg5">
                                                    <img src="img/slider/slider1/ls5_txt1.png" class="ls5_txt1" data-animate="fadeInUp" />
                                                    <img src="img/slider/slider1/ls5_txt2.png" class="ls5_txt2" data-animate="fadeInUp" />
                                                    <img src="img/slider/slider1/ls5_txt3.png" class="ls5_txt3" data-animate="fadeInUp" />
                                                    <img src="img/slider/slider1/ls5_txt4.png" class="ls5_txt4" data-animate="fadeInUp" />
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
                                    <div class="span12 module_cont module_promo_text">
                                        <div class="shortcode_promoblock ">
                                            <div class="row-fluid">
                                                <div class="span9 promo_text_block">
                                                    <h4>با تکمیل فرم ثبت سفارش،در اسرع وقت محصول خریداری شده به دست شما میرسد.</h4>
                                                    <h1 id="fact_no" runat="server" style="margin-top: 15px;" >خرید عسل اصلی،عسل طبیعی و محصول نمونه</h1>
                                                </div>
                                                <div class="span3 promo_button_block">
                                                    <a href="order-online.aspx" class="promo_button" style="width: 55%;">هم اکنون خرید کنید</a>
                                                    <a href="register.aspx" class="promo_button" style="width: 55%;">ثبت نام کنید</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!--.module_cont -->
                                    <div class="clear"><!-- ClearFIX --></div>                                                                    
                                </div><!-- .row-fluid -->
    
                                <div id="newsHTML" runat="server" class="row-fluid">

                                    

                                    
                                </div><!-- .row-fluid -->
    
                                <hr class="light" />                            
                                
                                <div class="row-fluid">
                                    
                                    <div class="span6 module_cont module_text_area">
                                    	<div class="demo_frame">
                                            <img src="img/home2.jpg" alt="عسل حکیم باشی، شهدفروش"/>
                                        </div>
                                    </div>
                                    
                                    <div class="span6 module_cont module_text_area">
                                    	<div class="demo_frame">
                                            <img src="img/home1.jpg" alt="عسل حکیم باشی، شهدفروش"/>
                                        </div>
                                    </div>
                                </div><!-- .row-fluid -->
    
                                <hr class="light" />                            
                                
                                <div class="row-fluid">
                                    <div class="span12 module_cont module_feature_posts">
                                        <h4 class="headInModule">دانستنی هایی در مورد عسل طبیعی</h4>
                                        <div class="featured_slider">
                                            <div class="carouselslider featured_posts items4" data-count="4">
                                                <ul id="infoHtml" runat="server" class="item_list">
                                                    <li>
                                                        <div class="item">
                                                            <div class="img_block"><img class="img_footer" style="width:260px;" src="img/pictures/carousel_blog1.jpg" /></div>
                                                            <div class="carousel_title">
                                                                <h4 class="featured_ico_video"><asp:Label ID="lbl1" runat="server" Text="none"></asp:Label></h4>
                                                            </div>
                                                            <div class="carousel_desc">                                                
                                                                <div class="exc common_font" style="font-size:10pt;line-height: 20px;font-weight: bold;"><asp:Label ID="lbla" runat="server" Text="none"></asp:Label></div>
                                                            </div>
                                                        </div>
                                                    </li>                                          
                                                    <li>
                                                        <div class="item">
                                                            <div class="img_block"><img class="img_footer" style="width:260px;" src="img/pictures/carousel_blog2.jpg" /></div>
                                                            <div class="carousel_title">
                                                                <h4 class="featured_ico_slider"><asp:Label ID="lbl2" runat="server" Text="none"></asp:Label></h4>
                                                            </div>
                                                            <div class="carousel_desc">                                                
                                                                <div class="exc common_font" style="font-size:10pt;line-height: 20px;font-weight: bold;font-weight: bold;"><asp:Label ID="lblb" runat="server" Text="none"></asp:Label></div>
                                                            </div>
                                                        </div>
                                                    </li>  
                                                    <li>
                                                        <div class="item">
                                                            <div class="img_block"><img class="img_footer" style="width:260px;" src="img/pictures/carousel_blog3.jpg" /></div>
                                                            <div class="carousel_title">
                                                                <h4 class="featured_ico_img"><asp:Label ID="lbl3" runat="server" Text="none"></asp:Label></h4>
                                                            </div>
                                                            <div class="carousel_desc">                                                
                                                                <div class="exc common_font" style="font-size:10pt;line-height: 20px;font-weight: bold;"><asp:Label ID="lblc" runat="server" Text="none"></asp:Label></div>
                                                            </div>
                                                        </div>
                                                    </li>  
                                                    <li>
                                                        <div class="item">
                                                            <div class="img_block"><img class="img_footer" style="width:260px;" src="img/pictures/carousel_blog4.jpg" /></div>
                                                            <div class="carousel_title">
                                                                <h4 class="featured_ico_slider"><asp:Label ID="lbl4" runat="server" Text="none"></asp:Label></h4>
                                                            </div>
                                                            <div class="carousel_desc">                                                
                                                                <div class="exc common_font" style="font-size:10pt;line-height: 20px;font-weight: bold;"><asp:Label ID="lbld" runat="server" Text="none"></asp:Label></div>
                                                            </div>
                                                        </div>
                                                    </li>  
                                                    <li>
                                                        <div class="item">
                                                            <div class="img_block"><img class="img_footer" style="width:260px;" src="img/pictures/carousel_blog5.jpg" /></div>
                                                            <div class="carousel_title">
                                                                <h4 class="featured_ico_video"><asp:Label ID="lbl5" runat="server" Text="none"></asp:Label></h4>
                                                            </div>
                                                            <div class="carousel_desc">                                                
                                                                <div class="exc common_font" style="font-size:10pt;line-height: 20px;font-weight: bold;"><asp:Label ID="lble" runat="server" Text="none"></asp:Label></div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="item">
                                                            <div class="img_block"><img class="img_footer" style="width:260px;" src="img/pictures/carousel_blog6.jpg" /></div>
                                                            <div class="carousel_title">
                                                                <h4 class="featured_ico_slider"><asp:Label ID="lbl6" runat="server" Text="none"></asp:Label></h4>
                                                            </div>
                                                            <div class="carousel_desc">                                                
                                                                <div class="exc common_font" style="font-size:10pt;line-height: 20px;font-weight: 100;"><asp:Label ID="lblf" runat="server" Text="none"></asp:Label></div>
                                                            </div>
                                                        </div>
                                                    </li>                                                
                                                </ul>                        
                                            </div>
                                            <div class="clear"></div>
                                        </div><!-- .featured_slider -->
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
                <div class="right-sidebar-block span3">
                    <aside class="sidebar">
                        //Sidebar Text
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

