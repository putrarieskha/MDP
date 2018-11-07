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

    $('#my-PI').jexcel({
        data: data,
        colHeaders: [
            'Project ID', 'Tipe', 'Desc', 'Qty', 'unit<br>measurement', 'Budget', 'PK/PO', 'Status<br>PI','Due Date', 'PIC','Kategori<br>Progress','Progress<br>%'],
        colWidths: [100, 100, 250, 250, 100, 50, 100, 60, 100, 120],
        columns: [
            // { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
            { type: 'text' },
            { type: 'dropdown', source: ['Mill Replacement', 'HO Project'] },
            { type: 'text' },
            { type: 'text' },
            { type: 'dropdown', source: ['Pcs', 'Lot','Unit','Meter'] },
            { type: 'text'},
            { type: 'dropdown', source: ['PK', 'PO'] },
            { type: 'dropdown', source: ['Process', 'Approve', 'Cancel', 'Dialihkan'] },
            { type: 'calendar', option: { format: 'MM/YYYY', time: 0 } },
            { type: 'dropdown', source: ['Site', 'WSC', 'HO' ]},
            { type: 'dropdown', source: ['Project Id Release', 'Fabrikasi', 'Mesin On Site', 'Install','Testing Commisioning'] },
            // 10%,40%,70%,95%,100% 
            { type: 'text', wordWrap: true },

            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'text' },
            { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            { type: 'text' },
            // { type: 'text' },
            { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
            { type: 'dropdown', source: ['Mill Replacement', 'HO Project'] },
        ]
    });

    $('#my-PRPO').jexcel({
        // data: data,
        colHeaders: [
            'Project ID', 'No PR', 'Nominal<br>PR', 'Status', 'No<br>PO', 'Nominal<br>PO', 'Vendor/<br>Supplier', 'Keterangan'],
        colWidths: [100, 100, 250, 250, 100, 50, 100,350],
        columns: [
            // { type: 'autocomplete', source: ['loading ramp', 'sterilizer', 'thresher', 'press', 'bunch press', 'kernel', 'klarifikasi', 'boiler', 'effluent', 'dispatch'] },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'dropdown', source: ['Planned', 'Released', 'Partially Authorized', 'Authorized'] },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            { type: 'text' },
            // { type: 'dropdown', source: ['Mill Replacement', 'HO Project'] },
            // { type: 'text' },
            // { type: 'text' },
            // { type: 'dropdown', source: ['Pcs', 'Lot', 'Unit', 'Meter'] },
            // { type: 'text' },
            // { type: 'dropdown', source: ['PK', 'PO'] },
            // { type: 'dropdown', source: ['Process', 'Approve', 'Cancel', 'Dialihkan'] },
            // { type: 'calendar', option: { format: 'MM/YYYY', time: 0 } },
            // { type: 'dropdown', source: ['Site', 'WSC', 'HO'] },
            // { type: 'text', wordWrap: true },

            // { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            // { type: 'text' },
            // { type: 'calendar', option: { format: 'DD/MM/YYYY HH24:MI', time: 1 } },
            // { type: 'text' },
            // // { type: 'text' },
            // { type: 'dropdown', source: ['unit', 'line', 'pabrik'] },
            // { type: 'dropdown', source: ['Mill Replacement', 'HO Project'] },
        ]
    });
    // $('#my-spreadsheet').find('thead').before('<thead class="jexcel_label"><tr><td class="jexcel_label" width="30"></td><td colspan="2" width="400" align="center">Group 1</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td><td width="200" align="center">Group 2</td></tr></thead>');
});
