<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="cp_faq" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="stylesheets/sample_pages/stream.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		
		<div id="contentHeader">
			<h1>لغو عضویت کاربران</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			<div class="row">
				<div class="grid-25">
					<div id="activityStreamForm">	
                    	<div id="activityStreamFormActions">
							<div class="streamTypes">
								جستجو بر اساس فیلد:
								<a href="javascript:;" class="streamType streamTypeFile tooltip" title="اضافه کردن کلمه عبور">Files</a>
								<a href="javascript:;" class="streamType streamTypeLink tooltip" title="اضافه کردن به لیست">Link</a>
								<a href="javascript:;" class="streamType streamTypePoll tooltip" title="ارسال ایمیل">Poll</a>
							</div>

							<div class="streamShare">

							</div>
						</div>

						<div class="clear"></div>
					</div>

					<div style="direction:rtl;">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                            onafterperformcallback="ASPxGridView1_AfterPerformCallback" 
                            onrowdeleting="ASPxGridView1_RowDeleting" 
                            onrowinserting="ASPxGridView1_RowInserting" 
                            onrowupdating="ASPxGridView1_RowUpdating">
                            <Columns>
                                <dx:GridViewCommandColumn Caption="عملیات" VisibleIndex="6">
                                    <EditButton Text=" ویرایش " Visible="True">
                                    </EditButton>
                                    <NewButton Text=" جدید " Visible="True">
                                    </NewButton>
                                    <DeleteButton Text=" حذف" Visible="True">
                                    </DeleteButton>
                                    <SelectButton Text=" انتخاب ">
                                    </SelectButton>
                                    <CancelButton Text=" انصراف ">
                                    </CancelButton>
                                    <UpdateButton Text=" بروز رسانی ">
                                    </UpdateButton>
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn Caption="سوالات" FieldName="question" 
                                    VisibleIndex="3" Width="277px">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="پاسخ ها" FieldName="answer" 
                                    VisibleIndex="4" Width="678px">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
					</div> <!-- .activityStreamRow -->
				</div>								

				<div class="grid-8">
					<div id="gettingStarted" class="box" style="direction: rtl;padding-right: 20px;">
						<h3>لغو عضویت یا ارسال مجدد مشخصات کاربری</h3>

						<p>پس از مشاهده مشخصات اعضاء</p>

						<div class="progress-bar secondary">
							<div class="bar" style="width: 42%;font-size: 60px;">42%</div>
						</div>

						<ul>
							
						</ul>
					</div>
				</div>
			</div> <!-- .row -->
		</div> <!-- .container -->
</div> <!-- #content -->
</asp:Content>

