<%@ Page Title="فاکتور صادر شده" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="layout/js/basket.js" type="text/javascript"></script>
    <link href="css/buttons/dark-buttons.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .tal {text-align: left;}
        .common_font {font-family:Tahoma;}
        .common_div {direction:rtl;text-align:right;}
    </style>

    <script language="javascript" type="text/javascript">
        function postRefId(refIdValue) {
            var form = document.createElement("form");
            form.setAttribute("method", "POST");
            form.setAttribute("action", "https://pgw.bpm.bankmellat.ir/pgwchannel/startpay.mellat");
            form.setAttribute("target", "_self");
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("name", "RefId");
            hiddenField.setAttribute("value", refIdValue);
            form.appendChild(hiddenField);
            document.body.appendChild(form);
            form.submit();
            document.body.removeChild(form);
        }
    </script>

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
                              
                                <div class="row-fluid">
                                    <div class="span12 module_cont module_text_area">
                                        <h4 class="headInModule" style="text-align: right;"><a name="anchor14"></a>فاکتور</h4>
                                        <p id="invoice_box" runat="server" style="direction:rtl;text-align:right;">   <!-- show fact -->   </p>

                                            <%--<asp:Button ID="btnPay" runat="server" Text="ثبت سفارش" class="dark-2 common_font common_div" onclick="btnPay_Click"/>--%>
                                            <%--<button type="button" class="dark-2 common_font common_div" onclick="deleteAllCookies();" href="Default.aspx" >ثبت سفارش</button>--%>
                                            <div id="btn" runat="server" ></div>
                                        <br />
                                        <br />
                                        <br />
                                        <p style="text-align:right;">
                                            <asp:Label ID="lbl_msg" runat="server" Text="" Font-Bold="True" Font-Names="tahoma" ForeColor="Red"></asp:Label>
                                        </p>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid -->

                                <div class="row-fluid">
                                    <div class="span12 module_cont module_price_table">
                                        <h4 class="headInModule" style="text-align:right;"><a name="anchor18"></a>جداول مقایسه قیمتی</h4>
                                        <div class="price_item" style="width:25%">
                                            <div class="price_item_wrapper">
                                                <div class="price_item_title"><h2>خرید بالای بیش 10م</h2></div>
                                                <div class="price_item_cost"><h1><span>%&nbsp;</span>3<span>/از کل</span></h1></div>
                                                <div class="price_item_text" style="font-family:Tahoma;">در صورت خرید اینترنتی</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">در صورت داشتن کپن</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">هر 10 بار خرید</div>
                                                <div class="price_item_btn"><a name="sale" style="cursor: default;">www.shahdforoush.ir</a></div>
                                            </div>
                                        </div>
                                        <div class="price_item most_popular" style="width:25%">
                                            <div class="price_item_wrapper">
                                                <div class="price_item_title" style="background-color: rgb(223, 223, 223);"><h2>مبلغ قابل پرداخت</h2></div>
                                                <div class="price_item_cost"><h1><span id="sum_pay_show" runat="server" > <!-- show sum pay --> </span></h1></div>
                                                <div class="price_item_text" style="font-family:Tahoma;">هزینه های دیگر</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">هزینه ایاب و ذهاب</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">مالیات بر ارزش افزوده</div>
                                                <div class="price_item_btn"><a href="#">www.shahdforoush.ir</a></div>
                                            </div>
                                        </div>
                                        <div class="price_item" style="width:25%">
                                            <div class="price_item_wrapper">
                                                <div class="price_item_title"><h2>قیمت های همکاری</h2></div>
                                                <div class="price_item_cost"><h1><span>%&nbsp;</span>1.5<span>/از کل</span></h1></div>
                                                <div class="price_item_text" style="font-family:Tahoma;">افتتاح فروش اینترنتی</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">برای همکاران</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">برای بنکداران</div>
                                                <div class="price_item_btn"><a style="cursor: default;">www.shahdforoush.ir</a></div>
                                            </div>
                                        </div>
                                        <%--<div class="price_item" style="width:25%">
                                            <div class="price_item_wrapper">
                                                <div class="price_item_title"><h2>تخفیف های دوره ای</h2></div>
                                                <div class="price_item_cost"><h1><span>%&nbsp;</span>5<span>/از کل</span></h1></div>
                                                <div class="price_item_text" style="font-family:Tahoma;">به مناسبت عید قدیر</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">به مناسبت عید قربان</div>
                                                <div class="price_item_text" style="font-family:Tahoma;">به مناسبت عید نوروز</div>
                                                <div class="price_item_btn"><a style="cursor: default;">www.shahdforoush.ir</a></div>
                                            </div>
                                        </div>--%>
                                    </div><!-- .module_cont -->
								</div><!-- .row-fluid -->

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
                            <ul class="menu">
                                <li class="menu-item"><a href="#Save">پرداخت اینترنتی</a></li>
                                <li class="menu-item"><a href="#sale">تخفیف ها</a></li>
                                <li class="menu-item"><a href="#detail">توضیحات فروش</a></li>
                            </ul>
                        </div>                        
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
    <div class="pre_footer">
    	<div class="container">
            <aside id="footer_bar" class="row">
            	<div class="span3" style="width: 45%;">
                    <div class="sidepanel widget_about">
	                	<h4 class="sidebar_header" style="color:whitesmoke;">درباره شرکت</h4>
                        <img src="img/portfolio/portfolio7.jpg" width="88" height="88" class="alignleft" />
                        <p>پشتوانه خرید اینترنتی :</p>
                        <p>درگاه خرید آنلاین بانک ملت است.</p>
                        <span class="signature">مدیریت سایت فروش عسل حکیم باشی</span>
                    </div>
                </div>
            	<div class="span3" style="width: 45%;">
                    <div class="sidepanel widget_posts">
                        <h4 class="sidebar_header" style="color:whitesmoke;">سوابق فعالیت ها: </h4>
                        <ul class="recent_posts">
                            <li>
                                <div class="img_wrapper">
                                    <img src="img/portfolio/portfolio6.jpg" width="88" height="88" class="alignleft" />
                                </div>
                                <div class="recent_posts_content">
                                    <span class="post_date">فروش گاه ها</span>
                                    <p>فروش عسل حکیم باشی فراگیر به تمام فروشگاه های سطح کشور شده است</p>
                                    <span class="read_more"><a name="detail" href="#">جزئیات...</a></span>
                                </div>
                            </li>
                            <li>
                                <div class="img_wrapper">
                                    <img src="img/portfolio/portfolio5.jpg" width="88" height="88" class="alignleft" />
                                </div>
                                <div class="recent_posts_content">
                                    <span class="post_date">بنک داری</span>
                                    <p>عسل حکیم باشی از سراسر کشور نماینده فروش می پذیرد</p>
                                    <span class="read_more"><a href="#">جزئیات...</a></span>
                                </div>
                            </li>
                        </ul>
                    </div><!-- .sidepanel -->
                </div>
            	
            	
            </aside>
        </div>
    </div>
</asp:Content>

