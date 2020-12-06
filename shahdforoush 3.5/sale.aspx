<%@ Page Title="فروش دارو" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="sale.aspx.cs" Inherits="sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="layout/js/basket.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          

        <div class="block_title">
          <h1>خرید</h1>
        </div>
        
        <div class="block_breadcrumbs">
          <ul>
            <li class="common_font"><a href="Default.aspx">صفحه نخست</a></li>
            <li class="common_font">خرید دارو و کالا از بورس</li>
          </ul>
        </div>
        <div class="line_2"></div>

        <div class="content_main">
          <div>
            <h6 style="margin-top:5px;">راهنمای خرید از بورس</h6>
            <blockquote>
                1- ابتدا باید در سایت <a href="admin/sign-up.aspx" style="color:Red;" >ثبت نام</a> نمایید،یا در صورتیکه که قبلا ثبت نام کرده اید به سایت <a href="admin/sign-in.aspx" style="color:Red;">وارد</a> شوید.<br />
                2- در مرحله بعد تعداد داروی مورد نظر را وارد نماییدو بروی کلید <span style="color:Red;">< اضافه به لیست خرید > </span>کلیک نمایید تا به سبد خرید کالا اضافه شود.<br />
                3- در صورتی که گروه دارویی مورد نظرتان را پیدا نکردید می توانید آنرا <a href="search.aspx" style="color:Red;">جستجو</a> کنید.<br />
                4- در انتها بر روی لینک <span style="color:Red;">تعداد محصول</span> در سبد کلیک کنید تا به مرحله بعد هدایت شوید.
                5- قیمت اعلام شده بدون هزینه ارسال می باشد.
            </blockquote>
          </div>

          <article class="block_text w_icon first">
            <div class="title">
              <div class="icon_wrapper"><div class="icon icon_14"></div></div>
              <h1>لیست داروها و کالاهای بورس</h1>
              
              <div class="clearboth"></div>
            </div>
            <div class="line_1"></div>
            
              

            <div class="content">
              

              <div class="block_accordeon" id="block_accordeon" runat="server">

            <%--<div class="button_outer"><div class="button_inner" runat="server" id="button_inner">قرص ها</div></div><!-- accordeon trigger -->
                <div class="accordeon_content">
                  <!-- accordeon content goes here -->
                  <p class="cover">
                    <span class="pic alignright">
                      <a href="#" class="pic r_coner"><img src="images/drug.jpg" alt=""></a>
                    </span> 
                    قرص های ضد عفونی کننده<br /><br />
                    <a href="#" class="general_button type_3 add2basket" data-product-id="1" >اضافه به لیست خرید</a>
                  </p>
                </div>--%>
                
                <%--<div class="button_outer"><div class="button_inner">ویتامین ها</div></div><!-- accordeon trigger -->
                <div class="accordeon_content">
                  <!-- accordeon content goes here -->
                  <p>انواع ویتامین ها در این قسمت می توانید انتخاب نملئید.</p>
                </div>--%>
                
              </div>

            <script type="text/javascript">
                jQuery('.block_accordeon').tabs('.block_accordeon div.accordeon_content', {
                tabs: '.button_outer',
                effect: 'slide',
                currentClose: true,
                initialIndex: 0 
                });
            </script>
              
              <div class="separator_20"></div>
            </div>
          </article>
          
          <p>* جهت خرید آنتی بیوتیک ها لطفا نسخه خود را به ایمیل <span><a href="mailto:boorsedaroo@gmail.com" style="color:Red;"> boorsedaroo@gmail.com </a></span>ارسال نمایید.</p>
        </div>
        
        <div class="sidebar">
            <span>در صورتی که کالای مورد نظر خود را پیدا نمی کنید</span>                    
        	<a href="search.aspx" style="color:#FF0033;">جستجو</a>
            <span>کنید.</span>     
        </div>
</asp:Content>

