<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="cp_news" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		
		<div id="contentHeader">
			<h1>ورود اخبار</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			
				
			<div class="grid-16">
					
				<form class="form uniformForm">					
					
					<div class="widget">
						
						<div class="widget-header">
							<span class="icon-article"></span>
							<h3>عملیات سریع بر روی جدول اخبار</h3>
						</div> <!-- .widget-header -->
						
						<div class="widget-content" style="direction: rtl;">
						
							<div class="field-group">
                                
                                <label style="padding: 10px;">جدول اخبار:</label>
								<div class="field" style="margin-top: 25px;">
                                    
                                    

                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                        onafterperformcallback="ASPxGridView1_AfterPerformCallback" 
                                        onrowupdated="ASPxGridView1_RowUpdated" 
                                        onrowupdating="ASPxGridView1_RowUpdating" RightToLeft="True" Width="100%">
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="تیتر" FieldName="header" VisibleIndex="0">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="جزئیات" FieldName="detail" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn Caption="عملیات" VisibleIndex="6">
                                                <EditButton Text="ویرایش" Visible="True">
                                                </EditButton>
                                                <CancelButton Text="انصراف">
                                                </CancelButton>
                                                <UpdateButton Text="بروز رسانی">
                                                </UpdateButton>
                                            </dx:GridViewCommandColumn>
                                        </Columns>
                                    </dx:ASPxGridView>



                                    <label>* کلیه عملیات درج،حذف و ویرایش را از این قسمت می توانید انجام دهید.</label>
								</div>
							</div> <!-- .field-group -->
						</div> <!-- .widget-content -->
					</div> <!-- .widget -->
				</form>
			</div> <!-- .grid -->

            <div class="grid-7">
				<a href="news.aspx" class="btn btn-primary btn-xlarge block">بازخوانی اخبار</a>
				<a href="javascript:;" class="btn btn-tertiary btn-large block">ویرایش خبر از لیست اخبار</a>
			</div><!-- .grid -->

		</div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

