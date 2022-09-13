<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>One Hana</title>
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"/>
	</header>   
	
	
	<%-- 로그인폼을 spring form으로 만들어봄 --%>
	
	<form:form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="memberVO">
						<%-- controller에서 request에 저장해준 memberVO를 modelAtt로 받아옴 --%>
		<table>
			<tr>
				<th>ID</th>
				<td>
					<form:input path="id" />
					<form:errors path="id"></form:errors>
				</td>
			</tr>
		
			<tr>
				<th>PASSWORD</th>
				<td>
					<form:input path="password" />
					<form:errors path="password"></form:errors>
				</td>
			</tr>
		</table>	
			
			<input type="submit" value="로그인">
	</form:form>	



 
    
    <footer>
    			<jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
</body>

</html>