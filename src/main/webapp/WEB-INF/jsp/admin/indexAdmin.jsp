<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <meta charset="utf-8" />
        <title>Sales Dashboard | Dashonic - Free Admin & Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Free Admin & Dashboard Template" name="description" />
        <meta content="Pichforest" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="/resources/assets/images/favicon.ico">

        <!-- plugin css -->
        <link href="/resources/assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

<style>
body {
    font-family: hanaBFont !important;
}
.menu-item{
    font-size: 17px;
    /* font-family: hanaBFont; */
}
</style>
    
</head>
<body>

    <!-- <body data-layout="horizontal"> -->

    <!-- Begin page -->
    <div id="layout-wrapper">

        
        <header id="page-topbar">
            <div class="navbar-header">
                <div class="d-flex">
                    <!-- LOGO -->
                    <div class="navbar-brand-box">
                        <a href="index.html" class="logo logo-dark">
                            <span class="logo-sm">
                                <img src="assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="assets/images/logo-dark.png" alt="" height="22">
                            </span>
                        </a>

                        <a href="index.html" class="logo logo-light">
                            <span class="logo-sm">
                                <img src="assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="assets/images/logo-light.png" alt="" height="22">
                            </span>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                        <i class="fa fa-fw fa-bars"></i>
                    </button>

                </div>

                <div class="d-flex">

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-sm" data-feather="bell"></i>
                            <span class="noti-dot bg-danger"></span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                            aria-labelledby="page-header-notifications-dropdown">
                            <div class="p-3">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h5 class="m-0 font-size-15"> Notifications </h5>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#!" class="small"> Mark all as read</a>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <h6 class="dropdown-header bg-light">New</h6>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <img src="assets/images/users/avatar-3.jpg"
                                            class="me-3 rounded-circle avatar-sm" alt="user-pic">
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">Justin Verduzco</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Your task changed an issue from "In Progress" to <span class="badge bg-success">Review</span></p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 1 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <div class="avatar-sm me-3">
                                                <span class="avatar-title bg-primary rounded-circle font-size-16">
                                                    <i class="uil-shopping-basket"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">New order has been placed</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Open the order confirmation or shipment confirmation.</p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 5 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-2 border-top d-grid">
                                <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                                    <i class="uil-arrow-circle-right me-1"></i> <span>View More..</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item noti-icon right-bar-toggle" id="right-bar-toggle">
                            <i class="icon-sm" data-feather="settings"></i>
                        </button>
                    </div>

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="rounded-circle header-profile-user" src="assets/images/users/avatar-1.jpg"
                            alt="Header Avatar">
                            <span class="ms-2 d-none d-sm-block user-item-desc">
                                <span class="user-name">Kate Dudley</span>
                                <span class="user-sub-title">Administrator</span>
                            </span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end pt-0">
                            <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
                            <a class="dropdown-item d-flex align-items-center" href="#"><i class="mdi mdi-cog-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Settings</span><span class="badge bg-success ms-auto">New</span></a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-lock text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Lock screen</span></a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Logout</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="index.html" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="assets/images/logo-sm.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="assets/images/logo-dark.png" alt="" height="22">
                    </span>
                </a>

                <a href="index.html" class="logo logo-light">
                    <span class="logo-lg">
                        <img src="assets/images/logo-light.png" alt="" height="22">
                    </span>
                    <span class="logo-sm">
                        <img src="assets/images/logo-sm-light.png" alt="" height="22">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

            <div data-simplebar class="sidebar-menu-scroll">

                      <jsp:include page="/WEB-INF/jsp/include/adminSidebar.jsp"></jsp:include>  
            </div>
        </div>
        <!-- Left Sidebar End -->

        

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-flex align-items-center justify-content-between">
                                <h4 class="mb-0">Dashboard</h4>

                               
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">Total Revenue</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                $46.34k
                                            </h4>
                                            <div class="text-muted">Earning this month</div>
                                        </div>
                                        
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-1"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">Total Refunds</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                $895.02
                                            </h4>
                                            <div class="text-muted">Refunds this month</div>
                                        </div>
                                        
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-2"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">Active Users</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                6,985
                                            </h4>
                                            <div class="text-muted">Users this Week</div>
                                        </div>
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-3"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">All Time Orders</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                12,584
                                            </h4>
                                            <div class="text-muted">Total Number of Orders</div>
                                        </div>
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-4"></div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end row-->

              

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h4 class="card-title mb-4">Orders</h4>

                                        <div>

                                            <div class="dropdown d-inline">
                                                <a class="dropdown-toggle text-reset mb-3" href="#"
                                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span class="fw-semibold">Report By:</span> <span
                                                        class="text-muted">Monthly<i
                                                            class="mdi mdi-chevron-down ms-1"></i></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="#">Yearly</a>
                                                    <a class="dropdown-item" href="#">Monthly</a>
                                                    <a class="dropdown-item" href="#">Weekly</a>
                                                    <a class="dropdown-item" href="#">Today</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table table-hover table-nowrap mb-0 align-middle table-check">
                                            <thead class="bg-light">
                                                <tr>
                                                    <th class="rounded-start" style="width: 15px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="checkAll">
                                                            <label class="form-check-label" for="checkAll"> </label>
                                                        </div>
                                                    </th>
                                                    <th>ID</th>
                                                    <th>Date</th>
                                                    <th>Status</th>
                                                    <th>Customer</th>
                                                    <th>Purchased</th>
                                                    <th colspan="2" class="rounded-end">Revenue</th>
                                                </tr>
                                                <!-- end tr -->
                                            </thead>
                                            <!-- end thead -->
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexampleone">
                                                            <label class="form-check-label" for="flexCheckexampleone">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1018
                                                    </td>
                                                    <td>
                                                        1 Jun, 11:21
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-check-circle-outline text-success"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Paid</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-2.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Alex Fox</a>
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Wireframing Kit for Figma
                                                    </td>

                                                    <td>
                                                        $129.99
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexamplethree">
                                                            <label class="form-check-label" for="flexCheckexamplethree">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1017
                                                    </td>
                                                    <td>
                                                        29 May, 18:36
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-check-circle-outline text-success"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Paid</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-3.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Joya Calvert</a>
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Mastering the Grid <span class="text-muted">+2 more</span>
                                                    </td>

                                                    <td>
                                                        $228.88
                                                    </td>

                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexamplefour">
                                                            <label class="form-check-label" for="flexCheckexamplefour">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1016
                                                    </td>
                                                    <td>
                                                        25 May , 08:09
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i
                                                                    class="mdi mdi-arrow-left-thin-circle-outline text-warning"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Refunded</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-4.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Gracyn Make</a>
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Wireframing Kit for Figma
                                                    </td>

                                                    <td>
                                                        $9.99
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexamplefive">
                                                            <label class="form-check-label" for="flexCheckexamplefive">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1015
                                                    </td>
                                                    <td>
                                                        19 May , 14:09
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-check-circle-outline text-success"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Paid</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-5.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Monroe Mock</a>
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Spiashify 2.0
                                                    </td>

                                                    <td>
                                                        $44.00
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexamplesix">
                                                            <label class="form-check-label" for="flexCheckexamplesix">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1014
                                                    </td>
                                                    <td>
                                                        10 May , 10:00
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-check-circle-outline text-success"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Paid</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-6.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Lauren Bond</a>
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Mastering the Grid
                                                    </td>

                                                    <td>
                                                        $75.87
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexamplenine">
                                                            <label class="form-check-label" for="flexCheckexamplenine">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1011
                                                    </td>
                                                    <td>
                                                        29 Apr , 12:46
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-close-circle-outline text-danger"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Changeback</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-9.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Ricardo Schaefer</a> </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Spiashify 2.0
                                                    </td>

                                                    <td>
                                                        $63.99
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckDefaultexample">
                                                            <label class="form-check-label" for="flexCheckDefaultexample">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        #DK1010
                                                    </td>
                                                    <td>
                                                        27 Apr , 10:53
                                                    </td>

                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-check-circle-outline text-success"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Paid</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <img src="assets/images/users/avatar-10.jpg"
                                                                    class="avatar-sm img-thumbnail h-auto rounded-circle"
                                                                    alt="Error">
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0"><a href="#"
                                                                        class="text-reset">Arvi Hasan</a> </h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        Wireframing Kit for Figma
                                                    </td>

                                                    <td>
                                                        $51.00
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- end /tr -->

                                            </tbody><!-- end tbody -->
                                        </table><!-- end table -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end row -->

                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

           
            <div class="buy-now d-flex gap-2">
                <a href="https://pichforest.com/item/samply-free-admin-dashboard-template/1025" target="_blank" class="btn btn-danger btn-lg"><i class="mdi mdi-download ms-1"></i> Free Download </a>
                <a href="https://pichforest.com/item/dashonic-bootstrap-5-admin-dashboard-template/1007" target="_blank" class="btn btn-primary btn-lg"><i class="mdi mdi-cart ms-1"></i> Get Premium </a>
            </div>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->

    <!-- Right Sidebar -->
    <div class="right-bar">
        <div data-simplebar class="h-100">
            <div class="rightbar-title d-flex align-items-center bg-dark p-3">

                <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                <a href="javascript:void(0);" class="right-bar-toggle-close ms-auto">
                    <i class="mdi mdi-close noti-icon"></i>
                </a>
            </div>

            <!-- Settings -->
            <hr class="m-0" />

            <div class="rightbar-content p-4">
                <div class="bg-overlay p-4 d-flex align-items-center h-100 text-center">
                    <div>
                        <h5 class="text-uppercase font-size-14 lh-base">This Demos Available Only for Premium Version</h5>
                        <div class="mt-4">
                            <a href="#" target="_blank" class="btn btn-primary w-100"><i class="uil uil-shopping-cart me-1"></i> Purchase Now</a>
                        </div>
                    </div>
                </div>
                <h6 class="mb-3">Layout</h6>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout"
                        id="layout-vertical" value="vertical">
                    <label class="form-check-label" for="layout-vertical">Vertical</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout"
                        id="layout-horizontal" value="horizontal">
                    <label class="form-check-label" for="layout-horizontal">Horizontal</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Mode</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-mode"
                        id="layout-mode-light" value="light" checked>
                    <label class="form-check-label" for="layout-mode-light">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-mode"
                        id="layout-mode-dark" value="dark">
                    <label class="form-check-label" for="layout-mode-dark">Dark</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Width</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-width"
                        id="layout-width-fluid" value="fluid" onchange="document.body.setAttribute('data-layout-size', 'fluid')" checked>
                    <label class="form-check-label" for="layout-width-fluid">Fluid</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-width"
                        id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed')">
                    <label class="form-check-label" for="layout-width-boxed">Boxed</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Position</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-position"
                        id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')" checked>
                    <label class="form-check-label" for="layout-position-fixed">Fixed</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-position"
                        id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
                    <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
                </div>

                <h6 class="mt-4 mb-3">Topbar Color</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="topbar-color"
                        id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')" checked>
                    <label class="form-check-label" for="topbar-color-light">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="topbar-color"
                        id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
                    <label class="form-check-label" for="topbar-color-dark">Dark</label>
                </div>

                <div id="sidebar-setting">
                <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Size</h6>

                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')" checked>
                    <label class="form-check-label" for="sidebar-size-default">Default</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
                    <label class="form-check-label" for="sidebar-size-compact">Compact</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
                    <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
                </div>

                <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Color</h6>

                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')" checked>
                    <label class="form-check-label" for="sidebar-color-light">Light</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
                    <label class="form-check-label" for="sidebar-color-dark">Dark</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
                    <label class="form-check-label" for="sidebar-color-brand">Brand</label>
                </div>
            </div>

                <h6 class="mt-4 mb-3">Direction</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-direction"
                        id="layout-direction-ltr" value="ltr" checked>
                    <label class="form-check-label" for="layout-direction-ltr">LTR</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-direction"
                        id="layout-direction-rtl" value="rtl">
                    <label class="form-check-label" for="layout-direction-rtl">RTL</label>
                </div>

            </div>

        </div> <!-- end slimscroll-menu-->
    </div>
    <!-- /Right-bar -->

    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- JAVASCRIPT -->
    <script src="/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="/resources/assets/libs/feather-icons/feather.min.js"></script>

    <!-- apexcharts -->
    <script src="/resources/assets/libs/apexcharts/apexcharts.min.js"></script>

    <script src="/resources/assets/js/pages/dashboard-sales.init.js"></script>

    <script src="/resources/assets/js/app.js"></script>



</body>
</html>