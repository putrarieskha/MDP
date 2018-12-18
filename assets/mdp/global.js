$(document).ajaxStart(function () {
    // Show image container
    $("#myModal").modal('show');
    $(".loader").show();
});
$(document).ajaxComplete(function () {
    // Hide image container
    $("#myModal").modal('hide');
    $(".loader").hide();
});