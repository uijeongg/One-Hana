<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>One Hana</title>
    
    <script type="text/javascript">
	    $('#gogo').click(function() {
	        var checkAccountNo = $("input[type=radio][name=checkAccountNo]:checked").val();
	       /*  if (value) {
	           alert(value); 
	        }
	        else {
	            alert('Nothing is selected');
	        } */
	    })
    </script>
    
 
<style>
/*  table {
     width: 600px;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
  } 
  */
 
</style>   
    
    
    
    
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"/>
	</header>   
	
	    <h3 style="text-align: center;">통장 전환</h3><br>
	    <hr><br>
		<h3 style="text-align: center;">전환 가능 통장 목록</h3><br>
	
	<form action="${pageContext.request.contextPath}/changing" method="post">	
	
	<%-- 
	<table class="table">
	   <thead class="thead-dark">
		<tr>
			<td>전환 여부</td>
			<td>예금종류</td>
			<td>계좌번호</td>
			<td>잔액</td>
		</tr>
	   </thead>

		<c:forEach items="${boardlist}" var="board">
		<c:forEach items="${accountList}" var="account">
		<tr>


			<td> <input type="radio" id="gogo" name="checkAccountNo" value=${ account.accountNo }> </td>
			서버에 전달될 값이 value

			<td>${ account.accountName }</td>
			<td>${ account.accountNo }</td>
			<td>${ account.balance } </td>
		</tr>	
		</c:forEach>

	</table>
 --%>
 
 
 
	 
	 
	 <table class="table table-hover" 
	        style="width:1000px; margin-left:auto; margin-right:auto; border-radius:8px;">
	       <thead class="thead-dark table-primary">
	        <tr>
	            <th scope="col">전환 여부</th>
	            <th scope="col">예금종류</th>
	            <th scope="col">계좌번호</th>
	            <th scope="col">잔액</th>
	        </tr>
	       </thead>
	       
	       <tbody>
	       
	        <c:forEach items="${accountList}" var="account">
	        <tr>
	
	            <td> <input type="radio" id="gogo" name="checkAccountNo" value=${ account.accountNo }> </td>
	            <%-- 서버에 전달될 값이 value --%>
	
	            <td>${ account.accountName }</td>
	            <td>${ account.accountNo }</td>
	            <td>${ account.balance } </td>
	        </tr>   
	        </c:forEach>
	       </tbody>
	    </table>
	 
	   <br><br>
	 
	    <div style="text-align:center">
		   <input type="submit" id="gogo" value="통장전환"> <%-- post버튼 --%>
           <button>돌아가기</button>		  
		</div>
		<br><br>
		
	</form>


   
     <footer>
        <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
</body>

</html>