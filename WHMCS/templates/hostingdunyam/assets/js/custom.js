$(document).ready(function(){
    $(".accortion li > strong").click(function(){
        if($(this).parent().hasClass("active") || $(this).parent().hasClass("open")){
            $(this).parent().find("div").stop().slideUp(300);
            $(this).parent().removeClass("active");
            setTimeout(() => {
                $(this).parent().removeClass("open");
            }, 300);
        }else{
            $(this).parent().find("div").stop().slideDown(300);
            $(this).parent().addClass("active")
        }
        return false;
    });
    $( document ).tooltip();

    $("[data-tab-menu]").click(function(){
        $(this).parents("[data-tab-container]").find("[data-tab-menu]").removeClass("active");
        $(this).addClass("active");
        if($(this).attr("data-tab-menu")=="*"){
            $(this).parents("[data-tab-container]").find("[data-tab-content]").addClass("open");
        }else{
            $(this).parents("[data-tab-container]").find("[data-tab-content]").removeClass("open");
            $(this).parents("[data-tab-container]").find("[data-tab-content='"+$(this).attr("data-tab-menu")+"']").addClass("open");
        }
        return false;
    });

    $("[data-scroll-to]").click(function(){
        $("html, body").animate({scrollTop: $($(this).attr("data-scroll-to")).offset().top}, "slow");
        return false;
    });
});