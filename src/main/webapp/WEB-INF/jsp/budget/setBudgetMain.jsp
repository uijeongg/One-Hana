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
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>



<script>
$(document).ready(function() {
	function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    } 
	
})

</script>


<script>
/* 
    var incomeDate = function incomeDate(value) {
	
    	   console.log(value + "찍히나요");
    	   $('#incomeDate').val(value);
    	   console.log(typeof value)
}

 */
 

 //월급일, 월급액 찍기
 function incomeSettings(){
	 
	 var incomeDate = $("#incomeDate option:selected").val();
	 var income = $('#income').val()*1
	 
	 console.log(incomeDate)
	 console.log(income)
	 console.log(typeof incomeDate)
	 console.log(typeof income)
	 
 }

</script>



</head>
<body>
    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header>
    


   <!-- 한달 월급 (총 예산) 입력 -->
   <!-- 한달 월급 (총 예산) 입력 -->
   <!-- 한달 월급 (총 예산) 입력 -->
   <form action="${pageContext.request.contextPath}/incomeSettings" method="post">   
    
    <div class="border-box" id="incomeSetting" style="text-align:center; border:1px solid; border-radius:20px; margin:auto; width:50%; ">
        <h3>월 급여 설정</h3>
        <p>한달 급여를 입력하면 정확한 예산 관리가 가능합니다</p>
        
        
        <div class="row">
            <div class="col-md-2"></div>
            
            
            <!-- MyBankVO - incomeDate에 insert -->                         
	        <div class="col-md-4"> <h4 style="display:inline;">매달</h4>&nbsp;&nbsp;
		       
		       <select id="incomeDate" name="incomeDate" onchange="incomeDate(this.value);" 
		              style="width:80px; background:white; color:#008485; border:none; border-bottom:1px solid #008485;
		                     text-align:center; margin:5px; font-size:25px; font-weight:800; height:40px; display:inline;">                  
		          
		          <c:forEach begin="1" end="31" var="x">
		              <option><!-- 매달 -->
		                  <c:out value="${x}" />
		              </option>                                
		          </c:forEach>
		          
		       </select> 
		       <h4 style="display:inline;">일</h4>
		    </div>
        
        
            <!-- MyBankVO - income에 insert -->
	        <div class="col-md-4">    
	            <!-- <input class="input_month" type="text" id="totalBudget" name="totalBudget" onkeyup="numberWithCommas(this.value)" value=""> -->
	             <input type="text" id="income" name="income" value="" 
	                    style="border: none; border-bottom: 1px solid #008485;">
	                <span style="color: #008485; font-size : 26px; font-weight: 700;">원</span>      
	        </div>
	        
	        <div class="col-md-2">
	            <input type="submit" id="incomeSettings" value="확인" onclick="return incomeSettings()">
	        </div>
        
        </div> 
    </div>
   </form><br><br>
    
    
    
    
    
    
    
    <!-- 고정비 입력 -->
    <!-- 고정비 입력 -->
    <!-- 고정비 입력 -->
    <div class="border-box" id="fixedSetting" style="text-align:center; border:1px solid; border-radius:20px; margin:auto; width:50%;">
    <!-- <div class="border-box"  id="product fixed_transfer_list">     -->
        <h3>고정 지출 설정</h3>
        <p>고정적으로 빠져나가는 돈을 자동적으로 이체 가능합니다.</p>
        
        
            <div class="col">
                <!-- <input class="form-control form-control-lg" type="hidden" id="fixed_sum" name="fixedSum" value=""> -->
                    <span style="font-size:26px;">
                        <h4 style="display:inline;"> 총 월 고정 지출액 :</h4> 
                    </span>
                        
                <input class="" type="text" disabled id="fixedAll" name="fixedAll" value=""
                       style="width:100px; background:white; color:#008485; border:none; border-bottom:1px solid #008485;
                             text-align:center; margin:5px; font-size:25px; font-weight:800; height:40px;"> 
                <!-- <input class="" type="text" disabled id="fixed_sum2" name="fixedSum2" value="">  -->
                    <span style="font-size : 26px;">
                        <h4 style="display:inline;"> 원</h4> 
                    </span>
            </div>
        
            
            
            
            <!-- <div class="col" id="totalExpenseDiv2"></div> -->
            <table class="table" id="table">
                <%-- <c:forEach items="${ fixedExpenseList }" var="fixedExpense" varStatus="loop">
                    <input type="hidden" class="fixedTransMoney" value="${ fixedExpense.transMoney }">
                </c:forEach> --%>
                
                <thead>
                    <tr>
                        <th scope="col" width="40%">예산명</th>
                        <th scope="col" width="20%">이체일</th>
                        <th scope="col" >
	                        <div class="col-md-9">
	                            금액
	                        </div>
	                        <div class="col-md-3">
	                        </div>
                        </th>
                    </tr>
                </thead>
            </table>        
        
            
            
            
            <div id="fixedExpenseList"></div>
            <div id="addFixedExpense2"></div>
            <div id="addFixedExpense">
                
                     <table class="table" id="table">
                      <tbody>
                        <tr>
                          
                          <th scope="col" width="40%">
                            <input id="expenseInfo" class="form-control" type="text">
                          </th>
                          
                          <th scope="col" width="20%">
                            <select class="" name="setDate" id="transDate"
                                     style="width:200px; background:white; color:#008485; text-align:center; height: 37px;">
	                           <c:forEach begin="1" end="31" var="x">
                                    <option>매달 
                                        <c:out value="${x}" /> 일
                                    </option><br>
                               </c:forEach>
                            </select>
                          </th>

                          <th scope="col">
                            <div class="row">
                                <div class="col-md-9" >
                                    <input id="transMoney" class="form-control" type="text" placeholder="(원)"
                                            style="color:#008485; text-align:center;">
                                </div>
                                <div class="col-md-2" id="btn-add-div">
                                    <img id="btn-add" src="${pageContext.request.contextPath}/resources/img/My_plus.png" 
                                         style="width:38px; height:38px;"/>
                                <!-- <button type="button" >추가</button> -->
                                </div>
                            </div>
                          </th>
                        </tr>
                      </tbody>
                    </table>
                    
             </div>
        
    </div><br><br>
    
    
    
    
    
    <!-- 자동 예산 분할 설정 -->
    <!-- 자동 예산 분할 설정 -->
    <!-- 자동 예산 분할 설정 -->
     <div class="border-box" id="fixedSetting" style="text-align:center; border:1px solid; border-radius:20px; margin:auto; width:50%;">
    <!-- <div class="border-box"  id="product fixed_transfer_list">     -->
        <h3>자동 예산 분할 설정</h3>
        <p>더하기빼기 더하기빼기</p>
        
     </div>
    
    
    
    
    
</body>
</html>