<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>One Hana</title>


<script>
function accountList(){
	//get방식
    location.href = "${pageContext.request.contextPath}/accountList"
}

function newJoin(){
    //get방식
    location.href = "${pageContext.request.contextPath}/newJoin"
}

</script>


</head>

<body>
	<header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
	

    <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>



<br>


    <div class="container-fluid" style="margin-bottom: 100px;">
    
        <div class="container">
        
     
    
            <div class="row g-5 justify-content-center">
               <h2 style="text-align: center;">
        <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
        <strong style="color:#008485;"> HANA </strong>  통장 가입</h2>
               
             <%-- 통장전환 --%>   
            <%--  <form action="${pageContext.request.contextPath}/accountList" method="get">  --%>
                    <div onclick="accountList()" style="margin-right:20px; width:400px; height:400px; padding: 10px;  border: solid; border-color: #008485; border-width: 7px; border-radius: 20px;" class="service-item bg-white text-center p-5">
                        <img src="${pageContext.request.contextPath }/resources/img/My_bankchange.png" width="250"/>
                        <h3>통장 전환</h3><br>
                        <!-- <input type="submit" value="통장 전환">  -->
                        <p class="mb-0">새로 개설 없이 기존의 계좌를 전환하여 가입</p>
                    </div>
             <%--  </form>   --%>
                
                
  
                
                
            <%-- 통장신규가입 --%> 
            <%-- <form action="${pageContext.request.contextPath}/newJoin" method="get">  --%>   
                  <div onclick="newJoin()" style="width:400px; height:400px; padding: 10px;  border: solid; border-color: #008485; border-width: 7px; border-radius: 20px;" class="service-item bg-white text-center p-5">
                      <img src="${pageContext.request.contextPath }/resources/img/My_bankadd.png" width="250"/>
                      <h3>신규 가입</h3><br>
                      <!-- <input type="submit" value="통장 신규 가입">  --> 
                       <p class="mb-0">신규 통장을 개설하여 마이원 하나 통장 가입 </p>
                  </div>
           
            <%-- </form>  --%>              
     
            </div>
        </div>
    </div>




 <%--    
    <form action="${pageContext.request.contextPath}/accountList" method="get"> 
        <div style="border:solid; width:200px;">
            <input type="submit" value="통장 전환">         
        </div>
    </form>
  
    통장신규가입
    <form action="${pageContext.request.contextPath}/newJoin" method="get"> 
        <div style="border:solid; width:200px;">
            <input type="submit" value="통장 신규 가입">          
        </div>
    </form>
 --%>
    
    
     <footer>
        <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
    
    
</body>

</html>