<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="cp_detail" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheets/sample_pages/invoice.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		
		<div id="contentHeader">
			<h1 style="text-align:right;">ویرایش مشخصات شرکت</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
				
				<div class="grid-17">				
					<div id="invoice" class="widget widget-plain">			
						
						<div class="widget-header">
							<h3>مشخصات شرکت</h3>
						</div>
						
			        <div class="widget-content" style="direction: rtl;">
			
				        <ul class="client_details">
					        <li></li>
					        <li></li>
					        <li></li>
					        <li></li>
				        </ul>
				
				        <ul class="invoice_details">
                            <li><strong class="name">مشخصات شرکت:</strong></li>
                            <li><strong class="name"><asp:Label ID="lbl_nameco" runat="server" Text="Label"></asp:Label></strong></li>
					        <li><asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label></li>
                            <li><asp:Label ID="lbl_managername" runat="server" Text="Label"></asp:Label></li>
					        <li><asp:Label ID="lbl_addr" runat="server" Text="Label"></asp:Label></li>
                            <li style="direction: ltr;"><asp:Label ID="lbl_tel" runat="server" Text="Label"></asp:Label></li>
				        </ul>
				
				        <div class="clear"></div>

                        

                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                            onafterperformcallback="ASPxGridView1_AfterPerformCallback" 
                            onrowupdating="ASPxGridView1_RowUpdating" RightToLeft="True" Width="100%">
                            <Columns>
                                <dx:GridViewCommandColumn Caption="عملیات" ShowInCustomizationForm="True" 
                                    VisibleIndex="4">
                                    <EditButton Text="ویرایش" Visible="True">
                                    </EditButton>
                                    <CancelButton Text="انصراف">
                                    </CancelButton>
                                    <UpdateButton Text="بروزرسانی">
                                    </UpdateButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn Caption="ایمیل شرکت" FieldName="name_co" 
                                    ShowInCustomizationForm="True" VisibleIndex="0" Width="180px">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="تلفن شرکت" FieldName="tel_co" 
                                    ShowInCustomizationForm="True" VisibleIndex="1" Width="120px">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="مدیریت" FieldName="manager" 
                                    ShowInCustomizationForm="True" VisibleIndex="2" Width="100px">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="آدرس" FieldName="addr" 
                                    ShowInCustomizationForm="True" VisibleIndex="3" Width="300px">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>










				        <hr />

				        <h3>مشخصات شرکت</h3>
				        <p>مشخصات شرکت را در صورت نیاز می توانید ویرایش کنید.نام مدیر عامل و دیگر جزئیات شرکت.</p>
			        </div>
				    </div>
				</div> <!-- .grid -->
				
		        <div class="grid-7">
			        <div class="box">
				        <br />
				        <h3 style="text-align:right;">عملیات برای ویرایش مشخصات</h3>
				        <ul id="invoice_actions" class="" style="direction:rtl;">
					        <li><a>ویرایش نام مدیرعامل</a></li>
					        <li><a>عملیات ویرایش آدرس شرکت</a></li>
					        <li><a>عملیات ویرایش ایمیل</a></li>
					        <li><a>عملیات ویرایش تلفن</a></li>
					        <li><a>عملیات ویرایش فکس</a></li>
				        </ul>
			        </div> <!-- .box -->		
		        </div> <!-- .grid -->
	    </div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

