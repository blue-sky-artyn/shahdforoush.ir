﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice2.aspx.cs" Inherits="invoice2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>داروخانه دامپزشکی خراسان</title>

    <meta name="keywords" content=""/>
    <meta name="description" content=""/>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width"/>

    <!--[if lt IE 9]>
    <script type="text/javascript" src="layout/plugins/html5.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="layout/style.css" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic,800,800italic|Pontano+Sans' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Petit+Formal+Script' rel='stylesheet' type='text/css'/>

    <script type="text/javascript" src="layout/js/jquery.js"></script>


    <!-- jQuery tools start -->
    <script type="text/javascript" src="layout/plugins/tools/jquery.tools.min.js"></script>
    <!-- jQuery tools end -->

    <!-- Anything Slider begin -->
    <link rel="stylesheet" href="layout/plugins/anything_slider/anythingslider.css" type="text/css"/>
    <!--[if lte IE 7]>
    <link rel="stylesheet" href="layout/plugins/anything_slider/anythingslider-ie.css" type="text/css"/>
    <![endif]-->
    <script type="text/javascript" src="layout/plugins/anything_slider/jquery.anythingslider.js"></script>
    <!-- Anything Slider end -->

    <!-- PrettyPhoto start -->
    <link rel="stylesheet" href="layout/plugins/prettyphoto/css/prettyPhoto.css" type="text/css"/>
    <script type="text/javascript" src="layout/plugins/prettyphoto/jquery.prettyPhoto.js"></script>
    <!-- PrettyPhoto end -->

    <!-- FlexSlider start -->
    <link rel="stylesheet" href="layout/plugins/flexslider/flexslider.css" type="text/css"/>
    <script type="text/javascript" src="layout/plugins/flexslider/jquery.flexslider-min.js"></script>
    <!-- FlexSlider end -->

    <!-- Audio player start -->
    <script type="text/javascript" src="layout/plugins/audioplayer/audio-player.js"></script>
    <!-- Audio player end -->

    <!-- QuickSand start -->
    <script type="text/javascript" src="layout/plugins/quicksand/jquery.quicksand.js"></script>
    <!-- QuickSand end -->

    <!-- ScrollTo start -->
    <script type="text/javascript" src="layout/plugins/scrollto/jquery.scroll.to.min.js"></script>
    <!-- ScrollTo end -->

    <!-- Icon Menu begin -->
    <script type="text/javascript" src="layout/plugins/iconmenu/jquery.iconmenu.js"></script>
    <!-- Icon Menu end -->

    <script type="text/javascript" src="layout/js/main.js"></script>

    <link href='http://alimd.github.io/libs/1fonts/1.4/1fonts.css' rel='stylesheet' type='text/css' />


    <script type="text/javascript">
        jQuery(function () {

        });
    </script>

