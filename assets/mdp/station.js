$(document).ready(function(){
    // console.log("tes");
    data = [
        ['Google', '#542727'],
        ['Yahoo', '#724f4f'],
        ['Bing', '#b43131'],
    ];

    $('#my-spreadsheet').jexcel({
        data: data,
        colHeaders: [
            'Station',
            'Kode Asset',
            'Unit',
        ],

        colWidths: [150,150,150,100,250,250,75,75],
        columns: [
            { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
            { type: 'text' },
            { type: 'text' },
        ]
    });
});
