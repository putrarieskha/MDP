$(document).ready(function () {
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }
    data = [];

    function refresh(data){
        if (data == undefined) {
            data = [];
        }
        $('#my-spreadsheet').jexcel({
            data: data,
            allowInsertColumn: false,
            colHeaders: [
                'Station', 'Unit', 'Problem', 'Corrective<br>Action', 'Due<br>Date', 'PIC', 'Account', 'Status', 'Penyelesaian'],
            colWidths: [100, 100, 250, 200, 200, 80, 80, 100, 100, 100],
            columns: [
                { type: 'autocomplete', url: BASE_URL + 'station/ajax/' + $("#pabrik").val() },
                { type: 'autocomplete', url: BASE_URL + 'unit/ajax/' + $("#pabrik").val() },
                { type: 'text', wordWrap: true },
                { type: 'text' },
                { type: 'text', wordWrap: true },
                { type: 'dropdown', source: ['Internal', 'WSC', 'External'] },
                { type: 'dropdown', source: ['RM', 'CAPEX'] },
                { type: 'dropdown', source: ['PR', 'PO', 'On Progress'] },
                { type: 'dropdown', source: ['Outstanding', 'Close'] },
            ]
        });

    }

    $("#pabrik").change(function () {
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
            url: BASE_URL + "highlight/simpan",
            success: sukses,
            data: {
                pabrik: $("#pabrik").val(),
                bulan: $("#bulan").val(),
                tahun: $("#tahun").val(),
                data_json: JSON.stringify(data_j),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

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

    // refresh();
    function ajax_refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL + "highlight/load",
            data: {
                id_pabrik: $("#pabrik").val(),
                bulan: $("#bulan").val(),
                tahun: $("#tahun").val(),
            }
        }).done(function (msg) {
            console.log(msg);
            data = JSON.parse(msg);
            console.log(data);
            refresh(data);
        });
    }

    ajax_refresh();


});
