$(document).ready(function(){
    $(".bd-sidenav").affix({
        offset:{
            top:function(){return $(window).width()<=980? 290:210}
            ,bottom: 270
        }
    });
});