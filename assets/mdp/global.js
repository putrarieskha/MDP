$(document).ajaxStart(function () {
    // Show image container
    // $("#myModal").modal('show');
    $(".hload").show();
    $(".loader").show();
});
$(document).ajaxComplete(function () {
    // Hide image container
    // $("#myModal").modal('hide');
    $(".hload").hide();
    $(".loader").hide();
});