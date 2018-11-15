$(document).ready(function () {
    // console.log("tes");
    data = [
        // ['Google', '#542727'],
        // ['Yahoo', '#724f4f'],
        // ['Bing', '#b43131'],
    ];

    // unit =[
    //     ''
    // ];
    // dummy_nama = ['agus', 'bram', 'candra', 'dodi', 'eko', 'fadil', 'gani', 'heri', 'iko', 'joni'];
    // dummy_station = ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'];

    // dummy_wo = ['SDI-18-11-0001','SDI-18-11-0002','SDI-18-11-0003','SDI-18-11-0004','SDI-18-11-0005','SDI-18-11-0006','SDI-18-11-0007','SDI-18-11-0008','SDI-18-11-0009','SDI-18-11-0010','SDI-18-11-0011'];
    
    function refresh(data) {
        var nama_pt = $("#pabrik").val();
        var tahun = $("#tahun").val();
        var bulan = $("#bulan").val();
        var tanggal = $("#tanggal").val();

        var no_wo = nama_pt + "-" + tahun + "-" + bulan + "-" + tanggal;

        var arr_no_wo = [];

        var no_last_wo = 1;
        var no_max_wo = no_last_wo + 100;
        if (no_max_wo > 9999) {
            no_max_wo = 9999;
        }
        var j = 0;
        for (var i = no_last_wo; i < no_max_wo; i++) {
            if (i < 10) {
                arr_no_wo[j++] = no_wo + "-0" + i.toString();
            } else if (i < 100) {
                arr_no_wo[j++] = no_wo + "-" + i.toString();
            }
            // } else if (i < 1000){
            //     arr_no_wo[j++] = no_wo + "-0" + i.toString();
            // }else{
            //     arr_no_wo[j++] = no_wo + "-" +i.toString();
            // }
        }

        handler = function (obj, cell, val) {
            console.log('My table id: ' + $(obj).prop('id'));
            console.log('Cell changed: ' + $(cell).prop('id'));
            console.log('Value: ' + val);
        };

        if (data == undefined) {
            data = [];
        }

        $('#my-spreadsheet').jexcel({
            data: data,
            colHeaders: [
                'No WO',
                // 'Tanggal<br>Pengerjaan',
                'Perbaikan',
                'Jenis<br>Breakdown',
                'Jenis<br>Problem'
            ],
            colWidths: [160, 250, 95, 90, 50, 100, 60, 100, 100],
            columns: [
                { type: 'autocomplete', url: BASE_URL+'wo/ajax/open/' + $("#pabrik").val() },
                // { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
                // { type: 'text' },
                // { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
                { type: 'text', wordWrap: true },
                // { type: 'text' },
                { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
                { type: 'dropdown', source: ['Alat', 'Proses'] },
            ]
        });

        $('#my-spreadsheet2').jexcel({
            // // Allow new rows
            // allowInsertRow: true,
            // // Allow new rows
            // allowManualInsertRow: true,
            // // Allow new columns
            allowInsertColumn: false,
            // // Allow new rows
            // allowManualInsertColumn: true,
            // // Allow row delete
            // allowDeleteRow: true,
            // // Allow column delete
            // allowDeleteColumn: true,
            data: data,
            allowInsertColumn: false,
            onchange: handler,
            // colHeaders: ['Tanggal', 'No WO', 'Station', 'Equipment', 'Problem', 'Penjelasan<br>Masalah', 'HM', 'Kategori', 'status'],
            colHeaders: [
                'Nama Teknisi',
                'Target<br>Jam<br>Mulai',
                'Target<br>Jam<br>Selesai',
                'Real<br>Jam<br>Mulai',
                'Real<br>Jam<br>Selesai',
                'Durasi',
                // 'Jam<br>Selesai',    
            ],
            colWidths: [150, 50, 53, 50, 53, 100, 75, 80, 80],
            columns: [
                // { type: 'calendar', option: { format: 'DD/MM/YYYY' } },
                { type: 'autocomplete', url: BASE_URL+'karyawan/ajax/' + $("#pabrik").val() },
                // { type: 'autocomplete', url: 'http://localhost/MDP/station/ajax/' + $("#pabrik").val() },
                // { type: 'autocomplete', url: 'http://localhost/MDP/unit/ajax/' + $("#pabrik").val() },
                { type: 'text', mask: '##:##' },
                { type: 'text', mask: '##:##' },
                { type: 'text', mask: '##:##' },
                { type: 'text', mask: '##:##' },

                { type: 'text' },
                // { type: 'dropdown', source: ['plan', 'unplan'] },
                // { type: 'dropdown', source: ['open', 'close'] },
            ]
        });

        $('#my-spreadsheet2').jexcel('updateSettings', {
            table: function (instance, cell, col, row, val, id) {
                if (col == 7) {
                    if (val == "open") {
                        $(cell).css('background-color', '#ff0000');
                    } else if (val == "close") {
                        $(cell).css('background-color', '#00ff00');
                    }
                }
            }
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
            url: BASE_URL+"activity/simpan",
            data: {
                pabrik: $("#pabrik").val(),
                d: $("#tanggal").val(),
                m: $("#bulan").val(),
                y: $("#tahun").val(),
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
            url: BASE_URL+"activity/load",
            data: {
                id_pabrik: $("#pabrik").val(),
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

    ajax_refresh();
});
