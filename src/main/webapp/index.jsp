<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>One Hana</title>


</head>
<script>

</script>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp" />
	</header>

	<div class="row col-12 d-flex">
	
	    <div class="col-5 d-flex flex-column justify-content-center align-items-center">
	    
            <div class="col-12" style="padding-left:50px; margin-bottom:30px;">
            <h4 style="font-size:43px; font-weight:600;"><span style="color:#008485;">'샐 틈 없는'</span> 자산관리의 시작</h4>
            </div>
            <div class="col-12" style="padding-left:50px;  margin-bottom:-10px;">
            <h4 style="font-size:18px; font-weight:500; color:#888888;">통장 관리부터 소비 분석까지 한번에 해결 가능한 MO HANA에 오신 것을 환영합니다</h4>
            </div>
            
            <div class="col-12" style="padding-left:50px;">
                <div class="row">
                    <div class="col-lg-12">
		            <button onclick="location.href='${pageContext.request.contextPath}/joinMybank'" style="background:none; border:none;">
		              <img src="${ pageContext.request.contextPath }/resources/myicon/orange1.png" style="width:300px;"/>
		            <%-- <a href="${pageContext.request.contextPath}/joinMybank"> 이용하기</a> --%>
		            <h4 style="transform: translateY(-300%); font-size:40px; margin-right:50px; color:white;">이용하기</h4>
		                </button>
	                </div>
                </div>
            </div>
        </div>
		<!-- class="btn btn-primary"
                style="border-radius: 15px; width: 300px; height: 100px;"  -->
		
		
		<!-- 메인 그림  -->
		<div class="col-7">
			<img
				src="${ pageContext.request.contextPath }/resources/myicon/main8.gif"
				style="width:90%; margin-left: 80px;"
				alt="Image">
		</div>
	</div>


</body>

</html>