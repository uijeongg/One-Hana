<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


    <%-- 각각의 pocket --%>
	<div class="search-box" id="search-box">
		<c:if test="${ not empty pocketList }">
			<c:forEach var="pocket" items="${ pocketList }">
				<div style="margin-bottom:20px; border:3px solid; padding:10px; width:788px; height:140px; border-radius:25px; " class= "row">
					<div class="col-9">
						<h4 class="fromPocket1" style="display:inline;">${ pocket.pocketName }</h4>
					    <h4 style="display:inline; font-weight:bold;"> 주머니 </h4><br>
						<small style="font-size:17px; color:black; font-weight:bold;">${ pocket.pocketDtl }</small><br><br>
						<h4 style="text-align:right; margin-right:25px;">${ pocket.balance } 원</h4>
					
						
						
					</div>
					
					<%-- 각각의 pocket에서의 잔액이동 버튼 --%>
					<button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#divideGo"
					        style="font-family:hanaBFont; border-radius:22px; ">
	                    잔액이동
	                </button>
				
					
					
				</div>
			</c:forEach>
		</c:if>
	</div>
    


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $('.doDivide').on('click',function(){

    	$('#toPocket').empty();
    	   	
    	var fromPocket = $(this).prev().children('.fromPocket1').text()
    	console.log(fromPocket)
    	$('#fromPocket').text(fromPocket + ' 주머니　➜　' )
    	
    	console.log('${pocketList[0].pocketName}')
    	console.log(typeof('${fn:length(pocketList)}'))
    	var len = '${fn:length(pocketList)}'*1
    	console.log(typeof(len))
        console.log(fromPocket)    	
    	
    	
    	<c:forEach items="${pocketList}" var="pocket"> 
    	console.log('${pocket}')
        console.log('${pocket.pocketName}')
        
    	   if(fromPocket != '${pocket.pocketName}'){
    		   $('#toPocket').append('<option value="${pocket.pocketName}"> ${pocket.pocketName} 주머니 </option>');
    	   }
    	</c:forEach> 
    })    
</script>
