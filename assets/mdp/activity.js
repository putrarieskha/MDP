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
    dummy_nama = ['agus', 'bram', 'candra', 'dodi', 'eko', 'fadil', 'gani', 'heri', 'iko', 'joni'];
    dummy_station = ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'];

    dummy_wo = ['SDI-18-11-0001','SDI-18-11-0002','SDI-18-11-0003','SDI-18-11-0004','SDI-18-11-0005','SDI-18-11-0006','SDI-18-11-0007','SDI-18-11-0008','SDI-18-11-0009','SDI-18-11-0010','SDI-18-11-0011'];
    $('#my-spreadsheet').jexcel({
        data: data,
        colHeaders: [
            'No WO',
            'Tanggal<br>Pengerjaan',
            'Perbaikan',
            'Nama Teknisi',
            'Target<br>Jam<br>Mulai',
            'Target<br>Jam<br>Selesai',
            'Real<br>Jam<br>Mulai',
            'Real<br>Jam<br>Selesai',
            'Tanggal<br>Selesai',
            'Jam<br>Selesai',
            'Jenis<br>Breakdown',
            'Jenis<br>Problem'
        ],
        colWidths: [100, 100, 250, 250, 100, 50, 100, 60, 100, 100],
        columns: [
            { type: 'autocomplete', source: dummy_wo },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'text' },
            { type: 'autocomplete', source: dummy_nama },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'calendar', option: { format: 'HH24:MI', time: 1 } },
            // { type: 'text' },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'text' },
            { type: 'text', wordWrap: true },
            // { type: 'text' },
            { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
            { type: 'dropdown', source: ['Alat', 'Proses'] },
        ]
    });
    // $('#my-spreadsheet').find('thead').before('<thead class="jexcel_label"><tr><td class="jexcel_label" width="30"></td><td colspan="2" width="400" align="center">Group 1</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td></tr></thead>');
});
