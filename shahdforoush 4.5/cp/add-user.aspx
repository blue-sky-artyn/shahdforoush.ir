<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="add-user.aspx.cs" Inherits="cp_add_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheets/sample_pages/stream.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">		
		
		<div id="contentHeader">
			<h1>تایید کاربران جهت عضویت</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			<div class="row">
				<div class="grid-25">
					<div id="activityStreamForm">	
                    	<div id="activityStreamFormActions">
							<div class="streamTypes">
								تکمیل فرم ثبت نام:
								<a href="javascript:;" class="streamType streamTypeFile tooltip" title="اضافه کردن کلمه عبور">Files</a>
								<a href="javascript:;" class="streamType streamTypeLink tooltip" title="اضافه کردن به لیست">Link</a>
								<a href="javascript:;" class="streamType streamTypePoll tooltip" title="ارسال ایمیل">Poll</a>
							</div>

							<div class="streamShare">

							</div>
						</div>

						<div class="clear"></div>
					</div>

					<div class="activityStreamRow">
                        <div style="text-align: center;color: red;text-shadow: gray 1px 1px 3px;">
                             <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
                        </div>

						<table class="activityTable" style="direction: rtl;text-align: right;">
                            <tr>
								<td class="activityStreamAvatarTd">
                                    <asp:Image ID="img1" runat="server" ImageUrl="~/Controlpanel/images/stream/defaultavatar_small.png" alt="Profile"/>
								</td>

								<td class="tdDetails">
                                    <asp:Label ID="lbl_header_a1" runat="server" Text=""><p class="activityStreamWho" style="margin-bottom: 20px;"><a><asp:Label ID="lbl_name1" runat="server" Text="عباس گرایی"></asp:Label></a> درخواست عضویت در سایت را کرده است <a>آیا مایل به ثبت نام ایشان هستید؟</a></p></asp:Label>
									
									<br /><br /><br />
                                    
                                    <asp:Label ID="lbl_header_a2" runat="server" Text=""><a>مشخصات ایشان:</a></asp:Label>
                                    
                                    <p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a1" runat="server" Text="تاریخ تولد: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_birthdate1" runat="server" Text="1363/04/16"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a2" runat="server" Text="مدرک تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_madreak1" runat="server" Text="لیسانس"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a3" runat="server" Text="رشته تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_reshte1" runat="server" Text="نرم افزار"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a4" runat="server" Text="تاریخ اخذ مدرک: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_datemadrak1" runat="server" Text="1387/08/01"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a5" runat="server" Text="تلفن: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_tel1" runat="server" Text="09155133592"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a6" runat="server" Text="ایمیل: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_email1" runat="server" Text="i8net2000@yahoo.com"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_a7" runat="server" Text="آدرس: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_addr1" runat="server" Text="مشهد-بلوار وکیل آباد-بلوار آب و برق"></asp:Label>
                                    </p>

                                    <p style="text-shadow: gray 1px 1px 3px;color: red;text-align: center;">
                                        <asp:Label ID="lbl_ctrl_a8" runat="server" Text="کلمه عبور: " ForeColor="red"></asp:Label>
                                        <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
                                    </p>

									<div class="activityStreamActions" style="text-align: left;">
                                        <asp:Label ID="lbl_msg1" runat="server" 
                                            Text="عملیات ذخیره سازی با موفقیت انجام شد." Visible="False"></asp:Label>
                                        <asp:Button class="btn btn-small btn-primary" ID="btn_save1" runat="server" 
                                            Text="ذخیره" style="width: 70px;font-family: tahoma;" onclick="btn_save1_Click" 
                                            Height="32px"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_send1" runat="server" 
                                            Text="ارسال" 
                                            style="width: 70px;font-family: tahoma;height: 32px; top: 0px; right: 0px;" 
                                            onclick="btn_send1_Click" Enabled="False"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_cancel1" runat="server" Text="عدم تایید" style="width: 70px;font-family: tahoma;height: 32px;" onclick="btn_cancel1_Click"/>
									</div>
								</td>						
							</tr>						

                            <tr>
								<td class="activityStreamAvatarTd">
                                    <asp:Image ID="img2" runat="server" ImageUrl="~/Controlpanel/images/stream/defaultavatar_small.png" alt="Profile"/>
								</td>

								<td class="tdDetails">
                                    <asp:Label ID="lbl_header_b1" runat="server" Text=""><p class="activityStreamWho" style="margin-bottom: 20px;"><a><asp:Label ID="lbl_name2" runat="server" Text="عباس گرایی"></asp:Label></a> درخواست عضویت در سایت را کرده است <a>آیا مایل به ثبت نام ایشان هستید؟</a></p></asp:Label>
									<br /><br /><br />
                                    <asp:Label ID="lbl_header_b2" runat="server" Text=""><a>مشخصات ایشان:</a></asp:Label>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b1" runat="server" Text="تاریخ تولد: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_bithdatte2" runat="server" Text="1363/04/16"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b2" runat="server" Text="مدرک تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_madrak2" runat="server" Text="لیسانس"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b3" runat="server" Text="رشته تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_reshte2" runat="server" Text="نرم افزار"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b4" runat="server" Text="تاریخ اخذ مدرک: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_datemadrak2" runat="server" Text="1387/08/01"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b5" runat="server" Text="تلفن: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_tel2" runat="server" Text="09155133592"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b6" runat="server" Text="ایمیل: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_email2" runat="server" Text="i8net2000@yahoo.com"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_b7" runat="server" Text="آدرس: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_addr2" runat="server" Text="مشهد-بلوار وکیل آباد-بلوار آب و برق"></asp:Label>
                                    </p>

                                    <p style="text-shadow: gray 1px 1px 3px;color: red;text-align: center;">
                                        <asp:Label ID="lbl_ctrl_b8" runat="server" Text="کلمه عبور: " ForeColor="red"></asp:Label>
                                        <asp:TextBox ID="txt_pass2" runat="server"></asp:TextBox>
                                    </p>

									<div class="activityStreamActions" style="text-align: left;">
                                        <asp:Label ID="lbl_msg2" runat="server" 
                                            Text="عملیات ذخیره سازی با موفقیت انجام شد." Visible="False"></asp:Label>
                                        <asp:Button class="btn btn-small btn-primary" ID="btn_save2" runat="server" Text="ذخیره" style="width: 70px;font-family: tahoma;height: 32px;" onclick="btn_save2_Click"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_send2" runat="server" 
                                            Text="ارسال" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_send2_Click" Enabled="False"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_cancel2" runat="server" Text="عدم تایید" style="width: 70px;font-family: tahoma;height: 32px;" onclick="btn_cancel2_Click"/>
									</div>
								</td>						
							</tr>						

                            <tr>
								<td class="activityStreamAvatarTd">
                                    <asp:Image ID="img3" runat="server" ImageUrl="~/Controlpanel/images/stream/defaultavatar_small.png" alt="Profile"/>
								</td>

								<td class="tdDetails">
                                    <asp:Label ID="lbl_header_c1" runat="server" Text=""><p class="activityStreamWho" style="margin-bottom: 20px;"><a><asp:Label ID="lbl_name3" runat="server" Text="عباس گرایی"></asp:Label></a> درخواست عضویت در سایت را کرده است <a>آیا مایل به ثبت نام ایشان هستید؟</a></p></asp:Label>
									<br /><br /><br />
                                    <asp:Label ID="lbl_heaer_c2" runat="server" Text=""><a>مشخصات ایشان:</a></asp:Label>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c1" runat="server" Text="تاریخ تولد: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_birthdate3" runat="server" Text="1363/04/16"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c2" runat="server" Text="مدرک تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_madrak3" runat="server" Text="لیسانس"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c3" runat="server" Text="رشته تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_reshte3" runat="server" Text="نرم افزار"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c4" runat="server" Text="تاریخ اخذ مدرک: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_datemadrak3" runat="server" Text="1387/08/01"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c5" runat="server" Text="تلفن: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_tel3" runat="server" Text="09155133592"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c6" runat="server" Text="ایمیل: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_email3" runat="server" Text="i8net2000@yahoo.com"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_c7" runat="server" Text="آدرس: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_addr3" runat="server" Text="مشهد-بلوار وکیل آباد-بلوار آب و برق"></asp:Label>
                                    </p>

                                    <p style="text-shadow: gray 1px 1px 3px;color: red;text-align: center;">
                                        <asp:Label ID="lbl_ctrl_c8" runat="server" Text="کلمه عبور: " ForeColor="red"></asp:Label>
                                        <asp:TextBox ID="txt_pass3" runat="server"></asp:TextBox>
                                    </p>

									<div class="activityStreamActions" style="text-align: left;">
                                        <asp:Label ID="lbl_msg3" runat="server" 
                                            Text="عملیات ذخیره سازی با موفقیت انجام شد." Visible="False"></asp:Label>
                                        <asp:Button class="btn btn-small btn-primary" ID="btn_save3" runat="server" 
                                            Text="ذخیره" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_save3_Click"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_send3" runat="server" 
                                            Text="ارسال" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_send3_Click" Enabled="False"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_cancel3" runat="server" 
                                            Text="عدم تایید" style="width: 70px;font-family: tahoma;height: 32px; top: 0px; right: 0px;" 
                                            onclick="btn_cancel3_Click"/>
									</div>
								</td>						
							</tr>						

                            <tr>
								<td class="activityStreamAvatarTd">
                                    <asp:Image ID="img4" runat="server" ImageUrl="~/Controlpanel/images/stream/defaultavatar_small.png" alt="Profile"/>
								</td>

								<td class="tdDetails">
                                    <asp:Label ID="lbl_header_d1" runat="server" Text=""><p class="activityStreamWho" style="margin-bottom: 20px;"><a><asp:Label ID="lbl_name4" runat="server" Text="عباس گرایی"></asp:Label></a> درخواست عضویت در سایت را کرده است <a>آیا مایل به ثبت نام ایشان هستید؟</a></p></asp:Label>
									<br /><br /><br />
                                    <asp:Label ID="lbl_header_d2" runat="server" Text=""><a>مشخصات ایشان:</a></asp:Label>

                                    <p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d1" runat="server" Text="تاریخ تولد: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_birthdate4" runat="server" Text="1363/04/16"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d2" runat="server" Text="مدرک تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_madrak4" runat="server" Text="لیسانس"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d3" runat="server" Text="رشته تحصیلی: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_reshte4" runat="server" Text="نرم افزار"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d4" runat="server" Text="تاریخ اخذ مدرک: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_datemadrak4" runat="server" Text="1387/08/01"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d5" runat="server" Text="تلفن: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_tel4" runat="server" Text="09155133592"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d6" runat="server" Text="ایمیل: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_email4" runat="server" Text="i8net2000@yahoo.com"></asp:Label>
                                    </p>

									<p class="streamAnswer">
                                        <asp:Label ID="lbl_ctrl_d7" runat="server" Text="آدرس: " ForeColor="#0066CC"></asp:Label>
                                        <asp:Label ID="lbl_addr4" runat="server" Text="مشهد-بلوار وکیل آباد-بلوار آب و برق"></asp:Label>
                                    </p>

                                    <p style="text-shadow: gray 1px 1px 3px;color: red;text-align: center;">
                                        <asp:Label ID="lbl_ctrl_d8" runat="server" Text="کلمه عبور: " ForeColor="red"></asp:Label>
                                        <asp:TextBox ID="txt_pass4" runat="server"></asp:TextBox>
                                    </p>

									<div class="activityStreamActions" style="text-align: left;">
                                        <asp:Label ID="lbl_msg4" runat="server" 
                                            Text="عملیات ذخیره سازی با موفقیت انجام شد." Visible="False"></asp:Label>
                                        <asp:Button class="btn btn-small btn-primary" ID="btn_save4" runat="server" 
                                            Text="ذخیره" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_save4_Click"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_send4" runat="server" 
                                            Text="ارسال" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_send4_Click" Enabled="False"/>
                                        <asp:Button class="btn btn-tertiary btn-small" ID="btn_cancel4" runat="server" 
                                            Text="عدم تایید" style="width: 70px;font-family: tahoma;height: 32px;" 
                                            onclick="btn_cancel4_Click"/>
									</div>
								</td>						
							</tr>						
						</table>
					</div> <!-- .activityStreamRow -->
				</div>								

				<div class="grid-8">
					<div id="gettingStarted" class="box" style="direction: rtl;padding-right: 20px;">
						<h3>شروع کارثبت نام اعضادرسایت</h3>

						<p>پس از مشاهده مشخصات اعضاء</p>

						<div class="progress-bar secondary">
							<div class="bar" style="width: 42%;font-size: 60px;">42%</div>
						</div>

						<ul>
							<li><a>ابتدا برای کاربر یک کلمه عبور تعیید کنید</a></li>
							<li><a>بر روی تایید کلیک کنید</a></li>
							<li><a>ارسال مشخصات را کلیک کنید</a></li>
							<li><a>مشخصات کاربری برای ورود به سایت برای کاربر ایمیل شد</a></li>
						</ul>
					</div>

					<br />

					<h3 style="direction:rtl;">لیست انتظار برای ثبت نام...</h3>

					<ul class="projectMembersList">
					<li><a href="javascript:;" class="tooltip" title="فرهاد طاهری"><img src="images/stream/defaultavatar_small.png" class="projectMember" alt="Profile" /></a></li>
					<li><a href="javascript:;" class="tooltip" title="فرهاد طاهری"><img src="images/stream/defaultavatar_small.png" class="projectMember" alt="Profile" /></a></li>
					<li><a href="javascript:;" class="tooltip" title="فرهاد طاهری"><img src="images/stream/defaultavatar_small.png" class="projectMember" alt="Profile" /></a></li>
					<li><a href="javascript:;" class="tooltip" title="فرهاد طاهری"><img src="images/stream/defaultavatar_small.png" class="projectMember" alt="Profile" /></a></li>
					<li><a href="javascript:;" class="tooltip" title="فرهاد طاهری"><img src="images/stream/defaultavatar_small.png" class="projectMember" alt="Profile" /></a></li>
					<li><a href="javascript:;" class="tooltip" title="فرهاد طاهری"><img src="images/stream/defaultavatar_small.png" class="projectMember" alt="Profile" /></a></li>
					
					</ul>
					<br />
					<br /><br /><br />
				</div>

			</div> <!-- .row -->
			
		</div> <!-- .container -->
		
</div> <!-- #content -->
</asp:Content>

