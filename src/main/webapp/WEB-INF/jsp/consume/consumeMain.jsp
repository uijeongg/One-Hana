<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- fullcalendar CDN -->
<link href="resources/mycss/main.css" rel="stylesheet">
<link href="resources/mycss/calendar.css" rel="stylesheet">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
    
    <!-- side bar start -->
    <div class="container-fluid sidepanel-inner d-flex flex-column"
      style="width:20%; float:left; margin-top:30px; margin-left:10px; margin-right:10px;">
      <div style="padding-left: 30px;">
         <h3 style="margin-bottom: 10px;">
            <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
            <strong style="color:#008485;"> HANA </strong>   
         </h3>
         <hr style="width: 200px; height: 5px; background-color:#066262;">
         <div>
            <a href="${pageContext.request.contextPath}/mybankMain"
               style="color:#808080;">내 주머니</a>
         </div>     
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/setBudgetMain"
               style="color:#808080;">내 예산 관리</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/consumeMain"
               style="color:#808080;">내 소비 현황</a>
         </div>
         <hr style="width: 200px;">  
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">내 투자 성향</a>
         </div>
         <hr style="width: 200px;">
          <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">맞춤 금융 상품</a>
         </div>
         <hr style="width:200px;">
      </div>
   </div>
   <!-- side bar end -->


    
    <div class="container text-center">
       <div class="row">
       <div class="col-12">
    <div class="row g-5 justify-content-center mb-5">
               <div style="text-align: center; font-size:30px;">
      <!--          
        <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
        <strong style="color:#008485;"> HANA </strong>  통장 가입</h2>
         -->
         
        <!--  <span> 나의 </span><span  style="color:#008485;"> 소비 현황</span> -->
          <span style="text-align:left; color:#008485; display:inline-block; margin-bottom: 0px; ">나의 소비 현황</span>
       </div>
    </div>

    
    <hr style="width: 900px; height: 5px; background-color:#066262;">





	<div class="d-flex justify-content-center mt-5" id="calendarParent">
		<div id='calendar'></div>
	</div>
    </div>
     <div class="">
     </div>
     </div>
     </div>
    
	<!--JQUERY  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!--fullCalendar-->
	<script src="resources/myjs/main.js"></script>


    <script>
		$(function(){
			 let id = '${loginVO.id}' 
		     let consumeArray = [];
			 fetch("/getConsumeData?id="+id)
			 .then(res=>res.json())
			 .then(res=>{
	
				 let consumeList = res; 
				 for(let i=0; i<consumeList.length;i++){
					 let calendar = {};
				     calendar.title = consumeList[i].CONNAME  + ' / ' + consumeList[i].CONAMOUNT + ' 원';
				     calendar.start = consumeList[i].CONDATE;
				     calendar.allDay = false;
				     consumeArray.push(calendar);
				 }
				  //  console.log("의정이 청년이룸: "+consumeArray.length);
				 return new Promise((resolve,reject)=>{
					 resolve("확인");
				 })	 
			 })
			 .then(res=>{
			 
				    const now = new Date().toLocaleString();
				    let year = now.substring(0,4);
				    let month = now.substring(5,7);
				    let day = now.substring(8,10);
				    if(month.startsWith(' ')){
				    	   month = '0'+month.substring(1,2);
				    }
				    if(day.startsWith(' ')){
				        day = '0'+day.substring(1,2);
				     }
				    let initialDate = year+'-'+month+'-'+day;
				    console.log("initialDate : "+initialDate);
				    let calendarEl = document.getElementById('calendar');
				    let calendar = new FullCalendar.Calendar(calendarEl, {
				    	  headerToolbar: {
				    		   left: 'prev,next today',
				    		   center: 'title',
				    		   right: 'dayGridMonth,timeGridWeek,timeGridDay'
				    	  },
	                initialDate: initialDate,
	                locale:'ko',
	                select: function(arg) {
	                	  console.log(arg);
	                var title = prompt('입력할 일정:');
	             // title 값이 있을때, 화면에 calendar.addEvent() json형식으로 일정을 추가
	                if (title) {
	                   calendar.addEvent({
	                     title: title,
	                     start: arg.start,
	                     end: arg.end,
	                     allDay: arg.allDay,
	                     content:arg.content,
	                     backgroundColor:"yellow",
	                     textColor:"black"
	                   })
	                 }
	                 calendar.unselect()
	               },
	                eventClick: function(arg) {
	                  // 있는 일정 클릭시,
	                    console.log("#등록된 일정 클릭#");
	                    console.log(arg.event);
	                  
	                 if (confirm('Are you sure you want to delete this event?')) {
	                   arg.event.remove()
	                 }
	               },
	               editable: true,
	               dayMaxEvents: true, // all  ow "more" link when too many events
	               events:consumeArray
	
	              })
				   calendar.render();
			 })
	             
		});
    </script>
    
    
    
    
  

</body>
</html>