</head>
<body>
    <div class="wrapper">
    	<!-- HEADER BEGIN -->
        <header>
            <div id="header">
            	<section class="header_top">
                    <div class="inner">
            			<div id="logo"><a href="Default.aspx"><img src="images/logo.png" alt="DrugStore" title="داروخانه دامپزشکی خراسان" /></a></div>
                        
                        <div class="block_top_info">
                        	<div class="phone"><p>(511) 6666399</p></div>
                            <div class="email"><p><a href="mailto:info@boorsedaroo.ir" target="_blank">info@boorsedaroo.ir</a></p></div>
                        </div>
                        
                        <div class="clearboth"></div>
                    </div>
                </section>
                    
                <section class="header_bottom block_page_menu">
                    <div class="inner">
                        <nav class="menu_1">
                            <ul>
                                <li class="one menu_main5"><a href="pishnahad.aspx">فروش دارو به بورس<span class="menu_subtext">فروش دارو به بورس</span></a></li>

                           	  	<li class="two current_page_item  menu_main4"><a href="#">خدمات<span class="menu_subtext">خدمات ارائه دهنده</span></a>
                                    <ul>
                                    	<li><a href="about.aspx">درباره ما</a></li>
                                        <li><a href="service.aspx">خدمات</a></li>
                                    </ul>
                                </li>

                               	<li class="three  menu_main3"><a href="#">خرید دارو از بورس<span class="menu_subtext">کلیه خرید ها و فروش ها در سایت</span></a>
                                    <ul>
                                    	<li><a href="inqiury.aspx">استعلام بها</a></li>
                                        <li><a href="sale.aspx">خرید دارو از بورس</a></li>
                                        
                                    </ul>
                                </li>

                           	  	<li class="four menu_main2"><a href="#">بخش علمی<span class="menu_subtext">آموزش ،سوالات رایج دوستان و پرسش و پاسخ</span></a>
                                    <ul>
                                    	<li><a href="frum.aspx">پرسش و پاسخ</a></li>
                                        <li><a href="faq.aspx">سوالات رایج</a></li>
                                        <li><a href="news.aspx">بخش علمی</a></li>
                                        <li><a href="underconstruction.aspx">نقد و برسی داروها</a></li>
                                    </ul>
                                </li>

                           	  	<li class="five menu_main1"><a href="contact.aspx">تماس با ما<span class="menu_subtext">ارتباط با مدیریت داروخانه دامپزشکی خراسان</span></a></li>
                       	  	</ul>
                        </nav>
                    </div>
                </section>
            </div>
        </header>
    	<!-- HEADER END -->
        
        <!-- CONTENT BEGIN -->
        <div id="content" class="sidebar_right">
   	<div class="inner">
          	<!-- BEFORE CONTENT SECTION BEGIN -->








        <div class="block_title">
          <h1>صورتحساب</h1>
        </div>
        
        <div class="block_breadcrumbs">
          <ul>
            <li><a href="index-2.html">صفحه نخست</a></li>
            <li>صورتحساب</li>
          </ul>
        </div>
        <div class="line_2"></div>

        <div class="content_main">
          <article class="block_text w_icon first">
            <div class="title">
              <div class="icon_wrapper"><div class="icon icon_14"></div></div>
              <h1>صورتحساب اجناس سبد</h1>
              
              <div class="clearboth"></div>
            </div>
            <div class="line_1"></div>
            
            <div class="content" id="showBasket" runat="server">
              
                <div class="general_message_box info invoice-box" runat="server" id="invoice_box">
                   







                </div>
              
              <div class="separator_20"></div>
            </div>
          </article>
           

        </div>

        
                <div class="sidebar border_left">
                    <!-- <div class="basket-contain"></div> -->

                    <div class="basket-container">
                        <div class="img">
                            <img src="layout/images/basket.png" width="70" />
                            <p>سبد خرید</p>
                        </div>
                        <div class="basket-contain"></div>
                    </div>

                    <div class="widgets_set">
                        <h3 class="common_div">پر فروش ها:</h3>
                        
                        <ul class="menu">

                            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                            
                        </ul>
                    </div>
                    
                    <div class="widgets_set">
                        <h3 class="common_div">آخرین پست ها:</h3>
                        
                        <div class="block_recent_posts">

                            <asp:PlaceHolder ID="ph_post" runat="server"></asp:PlaceHolder>
                            
                        </div>
                    </div>
                    
                    
                    <div class="widgets_set">
                        <h3 class="common_font">ارتباط با ما</h3>
                        
                        <div class="block_connect">
                            <ul>
                                <li><a href="#" class="twitter">Twitter</a></li>
                                <li><a href="#" class="facebook">Facebook</a></li>
                                <li><a href="#" class="linkedin">Linkedin</a></li>
                                <li><a href="#" class="dribble">Dribbble</a></li>
                                <li><a href="#" class="flickr">Flickr</a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>

                <div class="clearboth"></div>
                
                <!-- AFTER CONTENT SECTION BEGIN -->
                <!-- AFTER CONTENT SECTION END -->




    </div>
        </div>
    	<!-- CONTENT END -->
        
        <!-- FOOTER BEGIN -->
        <footer>
            <div id="footer">
            	<section class="footer_top">
                	<div class="inner">
                    	<div class="block_footer_widgets">
                        	<div class="column">
                            	<div class="widgets_set">
                                	<h3>درباره ما</h3>
                                    <p><asp:Label ID="lbl_about" runat="server" Text="Label"></asp:Label></p>
                                    
                                    <div class="block_teammate">
                                    	<div class="photo"><span class="pic r_coner"><img src="images/logo.png" alt="" width="85px"/></span></div>
                                        <div class="bio">
                                        	<p class="name"><a href="about.aspx">داروخانه دامپزشکی خرسان</a></p>
                                            <p class="position" style="text-align:left;"><a href="about.aspx">سهامی خاص</a></p>
                                        </div>
                                        
                                        <div class="clearboth"></div>
                                    </div>
                                    
                                    <div class="line_3" style="margin:25px 0px 30px;"></div>
                                    
                                    <a href="#" class="general_button type_3">رزومه آنلاین</a>
                                    
                                </div>
                            </div>
                            
                            <div class="column" style="margin-right: 130px;">
                            	<div class="widgets_set">
                                	<h3>توضیحات</h3>
                                    
                                    <div class="block_last_comments first">
                                    	<p class="author">مدیر سایت </p>
                                        <p>توضیحات پاورقی 1</p>
                                    </div>
                                    
                                    <div class="block_last_comments">
                                    	<p class="author">مدیر سایت </p>
                                        <p>توضیحات پاورقی 2</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="column" style="width:110px;">
                            	<div class="widgets_set">
                                	
                                </div>
                            </div>
                            
                            <div class="column">
                            	<div class="widgets_set">
                                	<h3>لینک های مهم</h3>
                                    
                                    <div class="block_contact_us">
                                    	<p>دامپزشکی خراسان رضوی</p>
                                    	<p>بیمارستان طیور</p>
                                    	<p>درمانگاه دامپزشکی</p>
                                    	<p>دامپزشکی خراسان رضوی</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                    </div>
                </section>
                
                <section class="footer_bottom">
                	<div class="inner">
                    	<nav class="bottom_menu">
                        	<ul>
                                <li><a href="Default.aspx">نخست</a></li>
                                <li><a href="about.aspx">درباره ما</a></li>
                                <li><a href="#">خرید</a></li>
                                <li><a href="pishnahad.aspx">پیشنهاد فروش</a></li>
                                <li><a href="contact.aspx">تماس با ما</a></li>
                            </ul>
                        </nav>
                        
                    	<div class="block_copyrights">
                        	<p>طراحی و پیاده سازی: دانا گیتی گستر</p>
                        </div>
                        
                        <div class="clearboth"></div>
                    </div>
                </section>
            </div>
        </footer>
        <!-- FOOTER END -->
    </div>
</body>
</html>