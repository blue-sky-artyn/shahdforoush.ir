<%@ Page Title="سوالات رایج درباره عسل" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                                        <h4 class="headInModule common_font"><a name="blockquote"></a>سوالات رایج درباره عسل:</h4>
                                        <br />
                                       
                                        <asp:PlaceHolder ID="PlaceHolder" runat="server"></asp:PlaceHolder>
                                       
                                    </div>								
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
                                <asp:PlaceHolder ID="place_menu" runat="server"></asp:PlaceHolder>
                            </ul>
                        </div>                        
                    </aside>
                </div><!-- .right-sidebar -->
                <div class="clear"><!-- ClearFix --></div>
            </div>
        </div><!-- .container -->
 </div><!-- .content_wrapper -->
</asp:Content>

