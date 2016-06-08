function pageLoad() {
    mypageload();
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
        $(".wrap-images").hover(function () {
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
    if ($(window).width() > 992){
        if ($('#isotopelist .element-item').length == 5) {
            $('#isotopelist .element-item:nth-child(4)').css("margin-left","150px");
            $('#isotopelist .element-item:nth-child(5)').css("margin-left","12px");
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
    if ($('#serviceShow').size() > 0) {
        var sectionlist = $('#serviceShow').imagesLoaded(function () {
            sectionlist.textHeight({
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
                listcss: [{ cssname: ".intro-img" }, { cssname: ".name-link" }],
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
                listcss: [{ cssname: ".why-img" }, { cssname: ".why-name"}],
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
    $(".menu-qt li a").click(function() {
        new WOW().init();
    });
    $('.bg-order').addClass('fadeInLeft');
    //$('.order-tabs').delay(800).addClass('fadeInRight');
    $(".wrap-order").delay(800).queue(function (next) {
        $(this).addClass("fadeInRight");
        next();
    });

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
        $(".header-tv").removeClass("display-none");
    } else {
        $("#header").removeClass("header-sroll");
        $(".header-services").removeClass("header-sroll");
        $(".header-tv").addClass("display-none");
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