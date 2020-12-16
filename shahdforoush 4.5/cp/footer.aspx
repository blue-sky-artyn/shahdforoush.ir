<%@ Page Title="" Language="C#" MasterPageFile="~/cp/master.master" AutoEventWireup="true" CodeFile="footer.aspx.cs" Inherits="cp_footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="content">		
		
		<div id="contentHeader">
			<h1>ورود اطلاعات پایین صفحه</h1>
		</div> <!-- #contentHeader -->	
		
		<div class="container">
			
				
			<div class="grid-16">
					
				<form class="form uniformForm">					
					
					<div class="widget">
						
						<div class="widget-header">
							<span class="icon-article"></span>
							<h3>عملیات سریع بر روی اطلاعات پایین صفحه</h3>
						</div> <!-- .widget-header -->
						
						<div class="widget-content" style="direction: rtl;">
						
							<div class="field-group">
                                
                                <label style="padding: 10px;">جدول اطلاعات:</label>
								<div class="field" style="margin-top: 25px;">
                                    
                                    

                                    


                                    





                                    <div>
                                        <asp:Label ID="Label1" runat="server" Text="ستون اول"></asp:Label>
                                        <asp:TextBox ID="txt_titr1" runat="server" TextMode="MultiLine" placeholder="تیتر"></asp:TextBox>
                                        <asp:TextBox ID="txt_detail1" runat="server" Width="53%" TextMode="MultiLine" placeholder="متن"></asp:TextBox>
                                        <asp:Button ID="btn1" runat="server" Text="ذخیره" onclick="btn1_Click" />
                                    </div>

                                    <div>
                                        <asp:Label ID="Label2" runat="server" Text="ستون دوم"></asp:Label>
                                        <asp:TextBox ID="txt_titr2" runat="server" TextMode="MultiLine" placeholder="تیتر"></asp:TextBox>
                                        <asp:TextBox ID="txt_detail2" runat="server" Width="53%" TextMode="MultiLine" placeholder="متن"></asp:TextBox>
                                        <asp:Button ID="btn2" runat="server" Text="ذخیره" />
                                    </div>

                                    <div>
                                        <asp:Label ID="Label3" runat="server" Text="ستون سوم"></asp:Label>
                                        <asp:TextBox ID="txt_titr3" runat="server" TextMode="MultiLine" placeholder="تیتر"></asp:TextBox>
                                        <asp:TextBox ID="txt_detail3" runat="server" Width="53%" TextMode="MultiLine" placeholder="متن"></asp:TextBox>
                                        <asp:Button ID="btn3" runat="server" Text="ذخیره" />
                                    </div>


                                    <div>
                                        <asp:Label ID="Label4" runat="server" Text="ستون چهارم"></asp:Label>
                                        <asp:TextBox ID="txt_titr4" runat="server" TextMode="MultiLine" placeholder="تیتر"></asp:TextBox>
                                        <asp:TextBox ID="txt_detail4" runat="server" Width="53%" TextMode="MultiLine" placeholder="متن"></asp:TextBox>
                                        <asp:Button ID="btn4" runat="server" Text="ذخیره" />
                                    </div>

                                    <div>
                                        <asp:Label ID="Label5" runat="server" Text="ستون پنجم"></asp:Label>
                                        <asp:TextBox ID="txt_titr5" runat="server" TextMode="MultiLine" placeholder="تیتر"></asp:TextBox>
                                        <asp:TextBox ID="txt_detail5" runat="server" Width="53%" TextMode="MultiLine" placeholder="متن"></asp:TextBox>
                                        <asp:Button ID="btn5" runat="server" Text="ذخیره" />
                                    </div>

                                    <div>
                                        <asp:Label ID="Label6" runat="server" Text="ستون ششم"></asp:Label>
                                        <asp:TextBox ID="txt_titr6" runat="server" TextMode="MultiLine" placeholder="تیتر"></asp:TextBox>
                                        <asp:TextBox ID="txt_detail6" runat="server" Width="53%" TextMode="MultiLine" placeholder="متن"></asp:TextBox>
                                        <asp:Button ID="btn6" runat="server" Text="ذخیره" />
                                    </div>



                                    


                                    <br />
                                    <label>* کلیه عملیات درج،حذف و ویرایش را از این قسمت می توانید انجام دهید.</label>
								</div>
							</div> <!-- .field-group -->
						</div> <!-- .widget-content -->
					</div> <!-- .widget -->
				</form>
			</div> <!-- .grid -->

            <div class="grid-7">
				<a href="news.aspx" class="btn btn-primary btn-xlarge block">بازخوانی اطلاعات</a>
				<a href="javascript:;" class="btn btn-tertiary btn-large block">ویرایش اطلاعات از لیست پایینی</a>
			</div><!-- .grid -->

		</div> <!-- .container -->
</div> <!-- #content -->

</asp:Content>

