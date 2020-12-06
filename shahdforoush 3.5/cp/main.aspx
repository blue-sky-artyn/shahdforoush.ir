<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="cp_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheets/btn.css" rel="stylesheet" type="text/css" />
    <link href="stylesheets/dark-buttons.css" rel="stylesheet" type="text/css" />
    <link href="stylesheets/light-buttons.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		
		<div id="contentHeader">
			<h1 style="text-align: right;margin-right: 50px;">مدیریت سایت</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			
			
			<div class="grid-17">
				
				<div class="widget widget-plain">
					
					<div class="widget-content">
				
						<h2 class="dashboard_title">
							مرکز فروش عسل طبیعی حکیم باشی
						</h2>				
						
						<div class="dashboard_report first yellow-3">
							<div class="pad" style="padding: 0;">
								<span class="value">نام و نام خانوادگی</span><asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
							</div> <!-- .pad -->
						</div>
						
						<div class="dashboard_report defaultState yellow-3">
							<div class="pad" style="padding: 0;">
								<span class="value">تاریخ ورود</span> 1392/03/08
							</div> <!-- .pad -->
						</div>
						
						<div class="dashboard_report defaultState yellow-3">
							<div class="pad" style="padding: 0;">
								<span class="value">ساعت</span> 11:30:50
							</div> <!-- .pad -->
						</div>
						
						<div class="dashboard_report defaultState last yellow-3">
							<div class="pad" style="padding: 0;">
								<span class="value">نام کاربری</span><asp:Label ID="lbl_username" runat="server" Text="Label"></asp:Label>
							</div> <!-- .pad -->
						</div>
						
					</div> <!-- .widget-content -->
					
				</div> <!-- .widget -->
				
				<div class="widget widget-table">
					<div class="widget-header">
						<span class="icon-list"></span>
						<h3 class="icon aperture">تغییر کلمه عبور</h3>
					</div> <!-- .widget-header -->
					
					<div class="widget-content" style="direction: rtl;padding: 10px 25px 10px 0;">
					    <p>کلمه عبور جدید:</p>
                        <asp:TextBox ID="txt_pass1" runat="server"></asp:TextBox>
					    <p>تکرار  کلمه عبور جدید:</p>
                        <asp:TextBox ID="txt_pass2" runat="server"></asp:TextBox>
                        <asp:Label ID="lbl" runat="server" Text="" ForeColor="Red" Font-Names="tahoma"></asp:Label>
                        <asp:Button ID="btn_changepass"  class="dashboard_add dark-4" runat="server" Text="ذخیره تغییرات" Font-Names="tahoma" style="float: left;margin-left: 25px;padding: 15px;width: 155px;" onclick="btn_changepass_Click"/>
					</div> <!-- .widget-content -->
					
				</div> <!-- .widget -->	
			</div> <!-- .grid -->			
			
			<div class="grid-7">
				<div id="gettingStarted" class="box" style="padding-bottom: 10px;">
					<h3 style="text-align: right">درصد محبوبیت سایت</h3>

					<p>%درصد محبوبیت سایت 58</p>

					<div class="progress-bar secondary">
						<div class="bar" style="width: 58%;font-size: 60px;text-align: left;">58%</div>
					</div>
					
				</div>
				
				<div class="box plain" style="margin: 50px 0 50px 0;direction: rtl;">
					<a href="javascript:;" class="dark-4 dashboard_add" style="width:150px;padding: 24px 87px;">اضافه کردن مدیر سایت</a>
					<a href="javascript:;" class="light-4 dashboard_add" style="width:150px;padding: 24px 87px;">اضافه کردن کاربر عادی</a>
				</div>
				
			</div> <!-- .grid -->
		</div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

