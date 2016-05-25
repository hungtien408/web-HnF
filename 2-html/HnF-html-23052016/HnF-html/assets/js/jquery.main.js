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
    $(".search-click").click(function () {
        $(this).toggleClass("current");
        $(".search").stop(true, true).toggle("slow");
    });
    $(".del").click(function() {
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
}
/*=========================================================================*/
function mypageload() {
    
    myListTb();
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
    } else {
        $("#header").removeClass("header-sroll");
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