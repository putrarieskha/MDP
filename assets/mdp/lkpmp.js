$(document).ready(function () {
    // console.log("tes");
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
            'Station', 'Unit', 'Kondisi', 'Status', 'Identifikasi<br>Problem', 'Perbaikan<br>Yang Diperlukan', 'PIC', 'Status<br>Sparepart','Keterangan'],
        colWidths: [100, 100, 250, 70, 200, 250, 80, 100, 100, 100],
        columns: [
            { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
            { type: 'text' },
            { type: 'text', wordWrap: true },
            { type: 'dropdown', source: ['Hijau', 'Kuning', 'Merah'] },
            { type: 'text', wordWrap: true },
            { type: 'text' },
            { type: 'dropdown', source: ['Internal', 'WSC', 'External'] },
            { type: 'dropdown', source: ['Ready', 'Order', 'Progress Order'] },
            { type: 'text' },
        ]
    });
    // $('#my-spreadsheet').find('thead').before('<thead class="jexcel_label"><tr><td class="jexcel_label" width="30"></td><td colspan="2" width="400" align="center">Group 1</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td></tr></thead>');
});
