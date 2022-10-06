<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>

<!-- my css  -->
<!-- <link href="/resources/mycss/test.css" rel="stylesheet"> -->
<!-- 	<link href="/resources/mycss/chart.css" rel="stylesheet"> -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

	<!-- side bar start -->
	<div class="container-fluid sidepanel-inner d-flex flex-column"
		style="width: 20%; float: left; margin-top: 37px; margin-left: 10px; margin-right: 10px;">
		<div style="padding-left: 30px;">
			<h3 style="margin-bottom: 10px;">
				<strong style="color: #008485;"> M</strong>y <strong
					style="color: #008485;"> O</strong>ne <strong
					style="color: #008485;"> HANA </strong>
			</h3>
			<hr style="width: 200px; height: 5px; background-color: #066262;">
			<div>
				<a href="${pageContext.request.contextPath}/mybankMain"
					style="color: #808080;">나의 주머니</a>
			</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath}/setBudgetMain"
					style="color: #808080;">나의 예산 관리</a>
			</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath}/checkBudgetMain"
					style="color: #808080;">나의 예산 확인</a>
			</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath }/myParkingMain"
					style="color: #808080;">나의 파킹 관리</a>
			</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath}/consumeMain"
					style="color: #808080;">나의 소비 달력</a>
			</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath }/consumePattern"
					style="color: #808080;">나의 소비 패턴</a>
			</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath }/"
					style="color: #808080;">나의 투자 성향</a>
			</div>
			<hr style="width: 200px;">
		</div>
	</div>
	<!-- side bar end -->


 
   <!-- page title start -->
   <div style="margin-left:670px; margin-top:11px;" class="animate__animated animate__bounce" >
        <img src="${pageContext.request.contextPath}/resources/img/My_gragh3.png" 
            style="width:110px; height:60px;"/>
        <span style="color:#008485; font-size:30px; margin-top: 30px;">&nbsp;" 나의 예산 확인 "</span>
   </div>
   <hr style="width: 1060px; height: 5px; background-color:#066262; margin-bottom:30px;">
   <!-- page title end -->
   
   
   

	<div class="d-flex flex-column" style="width: 60%;">
		<div class="d-flex">
			<div style="width: 70%">
				<span>고정비 예산 사용 추이</span>
				<!-- <div id="chart1" style="margin-bottom: 40px;"></div> -->
				 <figure class="highcharts-figure">   
                    <div id="container1"></div>
                 </figure>
			</div>
			<div style="width:30%; background-color:;" class="d-flex justify-content-center align-items-center">
				<div id="container1comment" style="background-color:#E90061; height:300px; width:250px">
				
					<!-- <h2>코멘트</h2>
					<h5>6개월간 고정비 예산은 1,200,000원이고, 평균 사용 금액은 xx입니다. <br> 고정비 예산을 약 xx% 줄여도 충분합니다! </h5> -->
					
				</div>
			</div>
		</div>
		
		
		
		
		 <div class="d-flex">
            <div style="width: 70%">
                <span>생활비 예산 사용 추이</span>
                <figure class="highcharts-figure">   
                    <div id="container2"></div>
                 </figure>
            </div>
            <div style="width: 30%; background-color:;" class="d-flex justify-content-center align-items-center">
                <div id="container2comment" style="background-color:#E90061; height:300px; width:250px">
                   
                   <!--  <h2>코멘트</h2>
                    <h5>6개월간 생활비 예산은 1,200,000원이고, 평균 사용 금액은 xx원입니다. <br> 자세한 사용 내역을 확인할 수 있습니다. </h5> -->
                    
                    <div>
                         <a href="${pageContext.request.contextPath }/consumePattern"
                            style="border:2px solid; border-color:none; background-color:#008485; color:white;">소비 패턴 확인하러 가기 </a>
                    </div>
                </div>

            </div>
        </div>
        
	</div>
	
	
	
	    



	<%-- <form action="${pageContext.request.contextPath}/checkBudgetMain" method="get">  
</form>
 --%>


   
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/variable-pie.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script>
  Highcharts.setOptions({
     lang:{
        thousandsSep:','
     }         
   })
