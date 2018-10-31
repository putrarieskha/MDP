$(document).ready(function () {
    alert("hello");
    $('#table_id').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'colvis',
            'excel',
            'print'
        ],
        responsive: true,
        // columnDefs: [
        //     { targets: [-1, -3], className: 'dt-body-right' }
        // ]
    });
});