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
                                        <h3 class="card-title mb-4">적금상품리스트</h3>

                                        <div>

                                            
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table table-hover table-nowrap mb-0 align-middle table-check">
                                            <thead class="bg-light">
                                                <tr>
                                                    <th class="rounded-start" style="width: 20px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="checkAll">
                                                            <label class="form-check-label" for="checkAll"> </label>
                                                        </div>
                                                    </th>
	                                                     <th>상품명</th>
	                                                     <th>적립방식</th>
	                                                     <th>타입</th>
	                                                     <!-- <th>가입기간</th> -->
	                                                     <th>상품설명</th>
	                                                    <th>상품등록일</th>
	                                                     <th colspan="3" class="rounded-end">관리</th>
                                                    </tr>
                                                <!-- end tr -->
                                            </thead>
                                            <!-- end thead -->
                                            <tbody>
                                                 <c:forEach items="${productList}" var="product" >
                                                <tr>
                                                
                                                
                                                    <!-- 체크박스 -->
                                                    <!-- 체크박스 -->
                                                    <!-- 체크박스 -->
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexampleone">
                                                            <label class="form-check-label" for="flexCheckexampleone">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    
                                     
                                          
                                                    <!-- 상품명 --> 
                                                    <td class="fw-medium">
                                                       ${product.savingsName}
                                                    </td>
                                                    
                                                    <!-- 적립방식 -->
                                                    <td>
                                                        ${product.accumulateMethod}
                                                    </td>

                                                  
                                                    <!-- 타입 -->
                                                    <td>
                                                        <!-- <div class="d-flex">
                                                            <div class="me-2">
                                                                <i class="mdi mdi-check-circle-outline text-success"></i>
                                                            </div>
                                                            <div>
                                                                <p class="mb-0">Paid</p>
                                                            </div>
                                                        </div> -->
                                                         ${product.savingsType}
                                                    </td>
                                                    
                                                    
                                                    <!-- 가입기간 -->
                                                   <%--  <td>
                                                        ${product.minPeriod} ~ ${product.maxPeriod}
                                                    </td>
                                                     --%>
                                                    
                                                    <!-- 상품설명 -->
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="me-2">
                                                                <!-- <img src=> -->
                                                            </div>
                                                            <div>
                                                                <h5 class="font-size-14 text-truncate mb-0">${product.productDesc}</h5>
                                                            </div>
                                                        </div>
                                                    </td>
                                                   
                                                    <!-- 상품등록일 -->
                                                    <td>
                                                        ${product.registDate}
                                                    </td>
                                                    
                                                    
                                                    <!-- ...드롭다운 -->
                                                    <!-- ...드롭다운 -->
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
                                                                        수정</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        삭제</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                            
                                                    
                                                    
                                                </tr>
                                                 </c:forEach>    
                                                <!-- end /tr -->
                                                <div style="width:200px; border:2px solid;"><a href="${pageContext.request.contextPath }/newProduct">상품관리</a></div>
                                                 

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