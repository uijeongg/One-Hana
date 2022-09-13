<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


    <%-- 각각의 pocket --%>
	<div class="search-box" id="search-box">
		<c:if test="${ not empty pocketList }">
			<c:forEach var="pocket" items="${ pocketList }">
				<div style="border: 1px solid black; padding: 10px; width: 500px;" class= "row">
					<div class="col-9">
						<h4 class="fromPocket1" style='display:inline'>${ pocket.pocketName }</h4>
					    <h4 style='display:inline'> 주머니 </h4><br>
						<small>${ pocket.pocketDtl }</small><br><br>
						<h4 style='display:inline'>${ pocket.balance }</h4>
						<h4 style='display:inline'> 원 </h4><br>
						<%-- <input type="hidden" name="accountNo" value="${ pocket.accountNo }">
						<input type="hidden" name="pocketCode" value="${ pocket.pocketCode }"> --%>
					</div>
					
					<%-- 각각의 pocket에서의 잔액이동 버튼 --%>
					<button type="button" class="doDivide col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#divideGo">
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
