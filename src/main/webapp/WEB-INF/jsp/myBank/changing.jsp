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
 
 
 
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet"> 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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









 
 <section>


	<%-- 전환할 통장 정보 --%>
	<h4> [ 전환 선택한 통장 ] </h4>
		<div style="border: 1px solid black; padding: 10px;">		
			
			<h4>통장이름 ${ accountOne.accountName }</h4><br>
			<h5>계좌번호 ${ accountOne.accountNo }</h5><br>
			<h5>잔액 ${ accountOne.balance }원</h5><br>
				  
		</div>

	<br><hr><br>
	
	
	
	
	<form action="${pageContext.request.contextPath}/changeSuccess" method="post">	
	<input type="hidden" name="accountNo" value="${ accountOne.accountNo }">
	<input type="hidden" name="balance" value="${ accountOne.balance }">
	<%-- controller로 값 전달 --%>
	
	
		<%-- 상품정보, 금리 등 안내 확인 --%>
		<h4> [ 상품 정보 및 금리 안내 ] </h4>
		
			<table  id="check" style="width : 95%; margin: auto;">
			<br>
		   		<tr>
	      			<!-- <td><b> 통장 상품 설명서 </b></td> -->
	      			<td> <button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#confirm1">
                        통장 상품 설명서 </button> 
                    </td>
                    <td>
	                    <div class="checkTerms service-checkbox">
	                    <input name="checkconfirm1" id="checkconfirm1" type="checkbox" value="">
                        <label>확인했습니다</label>
                    </div>
                    </td>
	      		</tr>
	      		
	      		<tr>
	      			<td><button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#confirm2">
                        금리 안내 </button> 
                    </td>
                    <td>
                        <div class="checkTerms service-checkbox">
                        <input name="checkconfirm2" id="checkconfirm2" type="checkbox" value="agree">
                        <label>확인했습니다</label>
                    
                     
                    </td>
	      		</tr>
			</table>
	
	
	<div class="modal fade" id="confirm1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">잔액이동</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
                <iframe src="${pageContext.request.contextPath }/resources/document/myone_manual.pdf"
                        style="width:100%; height:750px;">
                </iframe>  
          </div>
          
          <div class="modal-footer">
          
          <h3>※ 본인은 상품 설명서를 제공받고 그 내용을 충분히 이해하였음을 확인합니다.</h3>
          
            <button type="button" class="btn btn-primary" id="confirm1" data-bs-dismiss="modal">확인</button>         
            <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button> -->
          </div>
        </div>
      </div>
    </div>
	
	
	
	
	<div class="modal fade" id="confirm2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">잔액이동</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
               <b style="font-size : 25px">마이원하나 통장</b>
                                        <table style="border : 3px solid #f5f7ff; width : 100%; height : 100px;margin-top : 15px; text-align : center;">
                                            <tr style="background: #f5f7fa">
                                                <td width="50%"><b>분류</b></td>
                                                <td><b>금리(연율, 세전)</b></td>
                                            <tr>
                                            <tr>
                                                <td>-</td>
                                                <td>0.1%</td>
                                            </tr>
                                            
                                        </table>
    
          </div>
          
          <div class="modal-footer">
          
          <h3>※ 본인은 상품 설명서를 제공받고 그 내용을 충분히 이해하였음을 확인합니다.</h3>
          
            <button type="button" class="btn btn-primary" id="confirm1" data-bs-dismiss="modal">확인</button>         
            <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button> -->
          </div>
        </div>
      </div>
    </div>
	
	
	
	
	
	   
	
	
	
	
	
	
	
	
	
	
	
	
	
		<br><hr><br>
	
		<%-- 약관 동의 --%>
		<h4> [ 통장 약관 동의 ]</h4>
		<h6> 통장전환 및 안전한 금융거래를 위하여 관련 법률과 규정에 따라 동의 및 확인이 필요합니다. </h6>
		   
		   <table  id="check" style="width : 95%; margin: auto;">
		   	
		   		<br>
		   		<tr>
	      			<th colspan="2"> 통장약관</th>
	      		</tr>
	      		
	      		
	      		<tr>
	      			<td><b> 통장전환 약관 전체 동의</b></td>
	      			<td><input name="checkAgree" id="checkAll" type="checkbox" value="agree"> <label>전체동의</label></td>
	      			<!-- <td><input name="checkTerm1" id="chk_all" type="checkbox" value="agree"> <label class="inpSchClass00" for="checkbox1">전체동의</label></td> -->
	      		</tr>
	      		
	      		<tr>
	      			<td>예금거래 기본 약관</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> <label>약관동의</label></td></td>
	      		</tr>
	      		
	      		<tr>
	      			<td>입출금이 자유로운 예금 약관</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> <label>약관동의</label></td></td>
	      		</tr>
	      		
	      		<tr>
	      			<td>비과세 종합저축 특약</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> <label>약관동의</label></td></td>
	      		</tr>
	      		
	      		<tr>
	      			<td>마이원하나 통장 특약</td>
	      			<td><input name="checkAgree" class="checkOne" type="checkbox" value="agree"> <label>약관동의</label></td></td>
	      		</tr>
		
		   </table>



		<!-- <button type="submit" class="send" id="submitBtn" data-toggle="modal" data-target="#confirm-modal">확인</button> -->
	<!-- 	<input type="submit" id="gogo" value="확인">  -->
		
	



 
    <div class="col-md-12" style="font-size : 20px;" >
           <div style="margin-left : 300px; margin-top : 30px;">
                   <input name="checkAgree" type="checkbox" value="agree"> 
                   <label class="inpSchClass00" for="checkbox1">
                        본인은 위 안내에 이해하고 동의합니다</label>
           </div>
           </div>
              <div> 
              
                <input type="submit" class="btn btn-primary" id="gogo" value="확인" onclick="return checkRegex()"> 
    
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button> 
              </div>
 
	</form>
	
	
	
</section>
	
</body>
</html>