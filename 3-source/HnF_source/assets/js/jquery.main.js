﻿function pageLoad() {
    mypageload();
    $('.section-tb').textHeight({
        activetit: true,
        listcss: [{ cssname: ".box-suicide" }, { cssname: ".title-suicide" }, { cssname: ".suicide-img"}],
        wpointb: true,
        desbool: false,
        listpos: [{ cssnamepos: ".desription", cssheightnum: "2"}],
        tbrow: true,
        csstr: ".element-item",
        max: true
    });
}
(function ($) {
    $(window).load(function () {
        var cleartime;
        mywrapper();
        $(window).resize(function () {
            $("#header").css({ "padding-top": 0 });
            clearTimeout(cleartime);
            cleartime = setTimeout(function () {
                mywrapper();
            }, 300);
        });
        $(".select").uniform();
        $(".fullbox-img").bgsizebox({
            fimg: true,
            imgcss: "hideo",
            attrname: "data-src"
        });
        if ($('.product-group').size() > 0) {
            $('.product-group').textHeight({
                activetit: true,
                listcss: [{ cssname: ".product-img" }, { cssname: ".product-name"}],
                wpointb: false,
                widthpont: 479,
                desbool: true,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3"}],
                max: true
            }).isotope({
                itemSelector: '.element-item',
                layoutMode: 'fitRows'
            });
        }
        if ($("#sliderDetails").size() == 1) {
            var bigimg = $(".small-imga:first").attr("href");
            var smallimg = $(".small-imga:first").attr("data-img");
            $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
            jQuery('.cloud-zoom').CloudZoom();
            if ($("#sliderDetails").hasClass("load-page")) {
                var loadf = $(".small-imga:first").attr("data-page") + " #loadCcontent";
                myloadpage(loadf);
            }
            $('#sliderDetails .slider-for').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                infinite: false,
                fade: true,
                asNavFor: '#sliderDetails .slider-nav'
            });
            $('#sliderDetails .slider-nav').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                asNavFor: '#sliderDetails .slider-for',
                vertical: true,
                dots: false,
                infinite: false,
                //centerMode: true,
                focusOnSelect: true
            });
            $('#sliderDetails .slider-nav').on('beforeChange', function (event, slick, currentSlide, nextSlide) {
                var bigimg2 = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-imga").attr("href");
                var smallimg2 = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-imga").attr("data-img");
                $(".cloud-zoom").attr("href", bigimg2).find("img:first").attr("src", smallimg2);
                jQuery('.cloud-zoom').CloudZoom();
                if ($("#sliderDetails").hasClass("load-page")) {
                    var loadp = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-imga").attr("data-page") + " #loadCcontent";

                    myloadpage(loadp);
                }
            });
            $(".small-imga").click(function () {
                $("#loadCcontent").remove();
                var loadp = $(this).attr("data-page") + " #loadCcontent";
                myloadpage(loadp);
            });
        }
    });
    $(function () {
        if ($('#isotopelist').size() == 1) {
            var cleartimeout;
            clearTimeout(cleartimeout);
            cleartimeout = setTimeout(function () {
                var $container = $('#isotopelist').imagesLoaded(function () {
                    $container.isotope({
                        itemSelector: '.element-item',
                        layoutMode: 'fitRows'
                    });
                });
            }, 300);
        }
        $(".wrap-boximg .box-in").hover(function () {
            $(this).stop(true, true).animate({ transform: 'scale(1.20,1.20)' }, 500);
        }, function () {
            $(this).stop(true, true).animate({ transform: 'scale(1,1)' }, 500);
        });
        myfunload();
    });
    function mywrapper() {
        var hmain = $("#wrapper").height();
        var hwin = $(window).height();
        var htop = parseInt((hwin - hmain) / 2);
        if (hwin > hmain) {
            $("#header").css({ "padding-top": htop });
        } else {
            $("#header").css({ "padding-top": 0 });
        }
        $("#wrappertop").backstretch("assets/images/intro-bg.jpg");
    }
    if ($(window).width() > 992) {
        if ($('#isotopelist .element-item').length == 5) {
            $('#isotopelist .element-item:nth-child(4)').css("margin-left", "150px");
            $('#isotopelist .element-item:nth-child(5)').css("margin-left", "12px");
        }
    }
    //    $(".btn-1 svg").hover(function() {
    //        //var a = ($(this).width() * 2) / ($(this).width() / 4);
    //        var a = $(this).width() * 2;
    //        var b = "15, " + a;
    //        $(".btn-1:hover rect").css("stroke-dasharray", b);
    //    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $(".search-click").click(function () {
        $(this).toggleClass("current");
        $(".search").stop(true, true).toggle("slow");
    });
    $(".del").click(function () {
        $(".search").hide("slow");
    });
    /*===slide hover menu==*/
    //    $('#menu > li').hover(
    //        function () {
    //            $(this).children('.menu-sub').stop(true, true).slideDown(600);
    //        },
    //        function () {
    //            $(this).children('.menu-sub').stop(true, true).slideUp(600);
    //        }
    //    );
    $('#menu > li').hover(
        function () {
            $(this).children('.menu-sub').stop(true, true).slideToggle();
        }
    );
    $('.menu-services > li').hover(
        function () {
            $(this).children('.menu-sub').stop(true, true).slideToggle();
        }
    );
    //    jQuery('#menu').superfish({
    //        animation: { height: 'show' },
    //        delay: 200
    //    });    
    $('.wrap-section .table-fabric tr:first-child').addClass("act");
    $('.wrap-section .table-fabric tr').each(function () {
        if ($(this).hasClass("act")) {
            var a = $(this).attr('id');
            $('.wrap-section .table-fabric .fabric-content').each(function () {
                var b = $(this).attr("data-id");
                if (a == b) {
                    $(this).css("display", "block");
                }
            });
            $('.wrap-section .table-fabric .fabric-color').each(function () {
                var b = $(this).attr("data-id");
                if (a == b) {
                    $(this).css("display", "block");
                }
            });
        }
    });
    $('.wrap-section .table-fabric tr').hover(
        function () {
            var a = $(this).attr('id');
            $('.wrap-section .table-fabric tr').each(function () {
                if ($(this).hasClass("act")) {
                    $(this).removeClass("act");
                    $('.wrap-section .table-fabric .fabric-content').each(function () {
                        $(this).css("display", "none");
                    });
                    $('.wrap-section .table-fabric .fabric-color').each(function () {
                        $(this).css("display", "none");
                    });
                }
            });
            $('.wrap-section .table-fabric .fabric-content').each(function () {
                var b = $(this).attr("data-id");
                if (a == b) {
                    $(this).css("display", "block");
                }
            });
            $('.wrap-section .table-fabric .fabric-color').each(function () {
                var b = $(this).attr("data-id");
                if (a == b) {
                    $(this).css("display", "block");
                }
            });
        },
        function () {
            $('.wrap-section .table-fabric .fabric-content').each(function () {
                $(this).css("display", "none");
            });
            $('.wrap-section .table-fabric .fabric-color').each(function () {
                $(this).css("display", "none");
            });
            $('.wrap-section .table-fabric tr:first-child').addClass("act");
            $('.wrap-section .table-fabric tr').each(function () {
                if ($(this).hasClass("act")) {
                    var a = $(this).attr('id');
                    $('.wrap-section .table-fabric .fabric-content').each(function () {
                        var b = $(this).attr("data-id");
                        if (a == b) {
                            $(this).css("display", "block");
                        }
                    });
                    $('.wrap-section .table-fabric .fabric-color').each(function () {
                        var b = $(this).attr("data-id");
                        if (a == b) {
                            $(this).css("display", "block");
                        }
                    });
                }
            });
        }
    );
    $('.slider-main').slick({
        autoplay: true,
        autoplaySpeed: 3000,
        pauseOnHover: false,
        dots: true,
        infinite: true,
        speed: 500,
        fade: true,
        arrows: false,
        cssEase: 'linear'
    });
    $('.slider-banner').slick({
        dots: true,
        arrows: true,
        fade: true,
        pauseOnHover: false,
        autoplay: true,
        speed: 500,
        autoplaySpeed: 3000
    });
    if ($('#sliderBanner').size() == 1) {
        var countab = $('#sliderBanner .slide').size();
        if (countab > 1) {
            var slidera = $('#sliderBanner').bxSlider({
                mode: 'fade',
                auto: true,
                pager: true,
                controls: false
            });
            $(".slider-sub .bx-pager").click(function () {
                slidera.startAuto();
            });
        } else {
            $('#sliderBanner').bxSlider({
                mode: 'fade',
                auto: false,
                pager: false,
                controls: false
            });
        }
    }

    $('#isotopelist .element-item:nth-child(2) .box-clothes .section-content').addClass("content-bottom");

    $(".link-show a").click(function () {
        var idboxs = $(this).attr("href");
        var offset = $(idboxs).offset();
        var offsetTop = offset.top - 330;
        $("html, body").stop(true, true).animate({ scrollTop: offsetTop }, 500);
        return false;
    });

    $(".link-show-dv a").click(function () {
        var idboxs = $(this).attr("href");
        var offset = $(idboxs).offset();
        var offsetTop = offset.top - 100;
        $("html, body").stop(true, true).animate({ scrollTop: offsetTop }, 500);
        return false;
    });

    $(".dvShow a").click(function () {
        var idboxs = $(this).attr("href");
        var offset = $(idboxs).offset();
        $("html, body").stop(true, true).animate({ scrollTop: offset.top - 30 }, 500);
        return false;
    });

    $(".supportShow a").click(function () {
        var idboxs = $(this).attr("href");
        var offset = $(idboxs).offset();
        $("html, body").stop(true, true).animate({ scrollTop: offset.top - 30 }, 500);
        return false;
    });
    if ($('#serviceShow').size() > 0) {
        var sectionlist = $('#serviceShow').imagesLoaded(function () {
            sectionlist.textHeight({
                activetit: true,
                listcss: [{ cssname: ".services-img" }, { cssname: ".title-services" }, { cssname: ".content-services"}],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                listpos: [{ cssnamepos: ".desription", cssheightnum: "3"}],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
        $('#serviceShow').viewloads({
            cssitems: ".element-item",
            csslink: ".link-view",
            idbox: "loadView",
            idurl: "#serviceView",
            cssactive: "current",
            datattr: "href"
            //            onready: function () {
            //                var proslider = $("#proSlider").slick({
            //                    dots: false,
            //                    infinite: true,
            //                    speed: 300,
            //                    prevArrow: "[data-id='proSlider'] .prev",
            //                    nextArrow: "[data-id='proSlider'] .next",
            //                    slidesToShow: 3,
            //                    slidesToScroll: 1,
            //                    responsive: [
            //                                {
            //                                    breakpoint: 1024,
            //                                    settings: {
            //                                        slidesToShow: 3
            //                                    }
            //                                },
            //                                {
            //                                    breakpoint: 639,
            //                                    settings: {
            //                                        slidesToShow: 2
            //                                    }
            //                                },
            //                                {
            //                                    breakpoint: 419,
            //                                    settings: {
            //                                        slidesToShow: 1
            //                                    }
            //                                }
            //                            ]
            //                });
            //            }
        });
    }
    if ($('.wrap-boximg').size() > 0) {
        var wraplist = $('.wrap-boximg').imagesLoaded(function () {
            wraplist.textHeight({
                activetit: true,
                listcss: [{ cssname: ".intro-img" }, { cssname: ".name-link"}],
                wpointb: true,
                desbool: false,
                listpos: [{ cssnamepos: ".desription", cssheightnum: "2"}],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
    }   
    
    if ($('#whyShow').size() > 0) {
        var whylist = $('#whyShow').imagesLoaded(function () {
            whylist.textHeight({
                activetit: true,
                listcss: [{ cssname: ".why-box" }, { cssname: ".why-img" }, { cssname: ".why-name"}],
                wpointb: true,
                desbool: false,
                listpos: [{ cssnamepos: ".desription", cssheightnum: "2"}],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
    }
    if ($('#weShow').size() > 0) {
        var welist = $('#weShow').imagesLoaded(function () {
            welist.textHeight({
                activetit: true,
                listcss: [{ cssname: ".services-img" }, { cssname: ".title-services"}],
                wpointb: true,
                desbool: false,
                listpos: [{ cssnamepos: ".desription", cssheightnum: "2"}],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
    }
    //    $('#footer2 .col-xs-4').textHeight({
    //        activetit: true,
    //        listcss: [{ cssname: ".title-footer2" }, { cssname: ".list-address li a"}],
    //        wpointb: false,
    //        widthpont: 420,
    //        desbool: true,
    //        listpos: [{ cssnamepos: ".desription", cssheightnum: "2"}],
    //        tbrow: true,
    //        csstr: ".element-item",
    //        max: true
    //    });

    $("#sectionTab").tabs();
    $("#priceTab").tabs();
    $("#orderTab").tabs();
    $("#fabricTab").tabs();
    //$(".menu-qt li:last-child .bg-button-right").remove();
    $(".menu-qt li a").click(function () {
        new WOW().init();
    });
    $('.bg-order').addClass('fadeInLeft');
    //$('.order-tabs').delay(800).addClass('fadeInRight');
    $(".wrap-order").delay(800).queue(function (next) {
        $(this).addClass("fadeInRight");
        next();
    });
    /*=====tabs order=====*/
    var b = $('#orderTab .ui-tabs-panel:not(.ui-tabs-hide)').attr('data-img');
    $(".bg-order").append("<img src='assets/images/" + b + "' alt='' />");
    $('#orderTab').tabs({
        activate: function (event, ui) {
            var char = ui.newTab.index() + 1;
            var a = ui.newPanel.attr('data-img');
            $(".bg-order img").remove();
            $(".bg-order").append("<img src='assets/images/" + a + "' alt='' />");
        }
    });
    if ($('#mapshow').size() == 1) {
        mymap();
    }
    $(".wrap-qt:nth-child(odd)").css("color", "#fff");
    $(".wrap-qt:nth-child(even)").css("color", "#282828");
    $(".wrap-qt:nth-child(odd) .title-qt span").css("background", 'url("assets/images/bg-step-2.png") no-repeat left center');
    $(".wrap-qt:nth-child(even) .title-qt span").css("background", 'url("assets/images/bg-step-1.png") no-repeat left center');
    $(".wrap-qt:nth-child(odd) .title-3").css("background", 'url("assets/images/line-title-3-2.png") no-repeat bottom center');
    $(".wrap-qt:nth-child(even) .title-3").css("background", 'url("assets/images/line-title-3.png") no-repeat bottom center');
    $(".wrap-qt:nth-child(odd) .icon-qt").css("background", 'url("assets/images/line-qt-2.png") no-repeat center top');
    $(".wrap-qt:nth-child(even) .icon-qt").css("background", 'url("assets/images/line-qt-1.png") no-repeat center top');
    myfunsroll();
}
/*=========================================================================*/
function mypageload() {
    //    $(".select").uniform();
    //    $(".fullbox-img").bgsizebox({
    //        fimg: true,
    //        imgcss: "hideo",
    //        attrname: "data-src"
    //    });
    //    myListTb();
}
/*========================================================================*/
function myListTb() {
}
/*===============================*/
function myfunsroll() {
    menusroll();
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}
function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $("#header").addClass("header-sroll");
        $(".header-services").addClass("header-sroll");
        $(".header-tv").removeClass("display-none");
        $(".services-scroll").addClass("display-none");
    } else {
        $("#header").removeClass("header-sroll");
        $(".header-services").removeClass("header-sroll");
        $(".header-tv").addClass("display-none");
        $(".services-scroll").removeClass("display-none");
    }
}
//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
function mapfooterre() {
    mapfooters();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mapfooters();
        }, 500);
    });
}
function mapfooters() {
    $('.map-footer').remove();
    if ($(window).width() > 768) {
        $('#mapfooter').append('<div class="map-footer"><iframe id="iframe" src="mapfooter.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}