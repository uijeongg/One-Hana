<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
    fontWeight: bold;
}

.menu-item{
    font-size: 17px;
    font-family: hanaBFont; 
}

.navbar-header {
    /* background-color:#008485; */
}

</style>
    
</head>
<body>

    <!-- <body data-layout="horizontal"> -->
<!-- navbar-header -->
    <!-- Begin page -->
    <div id="layout-wrapper">

    

          <jsp:include page="/WEB-INF/jsp/include/adminSidebar.jsp"></jsp:include>
          
   
        

<!-- ======================================================================================================================================================== -->
<!-- Start Content here -->
<!-- ======================================================================================================================================================== -->
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
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h3 class="card-title mb-4">적금상품추가</h3>

                                        <div>

                                            
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <!-- 테이블있던자리 -->
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

</body>
</html>