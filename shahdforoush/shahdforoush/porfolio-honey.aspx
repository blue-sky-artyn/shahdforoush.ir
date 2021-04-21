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
                                                        <ul id="productGrpHtml" runat="server" data-option-key="filter" class="optionset">
                                                            <li class="selected"><a data-option-value="*" href="#filter">انواع محصولات</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div><!-- .filter_navigation -->
                                        </div><!-- .filter_block -->

                                        <div runat="server" class="portfolio_block image-grid columns2" id="list" ClientIDMode="Static">



                                            <div data-category="portraits" class="accounting element">
                                                <div class="filter_img">
                                                    <a href="portfolio_post.html">
                                                        <img src="img/portfolio/portfolio1.jpg" alt="" width="570" height="400" />
                                                        <span class="post_type post_type_video"></span>
                                                        <div class="portfolio_dscr"><div class="wrap_padding">
                                                            Egestas &amp; Mauris Dolor net vestibulum sodales mas dapibus ridic.
                                                        </div></div>
                                                    </a>
                                                </div>
                                            </div>






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

