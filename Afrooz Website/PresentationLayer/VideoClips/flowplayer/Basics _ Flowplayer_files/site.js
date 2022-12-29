(function($) {

    // highlight global navigation
    var loc = location.href;

    $(".root #fp1, .download #fp2, .demos #fp3, .forum #fp6").addClass("active");

    if (loc.indexOf("/plugins/") != -1) {
        $("html").addClass("plugins");
        $("#fp5").addClass("active");
    }

})(jQuery);