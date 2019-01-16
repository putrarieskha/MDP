$(document).ready(function(){
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }


    // var stations;
    // var units;

    function reinit_calendar(){
        var pabrik = $("#pabrik").val();
    }



    scheduler.config.first_hour = 6; // oke
    scheduler.config.last_hour = 22; // oke
    scheduler.config.start_on_monday = false; // oke

    var stations = [
        { key: 1, label: 'None' },
        { key: 2, label: 'On start date' },
        { key: 3, label: '1 day before' }
    ];

    var units = [
        { key: 1, label: 'None' },
        { key: 2, label: 'On start date' },
        { key: 3, label: '1 day before' }
    ];

    scheduler.locale.labels.section_station = 'Station';
    scheduler.locale.labels.section_unit = 'Unit';

    scheduler.config.lightbox.sections = [
        { name: "station", height: 40, map_to: "station", type: "select", options: stations },
        { name: "unit", height: 40, map_to: "unit", type: "select", options: units },
        { name: "Deskripsi", height: 100, map_to: "desc", type: "textarea", focus: true },
        { name: "time", height: 72, type: "time", map_to: "auto" }
    ];

    scheduler.templates.event_text = function (start, end, ev) {
        return 'Subject:\n' + ev.text + '\nStation:\n' + ev.station + '\nUnit:\n' + ev.unit;
    };

    scheduler.init('scheduler_here', new Date(), "month");


    $("#pabrik").change(function () {
        // alert("update");
        var json_string = scheduler.toJSON(); //json string
        console.log(json_string);
        var evs = scheduler.getEvents();// will return all events
        console.log(evs);
        reinit_calendar();
    });

});
