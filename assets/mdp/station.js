$(document).ready(function(){
    // console.log("tes");
    data = [
        ['Google', '#542727'],
        ['Yahoo', '#724f4f'],
        ['Bing', '#b43131'],
    ];

    function refresh(){
        $.ajax({
            method: "POST",
            url: "http://localhost/MDP/station/load",
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
                    // 'Kode Asset',
                    // 'Unit',
                ],

                colWidths: [150, 150, 150, 100, 250, 250, 75, 75],
                columns: [
                    // { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
                    { type: 'text' },
                    // { type: 'text' },
                ]
            });
        });
    }

    refresh();

    $('#my-spreadsheet').jexcel({
        colHeaders: [
            'Station',
        ],

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
            url: "http://localhost/MDP/station/simpan",
            data: {
                pabrik : $("#pabrik").val(),
                data_json: JSON.stringify(data_j),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

    $("#pabrik").change(function(){
        console.log($(this).val());
        refresh();
    });
});
