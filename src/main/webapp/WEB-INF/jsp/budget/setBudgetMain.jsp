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
//월 급여액
$(document).ready(function(){
        
    $('#incomeSettings').click(function(){
        	
        let income = document.incomeSet.income.value*1;
        let incomeDate = document.incomeSet.incomeDate.value;
        //console.log(income)
        //console.log(typeof incomeDate)
            
        
        $.ajax({
            url : '${pageContext.request.contextPath}/incomeSettings' 
          , method : 'post'
          , data   : {
          	          income : income
                    , incomeDate : incomeDate 
          },
           success : function(data){
        	   if(data == 'success'){
        		   //alert('incomeMap 받아오기 성공')                      
                   
        		   
        		   getIncomeData();
        		  
               }	 
           }       
       })
   })
    
   

   function getIncomeData() {
    	$.ajax({
            url : '${ pageContext.request.contextPath }/incomeAjax',
            type : 'post',
          /*   data : {
                
            }, */
          
            success : function(data) {
            	$('#incomeSet').empty();
            	$('#incomeSet').append(data);
            	   //$('#updateList').html(data)
            
            	
            	//자동 예산 분할 설정에 총 예산 넣어주기   
            	const income = document.getElementById('updateIncome').innerText;   
            	console.log(income);
            	   
                const incomeAuto = document.getElementById('incomeAuto')
            	incomeAuto.setAttribute('value', income)  
            }
        })  	
      }  
 }) 
</script>


<script>
//고정비
$(document).ready(function(){
        
    $('#fixedSettings').click(function(){
            
        let fixedName = document.fixedSet.fixedName.value;
//        let fixedDate = document.fixedSet.fixedDate.value;
        let fixedCost = document.fixedSet.fixedCost.value*1;
        //console.log(fixedName)
        //console.log(fixedDate)
        //console.log(typeof fixedCost)         
        
         $.ajax({
            url : '${pageContext.request.contextPath}/fixedSettings' 
          , method : 'post'
          , data   : {
        	          fixedName : fixedName
//                    , fixedDate : fixedDate
                    , fixedCost : fixedCost
          },
           success : function(data){
               if(data == 'success'){
                   //alert('fixedMap 받아오기 성공')
                       
                   getFixedData(fixedName);
               }     
           }       
       }) 
   })
   
   function getFixedData(fixedName) {
        $.ajax({
            url : '${ pageContext.request.contextPath }/fixedAjax',
            type : 'post',
            data : {
            	fixedName : fixedName
            }, 
            success : function(data) {
                //$('#fixedSet').empty();
                //alert(data);
                
                $('#fixedTable').append(data);
                //$('#updateList').html(data)
                
                //총 월 고정 지출액 업데이트
                plusFixedAll();          
            }
       })
   } 
   
   
    //총 예산 ' '원 중
   function plusFixedAll() {
	   
	  // console.log('${accountNo}') //세션에 저장하면 어디서든 사용 가능
	   var accountNo = '${accountNo}'   
    	
    	fetch('${ pageContext.request.contextPath }/getFixedSum?accountNo='+accountNo).then(
    		(res)=>res.json()		
    	).then(response=>{
    		if(response != null){
	    		console.log(response[0].FIXEDSUM)
    			$('#fixedAll').val(response[0].FIXEDSUM);
	    		
	    		calculateBudget();
    		}
    	})
    }
    

    //' '원 남았습니다
    //총예산(월급여) - 고정지출액(추가시마다) = x
    function calculateBudget() {
    	 //alert('들어옴?')
    	 //console.log('${accountNo}') 
         var accountNo = '${accountNo}' 
    	
         
         fetch('${ pageContext.request.contextPath }/getCalculation?accountNo='+accountNo).then(
        	(res)=>res.json()       
         ).then(response=>{
        	 if(response != null){
        	     console.log(response[0].MYASSET) //픽스드썸은 as값
        	     $('#calcul').val(response[0].MYASSET);
        	     
        	 }
         })	
    }
})
</script>




<script>
//고정비 다 입력하고 최종 '설정 완료 누르면 fixedSum값이 자동 예산 분할 설정의 고정비 주머니 분할 금액으로 바로 뜨게 하고 싶음

function allFixedSettings(){
	console.log("밥은 잘 먹었니?");
	let fixedAllMoney = $('#fixedAll').val();
	console.log(fixedAllMoney);
	$('input[name=autoDivAmount2]').attr('value',fixedAllMoney);
}


