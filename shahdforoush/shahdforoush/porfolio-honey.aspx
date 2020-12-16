<%@ Page Title="خرید عسل" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="porfolio-honey.aspx.cs" Inherits="porfolio_honey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/sorting.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- C O N T E N T -->
    <div class="content_wrapper">
    	<div class="container">
            <div class="content_block no-sidebar row">
                <div class="fl-container span12">
                	<div class="row">
                        <div class="posts-block span12">
                            <div class="contentarea">
                                <div class="row-fluid">
                                    <div class="span12 module_cont module_portfolio">
                                        <div class="filter_block">
                                            <div class="filter_navigation">
                                                <ul id="options" class="splitter">
                                                    <li>
                                                        <ul data-option-key="filter" class="optionset">
                                                            <li class="selected"><a data-option-value="*" href="#filter">انواع محصولات</a></li>
                                                            <li><a title="یک گزینه را انتخاب کنید" data-option-value=".accounting" href="#filter">عسل چند گیاه</a></li>
                                                            <li><a title="یک گزینه را انتخاب کنید" data-option-value=".programs" href="#filter">عسل تک گل</a></li>
                                                            <li><a title="یک گزینه را انتخاب کنید" data-option-value=".promotion" href="#filter">سایر محصولات</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div><!-- .filter_navigation -->
                                        </div><!-- .filter_block -->

                                        <div class="portfolio_block image-grid columns2" id="list">

                                            <asp:PlaceHolder ID="PlaceHolder" runat="server"></asp:PlaceHolder>

                                        </div><!-- .portfolio_block -->
                                    </div><!-- .module_portfolio -->
                                </div><!-- .row-fluid -->
                            </div><!-- .contentarea -->
                        </div>
                    </div>
                </div><!-- .fl-container -->
            </div>
        </div><!-- .container -->
    </div><!-- .content_wrapper -->
</asp:Content>

