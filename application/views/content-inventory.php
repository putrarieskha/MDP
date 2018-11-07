  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?=$main_title?>
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?=base_url()?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"><?=$main_title?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-xs-12">
          <?php //echo $content; ?>
          <div class="col-xs-12">
          Pabrik : 
          <select>
            <option>GSDI</option>
            <option>GSPP</option>
            <option>GSIP</option>
            <option>NAL</option>
            <option>SINP</option>
            <option>BCL2</option>
          </select>
          Tahun : 
          <select>
            <option>2018</option>
            <option>2019</option>
          </select>

          <br><br>
          <div id='my-spreadsheet'></div>
          <br><br>
          <div id='my-PRPO'></div>

        </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
