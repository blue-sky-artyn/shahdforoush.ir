<%@ Page Title="پیش فاکتور" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="perfact.aspx.cs" Inherits="perfact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="layout/js/delbask.js" type="text/javascript"></script>
    <link href="css/buttons/dark-buttons.css" rel="stylesheet" type="text/css" />
    <link href="css/buttons/light-buttons.css" rel="stylesheet" type="text/css" />
    <style>
        .table { direction:rtl;text-align:right;}
        .none_stuff {text-align: center;font-family: tahoma;font-weight: bolder;font-style: italic;text-shadow: gray 0.1pc 0.1pc 2px;}
        .last_cell {width:10%;}
    </style>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".light-2").click(function(){
                var idNumber = ($(this).attr("data-product-id"));
                var Nummber = ($(this).attr("data-product-no"));
                var checkValue = idNumber + "-" + Nummber;
                var cook = document.cookie.split(',');
                var first = cook[0].substr(15,3);
                cook[0] = first;
                var result = "";
                var triger;

                for (var i = cook.length - 1; i >= 0; i--) {

                   if (checkValue == cook[i]) {triger = i};             
                
            };

            for (var i = 0; i < cook.length; i++) {
                if (cook[i] != cook[triger]) {
                   
                    result = result + cook[i] + ",";
                  
                };
            };

            //alert("Main = " + cook[triger]);

            //alert(result);
            result = result.substr(0,result.length-1);
            document.cookie = "ShoppingBasket=" + result;
            window.location="http://shahdforoush.ir/perfact.aspx";
               
    });
});
    </script>
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
                                    <div class="span12">
                                        <h2 class="title" style="text-align:right;">پیش فاکتور</h2>
                                    </div>								
                                </div><!-- .row-fluid -->
                                <div class="row-fluid">                                
                                    <div class="span12">
                                        <div class="blog_post_preview">
                                            
                                            <div class="blog_info" style="padding-right: 43px;">												
                                                <div class="blog_info_block" style="text-align: right;direction: rtl;">
                                                    <span class="url">وب سایت: <a href="http://shahdforoush.ir/">www.shahdforoush.ir</a></span>
                                                    <span class="blog_tags">توجه: <a rel="tag" href="#">در خرید کالا دقت  فرمایید،بعد از این مرحله کالا ثبت می شود</a></span>
                                                    <span class="blog_tags">شماره فاکتور: <a rel="tag" href="#" id="no_fact" runat="server" ></a></span>
                                                </div>
                                                <div class="portfolio_share">
                                                    <a href="#" class="ico_socialize_facebook2 ico_socialize type2"></a>
                                                    <div class="clear"><!-- ClearFix --></div>
                                                </div>
                                            </div><!-- .blog_info -->                                            
                                            <article class="contentarea">
                                                



                                                <div class="content" id="showBasket" runat="server">
              
                             

                                                                 <!-- inner text -->
              



                                                </div>
                
                                                
                                            </article>                                                                               
                                        </div><!--.blog_post_preview -->
                                        <div class="row-fluid">
                                            <div class="span12 module_cont module_toggle">
                                                <div class="shortcode_toggles_shortcode toggles">
                                           
                                                </div><!--.shortcode_toggles_shortcode--> 
                                                <h4 class="headInModule common_div" style="margin-top: 25px;"><a name="anchor10"></a>مشخصات خریدار</h4>
                                                    <div style="margin-bottom: 15px;">
                                                        <div class="ip box_shadows" style="direction: rtl;text-align: right;font-family:Tahoma;">
                                                                لطفا تمام فیلد ها را با دقت و صحیح وارد کنید
                                                                <div class="feedback_form" style="margin-top: 15px;">
                                                                    <div style="margin-bottom: 25px;text-align: left;">
                                                                        <span class="common_font">در صورتی که قبلا ثبت نام کرده اید:
                                                                            <input type="text" name="field-name" value="کد اشتراک" title="Service Code" class="field-name form_field" style="background-color: gray;width: 118px;margin-right: 25px;"/><br />
                                                                        </span>
                                                                    </div> 
                                                                    <asp:TextBox ID="txt_name" runat="server" class="field-name form_field" placeholder="نام را وارد نمایید" Font-Names="tahoma" Width="300"></asp:TextBox>
                                                                    <asp:TextBox ID="txt_fname" runat="server" class="field-name form_field" placeholder="فامیل را وارد نمایید" Font-Names="tahoma" Width="300"></asp:TextBox><br /><br /><br />
                                                                    <asp:TextBox ID="txt_email" runat="server" class="field-email form_field" placeholder="ایمیل را وارد نمایید" Font-Names="tahoma" Width="46.5%"></asp:TextBox>
                                                                    <asp:TextBox ID="txt_tel" runat="server" class="field-subject form_field" placeholder="تلفن را وارد نمایید" Font-Names="tahoma" Width="47.3%"></asp:TextBox><br />
                                                                    <asp:TextBox ID="txt_addr" runat="server" class="field-subject form_field" placeholder="آدرس را وارد نمایید" Font-Names="tahoma" Width="97%" Height="100px"></asp:TextBox>
                                                            
                                                                    <hr />
                                                                    <p class="common_font"  >مشخصات را حتما با دقت تکمیل فرمایید تا در تحویل کالا با مشکل روبرو نشوید...</p>
                                                                </div>
                                                                <!-- .module_cont -->
												        </div>
                                                    </div>                            	
                                            </div><!-- .module_cont -->
								        </div><!-- .row-fluid (open fluid) -->
                                        <div class="row-fluid" style="margin-top: 30px;">                                
                                            <div class="span12 module_cont module_promo_text">
	                                            <h4 class="headInModule common_div"><a name="anchor8"></a>تایید سفارش خرید</h4>
                                                <div class="shortcode_promoblock ">
                                                    <div class="row-fluid">
                                                        <div class="span3 promo_button_block" style="margin-top: 10px;">
                                                           
                                                            <asp:PlaceHolder ID="Ph_btn" runat="server"></asp:PlaceHolder>
                                                            <asp:Button ID="btn_back" runat="server" class="dark-2" Text="بازگشت" 
                                                                 Width="85" onclick="btn_back_Click"></asp:Button>
                                                        </div>
                                                        <div class="span9 promo_text_block" style="direction:rtl;">
                                                            <h1>خرید کالاهای درون سبد خرید کالا را تایید می نمایم...</h1>
                                                            <h4 style="font-size: 17px;line-height: 32px;">پس از تایید به منزله خرید جنس و فاکتور آن است،لطفا دقت فرمایید...</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!--.module_cont -->
                                            <div class="clear"><!-- ClearFIX --></div>                                                                    
                                        </div><!-- .row-fluid (poromo text(sample buy it...) -->
                                    </div><!-- span12 -->
                                    
                                </div><!-- .row-fluid -->
                                
                            </div><!-- .contentarea -->
                        </div>
                        <div class="left-sidebar-block span3">
                            <!-- Left Sidebar Text -->
                        </div><!-- .left-sidebar -->
                    </div>
                </div><!-- .fl-container -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
    
</asp:Content>

