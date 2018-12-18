$(document).ready(function () {
    data = [];
    data_detail = [];
    keterangan_detail = [];
    data_detailnya = "";

    function refresh(data) {
        // var x;
        // alert(data.length);
        if (data.length<1) {
            console.log("yes");
            $.ajax({
                method: "POST",
                url: BASE_URL + "unit/ajax_default_list",
                data: {
                    id_pabrik: $("#pabrik").val(),
                    id_station: $("#station").val(),
                    // d: $("#tanggal").val(),
                    // m: $("#bulan").val(),
                    // y: $("#tahun").val(),
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
                        'Unit',
                        'Hour Meter',
                    ],
                    colWidths: [360, 100, 95, 90, 50, 100, 60, 100, 100],
                    columns: [
                        // { type: 'autocomplete', url: BASE_URL+'wo/ajax/open/' + $("#pabrik").val() },
                        { type: 'text' },
                        { type: 'numeric', wordWrap: true },
                        // { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
                        // { type: 'dropdown', source: ['Alat', 'Proses'] },
                    ],
                    // onfocus: selection,
                    // onselection: selection,
                });

            });
            // data = x;

        }else{
            $('#my-spreadsheet').jexcel({
                data: data,
                allowInsertColumn: false,
                colHeaders: [
                    'Unit',
                    'Hour Meter',
                ],
                colWidths: [360, 100, 95, 90, 50, 100, 60, 100, 100],
                columns: [
                    // { type: 'autocomplete', url: BASE_URL+'wo/ajax/open/' + $("#pabrik").val() },
                    { type: 'text' },
                    { type: 'numeric', wordWrap: true },
                    // { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
                    // { type: 'dropdown', source: ['Alat', 'Proses'] },
                ],
                // onfocus: selection,
                // onselection: selection,
            });
        }


        // detail_refresh();

    }

    $("#pabrik").change(function () {
        station_refresh();
    });
    $("#station").change(function () {
        ajax_refresh();
    });
    $("#tahun").change(function () {
        ajax_refresh();
    });
    $("#bulan").change(function () {
        ajax_refresh();
    });
    $("#tanggal").change(function () {
        ajax_refresh();
    });

    $("#simpan").click(function () {
        var data_j = $('#my-spreadsheet').jexcel('getData');
        console.log(data_j);

        $.ajax({
            method: "POST",
            url: BASE_URL+"recordhm/simpan",
            data: {
                pabrik: $("#pabrik").val(),
                station: $("#station").val(),
                d: $("#tanggal").val(),
                m: $("#bulan").val(),
                y: $("#tahun").val(),
                data_json: JSON.stringify(data_j),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

    function station_refresh(){
        $("#station").load(BASE_URL + "station/ajax_dropdown/" + $("#pabrik").val(),
            function(responseTxt,statusTxt,xhr){
                if(statusTxt == "success"){
                    // alert("success");
                    ajax_refresh();
                }else{
                    // alert("gaagal");
                }
            }
        );
    }

    function ajax_refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL + "recordhm/load",
            data: {
                id_pabrik: $("#pabrik").val(),
                id_station: $("#station").val(),
                d: $("#tanggal").val(),
                m: $("#bulan").val(),
                y: $("#tahun").val(),
            }
        }).done(function (msg) {
            console.log(msg);
            data = JSON.parse(msg);
            console.log(data);
            refresh(data);
        });
    }

    var tgl = new Date();
    var m = tgl.getMonth() + 1;
    if (m < 10) {
        $("#bulan").val("0" + m.toString());
    } else {
        $("#bulan").val(m.toString());
    }
    var y = tgl.getFullYear();
    $("#tahun").val(y.toString());
    var d = tgl.getDate();
    if (d < 10) {
        $("#tanggal").val("0" + d.toString());
    } else {
        $("#tanggal").val(d.toString());
    }

    station_refresh();
    ajax_refresh();

});
