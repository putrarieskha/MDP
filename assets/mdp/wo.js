$(document).ready(function(){
    // console.log("tes");
    data = [
        ['Google', '#542727'],
        ['Yahoo', '#724f4f'],
        ['Bing', '#b43131'],
    ];

    $('#my-spreadsheet').jexcel({
        data: data,
        colHeaders: ['Tanggal', 'No WO','Station','Equipment','Desc','Problem','HM','Kategori'],
        colWidths: [80, 100,100,100,250,250,75,75],
        columns: [
            { type: 'calendar',option : {format : 'DD/MM/YYYY' } },
            { type: 'text' },
            { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher','press','bunch press','kernel','klarifikasi','boiler','effluent','dispatch'] },
            { type: 'text' },
            { type: 'text' , wordWrap:true },
            { type: 'text' , wordWrap: true},
            { type: 'text' },
            { type: 'dropdown', source:['plan','unplan'] },
        ]
    });
});
