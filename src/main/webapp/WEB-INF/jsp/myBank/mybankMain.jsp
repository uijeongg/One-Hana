<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<style type="text/css">
.doDivide:hover {
background:none !important;
color:black !important;
border:none !important;
} 

.doDivide:focus {
background:none !important;
color:black !important;
border:none !important;
}   
</style>

<script type="text/javascript">
	$(function(){
		search();
		$('#pocketAddBtn').on("click", function(){
			$('#pocket').show();
			$('#addPocket').hide();
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
	var fromPocket = $('#fromPocket').text().split(' ')[0] //????????? ???????????? ????????? 0?????? ???????????? ????????????
	var toPocket = $('#toPocket').val() //select option ??? ????????? ?????? ????????????
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
        	console.log("??????");
        	console.log(data);
        	console.log(typeof data);
        	
        	$('#pocketList').empty();
        	
        	search();
        	
        	
        },
        error  : function () {
            console.log("????????????");
        }
    }); 
     
}

</script>

</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	
	<div class="justify-content-center">
	
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>

	<h3 style="text-align:left; margin-left:26px; display:inline-block; margin-bottom: 0px; margin-top: 30px;">??????</h3>
    <h3 style="text-align:left; margin-left:7px; color:#008485; display:inline-block; margin-bottom: 0px; margin-top: 30px;"> MOHANA</h3>
    <hr style="width:779px; height:7px; background-color:#066262; position:relative; left:23px;">

	
	<div id="pocket_div">
	
		<div style="margin-left:365px; border:none; width:785px; background-color:#ececec; height:160px; border-radius:25px; position:relative;">	
		
			<h3 style="margin-left:30px; padding-top:20px;">
			    <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
                <strong style="color:#008485;"> HANA </strong>??????
			
			</h3>	
	        <%-- <h5>???????????? ${ MyAccount.accountName }</h5><br> --%>
			<h4 style="margin-left:30px; font-size:26px;">${ MyAccount.accountNo }</h4>
			<h4 style="margin-top:13px; text-align:right; margin-right:40px;">?????? &nbsp; <strong style="font-size:30px; color:#008485;"><fmt:formatNumber value="${ MyAccount.balance }" pattern="#,###"/></strong>  ???</h4><br>
		
		
		
		  
		<!-- background-color: #d9d9d9; border:4px solid; border-color:#a0a0a0; -->
		
		
		
			<!-- ??????, ?????? ?????? ????????? -> ????????? jsp ???????????? ???????????? ?????????! -->
		</div>
	   
	   
	   <br>
		<h3 style="text-align:left; margin-left:20px; color:#008485; display:inline-block; margin-bottom: 0px; margin-top: 20px;">??? ????????? ??????</h3>
		<hr style="width:779px; height:7px; background-color:#066262; position:relative; left:20px;">
		<div id = "pocketList" style="margin-left:370px;">
			<!-- ????????? ?????? ajax -->
		</div>
	</div>
	
	
	
	
	
	
		<div id="createDiv" >
			<%-- ????????? ajax??? ???????????? div ???????????? ?????? ?????? ??? --%>
		</div>
		
		
		
		
		
		
		<%-- ????????? ?????? ?????? --%>
		<div style="margin-left:360px;">
			<input type="button" id="pocket" value="????????? ??????" onclick="displayPocket1()"
				   class="btn" 
			       style="font-family:hanaBFont; background-color:#c6c6c6; font-size:20px; width:788px; height:53px; border-radius:10px; color:white; border:none;">
			
			
			<div id ="addPocket" style="width:788px; display:none; border:solid 5px; border-radius:20px; border-color:#c6c6c6;">
				<div class="row" style="padding-left:80px; display:inline; margin-top:20px;">
					<!-- <div class="col-4"> ?????? ????????? ?????? : </div> -->
					<div style="display:inline; text-align:left; font-size:18px; margin-top:30px;"> ?????? ????????? ?????? : </div>
					<input type="text" name="pocketName" id="pocketName" placeholder="????????? ????????? ???????????????" style="font-size:20px; width:300px; margin-top:30px; border:none; outline:none; border-bottom:2px solid #008485;">
				</div>
				<br>
				<div class="row" style="display:inline; padding-left:80px; margin-top:5px;">
					<div style="display:inline; text-align:left; font-size:18px;"> ????????? ?????? : </div>
					<input type="text" name="pocketPurpose" id="pocketPurpose" placeholder="?????? 30????????? ?????? ???????????????" style="border:none; border-bottom:2px solid #008485; outline:none; font-size:20px; width:500px;  margin-top:10px;">
				</div>
				<br>
				
				<div style="text-align:center;">
				<input type="button" value="????????????" id="pocketAddBtn" 
				       style="font-size:20px; background-color:#c6c6c6; color:white; border:none; border-radius:10px; margin-top:20px; margin-bottom:20px;
				              width:200px; height:50px;">
			    </div>
			</div>			
		</div><br>
	



    <%-- ????????? ?????? ?????? open --%>
	<script>
 		function displayPocket1() { 

 			$('#pocket').hide();
            $('#addPocket').show();
          //  $('pocketName').val('');
           // $('pocketPurpose').val('');
		/* 	let pock = document.getElementById("addPocket");
			if(pock.style.display == "none"){
				pock.style.display = "";
			} else {
				pock.style.display = "none";
			} */		
	 	} 
 		
 		
	</script>	
	



	<%-- Modal ????????? ?????? ???????????? ???????????? ?????? --%>
	<div class="modal fade" id="divideGo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content" style="border:5px solid; border-radius:10px; border-color:#008485;">
	    
	      <!-- <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel" style="margin-left:190px;">????????? ????????????</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div> -->
	      
	      
	      
	      <p style="align:right;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
          </p>  
	      
	      
	      <div class="modal-body">
	      
	      <h4 style="font-size:25px; text-align:center; margin-bottom:20px;">
	           ?????????&nbsp;<strong style="color:#008485;">?????? ??????</strong></h4><br>
               
	        
	           <table style="margin-left:auto; margin-right:auto; text-align:center; font-size:20px;">
	               <tr>
	                   <%-- ????????? ?????? --%>
	                   <th><p id="fromPocket"></p></th>
	                  <%--  <input type="hidden" id="divFrom" name="divFrom" value="${ pocket.pocketCode }" /> --%>
	                   
	                   <td>
	                       <select id="toPocket" name="toPocket" class="form-select mb-3 form-control" aria-label="Default select example" style="background-color:white; font-size:17px;">
	                           <option selected style="font-size:17px; font-family:hanaBFont;"></option>
                               <!-- -->
	                       </select>
	                   </td>
	               </tr>
	               <tr>
	                   <th>????????????</th>
	                       <td><input value="" class="form-control" placeholder="?????? ?????? (???)" type="text" id="divAmount" name="divAmount" style="font-size:19px; font-family:hanaBFont;"></td>	               
	               </tr>  
	           </table>
	        
	      </div>
	      
	      
	      <div style="text-align:center; margin-top:30px; margin-bottom:40px;">
  	        <button type="button" class="divBtn btn btn-primary" id="divBtn" onclick="dividePocket()" data-bs-dismiss="modal"
  	                style="background-color:#008485; font-size:20px; width:200px; height:40px; font-family:hanaBFont; border-radius: 5px; color:white; border:none;">
  	                ????????????</button>
	        <!-- <button type="button" class="btn" data-bs-dismiss="modal" style="background-color:gray; font-family:hanaBFont;">??????</button> -->
	         <button type="button" class="btn" data-bs-dismiss="modal"
                        style="background-color:#808080; font-size:20px; width:100px; height:40px; font-family:hanaBFont; border-radius: 5px; color:white; border:none;">??????</button> 
	        
	        
	    
	        
	        
          </div>

	    </div>
	  </div>
	</div>


</div>
   
    
</body>
</html>