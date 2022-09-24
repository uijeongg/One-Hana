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

//상품 안내 확인 후 자동 check
$(document).ready(function() {
	
        $('#confirm1').click(function() {    
            $("input:checkbox[id='checkconfirm1']").prop("checked", true)  
        })          

        $('#confirm2').click(function() {    
            $("input:checkbox[id='checkconfirm2']").prop("checked", true)   
        })
    });  


//체크박스 전체선택
$(document).on('click','#checkAll',function(){
    if($('#checkAll').is(':checked')){
       $('.checkOne').prop('checked',true);
    }else{
       $('checkOne').prop('checked',false);
    }
});


 function checkRegex(){
	let check = true

    let agree1 = $('#checkconfirm1').is(':checked');
    let agree2 = $('#checkconfirm2').is(':checked');

    console.log('agree' + agree1)
    console.log('agree' + agree2)

    //첫번째 정보 동의 체크 확인
    if(!agree1 || !agree2){
    	check = false
       alert('모든 정보와 약관 확인은 필수 체크 항목입니다.')
    }
    //두번째 정보 동의 체크 확인
   /*  else if(!agree2.checked){
    	check = false
       alert('금리 안내 확인은 필수 체크 항목입니다.')
    }    */
    return check
 } 


</script>


</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	
    <jsp:include page="/WEB-INF/jsp/include/sidebar0.jsp"></jsp:include>




 
