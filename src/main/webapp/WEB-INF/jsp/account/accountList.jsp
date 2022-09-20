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

	   
	
	    <h3 style="text-align:left; color:#008485; display:inline-block; margin-bottom: 0px; margin-top: 30px;">통장 전환</h3>
	    <hr style="width: 900px; height: 5px; background-color:#066262;">
		<h5 style="text-align:left; margin-bottom:10px; margin-top:40px;">전환 가능 통장 목록</h5><br>
	
	<form action="${pageContext.request.contextPath}/changing" method="post">	
	
	
	 
	 <table class="table table-hover" 
	        style="width:900px; border-radius:8px; color:#808080;">
	       <thead class=" table-primary" style="height:50px; color:black; border-bottom:2px solid #008485;">
	        <tr style="text-align:center; border-top:2px solid #008485; ">
	            <th scope="col" style="border-right:2px solid #008485;">전환선택</th>
	            <th scope="col" style="border-right:2px solid #008485;">예금종류</th>
	            <th scope="col" style="border-right:2px solid #008485;">계좌번호</th>
	            <th scope="col">잔액</th>
	        </tr>
	       </thead>
	       
	       <tbody>
	    
	        <c:forEach items="${accountList}" var="account">
	        <tr style="text-align:center;">
	
	            <td style="border-right:2px solid #008485; width:100px;"> <input type="radio" id="gogo" name="checkAccountNo" value=${ account.accountNo }> </td>
	            <%-- 서버에 전달될 값이 value --%>
	
	            <td style="width: 250px; height:50px; border-right:2px solid #008485;">${ account.accountName }</td>
	            <td style="width: 280px; height:50px; border-right:2px solid #008485; color:black; font-weight:bold;">${ account.accountNo }</td>
	            <td style="width: 230px; height:50px; text-align:right;"><strong style="color:#008485">${ account.balance }</strong> 원</td>
	        </tr>   
	        </c:forEach>
	       </tbody>
	    </table>
	 
	   <br>
	 
	    <div style="text-align:center;">
		   <input type="submit" id="gogo" value="통장전환"
		          style="width:150px; height:50px; border-radius:5px; background-color:#008485; color:white; border:none; font-weight:bold;"> <%-- post버튼 --%>
           <button style="width:150px; height:50px; border-radius: 5px; background-color:#808080; color:white; border:none; font-weight:bold;">돌아가기</button>		  
		</div>
		<br><br>
		
	</form>


   
     <footer>
        <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
</body>

</html>