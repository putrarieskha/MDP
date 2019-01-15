  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Planing Maintenance
        - Pabrik : 
        <?php echo $dropdown_pabrik ?>

        <!-- <small>Input Harian</small> -->
      </h1>
      <ol class="breadcrumb">
        <!-- <button id="simpan">Simpan</button> -->
        <!-- <a class="btn btn-app btn-danger" id="tambah" href="#modal-default" role="button" data-toggle="modal"> -->
          <!-- <i class="fa fa-search-plus"></i> Cari WO -->
        <!-- </a> -->

        <!-- <a class="btn btn-app btn-primary" id="simpan"> -->
          <!-- <i class="fa fa-save"></i> Simpan -->
        <!-- </a> -->
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="modal fade in" id="modal-default" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span></button>
              <h4 class="modal-title">Daftar WO belum selesai</h4>
            </div>
            <div class="modal-body">
              <table id="dt-table" class="display" width="100%"></table>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-3">
          test
        </div>
        <div class="col-xs-9">
          <div id="scheduler_here" class="dhx_cal_container" style="width:100%; height:500px; padding:10px;">
              <div class="dhx_cal_navline">
                  <div class="dhx_cal_prev_button">&nbsp;</div>
                  <div class="dhx_cal_next_button">&nbsp;</div>
                  <div class="dhx_cal_today_button"></div>
                  <div class="dhx_cal_date"></div>
                  <!-- <div class="dhx_cal_tab" name="agenda_tab" style="right:280px;"></div> -->
                  <div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
                  <div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>
                  <div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
              </div>
              <div class="dhx_cal_header"></div>
              <div class="dhx_cal_data"></div>       
          </div>
        </div>
      </div>
      </div>

      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
