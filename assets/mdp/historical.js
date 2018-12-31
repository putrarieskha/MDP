$(document).ready(function(){
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }

    function station_refresh() {
        $("#station").load(BASE_URL + "station/ajax_dropdown/" + $("#pabrik").val(),
            function (responseTxt, statusTxt, xhr) {
                if (statusTxt == "success") {
                    // alert("success");
                    unit_refresh();
                } else {
                    // alert("gaagal");
                }
            }
        );
    }

    function unit_refresh(){
        // console.log(BASE_URL + "unit/ajax_dropdown/" + $("#pabrik").val() + "/" + encodeURI($("#station").val()));
        $("#unit").load(BASE_URL + "unit/ajax_dropdown/" + $("#pabrik").val() + "/" + encodeURI($("#station").val()),
            function (responseTxt, statusTxt, xhr) {
                if (statusTxt == "success") {
                    // alert("success");
                    ajax_refresh();
                } else {
                    // alert("gaagal");
                }
            }
        );
    }

    function ajax_refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL + "unit/load",
            data: {
                id_pabrik: $("#pabrik").val(),
                id_station: $("#station").val(),
                id_unit: $("#unit").val(),

                // d: $("#tanggal").val(),
                // m: $("#bulan").val(),
                // y: $("#tahun").val(),
            }
        }).done(function (msg) {
            console.log(msg);
            data = JSON.parse(msg);
            console.log(data);
            refresh(data);
        });
    }

    function refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL+"historical/load",
            data: {
                id_pabrik: $("#pabrik").val(),
                id_station: $("#station").val(),
                id_unit: $("#unit").val(),
            }
        }).done(function (msg) {
            console.log(msg);
            data = JSON.parse(msg);
            console.log(data);
            $('#my-spreadsheet').jexcel({
                data: data,
                allowInsertColumn: false,

                colHeaders: [
                    // 'Station',
                    'No WO',
                    'Problem',
                    'Desc<br>Masalah',
                    'HM',
                    // 'kategori',
                    // 'status',
                ],

                colWidths: [150, 350, 150, 100, 250, 250, 75, 75],
                columns: [
                    // { type: 'autocomplete', url: BASE_URL+'station/ajax/' + $("#pabrik").val() },
                    { type: 'text' },
                    { type: 'text' },
                    { type: 'text' },
                    { type: 'text' },
                    { type: 'text' },
                    { type: 'text' },
                    // { type: 'checkbox' },

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
            success: sukses,
            data: {
                pabrik: $("#pabrik").val(),
                station: $("#station").val(),

                data_json: JSON.stringify(data_j),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

    $("#pabrik").change(function () {
        station_refresh();
    });

    $("#station").change(function () {
        unit_refresh();
    });

    $("#unit").change(function () {
        ajax_refresh();
    });

    station_refresh();

    


});
