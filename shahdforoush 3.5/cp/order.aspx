<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="cp_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheets/dark-buttons.css" rel="stylesheet" type="text/css" />
    <link href="stylesheets/light-buttons.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">		
		
		<div id="contentHeader">
			<h1>ثبت سفارش</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			
				
			<div class="grid-16">
					
				<form class="form uniformForm">					
					
					<div class="widget">
						
						<div class="widget-header">
							<span class="icon-article"></span>
							<h3>عملیات ثبت سفارش های داده شده</h3>
						</div> <!-- .widget-header -->
						
						<div class="widget-content" style="direction: rtl;">

							<div class="field-group">
								<div class="field" style="margin-top: 25px;">
                                    <div>
                                        <h3>شماره فاکتور های سفارشی:  

                                            <div class="common_div" style="width:30%;line-height: 30px;border: 1px dashed;margin-top: 15px;">
                                                <asp:PlaceHolder ID="place_fact" runat="server"></asp:PlaceHolder>
                                            </div>
                                            <div style="text-align: left;">
                                                <asp:TextBox ID="txt_code" placeholder="شماره فاکتور را وارد نمایید" 
                                                    runat="server" Font-Names="tahoma" Font-Size="9pt"></asp:TextBox>
                                                <asp:Button ID="btn_refresh" runat="server" class="common_font light-2" Text="نمایش" 
                                                    Font-Italic="True" Font-Size="9pt" onclick="btn_refresh_Click" />
                                            </div>
                                        </h3>
                                    </div>

                                    <div class="box_shadows" style="margin: 25px 155px;background-color: rgb(228, 228, 228);">
                                        <h2>مشخصات سفارش دهنده</h2>
                                        <div>
                                            <p class="common_font">نام خریدار: <asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></p>
                                            <p class="common_font">نام شرکت/سیستم: <asp:Label ID="lbl_name_co" runat="server" Text=""></asp:Label></p>
                                            <p class="common_font">ایمیل: <asp:Label ID="lbl_email" runat="server" Text=""></asp:Label></p>
                                            <p class="common_font">تلفن تماس: <asp:Label ID="lbl_tel" runat="server" Text=""></asp:Label></p>
                                            <p class="common_font">آدرس: <asp:Label ID="lbl_addr" runat="server" Text=""></asp:Label></p>
                                            <p class="common_font">وضعیت فاکتور: <asp:Label ID="lbl_act" runat="server" Text="" ForeColor="Red"></asp:Label></p>
                                        </div>
                                    </div>
                                    
                                    <div style="border: 1px dashed;padding: 10px;">
                                        <h2>جزئیات فاکتور</h2>
                                        <div>
                                            <asp:PlaceHolder ID="Place_detail" runat="server"></asp:PlaceHolder>
                                        </div>
                                    </div>
                                    <label>* ثبت سفارشات از این قسمت انجام می شود.</label>

                                    <div style="text-align:left;margin-top: 5px;">
                                        <asp:Button ID="btn_Save" runat="server" class="common_font dark-2" 
                                            Text="ثبت سفارش" onclick="btn_Save_Click" />
                                    </div>
								</div>
							</div> <!-- .field-group -->
						</div> <!-- .widget-content -->
					</div> <!-- .widget -->
				</form>
			</div> <!-- .grid -->

            <div class="grid-7">
				<a href="news.aspx" class="btn btn-primary btn-xlarge block">ثبت سفارشات</a>
				<a href="javascript:;" class="btn btn-tertiary btn-large block">اتمام عملیات سفارش</a>
			</div><!-- .grid -->

		</div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

