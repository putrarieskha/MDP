$(document).ready(function () {
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }
    data = [];

    function refresh(){
        if (data == undefined) {
            data = [];
        }

        $('#my-G').jexcel({
            data: data,
            colHeaders: [
                'Kapasitor', 'KVAR', 'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Agt', 'Sep', 'Okt', 'Nov', 'Des', 'Keterangan'],
            colWidths: [200, 100, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 200],
            columns: [
                // { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
                { type: 'text' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'number' },
                { type: 'text', wordWrap: true },
            ],
            // onchange: handler,
            allowInsertColumn: false,	
        });
    }

    $("#pabrik").change(function () {
        ajax_refresh();
    });
    $("#tahun").change(function () {
        ajax_refresh();
    });

    var tgl = new Date();
    var y = tgl.getFullYear();
    $("#tahun").val(y.toString());


    $("#simpan").click(function () {
        var data = $('#my-G').jexcel('getData');
        console.log(data);

        $.ajax({
            method: "POST",
            url: BASE_URL + "kapasitor/simpan",
            success: sukses,
            data: {
                pabrik: $("#pabrik").val(),
                tahun: $("#tahun").val(),
                data_json: JSON.stringify(data),
            }
        }).done(function (msg) {
            console.log(msg);
        });
    });

    function ajax_refresh() {
        $.ajax({
            method: "POST",
            url: BASE_URL + "kapasitor/load",
            data: {
                id_pabrik: $("#pabrik").val(),
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
