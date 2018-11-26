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
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="<?php echo base_url(); ?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>MDP</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>MDP</b></span>
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
            <li><a href="<?php echo base_url("karyawan"); ?>"><i class="fa fa-calendar"></i>Karyawan</a></li>
          </ul>
        </li>
  
        <li class="treeview">
          <a href="#">
            <i class="fa fa-gear"></i> <span>Maintenance</span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="<?php echo base_url("wo"); ?>"><i class="fa fa-industry"></i>Work Order</a></li>
            <li><a href="<?php echo base_url("breakdown"); ?>"><i class="fa fa-industry"></i>Breakdown Pabrik & Downtime Unit</a></li>
            <li><a href="<?php echo base_url("activity"); ?>"><i class="fa fa-calendar-check-o"></i>Activity MTC</a></li>
            <li><a href="<?php echo base_url("monitoring"); ?>"><i class="fa fa-calendar"></i>Monitoring MTC</a></li>
            <li><a href="<?php echo base_url("acm"); ?>"><i class="fa fa-warning"></i>Avaibility Critical Machine</a></li>
            <li><a href="<?php echo base_url("recordhm"); ?>"><i class="fa fa-line-chart"></i>Hour Meter Alat</a></li>
            <li><a href="<?php echo base_url("highlight"); ?>"><i class="fa fa-thumbs-o-down"></i>Highlight Problem</a></li>
            <li><a href="<?php echo base_url("lkpmp"); ?>"><i class="fa fa-file"></i>LKPMP</a></li>
            <li><a href="<?php echo base_url("capex"); ?>"><i class="fa fa-file"></i>CAPEX</a></li>
            <li><a href="<?php echo base_url("inventory"); ?>"><i class="fa fa-file"></i>Inventory</a></li>

          </ul>
        </li>
          <li class="treeview">
            <a href="#">
              <i class="fa fa-gear"></i> <span>Report</span>
            </a>
            <ul class="treeview-menu" style="display: none;">
              <li><a href="<?php echo base_url("downtime_alat"); ?>"><i class="fa fa-thumbs-o-down"></i>Historycal Machineries Card</a></li>
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
