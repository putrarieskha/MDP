<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MDP | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/adminlte/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/adminlte/dist/css/skins/_all-skins.min.css">
  <?php if(isset($css_files)){ ?>
  <?php foreach($css_files as $file): ?>
  <link rel="stylesheet" href="<?php echo $file; ?>">
  <?php endforeach; 
  }?>
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">

  <style>
  .n_success {
    position:fixed;
    width: 400px;
    height: 50px;
    z-index:10000000;
    top : 50px;
    right:calc(50% - 200px);
    display:none;
  }
  .hload {
    position:fixed;
    top:220px;
    right:calc(50% - 40px);

    width: 80px;
    height: 115px;    
    z-index:10000000;
    display:none;

    background-color:#3498db;
    border: 10px solid #3498db; 
    color : #fff;  
  }
  .loader {
    border: 16px solid #f3f3f3; /* Light grey */
    border-top: 16px solid #3498db; /* Blue */
    border-radius: 50%;
    width: 80px;
    height: 80px;
    animation: spin 2s linear infinite;
    position:fixed;
    top:250px;
    right: calc(50% - 40px);
    /* background-color:#666; */
    z-index:10000000;
    /* opacity: 0.4; */
    /* filter: alpha(opacity=40); For IE8 and earlier */
    display:none;
  }

  @keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
  }
  </style>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
</head>
<body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
<div class="hload">
  <div class="loader"></div>
  Loading
</div>

<div class="n_success">
  <div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h4><i class="icon fa fa-check"></i> Sukses</h4>
    Data Anda Telah Berhasil Disimpan..
  </div>
</div>


<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="<?php echo base_url(); ?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>MS</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>MS</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <!-- User Account: style can be found in dropdown.less -->
          <li>
            <a href="<?php echo base_url("login/signout");?>">
              <span class="hidden-xs"><?php echo $this->session->user; ?> | Logout </span>
            </a>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-gear"></i> <span>Master</span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="<?php echo base_url("pabrik"); ?>"><i class="fa fa-industry"></i>Pabrik</a></li>
            <li><a href="<?php echo base_url("station"); ?>"><i class="fa fa-industry"></i>Station</a></li>
            <li><a href="<?php echo base_url("unit"); ?>"><i class="fa fa-calendar-check-o"></i>Unit</a></li>
            <li><a href="<?php echo base_url("uelektrik"); ?>"><i class="fa fa-bolt"></i>Unit Elektrik</a></li>
            <li><a href="<?php echo base_url("umekanik"); ?>"><i class="fa fa-gears"></i>Unit Mekanik</a></li>
            <li><a href="<?php echo base_url("karyawan"); ?>"><i class="fa fa-group"></i>Karyawan</a></li>
          </ul>
        </li>
  
        <li class="treeview">
          <a href="#">
            <i class="fa fa-gear"></i> <span>Maintenance</span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="<?php echo base_url("wo"); ?>"><i class="fa fa-industry"></i>Work Order <span class="pull-right-container"><small class="label pull-right bg-red">Harian</small></span> </a></li>
            <li><a href="<?php echo base_url("breakdown"); ?>"><i class="fa fa-industry"></i>Breakdown Pabrik & Downtime Unit <span class="pull-right-container"><small class="label pull-right bg-red">Harian</small></span> </a></li>
            <li><a href="<?php echo base_url("activity"); ?>"><i class="fa fa-calendar-check-o"></i>Activity MTC <span class="pull-right-container"><small class="label pull-right bg-red">Harian</small></span> </a></li>
            <li><a href="<?php echo base_url("monitoring"); ?>"><i class="fa fa-calendar"></i>Monitoring MTC <span class="pull-right-container"><small class="label pull-right bg-green">Mingguan</small></span> </a></li>
            <li><a href="<?php echo base_url("acm"); ?>"><i class="fa fa-warning"></i>Avaibility Critical Machine <span class="pull-right-container"><small class="label pull-right bg-red">Harian</small></span> </a></li>
            <li><a href="<?php echo base_url("recordhm"); ?>"><i class="fa fa-line-chart"></i>Hour Meter Alat <span class="pull-right-container"><small class="label pull-right bg-red">Harian</small></span> </a></li>
            <li><a href="<?php echo base_url("highlight"); ?>"><i class="fa fa-thumbs-o-down"></i>Highlight Problem <span class="pull-right-container"><small class="label pull-right bg-green">Mingguan</small></span> </a></li>
            <li><a href="<?php echo base_url("lkpmp"); ?>"><i class="fa fa-file"></i>LKPMP <span class="pull-right-container"><small class="label pull-right bg-green">Mingguan</small></span> </a></li>
            <li><a href="<?php echo base_url("capex"); ?>"><i class="fa fa-file"></i>CAPEX <span class="pull-right-container"><small class="label pull-right bg-green">Mingguan</small></span> </a></li>
            <li><a href="<?php echo base_url("inventory"); ?>"><i class="fa fa-file"></i>Inventory <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-bolt"></i> <span>Monitoring Elektrik</span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="<?php echo base_url("grounding"); ?>"><i class="fa fa-file"></i>Grounding <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
            <li><a href="<?php echo base_url("kapasitor"); ?>"><i class="fa fa-file"></i>Kapasitor <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
            <li><a href="<?php echo base_url("megger"); ?>"><i class="fa fa-file"></i>Megger <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-gears"></i> <span>Monitoring Mekanik</span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="<?php echo base_url("hydrocyclone"); ?>"><i class="fa fa-file"></i>Monitoring Oli<span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
            <li><a href="<?php echo base_url("screwpress"); ?>"><i class="fa fa-file"></i>Screw Press <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
            <li><a href="<?php echo base_url("bunchpress"); ?>"><i class="fa fa-file"></i>Bunch Press <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
            <li><a href="<?php echo base_url("hydrocyclone"); ?>"><i class="fa fa-file"></i>Hydrocyclone <span class="pull-right-container"><small class="label pull-right label-primary">Bulanan</small></span> </a></li>
          </ul>
        </li>


        <li class="treeview">
          <a href="#">
            <i class="fa fa-gear"></i> <span>Report</span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="<?php echo base_url("historical"); ?>"><i class="fa fa-thumbs-o-down"></i>Historycal Machineries Card</a></li>
            <li><a href="<?php echo base_url("costrm"); ?>"><i class="fa fa-money"></i>Cost RM Pabrik</a></li>
            <li><a href="<?php echo base_url("costrm"); ?>"><i class="fa fa-money"></i>Distribusi Man Hour</a></li>
            <li><a href="<?php echo base_url("costrm"); ?>"><i class="fa fa-money"></i>Plan vs Real (CM MM)</a></li>
            <li><a href="<?php echo base_url("costrm"); ?>"><i class="fa fa-money"></i>Inventory</a></li>
            <li><a href="<?php echo base_url("costrm"); ?>"><i class="fa fa-money"></i>Potret Pabrik</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