function autoDivSetting(input) {
	
	let pocketCode = input.substring(8);
    let autoDivAmount = $('#autoDivAmount'+pocketCode).val()*1;
    let autoDivDate = $('#autoDivDate'+pocketCode).val();
	//console.log("들어갈 포켓코드 : "+pocketCode);
	//console.log("분할금액 : " + autoDivAmount);
	//console.log(typeof autoDivAmount)
	//console.log("분할날짜 : " + autoDivDate);
	
	$.ajax({
		       url : '${pageContext.request.contextPath}/autoDivSetting' 
		     , method : 'post'
		     , data : {
		  	               pocketCode : pocketCode
                         , autoDivAmount : autoDivAmount
                         , autoDivDate : autoDivDate
		   },
		      success : function(data) {
		    	  //alert('autoDivList 성공')
		    	  let autoDivideList  = data
		    	  
		    	  let fromPocket = autoDivideList[0].fromPocket
		    	  //console.log('밥은 먹었냐 : ' + fromPocket)
		    	 
		    	  $('#autoAmount_'+pocketCode).empty();
		    	  $('#autoDate_'+pocketCode).empty();
		    	  $('#autoBtn_'+pocketCode).empty();
		    	  let divAmount ='';
		    	  
		    	   $(data).each(function(){
		        	    let fromPocket = this.fromPocket
		                let toPocket = this.toPocket
		                divAmount = this.divAmount
		                let autoDivDate = this.autoDivDate
		                //console.log(divAmount + '원')
		        	  
		                let str = '';
		                str += '<p>' + divAmount + '원 </p>'
		               $('#autoAmount_'+pocketCode).append(str);  
		                
		                let str2 = '';
                        str2 += '<p>매달 ' + autoDivDate + '일 </p>'
                        $('#autoDate_'+pocketCode).append(str2);  
		                
                        let str3 = '';
                        str3 += '<button type="button" id="deposit_'+pocketCode+'" onClick ="autoDivSetting(this.id)">수정</button>'
                        $('#autoBtn_'+pocketCode).append(str3);  
		        	  })

		        	  //''원 남았습니다 값 업데이트 함수 호출
		        	  if(pocketCode!=2){
		        		   calculateBudget2(divAmount) 
		    		  }
		    	   
		          }	   
	})
  
	
	
	function calculateBudget2(divAmount) {
		alert('들어옴?')
		
		
        var pocketCode = '${divideMap.pocketCode}'
        console.log(pocketCode)
        let calcul2 = $('#calcul').val();
		//console.log(calcul2);
        //console.log(divAmount)
        
        //calcul2값 - divAmount값 계산하기
	    calcul2 = calcul2 - divAmount       
        console.log("calcul2의 값은? : "+ calcul2);
	    
        $('#calcul').val(calcul2);
        
        
        
        
	 
     
	}
}
</script>

<script>
$(document).ready(function(){
    let accountNo = '${accountNo}';
    let id = '${loginVO.id}';
         
    fetch("/setBudgetMain2?id="+id+'&accountNo='+accountNo)
        .then(res=>res.json())
        .then(res=>{
            console.log(res.length); 
            let pocketList = res;
            $(pocketList).each(function(){
                let name = this.pocketName            
                let pocketCode = this.pocketCode 
                let str ='';
                str += '<tr><td style="color: #008485; font-weight:bold;">기본 주머니 ➜ '+name+' 주머니</td>'
                str += '<td id="autoAmount_'+pocketCode+'"><input type="text" id="autoDivAmount'+pocketCode+'" name="autoDivAmount'+pocketCode+'" placeholder="(원)" '
                str += 'class="form-control" style="color: #008485; text-align: center; width:200px;"></td>'
                
                str += '<td id="autoDate_'+pocketCode+'"><h4 style="font-size: 20px; display: inline;">매달</h4>&nbsp;&nbsp;'
                str += '<select name="autoDivDate'+pocketCode+'" id="autoDivDate'+pocketCode+'" style="width: 50px; background: white; color: #008485; text-align: center; height: 30px;">'
                str += '<c:forEach begin="1" end="31" var="x"> <option> <c:out value="${x}" /> </option> <br></c:forEach></select>'
                str += '<h4 style="font-size: 20px; display: inline;">일</h4></td>'
              	str += '<td id="autoBtn_'+pocketCode+'"><button type="button" id="deposit_'+pocketCode+'" onClick ="autoDivSetting(this.id)">확인</button></td> </tr>'
           //     str += '<td><input type="button" id="autoDivSetting" value="확인"></td> </tr>'
                
                
                
                
                $('#pocketAjaxGOGOGOGOGOGO').append(str);
                
                
                
                
            })
         })
     })     
