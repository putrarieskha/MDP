  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?=$main_title?>
        <small>Control panel</small>
      </h1>
      <!-- <ol class="breadcrumb">
        <a class="btn btn-app btn-primary" id="simpan">
          <i class="fa fa-save"></i> Simpan
        </a>
      </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-xs-12">
          Pabrik : 
          <?php echo $dropdown_pabrik ?>
          Station :
          <?php echo $dropdown_station; ?>
          Unit :
          <?php echo $dropdown_unit; ?>

          <br><br>
          <div style="
						height: 500px;
						width: 100%;
						overflow: auto;
					">
          <div id='my-spreadsheet'></div>              
        </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
