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


<script type="text/javascript">
	$(function(){
		search();
		$('#pocketAddBtn').on("click", function(){
			addPocket();
		})
	})
	
	
	
	function addPocket(){
        $.ajax({
            url : '${ pageContext.request.contextPath }/addPocketAjax',
            type : 'post',
            data : {
                accountNo  : '${ MyAccount.accountNo }',
                pocketName : $('#pocketName').val(),
                pocketDtl  : $('#pocketPurpose').val()
            },
            success : function(data) {
                if(data == 'success'){
                    search();
                }
            }
        })
    }
	
	
	
	function search(){
		$.ajax({
			url : '${ pageContext.request.contextPath }/pocketSearch',
			type : 'post',
			data : {
				accountNo : '${ MyAccount.accountNo }'
			},
			success : function(data) {
				$('#pocketList').html(data)
			}
		})
	}
	
	
</script>

<script>

function dividePocket() { 
	
	//console.log('${ MyAccount.accountNo }')
	//console.log($('#divAmount').val())
	//console.log($('#fromPocket').text())
	//console.log($('#toPocket').text())
	
//	var accountNo = '${MyAccount.accountNo}'
//	console.log(accountNo)
	var divAmount = $('#divAmount').val()*1
	var fromPocket = $('#fromPocket').text().split(' ')[0] //공백을 기준으로 자르고 0번째 인덱스만 가져오기
	var toPocket = $('#toPocket').val() //select option 중 선택된 값만 가져오기
	console.log(divAmount)
	console.log(fromPocket)
	console.log(toPocket)
	console.log(typeof divAmount)
	console.log(typeof fromPocket)
	console.log(typeof toPocket)
	
    $.ajax({
        url  :  '${ pageContext.request.contextPath }/doDivideAjax',
        type : 'POST',
        data : { 
        //	accountNo  : accountNo,
        	divAmount  : divAmount,
        	fromPocket : fromPocket,
        	toPocket   : toPocket     	
        },
        success: function (data) {
        	console.log("성공");
        	console.log(data);
        	console.log(typeof data);
        	
        	$('#pocketList').empty();
        	
        	search();
        	
        	
        },
        error  : function () {
            console.log("다시다시");
        }
    }); 
     
}

</script>

</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

	<h2>MyOne HANA 통장</h2>
	
	<div id="pocket_div">
		<div style="border: 1px solid black; padding: 10px;">	
		
			<h3>MyOne HANA 통장</h3>	<br>
	        <%-- <h5>통장이름 ${ MyAccount.accountName }</h5><br> --%>
			<h5>계좌번호 ${ MyAccount.accountNo }</h5><br>
			<h5>잔액 ${ MyAccount.balance }원</h5><br>
		
			<!-- 조회, 이체 버튼 만들기 -> 여기서 jsp 넘어가기 거래내역 나오는! -->
		</div>
	   
	   <hr><h3>내 주머니 현황</h3><br> <%-- ui 홍씨처럼 가로로 만들기 --%>
		
		<div id = "pocketList">
			
		</div>
	</div>
	
	
	
	
	
	
		<div id="createDiv">
			<%-- 여기에 ajax로 추가해준 div 주머니가 자동 생성 됨 --%>
		</div>
		
		
		
		
		
		
		<%-- 주머니 추가 버튼 --%>
		<div>
			<input type="button" id="pocket" value="주머니 추가" onclick="displayPocket1()">
			
			<div id = "addPocket" style="display: none; border-style:solid;">
				<div class="row">
					<div class="col-2">추가할 주머니 이름 : </div>
					<input type="text" name="pocketName" id="pocketName" placeholder="주머니 이름을 입력하세요" class="col-8">
				</div>
				<div class="row">
					<div class="col-2">용도 : </div>
					<input type="text" name="pocketPurpose" id="pocketPurpose" placeholder="최대 30자까지 입력 가능합니다" class="col-8">
				</div>
				<div class="btn btn-secondary" id="pocketAddBtn">주머니 추가하기</div>
			</div>			
		</div><br>
	



    <%-- 주머니 추가 버튼 open --%>
	<script>
 		function displayPocket1() { 

			let pock = document.getElementById("addPocket");
			if(pock.style.display == "none"){
				pock.style.display = "";
			} else {
				pock.style.display = "none";
			}		
	 	} 
	</script>	
	



	<%-- Modal 안에서 진짜 잔액이동 실행하는 버튼 --%>
	<div class="modal fade" id="divideGo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">잔액이동</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        
	           <table>
	               <tr>
	                   <%-- 보내는 통장 --%>
	                   <th ><p id="fromPocket"></p></th>
	                  <%--  <input type="hidden" id="divFrom" name="divFrom" value="${ pocket.pocketCode }" /> --%>
	                   
	                   <td>
	                       <select id="toPocket" name="toPocket" class="form-select mb-3 form-control" aria-label="Default select example">
	                           <option selected></option>
                               <!-- -->
	                       </select>
	                   </td>
	               </tr>
	               <tr>
	                   <th>이동금액</th>
	                       <td><input value="" class="form-control" placeholder="보낼 금액(원)" type="text" id="divAmount" name="divAmount"></td>	               
	               </tr>  
	           </table>
	        
	      </div>
	      <div class="modal-footer">
  	        <button type="button" class="divBtn btn btn-primary" id="divBtn" onclick="dividePocket()">잔액이동</button>
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>



   
     <footer>
        <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
</body>
</html>