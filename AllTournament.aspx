<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Gallery, App_Web_tzymvrhd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <!--Shortcut icon-->
   
    
    <link rel='stylesheet' id='js_composer_front-css' href='http://azexo.com/sportak/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.7'
        type='text/css' media='all' />
    <link rel='stylesheet' id='animate-css-css' href='http://azexo.com/sportak/wp-content/plugins/js_composer/assets/lib/bower/animate-css/animate.min.css?ver=5.7'
        type='text/css' media='all' />
    <link rel='stylesheet' id='font-awesome-css' href='http://azexo.com/sportak/wp-content/plugins/js_composer/assets/lib/bower/font-awesome/css/font-awesome.min.css?ver=5.7'
        type='text/css' media='all' />
    <link rel='stylesheet' id='themify-icons-css' href='http://azexo.com/sportak/wp-content/themes/sportak/css/themify-icons.css?ver=4.9.8'
        type='text/css' media='all' />
    <link rel='stylesheet' id='azexo-style-css' href='http://azexo.com/sportak/wp-content/themes/sportak/style.css?ver=4.9.8'
        type='text/css' media='all' />
    <link href="css/GalleryImg_css/azexo.css" rel="stylesheet" type="text/css" />
    <link rel='stylesheet' id='select2-css' href='//azexo.com/sportak/wp-content/plugins/woocommerce/assets/css/select2.css?ver=4.9.8'
        type='text/css' media='all' />
    <link rel='stylesheet' id='vc_linecons-css' href='http://azexo.com/sportak/wp-content/plugins/js_composer/assets/css/lib/vc-linecons/vc_linecons_icons.min.css?ver=5.7'
    <script type='text/javascript' src='http://azexo.com/sportak/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
    <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/azexo_vc_elements/js/azexo_vc.js?ver=4.9.8'></script>
    <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/azexo_vc_elements/js/scrollReveal.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.0.5'></script>
    <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.0.5'></script>
  
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
            <div id="main" class="site-main" style="font-family: Oswald">
                <div id="primary" class="content-area">
                    <div id="content" class="site-content" role="main">
                        <div id="post-2" class="entry post-2 page type-page status-publish hentry">
                            <div class="entry-content">
                                <div class="vc_row wpb_row vc_row-fluid vc_custom_1445943047633">
                                    <div class="row">
                                        <div class="h-padding-0 wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <div class="vc_row wpb_row vc_inner vc_row-fluid container vc_custom_1445358022892">
                                                        <div class="row">
                                                            <div class="wpb_column vc_column_container vc_col-sm-12">
                                                                <div class="vc_column-inner">
                                                                    <div class="wpb_wrapper">
                                                                        <div class="entry  gallery-title">
                                                                            <div class="entry-data">
                                                                                <div class="entry-header">
                                                                                    <div class="entry-title">
                                                                                        Tournament Pamphlet</div>
                                                                                </div>
                                                                                <!-- header -->
                                                                                <div class="entry-content">
                                                                                    <p>
                                                                                   All Tournaments Are Here</p>
                                                                                </div>
                                                                            </div>
                                                                            <!-- data -->
                                                                        </div>
                                                                        <!-- entry -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="filters-wrapper ">
                                                        <div class="filters-header">
                                                            <div class="filters">
                                                                <span class="filter" data-selector="&gt; .entry">All</span><span class="filter" data-selector="&gt; .badminton">Badminton</span><span
                                                                    class="filter" data-selector="&gt; .cricket">Cricket</span><span class="filter" data-selector="&gt; .football">Football</span><span
                                                                        class="filter" data-selector="&gt; .volleyball">Volleyball</span>
                                                                        </div>
                                                        </div>
                                                       <h1>Comming Soon</h1>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- .entry-content -->
                        </div>
                        <!-- #post -->
                    </div>
                    <!-- #content -->
                </div>
                <!-- #primary -->
            </div>
            <!-- #main -->
            <script type="text/javascript">                jQuery(document).ready(function ($) {

                    $('.entry.gallery-item a.image-popup').on('focus', function () {
                        $(this).blur();
                    });

                    $('.entry.donate .entry-title, .carousel-wrapper.trainers  .entry-title, .entry.about-team .entry-title, .carousel-title h3, .vc_custom_heading:not(.black), .related-posts h3, h3.comments-title, h3.comment-reply-title, .woocommerce-result-count, .related.products > h2, .upsells.products > h2, .posts-list-wrapper .list-title h3').each(function () {
                        var t = $.trim($(this).html()).split(' ');
                        if (t.length > 1) {
                            t[0] = '<span>' + t[0] + '</span>';
                            $(this).html(t.join(' '));
                        }
                    });


                    $(window).one('resize', function () {
                        $('.site-header .backing').next().css('margin-top', '');
                        $('.position-static').css('position', 'relative');
                        setTimeout(function () {
                            $('.site-header .backing').next().css('margin-top', ($('.site-header .backing').outerHeight() - $('#secondary').outerHeight() - $('.header-main').outerHeight()) + 'px');
                            $('.position-static').css('position', 'static');
                        }, 0);

                        $('.margin-background').marginBackground();
                    });
                    $(window).trigger('resize');

                    if (typeof revapi1 !== 'undefined') {
                        revapi1.bind('revolution.slide.onloaded', function () {
                            $(window).trigger('resize');
                        });
                    }

                    if ($(window).width() > 768) {
                        setTimeout(function () {
                            $('.wpb_row.equalize-columns-heights > .row > .wpb_column').equalizeHeights();
                        }, 0);
                    }
                });</script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/azwoo.js?ver=1.12'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/jquery.countdown.min.js?ver=1.12'></script>
            <script type='text/javascript'>
