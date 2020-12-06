<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="resultbuy.aspx.cs" Inherits="resultbuy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .div_dir
    {
        direction: rtl;
        text-align: right;}
    .btn_back
    {
        border: 1px solid #3d3d3d;
        padding: 15px 20px;
        background: linear-gradient(-90deg, #3d3d3d, whitesmoke);
        background: -webkit-linear-gradient(-90deg, #3d3d3d, whitesmoke);
        background: -o-linear-gradient(-90deg, #3d3d3d, whitesmoke);
        background: -moz-linear-gradient(-90deg, #3d3d3d, whitesmoke);
        background: -ms-linear-gradient(-90deg, #3d3d3d, whitesmoke);
        background-color:gray;
        border-radius: 30px;
        -ms-border-radius: 30px;
        -o-border-radius: 30px;
        -moz-border-radius: 30px;
        -webkit-border-radius: 30px;
        color: white;
        text-shadow: gray 2px 1px 2px;
        font-size: 9pt;
        }
      .btn_back:hover
      {
          opacity:0.5;
          }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin: 60px;">
        <div class="div_dir">
            <p class="common_div" style="color:Black;font-size:15pt;">وضعیت تراکنش: <asp:Label ID="lbl_state" runat="server" Text="" Font-Names="tahoma" ForeColor="Red"></asp:Label></p>
            <p class="common_div" style="color:Black;font-size:15pt;">شماره فاکتور: <asp:Label ID="lbl_no_fact" runat="server" Text="" Font-Names="tahoma" ForeColor="Red"></asp:Label></p>
            <p class="common_div" style="color:Black;font-size:15pt;">شماره رسید دیجیتالی شما: <asp:Label ID="lbl_resid" runat="server" Text="" Font-Names="tahoma" ForeColor="#FF3300"></asp:Label></p>
        </div>
        <div class="span3 promo_button_block">
            <a class="btn_back" href="Default.aspx">بازگشت به صفحه اصلی</a>
        </div>
        
    </div>
</asp:Content>

