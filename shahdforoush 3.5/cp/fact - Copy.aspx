<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="fact.aspx.cs" Inherits="cp_fact" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheets/dark-buttons.css" rel="stylesheet" type="text/css" />
    <link href="stylesheets/light-buttons.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">		
		
		<div id="contentHeader">
			<h1>فاکتور ها</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			
				
			<div class="grid-16" style="width: 97%;">
					
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
                                        <h3>فاکتور های صادر شده: </h3>
                                    </div>

                                    <div class="box_shadows" style="margin: 25px 0px;background-color: rgb(228, 228, 228);">
                                        <h2>فاکتور ها:</h2>
                                        



                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                            RightToLeft="True" Width="100%">
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="شماره" VisibleIndex="0" FieldName="id_fact">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="مبلغ کل" VisibleIndex="4" 
                                                    FieldName="amount">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="وضعیت" VisibleIndex="5" FieldName="state">
                                                    <CellStyle BackColor="#FFCC00">
                                                    </CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="شماره رسید بانک" VisibleIndex="6" 
                                                    FieldName="ref_num">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="تاریخ خرید" VisibleIndex="3" 
                                                    FieldName="date_fact">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="فامیل" VisibleIndex="2" FieldName="family">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="آدرس" VisibleIndex="7" FieldName="addr">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="تلفن" VisibleIndex="8" FieldName="tel">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="موبایل" VisibleIndex="9" FieldName="mobile">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="ایمیل" VisibleIndex="10" FieldName="email">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="نام" VisibleIndex="1" FieldName="name">
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                        </dx:ASPxGridView>

                                    </div>
                                    

                                    <div>
                                        <h3>شماره فاکتور را انتخاب نمایید:</h3>

                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>

                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">       
                                            <ContentTemplate>
                                                  <asp:DropDownList ID="ddl_no_fact" runat="server" Width="175" 
                                                        AutoPostBack="True" DataTextField="id_fact" DataValueField="id_fact" 
                                                        style="padding: 0;font-family: tahoma;direction: rtl;">
                                                  </asp:DropDownList>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <asp:Label ID="lbl_no_fact" runat="server"></asp:Label>
                                        <div style="text-align:center;">
                                            <asp:Button ID="btn_refresh" runat="server" Text="انتخاب" Font-Names="tahoma" 
                                                onclick="btn_refresh_Click" />
                                        </div>
                                    </div>


                                    <div style="border: 1px dashed;padding: 10px;">
                                        <h2>جزئیات فاکتور</h2>
                                        <div>

                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                RightToLeft="True" Width="100%">
                                                <Columns>
                                                    <dx:GridViewDataTextColumn Caption="شماره کالا" FieldName="id_stuff" 
                                                        VisibleIndex="0">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="نام کالا" FieldName="name_stuff" 
                                                        VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="تعداد" FieldName="no_stuff" 
                                                        VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="بهای کالا" FieldName="pay_one" 
                                                        VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                            </dx:ASPxGridView>


                                            <asp:PlaceHolder ID="Place_detail" runat="server"></asp:PlaceHolder>
                                        </div>
                                    </div>
                                    <label>* ثبت سفارشات از این قسمت انجام می شود.</label>

                                    <div style="text-align:left;margin-top: 5px;">
                                        <asp:Button ID="btn_Save" runat="server" class="common_font dark-2" 
                                            Text="ثبت سفارش" />
                                    </div>
								</div>
							</div> <!-- .field-group -->
						</div> <!-- .widget-content -->
					</div> <!-- .widget -->
				</form>
			</div> <!-- .grid -->

		</div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

