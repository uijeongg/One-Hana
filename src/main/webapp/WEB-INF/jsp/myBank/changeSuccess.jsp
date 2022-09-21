<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
	
	
	<!-- <h3 style="text-align:center;"> 통장 전환이 완료되었습니다 </h3> -->
    <h3 style="margin-left:280px; color:#008485; display:inline-block; margin-bottom: 0px; margin-top: 30px;"> 통장 전환이 완료되었습니다 </h3>
	<hr style="width: 900px; height: 5px; background-color:#066262;">
	
	<form action="${pageContext.request.contextPath}/mybankMain" method="get">	
	<input type="hidden" name="accountNo" value="${ MyBank.accountNo }">
	
	
			<div style="background-color:#E0E0E0; width:900px; margin-left:300px; border:2px solid; border-radius:25px;" id="newAccountList">		
		 
				<h4>예금 종류 ${ MyBank.accountName }</h4><br>
				<h4>전환일 ${ MyBank.openDate }</h4><br>
				<h5>계좌번호 ${ MyBank.accountNo }</h5><br>
				<h5>잔액 ${ MyBank.balance }원</h5><br> 	  
			</div>
	


	<div style="margin-left:610px; color:#008485; display:inline-block; margin-top:30px;">
		<input type="submit" id="gogo" value="My One HANA 통장 확인하러 가기"
		       style="width:300px; height:50px; border-radius:5px; background-color:#008485; color:white; border:none; font-weight:bold;"> 
	</div>	
		
		
	</form>
	
	
	
</body>
</html>