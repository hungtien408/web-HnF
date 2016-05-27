function pageLoad() {
    mypageload();
}
(function ($) {
    $(window).load(function () {
    });
    $(function () {
        myfunload();
    });
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
    $('.slider-banner').slick({
        dots: true,
        arrows: true,
        fade: true,
        pauseOnHover: false,
        autoplay: true,
        speed: 500,
        autoplaySpeed: 3000
    });
    $(".link-show a").click(function () {
        $(this).toggleClass("current");
        var idboxs = $(this).attr("href");
        if ($(this).hasClass("current")) {
            $(idboxs).height("100%");
            var offset = $(this).offset();
            $("html, body").stop(true, true).animate({ scrollTop: (offset.top) }, 500);
        } else {
            $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500, function () {
                $(idboxs).height(0);
            });
        }
        return false;
    });
    if ($('.section-tb').size() > 0) {
        var productlist = $('.section-tb').imagesLoaded(function () {
            productlist.textHeight({
                activetit: true,
                listcss: [{ cssname: ".services-img" }, { cssname: ".title-services" }],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                listpos: [{ cssnamepos: ".desription", cssheightnum: "3"}],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
        $('.section-tb').viewloads({
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
    myfunsroll();
}
/*=========================================================================*/
function mypageload() {
    $(".select").uniform();
    $(".fullbox-img").bgsizebox({
        fimg: true,
        imgcss: "hideo",
        attrname: "data-src"
    });
    //myListTb();
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
    } else {
        $("#header").removeClass("header-sroll");
        $(".header-services").removeClass("header-sroll");
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