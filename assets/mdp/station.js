$(document).ready(function(){
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }
    function refresh(){
        $.ajax({
            method: "POST",
            url: BASE_URL+"station/load",
            data: {
                id_pabrik: $("#pabrik").val(),
            }
        }).done(function (msg) {
            console.log(msg);
            data = JSON.parse(msg);
            console.log(data);
            $('#my-spreadsheet').jexcel({
                data: data,
                colHeaders: [
                    'Station',
                ],
                allowInsertColumn: false,

                colWidths: [150, 150, 150, 100, 250, 250, 75, 75],
                columns: [
                    { type: 'text' },
                ]
            });
        });
    }

    refresh();

    $('#my-spreadsheet').jexcel({
        colHeaders: [
            'Station',
        ],
        allowInsertColumn: false,

        colWidths: [150,150,150,100,250,250,75,75],
        columns: [
            { type: 'text' },
        ]
    });

    $("#simpan").click(function () {
        var data_j = $('#my-spreadsheet').jexcel('getData');
        console.log(data_j);

        $.ajax({
            method: "POST",
            url: BASE_URL+"station/simpan",
            success: sukses,
            data: {
                pabrik : $("#pabrik").val(),
                data_json: JSON.stringify(data_j),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

    $("#pabrik").change(function(){
        refresh();
    });
});