/* <![CDATA[ */
var ajax_var = {"url":"http:\/\/azexo.com\/sportak\/wp-admin\/admin-ajax.php","nonce":"e4adaa6a95"};
/* ]]> */
            </script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/post-like-system/js/post-like.min.js?ver=1.0'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
            <script type='text/javascript'>
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/azexo.com\/sportak\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","sending":"Sending ...","cached":"1"};
/* ]]> */
            </script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.3'></script>
            <script type='text/javascript' src='//azexo.com/sportak/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
            <script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/sportak\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/sportak\/?wc-ajax=%%endpoint%%"};
/* ]]> */
            </script>
            <script type='text/javascript' src='//azexo.com/sportak/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=2.4.7'></script>
            <script type='text/javascript' src='//azexo.com/sportak/wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.min.js?ver=1.4.1'></script>
            <script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/sportak\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/sportak\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
            </script>
            <script type='text/javascript' src='//azexo.com/sportak/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=2.4.7'></script>
            <script type='text/javascript'>
/* <![CDATA[ */
var yith_qv = {"ajaxurl":"http:\/\/azexo.com\/sportak\/wp-admin\/admin-ajax.php","is2_2":"","loader":"http:\/\/azexo.com\/sportak\/wp-content\/plugins\/yith-woocommerce-quick-view\/assets\/image\/qv-loader.gif"};
/* ]]> */
            </script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/yith-woocommerce-quick-view/assets/js/frontend.js?ver=1.0'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/azexo.js?ver=1.12'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/jquery.sticky-kit.min.js?ver=1.12'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-includes/js/imagesloaded.min.js?ver=3.2.0'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/background-check.min.js?ver=1.12'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.7'></script>
            <script type='text/javascript' src='http://maps.google.com/maps/api/js?sensor=false&#038;ver=4.9.8'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/az_sport_club/js/richmarker.js?ver=4.9.8'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/az_sport_club/js/azsc.js?ver=4.9.8'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/jquery.magnific-popup.min.js?ver=1.12'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-includes/js/masonry.min.js?ver=3.3.2'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/owl.carousel.min.js?ver=1.12'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js?ver=5.7'></script>
            <script type='text/javascript' src='http://azexo.com/sportak/wp-content/themes/sportak/js/jquery.flexslider-min.js?ver=4.9.8'></script>
            <script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_variation_params = {"i18n_no_matching_variations_text":"Sorry, no products matched your selection. Please choose a different combination.","i18n_unavailable_text":"Sorry, this product is unavailable. Please choose a different combination."};
