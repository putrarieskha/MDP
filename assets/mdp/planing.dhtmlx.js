$(document).ready(function(){
    var sukses = function () {
        $(".n_success").show();
        $(".n_success").fadeOut(3000);
    }

    var template = "<div class=\"dhx_cal_ltext my_editor\" style=\"height:80px;\">"+
        "Kategori:"+
        "<select class=\"form-control\">"+
            "<option>Preventive</option>"+
            "<option>Monitoring</option>"+
            "<option>Corrective</option>"+
        "</select>"+
        "<br>"+
        "Station :"+
        "<select class=\"form-control\">"+
            "<option>A</option>"+
            "<option>B</option>"+
            "<option>C</option>"+
        "</select>"+
        "Text&nbsp;<input type=\"text\"><br/>"+
        "Details&nbsp;<input type=\"text\">"+
    "</div>";

    scheduler.init('scheduler_here', new Date(), "month");

    scheduler.form_blocks["my_editor"] = {
        render: function (sns) {
            // return "<div class='dhx_cal_ltext my_editor' style='height:80px;'>Text&nbsp;<input type='text'><br/>Details&nbsp;<input type='text'></div>";
            return template;
        },
        set_value: function (node, value, ev) {
            node.childNodes[1].value = value || "";
            node.childNodes[4].value = ev.details || "";
        },
        get_value: function (node, ev) {
            ev.details = node.childNodes[4].value;
            return node.childNodes[1].value;
        },
        focus: function (node) {
            var a = node.childNodes[1];
            a.select();
            a.focus();
        }
    };
    scheduler.config.lightbox.sections = [
        // { name: "description", height: 200, map_to: "text", type: "my_editor", focus: true },
        { name: "description", height: 200, map_to: "select", type: "my_editor", focus: true },

        { name: "time", height: 72, type: "time", map_to: "auto" }
    ];




    // scheduler.config.agenda_start = new Date(2013, 5, 1);
    // //to display dates until 1st June,2014
    // scheduler.config.agenda_end = new Date(2014, 5, 1);

});
