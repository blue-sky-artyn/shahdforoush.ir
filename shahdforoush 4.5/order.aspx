<%@ Page Title="فروش عسل طبیعی" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/buttons/dark-buttons.css" rel="stylesheet" type="text/css" />
    <link href="css/buttons/light-buttons.css" rel="stylesheet" type="text/css" />
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
                                    <div class="span12 module_cont module_text_area margin0 common_div box_shadows" style="margin: 0;height: 150px;">
                                       






                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid (sample divider) -->

                                <div class="row-fluid">
                                    <div class="span12 module_cont module_toggle">
                                        <div class="shortcode_toggles_shortcode toggles">
                                            <h5 class="shortcode_toggles_item_title expanded_yes" data-count="2" style="text-align:right;direction:rtl;">
                                                لیست کالاهای انتخاب شده(لطفا کلیک کنید)
                                                <span class="ico"></span>
                                            </h5>
                                            <div class="shortcode_toggles_item_body">
                                                <div class="ip box_shadows">
                                                    <div class="module_cont module_text_area margin0">
                                                        <p class="common_font">لیست کالا ها:</p>
                                                        <div class="common_font" style="line-height: 50px;">
                                                            <asp:Label ID="Label28" runat="server" Text="عسل 250 گرمی(کد 403)" Font-Names="tahoma" ForeColor="Silver" ></asp:Label>
                                                            <asp:Label ID="Label32" runat="server" Text="X 3" style="margin-right: 50px;"></asp:Label>
                                                            <asp:Button ID="Button2" runat="server" class="light-4" Text="حذف" Width="115" style="margin-right: 50px;" Font-Size="12pt" /><br />

                                                            <asp:Label ID="Label27" runat="server" Text="عسل 250 گرمی(کد 403)" Font-Names="tahoma" ForeColor="Silver" ></asp:Label>
                                                            <asp:Label ID="Label33" runat="server" Text="X 3" style="margin-right: 50px;"></asp:Label>
                                                            <asp:Button ID="Button3" runat="server" class="light-4" Text="حذف" Width="115" style="margin-right: 50px;" Font-Size="12pt"/><br />

                                                            <asp:Label ID="Label29" runat="server" Text="عسل 250 گرمی(کد 403)" Font-Names="tahoma" ForeColor="Silver" ></asp:Label>
                                                            <asp:Label ID="Label34" runat="server" Text="X 3" style="margin-right: 50px;"></asp:Label>
                                                            <asp:Button ID="Button4" runat="server" class="light-4" Text="حذف" Width="115" style="margin-right: 50px;" Font-Size="12pt" /><br />

                                                            <asp:Label ID="Label30" runat="server" Text="عسل 250 گرمی(کد 403)" Font-Names="tahoma" ForeColor="Silver" ></asp:Label>
                                                            <asp:Label ID="Label35" runat="server" Text="X 3" style="margin-right: 50px;"></asp:Label>
                                                            <asp:Button ID="Button5" runat="server" class="light-4" Text="حذف" Width="115" style="margin-right: 50px;" Font-Size="12pt" /><br />

                                                            <asp:Label ID="Label31" runat="server" Text="عسل 250 گرمی(کد 403)" Font-Names="tahoma" ForeColor="Silver" ></asp:Label>
                                                            <asp:Label ID="Label36" runat="server" Text="X 3" style="margin-right: 50px;"></asp:Label>
                                                            <asp:Button ID="Button6" runat="server" class="light-4" Text="حذف" Width="115" style="margin-right: 50px;" Font-Size="12pt" /><br />
                                                        </div>                                        
                                                    </div><!-- .module_cont -->	
												</div>
                                            </div>
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
                                                            <input type="text" name="field-name" value="نام و نام خانوادگی" title="Name" class="field-name form_field" style="width: 321px;"/>
                                                            <input type="text" name="field-email" value="ایمیل" title="Email" class="field-email form_field" />
                                                            <input type="text" name="field-subject" value="تلفن" title="Tel" class="field-subject form_field" /><br />
                                                            
                                                            <input type="text" name="field-subject" value="نام شرکت/مغازه" title="Name Company/Name Store" class="field-subject form_field" style="width: 96%;margin-top: 15px;"/><br />
                                                            <input type="text" name="field-subject" value="آدرس محل ارسال" title="Deliver Address" class="field-subject form_field" style="width: 96%;height: 84px;vertical-align: top;margin-bottom: 15px;"/>
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
                                                    <asp:Button ID="btn_ok" runat="server" class="dark-2" Text="تایید سفارش" />
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
                                        <h4 class="headInModule" style="font-size: 11pt;"><a name="anchor1"></a>لیست کالا ها به همراه کد کالاها</h4>
                                        <div class="shortcode_accordion_shortcode accordion">
                                            <h5 class="shortcode_accordion_item_title expanded_yes" data-count="1">
                                                عسل چند گیاه
                                                <span class="ico"></span>
                                            </h5>
                                            <div class="shortcode_accordion_item_body">
                                                <div class="ip">
                                                   <asp:Label ID="Label1" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label2" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label3" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label4" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label5" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label6" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label7" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label8" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                </div>
                                            </div>
                                            <h5 class="shortcode_accordion_item_title" data-count="2">
                                                عسل 250 گرمی
                                                <span class="ico"></span>
                                            </h5>
                                            <div class="shortcode_accordion_item_body">
                                                <div class="ip">
                                                   <asp:Label ID="Label9" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label10" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label11" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label12" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label13" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label14" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label15" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label16" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label17" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label18" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label19" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label20" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label21" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label22" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                </div>
                                            </div>
                                            <h5 class="shortcode_accordion_item_title" data-count="3">
                                                عسل طبیعی
                                                <span class="ico"></span>
                                            </h5>
                                            <div class="shortcode_accordion_item_body">
                                                <div class="ip">
                                                   <asp:Label ID="Label23" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label24" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                   <asp:Label ID="Label25" runat="server" Text="کد کالا : 403" Font-Names="tahoma" ForeColor="Silver"></asp:Label><br />
                                                   <asp:Label ID="Label26" runat="server" Text="عسل مخلوط" Font-Names="tahoma" ForeColor="Silver"></asp:Label>
                                                   <hr class="light" />
                                                </div>
                                            </div>
                                        </div><!--.accordion--> 
                            </div><!-- .module_cont -->
                        </div>                        
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

