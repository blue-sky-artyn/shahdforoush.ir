<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="stuff.aspx.cs" Inherits="cp_stuff" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		
		<div id="contentHeader">
			<h1>ورود اجناس</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			
				
			<div class="grid-16">
					
				<form class="form uniformForm">					
					
					<div class="widget">
						
						<div class="widget-header">
							<span class="icon-article"></span>
							<h3>عملیات سریع بر روی جدول اجناس</h3>
						</div> <!-- .widget-header -->
						
						<div class="widget-content" style="direction: rtl;">
						
							<div class="field-group">
                                
                                <label style="padding: 10px;">جدول اجناس:</label>
								<div class="field" style="margin-top: 25px;">
                                    
                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                        Width="100%" onafterperformcallback="ASPxGridView1_AfterPerformCallback" 
                                        onrowdeleting="ASPxGridView1_RowDeleting" 
                                        onrowinserting="ASPxGridView1_RowInserting" 
                                        onrowupdating="ASPxGridView1_RowUpdating">
                                        <Columns>
                                            <dx:GridViewCommandColumn Caption="عملیات" VisibleIndex="5">
                                                <EditButton Text="ویرایش" Visible="True">
                                                </EditButton>
                                                <NewButton Text="جدید" Visible="True">
                                                </NewButton>
                                                <DeleteButton Text="حذف" Visible="True">
                                                </DeleteButton>
                                                <SelectButton Text="انتخاب">
                                                </SelectButton>
                                                <CancelButton Text="انصراف">
                                                </CancelButton>
                                                <UpdateButton Text="بروز رسانی">
                                                </UpdateButton>
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn Caption="دسته بندی" FieldName="grp_stuff" 
                                                VisibleIndex="0">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="تیتر نمایش" FieldName="title_prof" 
                                                VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="جزئیات" FieldName="detail" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="کد جنس" FieldName="code_stuff" 
                                                VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="قیمت جنس" FieldName="pic_addr" 
                                                VisibleIndex="4">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                    </dx:ASPxGridView>

                                    <label>* کلیه عملیات درج،حذف و ویرایش را از این قسمت می توانید انجام دهید.</label>
								</div>
							</div> <!-- .field-group -->
						</div> <!-- .widget-content -->
					</div> <!-- .widget -->
				</form>
			</div> <!-- .grid -->

            <div class="grid-7" style="text-align:right;">
				<p>کد 1 برای عسل های چند گیاه</p>
				<p>کد 2 برای عسل های تک گل</p>
			</div><!-- .grid -->

		</div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