</script>   
    
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script>
    $(document).ready(function(){   
	//autoDivSetting에서 amount (불러오기 - 포켓번호별로 싹 다)
	//한달 사용 금액 불러오기
	
	   let id = '${loginVO.id}';
	   let accountNo = '${accountNo}';
    
//	     let secondBudget = [];//고정비 예산
//	     let secondMonth = []; //고정비 달
//	     let secondAmount = []; //고정비 사용금액
	  
	     let thirdBudget = []; //생활비 예산
         let thirdMonth = []; //생활비 달
         let thirdAmount = []; //생활비 사용금액
         
         
         
            fetch("/getBudgetGraphData?id="+id+'&accountNo='+accountNo)
            .then(res=>res.json())
            .then(res=>{
                let budgetGraphMap = res;
                       
         
                
                let settingAmountList = budgetGraphMap.settingAmountList;
                let secondConsumeList = budgetGraphMap.secondConsumeList;
                let thirdConsumeList = budgetGraphMap.thirdConsumeList;
                console.log("secondConsumeList :" + secondConsumeList[0].AMOUNT);
                
                let consumeNameList = budgetGraphMap.consumeNameList;
                //console.log("consumeNameList :" + consumeNameList);
                 
                
             
                let amountSum1 = 0;
                for(let i=0;i<secondConsumeList.length;i++) {
                	amountSum1 += secondConsumeList[i].AMOUNT 	
                }
                let sumAvg1 = Math.floor(amountSum1/secondConsumeList.length); //평균
                //console.log("sumAvg1 :" + sumAvg1);
               
                
                let amountSum2 = 0;
                for(let i=0;i<thirdConsumeList.length;i++) {
                    amountSum2 += thirdConsumeList[i].AMOUNT   
                }
                let sumAvg2 = Math.floor(amountSum2/thirdConsumeList.length); //평균
                console.log("sumAvg2 :" + sumAvg2);
                
                
                //console.log("secondConsumeList : " + secondConsumeList[0].MONTH);
                //console.log(settingAmountList[0].AUTODIVAMOUNT); //고정비예산
                //console.log(settingAmountList[1].AUTODIVAMOUNT); //생활비예산
    
                
                //생활비 그래프용
                for(let i=0;i<secondConsumeList.length;i++){  
                    thirdMonth.push(thirdConsumeList[i].MONTH);
                    thirdAmount.push(thirdConsumeList[i].AMOUNT);
                    thirdBudget.push(settingAmountList[1].AUTODIVAMOUNT);
                }
                //console.log(thirdBudget)

                
                
                
                       let monthArray = [];
                       let cateArray = [];
                       
                       for(let i=0;i<consumeNameList.length;i++){
                           cateArray.push(consumeNameList[i].CONNAME);
                    	   if(i==0){
                    		   monthArray.push(consumeNameList[i].MONTH);
                    	   }else{
                    		   if(consumeNameList[i-1].MONTH==consumeNameList[i].MONTH){
                    			   //console.log("22");
                    		   }else{
                    			   monthArray.push(consumeNameList[i].MONTH);
                    		   }
                    	   }
                       }
                       
                       const arr = cateArray; 
                       const set = new Set(cateArray);
                       
                       const resultSet = [...set];
                       
                       let amountArray = [];
                       
                       for(let i=0;i<resultSet.length;i++){
                    	   let tranObject = {};
                    	   tranObject.name = resultSet[i];
                    	   tranObject.data = [];
                    	   for(let j=0;j<monthArray.length;j++){
                    		   for(let h=0;h<consumeNameList.length;h++){
                    			   if(consumeNameList[h].MONTH == monthArray[j]&&resultSet[i]==consumeNameList[h].CONNAME){
                    				   tranObject.data.push(consumeNameList[h].AMOUNT);                     				                         				   
                    			   }else if(consumeNameList[h].MONTH == monthArray[j]&&!resultSet[i]==consumeNameList[h].CONNAME){
                    				   tranObject.data.push('');
                    			   }else{
                    				   //console.log("토할것같애");
                    			   }
                    		   }                   		   
                    	   }
                    	   amountArray.push(tranObject);
                       }
                       console.log("44:"+amountArray[3].data);
                       
                       
   ///////////////////////////////////고정비예산그래프////////////////////////////////////////////////////////////////// 
   
                       Highcharts.chart('container1', {
                             chart: {
                                 type: 'column'
                             },
                             title: {
                                 text: '', //제목
                                 align: 'right'
                             },
                             xAxis: {
                                 categories: monthArray
                             },
                             yAxis: {
                                 min: 0,
                                 title: {
                                     text: '예산 사용 금액 '
                                 },
                                 stackLabels: {
                                     enabled: true,
                                     style: {
                                         fontWeight: 'bold',
                                         color: ( // theme
                                             Highcharts.defaultOptions.title.style &&
                                             Highcharts.defaultOptions.title.style.color
                                         ) || 'gray',
                                         textOutline: 'none'
                                     }
                                 }
                             },
                             legend: {
                                 align: 'right',
                                 x: 10,
                                 verticalAlign: 'top',
                                 y: -1,
                                 floating: true,
                                 backgroundColor:
                                     Highcharts.defaultOptions.legend.backgroundColor || 'white',
                                 borderColor: '#CCC',
                                 borderWidth: 1,
                                 shadow: false
                             },
                             tooltip: {
                                 headerFormat: '<b>{point.x}</b><br/>',
                                 pointFormat: '{series.name}: {point.y:,.0f} 원<br/>Total: {point.stackTotal:,.0f} 원'
                             },
                             plotOptions: {
                                 column: {
                                     stacking: 'normal',
                                     dataLabels: {
                                         enabled: true
                                     }
                                 }
                             },
                             series: amountArray
                         });
                      
                       
     ///////////////////////////////////생활비예산그래프//////////////////////////////////////////////////////////////////                 
                             
                       Highcharts.chart('container2', {
                    	   title: {
                    	     text: '',
                    	     align: 'left'
                    	   },
                    	   xAxis: {
                    	     categories: thirdMonth
                    	   },
                    	   yAxis: {
                    	     title: {
                    	       text: ' 예산 사용 금액 '
                    	     }
                    	   },
                    	   labels: {
                    	     items: [{
                    	       html: '',
                    	       style: {
                    	         left: '50px',
                    	         top: '18px',
                    	         color: ( // theme
                    	           Highcharts.defaultOptions.title.style &&
                    	           Highcharts.defaultOptions.title.style.color
                    	         ) || 'black'
                    	       }
                    	     }]
                    	   },
                    	   series: [{
                    	     type: 'column',
                    	     name: '소비 금액',
                    	     data: thirdAmount
                    	   }, {
                    	     type: 'spline',
                    	     name: '생활비 예산 설정 금액',
                    	     data: thirdBudget,
                    	     marker: {
                    	       lineWidth: 2,
                    	       lineColor: Highcharts.getOptions().colors[3],
                    	       fillColor: 'white'
                    	     }
                    	   }]
                    	 });
                            
      
                       let str1 ='';
                       str1 += '<div>' + thirdConsumeList.length + '개월간 ' + settingAmountList[0].POCKETNAME + ' 주머니 예산은 ' + settingAmountList[0].AUTODIVAMOUNT + '원이고,   </div>';
                       //str += '평균 사용 금액은 ' +  sumAvg1  + '원 입니다. <br> ' + settingAmountList[0].POCKETNAME + '주머니 예산을 약 ' +    + '% 줄여도 충분합니다 </div>'
                       
                       $('#container1comment').append(str1); 
                       
                       
                       
                       //<h2>코멘트</h2>
                       //<h5>6개월간 생활비 예산은 1,200,000원이고, 평균 사용 금액은 xx원입니다. <br> 자세한 사용 내역을 확인할 수 있습니다. </h5>
                       let str2 ='';
                       str2 += '<div>' + thirdConsumeList.length + '개월간 ' + settingAmountList[1].POCKETNAME + ' 주머니 예산은 ' + settingAmountList[1].AUTODIVAMOUNT + '원이고, ';
                       str2 += '평균 사용 금액은 ' +  sumAvg2  + '원 입니다. <br> 자세한 사용 내역을 확인할 수 있습니다. </div>';
                       
                       $('#container2comment').append(str2); 
                       
            })     
    }) 
</script>


</body>
</html>