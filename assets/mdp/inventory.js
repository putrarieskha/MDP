$(document).ready(function () {
    // console.log("tes");
    data = [
        ['Januari'],
        ['Februari'],
        ['Maret'],
        ['April'],
        ['Mei'],
        ['Juni'],
        ['Juli'],
        ['Agustus'],
        ['September'],
        ['Oktober'],
        ['November'],
        ['Desember'],
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
            'Bulan',
            'Norma Min',
            'Norma Max',
            'Nilai Stok',
            'Shortage',
            'Normal',
            'Excess',
            'Undefined',
        ],
        colWidths: [100, 250, 250, 250, 100, 100, 100, 100, 100, 100],
        columns: [
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
        ]
    });
    // $('#my-spreadsheet').find('thead').before('<thead class="jexcel_label"><tr><td class="jexcel_label" width="30"></td><td colspan="2" width="400" align="center">Group 1</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td></tr></thead>');
});
