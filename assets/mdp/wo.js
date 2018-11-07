$(document).ready(function(){
    // console.log("tes");
    data = [
        ['Google', 'SDI-18-11-0200'],
        ['Yahoo', 'NAMA_PT-TAHUN-BULAN-NO_WO(auto)'],
        ['Bing', '#b43131'],
    ];

    $('#my-spreadsheet').jexcel({
        data: data,
        colHeaders: ['Tanggal', 'No WO','Station','Equipment','Problem','Penjelasan<br>Masalah','HM','Kategori','status'],
        colWidths: [80, 100,100,100,250,250,75,75,80],
        columns: [
            { type: 'calendar',option : {format : 'DD/MM/YYYY' } },
            { type: 'autocomplete', source: ['SDI-18-11-0001', 'SDI-18-11-0002', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
            { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher','press','bunch press','kernel','klarifikasi','boiler','effluent','dispatch'] },
            { type: 'text' },
            { type: 'text' , wordWrap:true },
            { type: 'text' , wordWrap: true},
            { type: 'text' },
            { type: 'dropdown', source: ['plan', 'unplan'] },
            { type: 'dropdown', source: ['open','close'] },
        ]
    });
});
