<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="layout/js/delbask.js" type="text/javascript"></script>
    
    <style type="text/css">
        .content
        {
            padding-right:10px !important;
            padding-left:10px !important;
        }
        .table th
        {
            padding-right:10px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



        <div class="block_title">
          <h1>سبد خرید</h1>
        </div>
        
        <div class="block_breadcrumbs">
          <ul>
            <li class="common_font"><a href="Default.aspx">صفحه اصلی</a></li>
            <li class="common_font" style="color:#ababab;">خرید</li>
            <li class="common_font">سبد خرید</li>
          </ul>
        </div>
        <div class="line_2"></div>

        <div class="content_main">
          <article class="block_text w_icon first">
            <div class="title">
              <div class="icon_wrapper"><div class="icon icon_14"></div></div>
              <h1>لیست اجناس سبد</h1>
              
              <div class="clearboth"></div>
            </div>
            <div class="line_1"></div>
            
            <div class="content" id="showBasket" runat="server">
              
                             <!-- inner text -->
              



              <div class="separator_20">
              </div>

            </div>
                
                <asp:PlaceHolder ID="Ph_btn" runat="server"></asp:PlaceHolder>
          </article>
          
          
        </div>

        <div class="sidebar">
            <span>در صورتی که کالای مورد نظر خود را پیدا نمی کنید</span>                    
        	<a href="search.aspx" style="color:#FF0033;">جستجو</a>
            <span>کنید.</span>     
        </div>
</asp:Content>

