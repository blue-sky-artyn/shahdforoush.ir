<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="del-user.aspx.cs" Inherits="cp_del_user" %>

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

					<div class="activityStreamRow" style="direction:rtl;">
						<table class="activityTable" style="direction: rtl;text-align: right;">

							<tr style="height: auto;">
								<td class="activityStreamAvatarTd" style="width:5px;padding-bottom:50px;">

								</td>
								
                                <td class="tdDetails" style="line-height: 30px;text-align: right;width: 12%;">
                                    
                                    <%-- فلید های مورد جستجو --%>
                                    
                                    <asp:Label ID="Label1" runat="server" Text="کد عضویت:"></asp:Label>
                                    <br />

                                    <asp:Label ID="Label4" runat="server" Text="ایمیل:"></asp:Label>
                                   
								</td>
                                
                                <td style="padding-bottom: 15px;">

                                    <asp:DropDownList ID="cb_code" DataTextField="id" DataValueField="id" 
                                        AutoPostBack="True"   runat="server" Width="70" 
                                        onselectedindexchanged="cb_code_SelectedIndexChanged">
                                    </asp:DropDownList><br />

                                    <br />

                                    <br />

                                    <asp:DropDownList ID="cb_email"  DataTextField="Email" DataValueField="id" 
                                        AutoPostBack="True" runat="server" Width="155" 
                                        onselectedindexchanged="cb_email_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>							

							</tr>						

                            <tr style="height: 300px;">
								<td class="activityStreamAvatarTd">
                                    <asp:Image ID="img2" runat="server" ImageUrl="~/cp/images/stream/defaultavatar_small.png" alt="Profile"/>
								</td>

								<td colspan="2" class="tdDetails" style="width: 90%;">
                                    <asp:Label ID="lbl_header_b1" runat="server" Text=""><p class="activityStreamWho" style="margin-bottom: 20px;"><a><asp:Label ID="lbl_name2" runat="server" Text="آقای نامشخص"></asp:Label></a> با مشخصات ذیل <a>آیا مایل به لغو ثبت نام ایشان هستید؟</a></p></asp:Label><br /><br /><br />
									<br /><br /><br />
                                    <asp:Label ID="lbl_header_b2" runat="server" Text=""><a>مشخصات ایشان:</a></asp:Label>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b1" runat="server" Text="تاریخ تولد: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_bithdatte2" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b2" runat="server" Text="مدرک تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_madrak2" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b3" runat="server" Text="رشته تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_reshte2" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b4" runat="server" Text="کلمه عبور:" 
                                            ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_pass" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b5" runat="server" Text="تلفن: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_tel2" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b6" runat="server" Text="ایمیل: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_email2" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b7" runat="server" Text="آدرس: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_addr2" runat="server" Text="نا مشخص"></asp:Label>
                                    </p>

									<div class="activityStreamActions" style="text-align: left;">
                                        <asp:Label ID="lbl_msg2" runat="server" Text="عملیات حذف با موفقیت انجام شد" 
                                            Visible="False"></asp:Label>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_cancel2" runat="server" 
                                            Text="عدم تایید" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_cancel2_Click"/>
									</div>
								</td>						
							</tr>						
						</table>
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

