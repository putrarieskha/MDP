$(document).ready(function () {
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }
    data = [
        ['Google', '#542727'],
        ['Yahoo', '#724f4f'],
        ['Bing', '#b43131'],
    ];

    unit =[
        ''
    ];

    $('#my-spreadsheet').jexcel({
        data: data,
        colHeaders: [
            'Station', 'Unit', 'Problem', 'Perbaikan', 'Tanggal<br>Mulai', 'Jam<br>Mulai', 'Tanggal<br>Selesai', 'Jam<br>Selesai','Jenis<br>Breakdown', 'Jenis<br>Problem'],
        colWidths: [100, 100, 250, 250, 100, 50, 100, 60, 100, 100],
        columns: [
            { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
            { type: 'text' },
            { type: 'text', wordWrap: true },
            { type: 'text', wordWrap: true },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'text' },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'text' },
            { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
            { type: 'dropdown', source: ['Alat', 'Proses'] },
        ]
    });

    function ajax_refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL + "breakdown/load",
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

    ajax_refresh();
});
