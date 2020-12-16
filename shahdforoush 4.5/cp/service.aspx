<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="cp_service" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="stylesheets/sample_pages/people.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		<div id="contentHeader">
			<h1>شرح خدمات شرکت</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
				
		<div class="grid-16">	
			
		<div class="widget widget-plain">
			
			<div class="widget-header">
				<h3>شرح خدمات</h3>
			</div> <!-- .widget-header -->
			
			
			<div class="widget-content">
				
				<div class="department" style="direction:rtl;width: 100%;margin-top: 20px;">
					
					<h2>موارد خدمات شرکت را ویرایش کنید</h2>
					
                    <div style="text-align:right;">
					    <img src="images/logo_footer.png" title="User" alt="" style="float: left;"/>
                    
                        <p><strong>شرح وظایف:</strong></p>
                    </div>

                    <div style="width: 586px;">
                        
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                            onafterperformcallback="ASPxGridView1_AfterPerformCallback" 
                            onrowupdating="ASPxGridView1_RowUpdating" RightToLeft="True" Width="100%">
                        <Columns>
                            <dx:GridViewDataTextColumn Caption="id" FieldName="id" Visible="False" 
                                VisibleIndex="0">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="شرح خدمات" FieldName="detaol_serv" 
                                VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewCommandColumn Caption="عملیات" VisibleIndex="2">
                                <EditButton Text="ویرایش" Visible="True">
                                </EditButton>
                                <CancelButton Text="انصراف">
                                </CancelButton>
                                <UpdateButton Text="بروز رسانی">
                                </UpdateButton>
                            </dx:GridViewCommandColumn>
                        </Columns>
                    </dx:ASPxGridView>
                    </div>
                    <div>
                        <marquee scrolldelay="1" scrollamount="8" direction="down" behavior="slide">
                            <asp:Label ID="lbl_msg" runat="server" Text="اطلاعات با موفقیت ذخیره شد" Visible="False"></asp:Label></marquee>
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

