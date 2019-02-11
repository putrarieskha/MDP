$(document).ready(function(){
    var d1 = [];
    for (var i = 0; i < 14; i += 0.5) {
        d1.push([i, Math.sin(i)]);
    }

    var d2 = [[0, 3], [4, 8], [8, 5], [9, 13]];

    // A null signifies separate line segments

    var d3 = [[0, 12], [7, 12], null, [7, 2.5], [12, 2.5]];

    $.plot("#g1", [d1]);
    $.plot("#g2", [d2]);
    $.plot("#g3", [d3]);
    // $.plot("#g1", [d1, d2, d3]);


    var tgl = new Date();
    var bulan = [
        'januari',
        'februari',
        'maret',
        'april',
        'mei',
        'juni',
        'juli',
        'agustus',
        'september',
        'oktober',
        'november',
    ]
    var m = tgl.getMonth();
    var y = tgl.getFullYear();
    var d = tgl.getDate();

    tgl.setDate(tgl.getDate() - 1);
    
    var kemarin = tgl;
    
    var mk = kemarin.getMonth();
    var yk = kemarin.getFullYear();
    var dk = kemarin.getDate();



    var app = new Vue({
        el: '#app',
        data: {
            today: d+" "+bulan[m]+" "+y ,
            yesterday: dk + " " + bulan[mk] + " " + yk,
            
            taksasi_t: '',
            start_t: '',
            jam_t: '',

            ffa_hi: '',
            ffa_shi: '',
            taksasi_y: '',
            taksasi_vs_real: '',

            er_cpo_hi: '',
            er_cpo_shi: '',

            tbs_terima_hi : '',
            tbs_terima_shi: '',

            tbs_olah_hi : '',
            tbs_olah_shi: '',

            er_kernel_hi : '',
            er_kernel_shi: '',

            throughput_hi: '',
            throughput_shi: '',

            throughput_hi: '',
            throughput_shi: '',

            breakdown_hi: '',
            breakdown_shi: '',

            er_pko_hi: '',
            er_pko_shi: '',

            stok_cpo: '',
            stok_kernel: '',

            stok_pko: '',
            stok_pke: '',
        }
    })

});