</script>

<script>
function autoFromParking() { 

    let pock = document.getElementById("autoFromParkingSet");
    if(pock.style.display == "none"){
        pock.style.display = "";
    } else {
        pock.style.display = "none";
    }       
} 

</script>

<script>
$(document).on('click','#checkAllDate',function(){
	
	let incomeDate = '${incomeMap.incomeDate}';
	console.log(incomeDate)
	
	if($('#checkAllDate').is(':checked')){
        $('#autoDivDate').prop('incomeDate');
     }else{
        $('#autoDivDate').prop('incomeDate');
     } 
	
	
	
	
    /* 
	    if($('#checkAllDate').is(':checked')){
	       $('.autoDivDate').prop('25',true);
	    }else{
	       $('autoDivDate').prop('25',false);
	    } 
    */
});
</script>








</head>
<body>
    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header>
    <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
    


   <!-- 한달 월급 (총 예산) 입력 -->
   <!-- 한달 월급 (총 예산) 입력 -->
   <!-- 한달 월급 (총 예산) 입력 -->
   <%-- <form action="${pageContext.request.contextPath}/incomeSettings" method="post">   --%> 
   <form name="incomeSet"> 
    <div class="border-box" id="incomeSet" style="text-align:center; border:1px solid; border-radius:20px; margin:auto; width:50%; ">
        <h3>월 급여 설정</h3>
        <p>한달 급여를 입력하면 정확한 예산 관리가 가능합니다</p>
        
        
        <div class="row">
            <div class="col-md-2"></div>
            
            
            <!-- MyBankVO - incomeDate에 insert -->                         
	        <div class="col-md-4"> <h4 style="display:inline;">매달</h4>&nbsp;&nbsp;
		       
		       <select id="incomeDate" name="incomeDate" 
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
        
        
            <!-- MyBankVO - income에 update -->
	        <div class="col-md-4">
	             <input type="text" id="income" name="income"
	                    style="border: none; border-bottom: 1px solid #008485;">
	                <span style="color: #008485; font-size : 26px; font-weight: 700;">원</span>      
	        </div>
	        
	        <div class="col-md-2">
	            <input type="button" id="incomeSettings" value="확인">
	        </div>
	    
	        
            <div>
	           <select name="fixedDate" id="fixedDate"
	                 style="width:150px; background:white; color:#008485; text-align:center; height:30px;">
	                 <option>급여일</option>
	                 <option>급여일 다음날</option>
	                 <c:forEach begin="1" end="31" var="x">
	                    <option>
	                        매달&nbsp;<c:out value="${x}" />일
	                    </option>
	                 </c:forEach>
	           </select>
	           을 예산사용 시작일로 설정
	       </div>
         
        </div> 
    </div>
   </form><br><br>
    
    
    
    
    
    
    
    <!-- 고정비 입력 -->
    <!-- 고정비 입력 -->
    <!-- 고정비 입력 -->
    <%-- <form action="${pageContext.request.contextPath}/fixedSettings" method="post">  --%>
	<form name="fixedSet">
		<div class="border-box" id="fixedSet"
			style="text-align: center; border: 1px solid; border-radius: 20px; margin: auto; width: 50%;">
			<!-- <div class="border-box"  id="product fixed_transfer_list">     -->
			<h3>고정 지출 현황 확인</h3>
			<p>고정적으로 빠져나가는 돈이 얼마인지 한눈에 확인할 수 있습니다</p>


			<!-- 고정비 SUM -->
			<div class="col">
				<!-- <input class="form-control form-control-lg" type="hidden" id="fixed_sum" name="fixedSum" value=""> -->
				<span style="font-size: 26px;">
					<h4 style="display: inline;">총 월 고정 지출액 :</h4>
				</span> <input disabled type="text" id="fixedAll" name="fixedAll" value=""
					           style="width: 150px; background: white; color: #008485; border: none; border-bottom: 1px solid #008485; 
					                  text-align: center; margin: 5px; font-size: 20px; font-weight: 800; height: 40px;">

				<span style="font-size: 26px;">
					<h4 style="display: inline;">원</h4>
				</span>
			</div>



			<%-- 고정비용 현황 입력 --%><br>
			<h5 style="display: inline; float:left;">&nbsp;&nbsp;고정비용</h5><p style="display: inline; float:left;">&nbsp;&nbsp;(금액이 정해지지 않은 준고정비용은 평균보다 여유롭게 입력해 주세요.)</p><br>
			<table class="table" id="table">
				<thead>
					<tr>
						<th scope="col" width="40%">예산명</th>
						<!-- <th scope="col" width="20%">이체일</th> -->
						<th scope="col">
							<div class="col-md-9">금액</div>
							<div class="col-md-3"></div>
						</th>
					</tr>
				</thead>
			</table>


			<table class="table" id="table">
				<tbody id="fixedTable">
					<!-- 이 tbody 부분을 고정비 테이블 ajax 넘김 -->
					<tr>

						<!-- 고정비 명 -->
						<th scope="col" width="40%">
							<!-- <input id="expenseInfo" class="form-control" type="text"> -->
							<input type="text" id="fixedName" name="fixedName"
							class="form-control">
						</th>

                <!-- 고정비 이체일 -->
                <!--  	
						<th scope="col" width="20%">
							<h4 style="font-size: 20px; display: inline;">매달</h4>&nbsp;&nbsp;
							<select name="fixedDate" id="fixedDate"
							style="width: 50px; background: white; color: #008485; text-align: center; height: 37px;">
								<c:forEach begin="1" end="31" var="x">
									<option>
										<c:out value="${x}" />
									</option>
									<br>
								</c:forEach>
						</select>
							<h4 style="font-size: 20px; display: inline;">일</h4>
						</th>
                 -->

						<!-- 고정비 금액 -->
						<th scope="col">
							<div class="row">
								<div class="col-md-9">
									<input type="text" id="fixedCost" name="fixedCost"
										placeholder="(원)" class="form-control"
										style="color: #008485; text-align: center;">
								</div>

								<div class="col-md-2" id="btn-add-div">
									<%--  <img id="btn-add" src="${pageContext.request.contextPath}/resources/img/My_plus.png" 
                                         style="width:38px; height:38px;"/> --%>
									<!-- <button type="button" >추가</button> -->

									<input type="button" id="fixedSettings" value="추가">

								</div>
							</div>
						</th>
   					</tr>
				</tbody>
				
			</table>
			
			<button type="button" style="float:right;" onClick ="allFixedSettings()">설정완료</button><br><br>
		</div>
	

	</form>
	<br>
	<br>


	<!-- 자동 예산 분할 설정 -->
    <!-- 자동 예산 분할 설정 -->
    <!-- 자동 예산 분할 설정 -->
    <form name="autoSet">
     <div class="border-box" id="autoSet" style="text-align:center; border:1px solid; border-radius:20px; margin:auto; width:50%;">
    <!-- <div class="border-box"  id="product fixed_transfer_list">     -->
        <h3>자동 예산 분할 설정</h3>
        <p>더하기빼기 더하기빼기</p>
        
       
        <table class="table" id="table" style="margin-left:auto; margin-right:auto;">
            <thead>
                <tr>
                    <th colspan="5" style="text-align: center; background-color: #green; font-size: 17px;">
                       
                       
                       " 총 예산 &nbsp;
                       
                        <div style="display:inline;"> 
                        <strong>
                            <!-- <input type="hidden" disabled id="cal_total" value=""> -->
                            <input disabled type="text" id="incomeAuto" class="input-cal" style="width:120px; border: none; color:#008485; font-weight:bold; text-align:center; font-size:20px;">
                        </strong>
                        </div>
                        
                        원 중, &nbsp;&nbsp;
                        
                        
                        <strong style="color: blue;">
                         <!--    <input type="hidden" disabled id=""> -->
                            <input disabled type="text" id="calcul" name="calcul2" class="input-cal" style="width:120px; border: none; color:red; font-weight:bold; text-align:center; font-size:20px;">
                        </strong>
                        
                         
                        원 남았습니다 "
                        
                        
                     </th>
                </tr>
                
                <tr style="border-bottom: 40px solid #fff;"></tr>                 
                <tr>
                     <th scope="col" width="30%" >분할 주머니</th>
                     <th scope="col" width="30%" >분할 금액</th>
                     <th scope="col" width="25%">분할 날짜</th>
                     <th scope="col" width="25%"></th>
                     <!-- <th><input type="button" value="설정"></th> -->
                </tr>

             </thead>  
             
             
             <tbody id="pocketAjaxGOGOGOGOGOGO"> 
               
             <%--   
               <tr>
	                <td style="color: #008485; font-weight:bold;">기본 주머니 ➜ '+name+' 주머니</td>
	                <td><input type="text" id="autoDivAmount'+pocketCode+'" name="autoDivAmount'+pocketCode+'" placeholder="(원)" 
	                    class="form-control" style="color: #008485; text-align: center; width:200px;">
	                </td>
	                
	                <td><h4 style="font-size: 20px; display: inline;">매달</h4>&nbsp;&nbsp;
	                    <select name="autoDivDate'+pocketCode+'" id="autoDivDate'+pocketCode+'" 
	                            style="width: 50px; background: white; color: #008485; text-align: center; height: 30px;">
	                        <c:forEach begin="1" end="31" var="x"> 
	                            <option> <c:out value="${x}" /> </option> <br>
	                        </c:forEach>
	                    </select>
	                    <h4 style="font-size: 20px; display: inline;">일</h4>
	                </td>
	                <td><button type="button" id="deposit_'+pocketCode+'" onClick ="autoDivSetting(this.id)">확인</button></td> 
	           </tr>
               
                --%>
               
         
               
            </tbody> 
      
       </table>         
                
       <div>
        
            <!-- 급여일로 설정 checkbox -->       
            <div class="checkTerms service-checkbox" style="float:right;">
                <input name="checkAllDate" id="checkAllDate" type="checkbox" value="agree">급여일로 설정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>       
        
        <br><br>
        
            <button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#setFromParking"
                    style="width: 200px;">
                    내 자산 <br> 영혼까지 끌어모아 <br>저축하는 방법!
            </button>

       </div>
       
     </div>
     </form>
     
     
     <!-- 모달 -->
      <div class="modal fade" id="setFromParking" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">내 자산 영혼까지 끌어모아 저축하기</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">     
                매달 예산 사용 마지막 날, 모든 주머니에서 남은 잔액을 파킹 주머니로 자동 이동 설정을 해보세요! <br>
                ※ 파킹 주머니는 고객님이 설정한 목표 금액이 모이기 전까지 출금이 불가합니다. <br>
                설정하러 가볼까요?
            
          </div>
          <div class="modal-footer">
            <button type="button" class="divBtn btn btn-primary" id="divBtn" onclick="autoFromParking()">확인</button> 
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          </div>
        </div>
      </div>
    </div>
    
    
    <br><br>
    
    
    <!-- 자동 파킹 주머니 설정 모달 확인 클릭 후 div 생성 -->
    <div class="border-box" id="autoFromParkingSet" style="display:none; text-align:center; border:1px solid; border-radius:20px; margin:auto; width:50%; ">
        <h3>파킹 주머니 자동 이동 설정</h3>
        <p>남은 잔액을 모두 끌어모아 새는 돈 없이 종잣돈 만들기가 가능합니다.</p>
        
        <br>
        <div class="row" style="margin:0 auto;">
            <!-- <div class="col-4">파킹 주머니 목표금액 : </div> -->
            <div style="margin:0 auto; display:inline;">파킹 주머니 목표 금액 : 
            <input type="text" name="parkingGoal" id="parkingGoal" placeholder="(원)" 
                   class="form-control" style="display:inline; color:#008485; width:200px; text-align: center; margin:0 auto;">
            </div> 
            <div>
                파킹 주머니 이동 날짜 : 예산 사용 마지막날 (매달 <p style="display:inline; color:#008485; ">${incomeMap.incomeDate}</p>일)
            </div>
                
            <br><br>
            <div>
                설정 금액이 모일 때까지 파킹 주머니는 입금만 가능, 출금은 불가합니다.
                  
                <br>
                <div class="btn btn-primary" id="parkingSetBtn">확인</div>
            </div>
            
        </div>  
    </div><br><br>
 
</body>
</html>