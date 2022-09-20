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
    
 
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"/>
	</header>
	
    <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>

	   
	
	    <h3 style="text-align: left; color:#008485; display:inline-block; margin-bottom: 0px; margin-top: 30px;">통장 전환</h3>
	    <hr style="width: 1000px; height: 5px; background-color:#008485;">
		<h3 style="text-align: left;">전환 가능 통장 목록</h3><br>
	
	<form action="${pageContext.request.contextPath}/changing" method="post">	
	
	
	 
	 <table class="table table-hover" 
	        style="width:1000px; border-radius:8px;">
	       <thead class="thead-dark table-primary" style="background-cololr:#008485; color:black;">
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
	
	            <td style="height: 50px;">${ account.accountName }</td>
	            <td style="height: 50px;">${ account.accountNo }</td>
	            <td style="height: 50px;">${ account.balance } </td>
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