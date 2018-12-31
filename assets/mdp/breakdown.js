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
            // { type: 'text' },
            { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
            { type: 'dropdown', source: ['Alat', 'Proses'] },
        ]
    });
    // $('#my-spreadsheet').find('thead').before('<thead class="jexcel_label"><tr><td class="jexcel_label" width="30"></td><td colspan="2" width="400" align="center">Group 1</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td></tr></thead>');
});
