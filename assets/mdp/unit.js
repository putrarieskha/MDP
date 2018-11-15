$(document).ready(function(){
    // console.log("tes");

    function refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL+"unit/load",
            data: {
                id_pabrik: $("#pabrik").val(),
            }
        }).done(function (msg) {
            console.log(msg);
            data = JSON.parse(msg);
            console.log(data);
            $('#my-spreadsheet').jexcel({
                data: data,
                allowInsertColumn: false,

                colHeaders: [
                    'Station',
                    'Kode Asset',
                    'Unit',
                ],

                colWidths: [150, 150, 150, 100, 250, 250, 75, 75],
                columns: [
                    { type: 'autocomplete', url: BASE_URL+'station/ajax/' + $("#pabrik").val() },
                    { type: 'text' },
                    { type: 'text' },
                ]
            });
        });
    }

    $("#simpan").click(function () {
        var data_j = $('#my-spreadsheet').jexcel('getData');
        console.log(data_j);

        $.ajax({
            method: "POST",
            url: BASE_URL+"unit/simpan",
            data: {
                pabrik: $("#pabrik").val(),
                data_json: JSON.stringify(data_j),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

    // $('#my-spreadsheet').jexcel({
    //     // data: data,
    //     colHeaders: [
    //         'Station',
    //         'Kode Asset',
    //         'Unit',
    //     ],

    //     colWidths: [150,150,150,100,250,250,75,75],
    //     columns: [
    //         { type: 'autocomplete', url: 'http://localhost/MDP/station/ajax/'+$("#pabrik").val() },
    //         { type: 'text' },
    //         { type: 'text' },
    //     ]
    // });

    refresh();

    $("#pabrik").change(function () {
        refresh();
    });


});