<!--  <section> -->


	<%-- 전환할 통장 정보 --%>
	<h2 style="text-align:left; color:#008485; display:inline-block; margin-bottom: 0px; margin-top: 25px;">통장 전환</h2>
    <hr style="width: 900px; height: 5px; background-color:#066262;">
    <h4 style="text-align:left; margin-bottom:7px; margin-top:30px;">전환 선택 통장</h4><br>
    
    
    
    
    
		<div style=" background-color:#E0E0E0; width:900px; margin-left:405px; border:2px solid; border-radius:20px; ">
			
			<p style="margin-left:25px; font-size:25px;">${ accountOne.accountName }</p>
			<p style="margin-left:25px; font-size:20px;">${ accountOne.accountNo }</p><br>
			<p style="text-align:right; margin-right:30px;">잔액 &nbsp; <strong style="font-size:25px;">${ accountOne.balance }&nbsp;</strong>원</p>
			<%-- <h5 style="text-align:right;"> ${ accountOne.balance }원&nbsp;&nbsp;&nbsp;&nbsp;</h5> --%>
				  
		 </div>

	<br><br>
	
	<form action="${pageContext.request.contextPath}/changeSuccess" method="post">	
	<input type="hidden" name="accountNo" value="${ accountOne.accountNo }">
	<input type="hidden" name="balance" value="${ accountOne.balance }">
	<%-- controller로 값 전달 --%>
	
	
		<%-- 상품정보, 금리 등 안내 확인 --%>
		<div style="margin-left:405px; width:980px;">
		<h5 style="margin-bottom:10px; margin-top:20px;">상품 정보 및 금리 안내</h5>
			<table id="check" style="width:95%;">
			<br>
		   		<tr>
	      			<!-- <td><b> 통장 상품 설명서 </b></td> -->
	      			<td>
	      			    <button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#confirm1"
	      			            style="width:600px; font-size:18px; font-family:hanaBFont;">통장 상품 설명서 </button> 
                    </td>
                    <td>
	                    <div class="checkTerms service-checkbox">
	                    <input name="checkconfirm1" id="checkconfirm1" type="checkbox" value="">
                        <label style="color:black; font-weight:bold; font-size:17px;">확인했습니다</label>
                    </div>
                    </td>
	      		</tr>
	      		
	      		<tr>
	      			<td><button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#confirm2"
	      			            style="width:600px; font-size:18px; font-family:hanaBFont;">금리 안내 </button> 
                    </td>
                    <td>
                        <div class="checkTerms service-checkbox">
                        <input name="checkconfirm2" id="checkconfirm2" type="checkbox" value="agree">
                        <label style="color:black; font-weight:bold; font-size:17px;">확인했습니다</label>
                        </div>
                     
                    </td>
	      		</tr>
			</table>
	</div>
	
	
	
	<div class="modal fade" id="confirm1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
        
          <p style="align:right;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
          </p>
          
          <div class="modal-body">
                <iframe src="${pageContext.request.contextPath }/resources/document/myone_manual.pdf"
                        style="width:100%; height:600px;">
                </iframe>  
          </div>
          
        
          
          <h6 style="text-align:center; margin-top:20px;">※ 본인은 상품 설명서를 제공받고 그 내용을 충분히 이해하였음을 확인합니다.</h6>
          
           <div style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary" id="confirm1" data-bs-dismiss="modal" style="width:150px; margin-top:10px; margin-bottom:25px;">확인</button>         
            </div>
        
        </div>
      </div>
    </div>
	
	
	
	
	<div class="modal fade" id="confirm2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" style="width: 600px;">
        <div class="modal-content">
          
       <p style="align:right;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
       </p>   
          
          <div class="modal-body">
               <h4 style="font-size:20px; text-align:center;">마이원하나 통장 금리</h4><br>
                                        <table style="border : 3px solid #E0E0E0; width : 70%; height : 100px; margin-top : 15px;  margin : auto; text-align : center;">
                                            <tr style="background: #E0E0E0">
                                                <td width="50%" style="border-right:2px solid white;"><b>분류</b></td>
                                                <td><b>금리(연율, 세전)</b></td>
                                            <tr>
                                            <tr>
                                                <td style="border-right:2px solid #E0E0E0;">예금</td>
                                                <td>0.5%</td>
                                            </tr>
                                            
                                        </table>
    
          </div>
          
         
          
          <h6 style="text-align:center; margin-top:20px;">※ 본인은 상품 설명서를 제공받고 그 내용을 충분히 이해하였음을 확인합니다.</h6><br>
          
          <div style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary" id="confirm1" data-bs-dismiss="modal" style="width:150px; margin-bottom: 25px;">확인</button>         
           <!--  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="width:150px; background-color:#808080;">취소</button> -->
          </div>
          
        </div>
      </div>
    </div>
	
	
	
	
	
	   
	
	
	
	 
	
	
	
	
	
	
	
	
		<br><br>
	
		<%-- 약관 동의 --%>
		<div style="margin-left:405px;">
		<h5 style="margin-bottom:10px; margin-top:20px;">통장 약관 동의</h5>
		<h6> 통장전환 및 안전한 금융거래를 위하여 관련 법률과 규정에 따라 동의 및 확인이 필요합니다. </h6>
		   
		   
		   
		   <table id="check" style="width:900px; height:220px; border:2px solid #008485;"><br>

		   		<tr style="text-align:center; border-bottom:2px solid #008485;">
	      			<th colspan="2" style="font-size:17px; color:black;"> 통장약관</th>
	      		</tr>
	      		
	      		
	      		<tr style="text-align:center; border-bottom:2px solid gray;">
	      			<td style="font-weight:bold; color:black; border-right: 2px solid #008485;"><b> 통장전환 약관 전체 동의</b></td>
	      			<td><input name="checkAgree" id="checkAll" type="checkbox" value="agree"> 
	      			    <label style="color:black; font-weight:bold; font-size:15px;"> 전체동의</label></td>
	      			<!-- <td><input name="checkTerm1" id="chk_all" type="checkbox" value="agree"> <label class="inpSchClass00" for="checkbox1">전체동의</label></td> -->
	      		</tr>
	      		
	      		<tr style="text-align:center;">
	      			<td style="color:black; border-right: 2px solid #008485;">예금거래 기본 약관</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> 
	      			    <label style="color:black; font-weight:bold; font-size:15px;"> 약관동의</label></td>
	      		</tr>
	      		
	      		<tr style="text-align:center;">
	      			<td style="color:black; border-right: 2px solid #008485;">입출금이 자유로운 예금 약관</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> 
	      			    <label style="color:black; font-weight:bold; font-size:15px;"> 약관동의</label></td>
	      		</tr>
	      		
	      		<tr style="text-align:center;">
	      			<td style="color:black; border-right: 2px solid #008485;">비과세 종합저축 특약</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> 
	      			    <label style="color:black; font-weight:bold; font-size:15px;"> 약관동의</label></td>
	      		</tr>
	      		
	      		<tr style="text-align:center;">
	      			<td style="color:black; border-right: 2px solid #008485;">마이원하나 통장 특약</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> 
	      			    <label style="color:black; font-weight:bold; font-size:15px;"> 약관동의</label></td>
	      		</tr>
		                                                                
		   </table>
       


		<!-- <button type="submit" class="send" id="submitBtn" data-toggle="modal" data-target="#confirm-modal">확인</button> -->
	<!-- 	<input type="submit" id="gogo" value="확인">  -->
		
	



 
    <div class="col-md-12" style="font-size : 20px;" >
           <div style="margin-left : 300px; margin-top : 30px;">
                   <input name="checkAgree" type="checkbox" value="agree"> 
                   <label class="inpSchClass00" for="checkbox1" style="font-size:17px; font-weight:bold; color:black;">
                        본인은 위 안내에 이해하고 동의합니다</label>
           </div>
           </div><br>
           
           
              <div style="margin-left: 300px;"> 
              
                <input type="submit" class="btn btn-primary" id="gogo" value="확인" onclick="return checkRegex()"
                	   style="width:150px; height:50px; border-radius:5px; background-color:#008485; color:white; border:none; font-weight:bold;"> 
                <button type="button" class="btn" data-bs-dismiss="modal"
                        style="background-color:#808080; width:150px; height:50px; border-radius: 5px; color:white; border:none; font-weight:bold;">취소</button> 
              </div>
 
              <!--   background-color:#808080 -->


        <br><br>

</div> 
 
	</form>
	
	
	
<!-- </section> -->
	
</body>
</html>