/* ]]> */
            </script>
            <script type='text/javascript' src='//azexo.com/sportak/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart-variation.min.js?ver=2.4.7'></script>
            <script type="text/javascript">
                jQuery(document).ready(function ($) {
                    //$( document ).ajaxStart(function() {
                    //});


                    for (var i = 0; i < document.forms.length; ++i) {
                        var form = document.forms[i];
                        if ($(form).attr("method") != "get") { $(form).append('<input type="hidden" name="DCyjclbngOota" value="EtTRySq8oj]Mm" />'); }
                        if ($(form).attr("method") != "get") { $(form).append('<input type="hidden" name="WVCZqwMizkUQ" value="paHCDbzLoWvj" />'); }
                        if ($(form).attr("method") != "get") { $(form).append('<input type="hidden" name="rRPZXxHstvfY" value="9O5qVrp2TNJE" />'); }
                        if ($(form).attr("method") != "get") { $(form).append('<input type="hidden" name="ZKjmfSeJbyc_UE" value="FlYw5IdZGuME6n" />'); }
                    }


                    $(document).on('submit', 'form', function () {
                        if ($(this).attr("method") != "get") { $(this).append('<input type="hidden" name="DCyjclbngOota" value="EtTRySq8oj]Mm" />'); }
                        if ($(this).attr("method") != "get") { $(this).append('<input type="hidden" name="WVCZqwMizkUQ" value="paHCDbzLoWvj" />'); }
                        if ($(this).attr("method") != "get") { $(this).append('<input type="hidden" name="rRPZXxHstvfY" value="9O5qVrp2TNJE" />'); }
                        if ($(this).attr("method") != "get") { $(this).append('<input type="hidden" name="ZKjmfSeJbyc_UE" value="FlYw5IdZGuME6n" />'); }
                        return true;
                    });


                    jQuery.ajaxSetup({
                        beforeSend: function (e, data) {

                            //console.log(Object.getOwnPropertyNames(data).sort());
                            //console.log(data.type);

                            if (data.type !== 'POST') return;

                            if (typeof data.data === 'object' && data.data !== null) {
                                data.data.append("DCyjclbngOota", "EtTRySq8oj]Mm");
                                data.data.append("WVCZqwMizkUQ", "paHCDbzLoWvj");
                                data.data.append("rRPZXxHstvfY", "9O5qVrp2TNJE");
                                data.data.append("ZKjmfSeJbyc_UE", "FlYw5IdZGuME6n");
                            }
                            else {
                                data.data = data.data + '&DCyjclbngOota=EtTRySq8oj]Mm&WVCZqwMizkUQ=paHCDbzLoWvj&rRPZXxHstvfY=9O5qVrp2TNJE&ZKjmfSeJbyc_UE=FlYw5IdZGuME6n';
                            }
                        }
                    });

                });
            </script>
            </div>
            <asp:UpdateProgress ID="updtProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <div style="font-size: 15px; z-index: 9999999; right: 0px; left: 0px; width: 100%;
                        position: fixed; top: 0px; height: 100%; background-color: #d4d0c8; text-align: center;
                        filter: alpha(opacity=70); xindex: -1; opacity: 0.7">
                        <asp:Image ID="imgUpdateProgress" runat="server" AlternateText="Processing Please Wait ..."
                            ImageUrl="~/image/Loading/Cricket ball.gif" Style="left: 45%; position: fixed; top: 40%"
                            ToolTip="Loading ..." />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
