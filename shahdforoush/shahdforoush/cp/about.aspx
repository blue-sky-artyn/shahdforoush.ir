<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="cp_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="stylesheets/sample_pages/people.css" type="text/css" />
    <link href="stylesheets/dark-buttons.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		<div id="contentHeader">
			<h1>درباره شرکت</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
				
		<div class="grid-16">	
			
		<div class="widget widget-plain">
			
			<div class="widget-header">
				<h3>درباره</h3>
			</div> <!-- .widget-header -->
			
			
			<div class="widget-content">
				
				<div class="department" style="direction:rtl;width: 100%;margin-top: 20px;">
					
					<h2>توضیحات درباره شرکت را در این قسمت وارد کنید</h2>
					
                    <div style="text-align:right;">
					    <img src="images/logo_footer.png" title="User" alt="" style="float: left;"/>
                    
                        <p><strong>توضیحات را وارد نمایید:</strong></p>
                        <p>برای رفتن به خط بعد از علامت < br > استفاده نمایید</p>
                    </div>
                    <div>
                        <asp:TextBox ID="txt_detail" runat="server" Font-Names="tahoma" TextMode="MultiLine" Height="248" Width="559" style="text-align:justify;" ></asp:TextBox>
                        <asp:Button ID="btn_save" runat="server" class="dark-2" Text="ذخیره اطلاعات" style="cursor: pointer;" Font-Names="tahoma"  onclick="btn_save_Click"/>
                    </div>
                    <div>
                        <marquee scrolldelay="1" scrollamount="8" direction="down" behavior="slide">
                            <asp:Label ID="lbl_msg" runat="server" Text="اطلاعات با موفقیت ذخیره شد" Visible="False"></asp:Label>
                        </marquee>
                    </div>
				</div> <!-- .department -->	

			</div> <!-- .widget-content -->
		</div> <!-- .widget -->
		
		</div> <!-- .grid -->
								
		
		<div class="grid-8" style="width:26.2%;">
			
			<div class="box" style="direction:rtl;">
				<h3>معرفی شرکت</h3>

                <p style="text-align: center;font-style: italic;font-weight: bolder;font-size: 15px;">
                    <asp:Label ID="lbl_name_co" runat="server" Text="Label"></asp:Label><br /><br />
                </p>

                <p style="font-weight: bold;">مدیر عامل:
                    <asp:Label ID="lbl_manager" runat="server" Text="Label" style="font-weight: initial;margin-right: 15px;font-style: italic;text-shadow: rgb(175, 173, 173) 1px 1px 5px;"></asp:Label>
                </p>

                <p style="margin-bottom: 0;font-weight: bold;">آدرس:</p>
                <asp:Label ID="lbl_addr" runat="server" Text="Label" style="font-weight: initial;margin-right: 40px;font-style: italic;text-shadow: rgb(175, 173, 173) 1px 1px 5px;"></asp:Label>

                <p style="margin-top: 1.75em;font-weight: bold;">ایمیل: 
                    <asp:Label ID="lbl_email_co" runat="server" Text="Label" style="font-weight: initial;margin-right: 15px;font-style: italic;text-shadow: rgb(175, 173, 173) 1px 1px 5px;"></asp:Label>
                </p>

                <p style="font-weight: bold;text-align:left;">Tel: 
                    <asp:Label ID="lbl_tel" runat="server" Text="Label" style="font-weight: initial;margin-right: 15px;font-style: italic;text-shadow: rgb(175, 173, 173) 1px 1px 5px;"></asp:Label>
                </p>
			</div>			
			
		</div> <!-- .grid -->
			
		</div> <!-- .container -->
		
</div> <!-- #content -->
</asp:Content>

