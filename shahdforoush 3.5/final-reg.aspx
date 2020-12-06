<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="final-reg.aspx.cs" Inherits="final_reg" %>

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
                                    <h4 class="headInModule common_div"><a name="anchor10"></a>لیست اجناس خریداری شده</h4>
                                    <div class="span12 module_cont module_text_area margin0 common_div box_shadows" style="margin: 0;">
                                        <div style="line-height: 30px;">

                                            <asp:PlaceHolder ID="Place_fact" runat="server"></asp:PlaceHolder>
                                                                                    
                                            <br />
                                            <hr style="height: 15px;margin-top: 30px"/>
                                            <h3>برای حذف کالا کد کالا را وارد نمایید</h3>
                                            <asp:TextBox ID="txt_code_del" runat="server" class="common_font" 
                                                placeholder="کد کالا" Width="55" 
                                                style="margin: 0;margin-left: 30px;margin-right: 40px;" Height="28px"></asp:TextBox>
                                            <asp:Button ID="btn_del" runat="server" class="dark-2" Text="حذف" 
                                                onclick="btn_del_Click" />
                                        </div>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid (sample divider) -->

                                <h4 class="headInModule common_div" style="margin-top: 25px;"><a name="anchor10"></a>مشخصات خریدار</h4>
                                            <div style="margin-bottom: 15px;">
                                                <div class="ip box_shadows" style="direction: rtl;text-align: right;font-family:Tahoma;">
                                                        لطفا تمام فیلد ها را با دقت و صحیح وارد کنید
                                                        <div class="feedback_form" style="margin-top: 15px;">
                                                            <div style="margin-bottom: 25px;text-align: left;">
                                                                <span class="common_font">در صورتی که قبلا ثبت نام کرده اید:
                                                                    <asp:TextBox ID="txt_eshterak" placeholder="کد اشتراک" runat="server" 
                                                                    class="field-name form_field" 
                                                                    style="background-color: gray;width: 118px;margin-right: 25px;" 
                                                                    ontextchanged="txt_eshterak_TextChanged"></asp:TextBox><br />
                                                                </span>
                                                            </div>
                                                            <asp:TextBox ID="txt_name" runat="server" placeholder="نام و نام خانوادگی" class="field-name form_field" style="width: 321px;"></asp:TextBox>
                                                            <asp:TextBox ID="txt_email" runat="server" placeholder="ایمیل" class="field-email form_field"></asp:TextBox>
                                                           
                                                            <asp:TextBox ID="txt_tel" runat="server" placeholder="تلفن" class="field-subject form_field"></asp:TextBox><br />
                                                            
                                                            <asp:TextBox ID="txt_co" runat="server"  placeholder="نام شرکت/مغازه" class="field-subject form_field" style="width: 96%;margin-top: 15px;"></asp:TextBox><br />
                                                            <asp:TextBox ID="txt_addr" runat="server"  placeholder="آدرس محل ارسال" class="field-subject form_field" style="width: 96%;height: 84px;vertical-align: top;margin-bottom: 15px;"></asp:TextBox>
                                                            <hr />
                                                            <p class="common_font"  >مشخصات را حتما با دقت تکمیل فرمایید تا در تحویل کالا با مشکل روبرو نشوید...</p>
                                                        </div>
                                                        <!-- .module_cont -->
												</div>
                                            </div>           
                                
                                
                                <div class="row-fluid" style="margin-top: 30px;">                                
                                    <div class="span12 module_cont module_promo_text">
	                                    <h4 class="headInModule common_div"><a name="anchor8"></a>تایید سفارش خرید</h4>
                                        <div class="shortcode_promoblock ">
                                            <div class="row-fluid">
                                                <div class="span3 promo_button_block" style="margin-top: 10px;">
                                                    <asp:Button ID="btn_ok" runat="server" class="dark-2" Text="تایید سفارش" 
                                                        onclick="btn_ok_Click" />
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





                                 <asp:PlaceHolder ID="Place_msg" runat="server"></asp:PlaceHolder>





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
                                        
                                        
                                        <%--<input type="text" name="field-name" title="Name" value="Placeholder text" onfocus="if(this.value=='Placeholder text')this.value='';"
                                                                   onblur="if(this.value=='')this.value='Placeholder text';" />--%>
                                        
                                        <div class="menu_highlight"><asp:LinkButton ID="LinkButton1" runat="server" 
                                                class="common_div" Font-Bold="False" 
                                                Font-Names="tahoma">صدور فاکتور فروش</asp:LinkButton></div>
                                        
                            </div><!-- .module_cont -->
                        </div>                        
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

