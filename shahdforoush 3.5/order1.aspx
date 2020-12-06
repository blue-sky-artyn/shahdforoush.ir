<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="order1.aspx.cs" Inherits="_order1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="css/buttons/dark-buttons.css" rel="stylesheet" type="text/css" />
   <link href="css/buttons/light-buttons.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- C O N T E N T -->
    <div class="content_wrapper">
    	<div class="container">
            <div class="content_block right-sidebar row">
                <div class="fl-container span9">
                	<div class="row">
                        <div class="posts-block span9">
                            <div class="contentarea">
                                <div class="row-fluid" style="margin-bottom: 15px;">
                                    <h4 class="headInModule common_div"><a name="anchor10"></a>محصولات</h4>
                                    <div class="span12 module_cont module_text_area margin0 common_div box_shadows" style="margin: 0;">
                                        <div style="margin-top: 25px;">

                                            <asp:PlaceHolder ID="Place_stuff" runat="server"></asp:PlaceHolder>
                                                                                    
                                            <br />
                                        </div>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid (sample divider) -->

                                <div class="row-fluid" style="margin-bottom: 15px;margin-top: 45px;">
                                    <h4 class="headInModule common_div"><a name="anchor10"></a>اضافه کردن به سبد خرید</h4>
                                    <div class="span12 module_cont module_text_area margin0 common_div box_shadows" style="margin: 0;">
                                        <div>
                                                <asp:TextBox ID="txt_code" placeholder="کد کالا را وارد کنید" runat="server" Font-Names="tahoma" Width="100" style="margin: 0;" Font-Size="9pt"></asp:TextBox>

                                                <span class="common_font" style="margin-right:35px;">تعداد: </span>
                                                <asp:DropDownList ID="ddl_no" runat="server" Width="55" style="margin: 0;margin-left:35px;">
                                                    <asp:ListItem  Text="1"  Value="1"  Selected="True" >   </asp:ListItem>
                                                    <asp:ListItem  Text="2"  Value="2">   </asp:ListItem>
                                                    <asp:ListItem  Text="3"  Value="3">   </asp:ListItem>
                                                    <asp:ListItem  Text="4"  Value="4">   </asp:ListItem>
                                                    <asp:ListItem  Text="5"  Value="5">   </asp:ListItem>
                                                    <asp:ListItem  Text="6"  Value="6">   </asp:ListItem>
                                                    <asp:ListItem  Text="7"  Value="7">   </asp:ListItem>
                                                    <asp:ListItem  Text="8"  Value="8">   </asp:ListItem>
                                                    <asp:ListItem  Text="9"  Value="9">   </asp:ListItem>
                                                    <asp:ListItem  Text="10"  Value="10">   </asp:ListItem>
                                                </asp:DropDownList>

                                                <asp:Button ID="btn_add" runat="server" class="dark-2" Text="اضافه به سبد" 
                                                    Font-Names="tahoma" Font-Bold="True" Width="110" Height="50" Font-Size="9pt" 
                                                    style="padding:0;margin-left:75px;" onclick="btn_add_Click1"/>

                                                <asp:PlaceHolder ID="Place_update" runat="server"></asp:PlaceHolder>
                                            <br />
                                        </div>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid (sample divider) -->
                                
                                
                            </div><!-- .contentarea -->
                        </div>
                        <div class="left-sidebar-block span3">
                            <!-- Left Sidebar Text -->
                        </div><!-- .left-sidebar -->
                    </div>
                    <div class="clear"><!-- ClearFix --></div>
                </div><!-- .fl-container -->
                <div class="right-sidebar-block span3">
                    <aside class="sidebar">
                        <div class="sidepanel widget_nav_menu">
                            <div class="span12 module_cont module_accordion" style="width: 100%;padding: 0;margin: 0;margin-top: 30px;direction: rtl;text-align: right;">
                                        <h4 class="headInModule" style="font-size: 11pt;"><a name="anchor1"></a>لیست کالا ها به همراه کد کالاها</h4>
                                        
                                        
                                        <%--<input type="text" name="field-name" title="Name" value="Placeholder text" onfocus="if(this.value=='Placeholder text')this.value='';"
                                                                   onblur="if(this.value=='')this.value='Placeholder text';" />--%>
                                        
                                        <div class="menu_highlight"><asp:LinkButton ID="LinkButton1" runat="server" 
                                                class="common_div" onclick="lnk_multi_Click" Font-Bold="False" 
                                                Font-Names="tahoma">عسل های چند گیاه</asp:LinkButton></div>
                                        <div class="menu_highlight"><asp:LinkButton ID="LinkButton2" runat="server" 
                                                class="common_div" onclick="lnk_250gr_Click" Font-Italic="False" 
                                                Font-Names="tahoma">عسل تک گل</asp:LinkButton></div>
                                        <div class="menu_highlight"><asp:LinkButton ID="LinkButton3" runat="server" 
                                                class="common_div" onclick="lnk_natural_Click" Font-Names="tahoma">همه محصولات</asp:LinkButton></div>
                            </div><!-- .module_cont -->
                        </div>                        
                    </aside>

                    <div class="common_div">
                        <h3>سبد خرید کالا</h3>

                        <div>
                            
                            <asp:Label ID="lbl_emplty" runat="server" Text="لیست خالی است" Font-Names="tahoma" Font-Bold="True" Font-Italic="True" CssClass="common_font"></asp:Label>

                            <asp:PlaceHolder ID="Place_bascket" runat="server"></asp:PlaceHolder>

                            <div style="text-align:center;">
                                <asp:Button ID="btn_goto" runat="server" class="common_font dark-4" Text="ثبت نهایی خرید" onclick="btn_goto_Click"/>
                            </div>
                        </div>
                    </div>

                    <div class="common_div" style="margin-top:35px;">
                        <p class="common_font" style="color:Red;text-align:center;">در شهرستان ها تحویل کالا بعد از تصویه حساب می باشد.</p>
                    </div>

                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>


