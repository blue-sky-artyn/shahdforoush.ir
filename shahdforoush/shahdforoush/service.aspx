<%@ Page Title="خدمات فروش عسل طبیعی" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .module_text_area {
            text-align: right;
            direction: rtl;
        } 
        .module_text_area p,h5 {
            padding: 15px;
            text-align: right;
            direction: rtl;
        }
        .module_text_area h5 {
            width: fit-content;
            border-bottom: 1px solid;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- C O N T E N T -->
    <div class="content_wrapper">
    	<div class="container">
            <div class="content_block right-sidebar row">
                <div class="fl-container span9" style="width: 100%;">
                	<div class="row">
                        <div class="posts-block span9" style="width: 100%;">
                            <div class="contentarea">


                             <div id="serviceHtml" runat="server" class="row-fluid">                  
                                 <h4 class="headInModule" style="text-align: right; direction: rtl; margin-bottom: 50px; margin-top: 10px; font-size: 28pt;">خدمات</h4>
                                    <div class="span12 module_cont module_text_area">
                                        <img src="img/service1.jpg" class="alignleft video_frame box_shadows" alt="عسل حکیم باشی"/>
                                        <p style="padding: 15px;"><asp:Label ID="lbl_left_row1" runat="server" Text="Label" Font-Bold="True" Font-Names="tahoma"></asp:Label></p>
                                        <p style="padding: 15px;"><asp:Label ID="lbl_left_row2" runat="server" Text="Label" Font-Bold="True" Font-Names="tahoma"></asp:Label></p>
                                    </div><!-- .module_cont -->

                                    <div class="span12 module_cont module_text_area" style="text-align: right;">
                                        <img src="img/service2.jpg" class="alignright video_frame box_shadows" alt="عسل حکیم باشی"/>
                                        <p style="padding: 15px;"><asp:Label ID="lbl_right_row1" runat="server" Text="Label" Font-Bold="True" Font-Names="tahoma" style="margin-right: 10px;"></asp:Label></p>
                                        <p style="padding: 15px;"><asp:Label ID="lbl_rigth_row2" runat="server" Text="Label" Font-Bold="True" Font-Names="tahoma" style="margin-right: 10px;"></asp:Label></p>
                                    </div>
							 </div><!-- .row-fluid (pic left with text right and etc...) -->

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

