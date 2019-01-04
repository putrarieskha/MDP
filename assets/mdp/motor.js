$(document).ready(function(){
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }
    function refresh(data) {
        if (data.length < 1){
            $.ajax({
                method: "POST",
                url: BASE_URL + "unit/ajax_default_list",
                data: {
                    id_pabrik: $("#pabrik").val(),
                    id_station: $("#station").val(),
                }
            }).done(function (msg) {
                console.log(msg);
                data = JSON.parse(msg);
                console.log(data);
                x = data;
                $('#my-spreadsheet').jexcel({
                    data: data,
                    allowInsertColumn: false,

                    colHeaders: [
                        '<br>Unit',
                        'Suhu Coupling<br>(pulley / gearbox)',
                        'Suhu<br>Bearing',
                        'Suhu<br>Body',
                        'Kondisi<br>Fan',
                        'Seal<br>terminal',
                        'Kabel<br>Gland',
                    ],

                    colWidths: [300, 150, 75, 75, 75, 75, 100, 100, 100],
                    columns: [
                        { type: 'text' },
                        // { type: 'text' },
                        { type: 'text' },
                        { type: 'text' },
                        { type: 'text' },
                        // { type: 'text' },
                        { type: 'checkbox' },
                        { type: 'checkbox' },
                        { type: 'checkbox' },
                        { type: 'text' },
                        { type: 'text' },
                    ]
                });


            });

        }else{
            $.ajax({
                method: "POST",
                url: BASE_URL + "motor/load",
                data: {
                    id_pabrik: $("#pabrik").val(),
                    id_station: $("#station").val(),
                    periode: $("#periode").val(),
                    tahun : $("#tahun").val(),
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
                        // 'Kode Asset',
                        '<br>Unit',
                        // '<br>Class',
                        'Suhu Coupling<br>(pulley / gearbox)',
                        'Suhu<br>Bearing',
                        // 'Suhu<br>Coupling<br>(pulley)',
                        'Suhu<br>Body',
                        'Kondisi<br>Fan',
                        'Seal<br>terminal',
                        'Kabel<br>Gland',
                        // 'Kabel<br>(mm2)',
                        // 'Kabel<br>tiap<br>Fasa',

                    ],

                    colWidths: [300,150, 75, 75, 75, 100, 100, 100],
                    columns: [
                        { type: 'text' },
                        // { type: 'autocomplete', url: BASE_URL + 'station/ajax/' + $("#pabrik").val() },
                        // { type: 'dropdown', source: ['0.37', '0.56', '0.75', '1.1', '1.5', '2.2', '3.0', '3.7', '4.0', '5.5', '7.5', '9.3', '10', '11', '15', '18.5', '22', '30', '37', '45', '55', '75', '90', '110', '132', '160','200','250','315'] },
                        // { type: 'dropdown', source: ['A', 'B', 'C'] },
                        // { type: 'dropdown', source: ['DOL', 'Star-Delta', 'Autotrafo', 'Softstarter', 'Inverter'] },
                        // { type: 'dropdown', source: ['1', '2', '3', '4', '6', '9', '10', '12', '14', '16', '18', '20', '22', '25', '30', '32', '40', '50', '60', '75', '80', '100', '125', '150', '160', '200', '225', '250', '320', '350', '400', '630', '800', '1000'] },
                        // { type: 'dropdown', source: ['0', '6', '9', '12', '16', '18', '25', '32', '38', '40', '50', '65', '80', '95', '100', '115', '125', '150', '185', '225', '265', '330', '400', '500', '630', '800'] },
                        // { type: 'dropdown', source: ['0', '6', '9', '12', '16', '18', '25', '32', '38', '40', '50', '65', '80', '95', '100', '115', '125', '150', '185', '225', '265', '330', '400', '500', '630', '800'] },
                        // { type: 'dropdown', source: ['0', '6', '9', '12', '16', '18', '25', '32', '38', '40', '50', '65', '80', '95', '100', '115', '125', '150', '185', '225', '265', '330', '400', '500', '630', '800'] },
                        // { type: 'dropdown', source: ['1.5', '2.5', '4', '6', '10', '16', '25', '35', '50', '70', '95', '120', '150', '185', '240', '300', '400', '500', '630'] },
                        // { type: 'dropdown', source: ['1', '2', '3', '4', '5', '6'] },
                        { type: 'text' },
                        { type: 'text' },
                        { type: 'text' },
                        // { type: 'text' },
                        { type: 'checkbox' },
                        { type: 'checkbox' },
                        { type: 'checkbox' },
                        { type: 'text' },
                        { type: 'text' },
                        // { type: 'text' },
                    ]
                });
            });

        }
    }

    $("#simpan").click(function () {
        var data_j = $('#my-spreadsheet').jexcel('getData');
        console.log(data_j);

        $.ajax({
            method: "POST",
            url: BASE_URL+"motor/simpan",
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

    function ajax_refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL + "motor/load",
            data: {
                id_pabrik: $("#pabrik").val(),
                id_station: $("#station").val(),
                periode: $("#periode").val(),
                tahun: $("#tahun").val(),
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


    function station_refresh() {
        $("#station").load(BASE_URL + "station/ajax_dropdown/" + $("#pabrik").val(),
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

    $("#pabrik").change(function () {
        station_refresh();
    });

    $("#station").change(function () {
        ajax_refresh();
    });




    station_refresh();

    // $("#pabrik").change(function () {
    //     refresh();
    // });

});
