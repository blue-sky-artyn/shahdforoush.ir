<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="order-online.aspx.cs" Inherits="order_online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="css/buttons/dark-buttons.css" rel="stylesheet" type="text/css" />
   <link href="css/buttons/light-buttons.css" rel="stylesheet" type="text/css" />

   <style>
      img {max-width:100%; height:auto;-moz-border-radius:10px;  -webkit-border-radius:10px;  border-radius:10px;}

     .block_accordeon .button_outer {margin-bottom:1px; padding:0px 16px 0px 29px; position:relative; background:url(images/bg_opacity_3.png); -moz-border-radius:5px; -webkit-border-radius:5px; border-radius:5px; behavior:url(layout/plugins/PIE.htc); font-family:Tahoma; font-size:18px; color:#ffffff; cursor:pointer;}
     .block_accordeon .button_outer .button_inner {height:60px; line-height:60px; padding-right:35px; background:url(images/arrow_16.png) no-repeat left 18px;font-family:Tahoma;}
     .block_accordeon .accordeon_content {padding:25px 25px 10px; overflow:hidden;font-family:Tahoma;}
     .pic.alignright {margin-left:20px; margin-top:4px; display:block;font-family:Tahoma;}
     .r_coner {background-repeat:no-repeat; background-size:100% 100%; position:relative; -moz-border-radius:5px; -webkit-border-radius:5px; border-radius:5px; behavior:url(layout/plugins/PIE.htc); line-height:0px;font-family:Tahoma;}
     .pic {max-width:100%; display:inline-block; line-height:0px;font-family:Tahoma;}
     .count-stuffs{width: 40px;text-align: center;margin: 0 5px 0 30px;height: 16px;font-family:Tahoma;}
     .fr, .alignright {float:right;}
     
     .button_inner {padding: 15px 30px;border: 1px solid rgb(197, 197, 197);margin-bottom: 10px;background-color: rgb(223, 223, 223);border-radius: 15px;text-shadow: gray 1px 1px 2px;}
   </style>

   <script src="layout/js/basket.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- C O N T E N T -->
    <div class="content_wrapper">
    	<div class="container">
            <div class="content_block right-sidebar row">
                <div class="fl-container span9">
                	<div class="row">
                        <div class="posts-block span9">
                            <div class="contentarea">
                                <div class="row-fluid" style="margin-bottom: 15px;">
                                    <h4 class="headInModule common_div"><a name="anchor10"></a>ارسال سفارشات</h4>
                                    <div class="span12 module_cont module_text_area margin0 common_div box_shadows" style="margin: 0;">
                                        <div style="margin-top: 25px;">

                                            <div id="block_accordeon" runat="server" >
                                            
                                            
                                            </div>

                                            
                                          
                                            <br />
                                        </div>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid (sample divider) -->
                                
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
                            <div class="span12 module_cont module_accordion" style="width: 100%;padding: 0;margin: 0;margin-top: 30px;direction: rtl;text-align: right;">
                                        <h4 class="headInModule" style="font-size: 11pt;"><a name="anchor1"></a>لیست کالا ها </h4>
                                        <div class="shortcode_accordion_shortcode accordion">
                                            <div class="row-fluid">
                                                <div class="span12 module_cont module_highlighter">
                                                    <div class="highlighter_item"><a>عسل های چند گیاه</a></div>
                                                    <div class="highlighter_item"><a>عسل های تک گیاه</a></div>
                                                    <div class="highlighter_item"><a>سایر محصولات</a></div>
									            </div><!-- .module_cont -->
								            </div><!-- .row-fluid (only Highlight) -->
                                        </div><!--.accordion--> 
                                <h2 style="direction:rtl;color: red;">به زودی خرید اینترنتی اضافه می شود.پشاپیش از صبر شما متشکریم...</h2>
                            </div><!-- .module_cont -->
                            
                            <div class="basket-container">
                                <div class="img">
                                    <!--<a href="perfact.aspx">-->
                                    <a href="#">
                                        <img src="layout/images/basket.png" width="70" />
                                    </a>
                                    <p>سبد خرید</p>
                                </div>
                                <div class="basket-contain"></div>
                            </div>

                        </div>                        
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

