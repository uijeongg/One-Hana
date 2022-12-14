<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

<!-- my css  -->
<!-- <link href="/resources/mycss/test.css" rel="stylesheet"> -->
<!-- 	<link href="/resources/mycss/chart.css" rel="stylesheet"> -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.8.5/bootstrap-progressbar.min.js" integrity="sha512-ShSScKTSdSD7IiMKfgTdqaEY8gOGm5cNfqMr6Wc5BZvMgc1UveS+UqpS0TNUtRD1CZ9KhmbGtzwUN7HJlXxY8Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.8.5/bootstrap-progressbar.js" integrity="sha512-tH+o43f9pBn8Kw1Nbyr+wrAQ/SbmKVMuGy2hoGWm9/xFacsOFIz3OmHeEEorjq/CKD4BxHT86qu7zp1wJKGtVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>             
   
<style type="text/css">
.progress {
    width: 350px;
    display: flex;
    height: 1rem;
    overflow: hidden;
    font-size: .75rem;
    background-color: #e9ecef;
    }  
    

.intoReBudget:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}

.intoReBudget:focus {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}  

.rebudgetGo:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important; 
}

.rebudgetGo:focus {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}  

</style> 

</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
   <jsp:include page="/WEB-INF/jsp/include/sidebar2.jsp"></jsp:include>
    

 
   <!-- page title start -->
   <div style="margin-left:610px; margin-top:11px;" class="animate__animated animate__bounce" >
        <img src="${pageContext.request.contextPath}/resources/img/My_sobi.png" 
            style="width:17%; height:68px;"/>
    <!--     <span style="color:#008485; font-size:30px; margin-top: 30px;">&nbsp;" ?????? ?????? ?????? "</span> -->
        
        <span style="font-size:30px; margin-top:30px; font-weight:bold; display:inline;">&nbsp; ?????? </span>
         <span style="color:#008485; font-size:30px; font-weight:bold; margin-top: 30px; display:inline;">?????? ??????</span>
        
   </div>
     <hr style="width:920px; height:7px; background-color:#066262;">
   <!-- page title end -->
   
   
   
   
   
   
   
<!-- ///////////////////////////////???????????????///////////////////////////////////////////////// -->   
   
     
    <!-- ??????????????? ????????? + ?????? ????????? ?????? ????????? -->
    <div id="parkingMap" style="margin-right:21%;"></div>
   
    <!-- ????????? ?????? ?????? ????????????, ?????? ??? ?????? -->
    
    <!-- ????????? ?????? 9??? ?????? ?????? -->
    <!-- ????????? ?????? 9??? ?????? ?????? -->
    <div id="parkingDetail" style="border:1px solid; display:none; margin-top:30px; width:60%; margin-left:27%;">
       <!--  <span style="font-size:23px; margin-left:350px;">?????? ??????</span> -->

        <div id="parkingAmount">
            <!--   ???????????? ??? ?????? ?????????    parkingList[0].autoDivAmount   ??? ????????? -->
        </div>
  
        <!-- ????????? ?????? ?????? ????????? ?????? ??????????????? div -->
        <div></div> 

    </div>   
    
<!-- //////////////////////////////////////////////////////////////////////////////// -->
   
   
   
   
   


<div class="d-flex flex-column" style="width: 60%;">
        
        
     <!-- ????????? ?????? ?????? stack bar --> 
     <div style="width:920px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">   
        
        <h4 style="text-align:center; margin-bottom:10px;">????????? ?????? ?????? ??????</h4>
        <p style="text-align:center; margin-bottom:40px; font-size:18px; color:#5a5a5a;">??????????????? ????????? ?????? ????????? ??????????????????</p>
        
        <div class="d-flex justify-content-between">
        
            <!-- ????????? -->
		    <div style="width:65%">
				 <figure class="highcharts-figure">   
                    <div id="container1"></div>
                 </figure>
			</div>
			
			<!-- ????????? start -->
			<div  class="main_image" style="width:40%;">
			<img src="${pageContext.request.contextPath}/resources/myicon/memoBlue.png" 
                 style="width:122%; position: relative;"/>
		     
		         <div id="container1comment" class="main_image_text" style="position:absolute; top:460px; left:970px;"></div>
				 
			</div>
			<!-- ????????? end -->
			
		  </div>
      </div>
		
		
		
      <!-- ????????? ?????? ?????? bar --> 
	  <div style="width:920px; border: 2px solid; border-radius:10px; border-color:#e0e0e0; padding:30px;">   
	  
	     <h4 style="text-align:center; margin-bottom:10px;">????????? ?????? ?????? ??????</h4>
         <p style="text-align:center; margin-bottom:40px; font-size:18px; color:#5a5a5a;">??????????????? ????????? ?????? ????????? ??????????????????</p>
        
        	
		 <div class="d-flex justify-content-between">
		 
		    <!-- ????????? --> 
            <div style="width:67%">
                <figure class="highcharts-figure">   
                    <div id="container2"></div>
                 </figure>
            </div>
            
            <!-- ????????? ?????? -->
           <%--  <div style="width:30%; height:330px; background-color:#E90061;" class="d-flex justify-content-center align-items-center">
                <div id="container2comment">
                   
                   <!--  <h2>?????????</h2>
                    <h5>6????????? ????????? ????????? 1,200,000?????????, ?????? ?????? ????????? xx????????????. <br> ????????? ?????? ????????? ????????? ??? ????????????. </h5> -->
                    
                    <div>
                         <a href="${pageContext.request.contextPath }/consumePattern"
                            style="border:2px solid; border-color:none; background-color:#008485; color:white;">?????? ?????? ???????????? ?????? </a>
                    </div>
                </div>

            </div> --%>
            <!-- ????????? ??? -->
            
            
            <!-- ????????? start -->
            <div  class="main_image" style="width:40%;">
            <img src="${pageContext.request.contextPath}/resources/myicon/memoBlue.png" 
            style="width:120%; position: relative;"/>
            
            
            <!-- <div style="width:30%; height:362px; background-color:#E90061;" 
                      class="d-flex justify-content-center align-items-center">
            -->
              
                <!-- <div id="container1comment"></div> -->
                 
                 <div id="container2comment" class="main_image_text" style="position:absolute; top:1120px; left:980px;"></div>
                 
                 
            </div>
            <!-- ????????? end -->
            
            
            
            
            
            
            
            
            
            
        </div>
        </div>
        
        
        
        
        
	</div>
	
	
	
	    







 
 

    
    

<!-- ?????? -->
<div class="modal fade" id="reBudget" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content" style="border:4px solid; border-color:#008485;">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">?????? ?????? ?????????</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="modalbody">
            
            <h4 style="text-align:center; margin-bottom:40px;">?????? ?????? ??????</h4>
            <div>
                <div class="d-flex justify-content-center align-items-center mb-3"  style="font-size:120%">
                    ?????? ??????????????? &nbsp;
                    <select id="toPocket" name="toPocket" style="width:40%" class="form-select form-control" aria-label="Default select example">
                     
                     </select>  &nbsp;???
                </div>  
               
                <div class="d-flex justify-content-center align-items-center mb-3"  style="font-size:120%">
                    ?????? &nbsp; 
                    
                     <select id="autoDivDate" name="autoDivDate" 
                      style="width:80px; background:white; color:#008485; border:none; border-bottom:2px solid #008485;
                             text-align:center; margin:5px; font-size:25px; font-weight:800; height:40px; display:inline;">       
                             
                     <c:forEach begin="1" end="31" var="x">
                      <option><!-- ?????? -->
                          <c:out value="${x}" />
                      </option>                                
                  </c:forEach>  
                  </select>    &nbsp;??????  &nbsp; &nbsp; 
                    
                   <!--  <select id="autoDivDate" name="autoDivDate" style="width:10%;" class="form-select form-control" aria-label="Default select example">
                               <option selected></option>
                    </select>  -->
                    
                    
                    <input value="" class="form-control" style="width:40%; height:40px;" placeholder="?????? ??????" type="text" id="divAmount" name="divAmount">&nbsp;?????????
                </div>      
                <div class="d-flex justify-content-center" style="font-size:140%">?????? ?????? ?????? ????????? ???????????????</div>
             </div>
            
            
          </div>
          <!-- <div class="modal-footer">
            <button type="button" class="divBtn btn btn-primary" id="divBtn" onclick="doReBudgetSet()">????????????</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
          </div> -->
           <div id="modalFooter" style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary rebudgetGo" id="divBtn" onclick="doReBudgetSet()" style="width:150px; margin-top:10px; margin-bottom:25px;">??????</button>         
            </div>
        </div>
      </div>
    </div>
<!--  data-bs-dismiss="modal" -->




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
	//autoDivSetting?????? amount (???????????? - ?????????????????? ??? ???)
	//?????? ?????? ?????? ????????????
	
	   let id = '${loginVO.id}';
	   let accountNo = '${accountNo}';
    
//	     let secondBudget = [];//????????? ??????
//	     let secondMonth = []; //????????? ???
//	     let secondAmount = []; //????????? ????????????
	  
	     let thirdBudget = []; //????????? ??????
         let thirdMonth = []; //????????? ???
         let thirdAmount = []; //????????? ????????????
         
         
         
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
                let sumAvg1 = Math.floor(amountSum1/secondConsumeList.length); //??????
                console.log("sumAvg1 :" + sumAvg1);
               
                
                let amountSum2 = 0;
                for(let i=0;i<thirdConsumeList.length;i++) {
                    amountSum2 += thirdConsumeList[i].AMOUNT   
                }
                let sumAvg2 = Math.floor(amountSum2/thirdConsumeList.length); //??????
                console.log("sumAvg2 :" + sumAvg2);
                
                
                //console.log("secondConsumeList : " + secondConsumeList[0].MONTH);
                //console.log(settingAmountList[0].AUTODIVAMOUNT); //???????????????
                //console.log(settingAmountList[1].AUTODIVAMOUNT); //???????????????
    
                
                //????????? ????????????
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
                    				   //console.log("???????????????");
                    			   }
                    		   }                   		   
                    	   }
                    	   amountArray.push(tranObject);
                       }
                       console.log("44:"+amountArray[3].data);
                       
                       
   ///////////////////////////////////????????????????????????////////////////////////////////////////////////////////////////// 
   
                       Highcharts.chart('container1', {
                             chart: {
                                 type: 'column'
                             },
                             title: {
                                 text: '', //??????
                                 align: 'right'
                             },
                             xAxis: {
                                 categories: monthArray
                             },
                             yAxis: {
                                 min: 0,
                                 title: {
                                     text: '?????? ?????? ?????? '
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
                                 pointFormat: '{series.name}: {point.y:,.0f} ???<br/>Total: {point.stackTotal:,.0f} ???'
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
                      
                       
     ///////////////////////////////////????????????????????????//////////////////////////////////////////////////////////////////                 
                             
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
                    	       text: ' ?????? ?????? ?????? '
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
                    	     name: '?????? ??????',
                    	     data: thirdAmount
                    	   }, {
                    	     type: 'spline',
                    	     name: '????????? ?????? ?????? ??????',
                    	     data: thirdBudget,
                    	     marker: {
                    	       lineWidth: 2,
                    	       lineColor: Highcharts.getOptions().colors[3],
                    	       fillColor: 'white'
                    	     }
                    	   }]
                    	 });
                            
      
                       let str1 ='';
                       str1 += '<div style="text-align:center;"><h6 style="font-size:17px;">' + settingAmountList[0].POCKETNAME + ' ????????? ?????????<br></h6>';
                       str1 += '<h5 style="font-size:20px; display:inline;">"' + (Math.floor(settingAmountList[0].AUTODIVAMOUNT)).toLocaleString('ko-KR') + ' ???"</h5><h6 style="font-size:17px; display:inline;"> ??????,' ;
                       str1 += '<br>' + thirdConsumeList.length + '?????? ???' + ' ?????? ?????? ?????????</h6><br>';
                       str1 += '<h5 style="font-size:23px; display:inline;">"' + (Math.floor(sumAvg1)).toLocaleString('ko-KR') + ' ???"</h5><h6 style="font-size:17px; display:inline;"> ?????????</h6><br></div>';
                       
                 
                       
                       if??((settingAmountList[0].AUTODIVAMOUNT)*0.8 > sumAvg1 )??{  //????????? ????????? ?????? ??????????????? 80%??? ?????? ????????????
                           
                           str1 += '<div style="margin-top:10px;" class="d-flex flex-column">';
                           
                           str1 += '<div class="d-flex justify-content-start align-items-center" style=" padding-left:0px; width:200px;"><img src="${pageContext.request.contextPath}/resources/myicon/green11.png" style="width:26%;"/>';
                           str1 += '<h5 style="padding-top:30px; color:green; font-size:18px; font-weight:bold; display:inline;">&nbsp;COMMENT</h5></div>';
                           
                           
                           str1 += '<div style="text-align:center;"><h5 style="font-size:17px; display:inline;">'+ (Math.floor(sumAvg1)).toLocaleString('ko-KR') + '???</h5><h5 style="font-size:17px; display:inline;">??? ?????? ??????</h5><br>';
                           str1 += '<h5 style="font-size:20px; color:green; display:inline;">" 20% ?????? "</h5><h5 style="font-size:17px; display:inline;">??? ???????????????</h5><br>';
                           str1 += '<h5 style="font-size:17px; display:inline;">' + settingAmountList[0].POCKETNAME + ' ????????? ?????????<br>???????????? ????????? ????????? ??????!! </h5></div>';
                           
                           
                           str1 += '</div>';
                 
                       }
                    	  
                       str1 += '<div style="margin-top:5px; text-align:center;"><button type="button" class="intoReBudget btn btn-primary" data-bs-toggle="modal" data-bs-target="#reBudget"';
                       str1 += 'style="text-align:center; width:180px; height:30px; font-size:16px; font-family:hanaBFont;" onclick="intoReBudgetSet(this.class)">???????????????</button>  </div>';
                       
                       $('#container1comment').append(str1); 
                       
                       
            
                       
                       
                       //<h2>?????????</h2>
                       //<h5>6????????? ????????? ????????? 1,200,000?????????, ?????? ?????? ????????? xx????????????. <br> ????????? ?????? ????????? ????????? ??? ????????????. </h5>
                       let str2 ='';
                      /*  str2 += '<div>' + settingAmountList[1].POCKETNAME + ' ????????? ?????? : ' + settingAmountList[1].AUTODIVAMOUNT + ' ???<br>';
                       str2 += '' + secondConsumeList.length + '?????? ??? ?????? ?????? ?????? : ' +  sumAvg2  + ' ??? <br><br>';
                        */
                       str2 += '<div style="text-align:center;"><h6 style="font-size:18px;">' + settingAmountList[1].POCKETNAME + ' ????????? ?????????<br></h6>';
                       str2 += '<h5 style="font-size:21px; display:inline;">"' + (Math.floor(settingAmountList[1].AUTODIVAMOUNT)).toLocaleString('ko-KR') + ' ???"</h5><h6 style="font-size:18px; display:inline;"> ??????,' ;
                       str2 += '<br>' + secondConsumeList.length + '?????? ???' + ' ?????? ?????? ?????????</h6><br>';
                       str2 += '<h5 style="font-size:21px; color:#ff4d4d; display:inline;"> "' + (Math.floor(sumAvg2)).toLocaleString('ko-KR') + ' ???"</h5><h6 style="font-size:18px; display:inline;"> ?????????</h6><br></div>';
                       
                       
                       
                       
                       
                       str2 += '<h5 style="margin-top:20px; font-size:17px; text-align:center;">????????? ' + settingAmountList[1].POCKETNAME + ' ?????? ?????????<br>????????? ??? ????????????.</h5>';
                       str2 += '</div>';
                       
                       str2 += '<div style="text-align:center; margin-top:20px; border:2px solid; background-color:#008485; border:none; border-radius:5px;">';
                       str2 += '<a href="${pageContext.request.contextPath }/consumePattern" style="';
                       str2 += 'background-color:#008485; color:white; font-size:17px;">???????????? ??????</a></div>';
                       
                       $('#container2comment').append(str2); 
                       
            })
            
            
            
            
            
/////////////////////////////////////////////////////////////////////////////////////         
            
            
     /*        
            fetch("/getParkingSum?accountNo="+accountNo)
            .then(res=>res.json())
            .then(data=>{
                console.log(data);
                let parkingSum = data.parkingSum*1; 
                let parkingBal = data.parkingBal*1; 
                let parkingPer = parkingBal/parkingSum*100;
                let str ='';
                
                
                str += '<div class="container text-center"><div class="row">'; 
               
                    str += '<div class="col-6 chartLcoation" style="justify-content : center; align-items : center; display : flex;">';
                        str += '<div id="chart"></div>';
                
                    str += '</div>'
                
                
                    str += '<div class="col-6 chartLocation2" style="justify-content:center; align-items:center;">';
                        str += '<div style="font-size:22px; margin-top:80px; justify-content:center;"> ???????????? <br>?????? ????????? ???????????? <p style="color:#008485; display:inline;"><br>'+ parkingSum + '&nbsp;???</p> ???';
                        str += '<br> ??? <p style="color:#008485; display:inline; font-size:30px;">"' + parkingBal + ' ???"</p>??? ????????????';
                        
                        str += '<div style="margin-top:10px;">';
                        str += '<input type="button" id="parking" value="?????? ?????? ??????" onclick="displayParkingDetail()" class="btn"';
                        str += 'style="font-family:hanaBFont; background-color:#008485; font-size:15px; width:150px; height:40px;';
                        str += 'border-radius:10px; color:white; border:none; margin-right:0px;">';
                        str += '</div>';
               
                        str += '</div>'; 
                    str +='</div>'; 
                
                str += '</div>';
                
              
                $('#parkingMap').append(str);
                
                return new Promise((resolve,reject)=>{
                    resolve(parkingPer);
                })
            })
            .then(res=>{
                parkingPer = res;
                var options = {
                        series: [parkingPer],
                        chart: {
                        height: 350,
                        type: 'radialBar',
                      },
                      plotOptions: {
                        radialBar: {
                          hollow: {
                            margin: 15,
                            size: '70%',
                            image: '/resources/img/My_!green2.png',
                            
                            imageWidth: 64,
                            imageHeight: 64,
                            imageClipped: false
                          },
                          dataLabels: {
                            name: {
                              show: false,
                              color: '#fff'
                            },
                            value: {
                              show: true,
                              color: '#333',
                              offsetY: 70,
                              fontSize: '22px'
                            }
                          }
                        }
                      },
                      fill: {
                        type: 'image',
                        image: {
                          src: ['/resources/img/My_008485.jpg'],
                        }
                      },
                      stroke: {
                        lineCap: 'round'
                      },
                      labels: ['Volatility'],
                      };

                      var chart = new ApexCharts(document.querySelector("#chart"), options);
                      chart.render();           
                 
            })  */
            
    }) 
</script>








   
<!-- ??????????????? ?????? ?????? ??? ????????? ??? ????????? ??? -->
<script>
function intoReBudgetSet(input){

   //????????????????????? (???????????????)id="toPocket"?????? ?????? id="autoDivDate"?????? id="divAmount"??? ???????????????
   //?????? ????????? ?????????
   //$('#toPocket').empty();
   
   let id ='${loginVO.id}';
   let accountNo = '${accountNo}';
   let pocketName = [];
   
	   fetch('/intoReBudgetSet?id='+id+'&accountNo='+accountNo)
       .then(res=>res.json())
       .then(res=>{
            let reBudgetSet = res
            
            for(let i=1; i<reBudgetSet.length; i++) {
            	pocketName.push(reBudgetSet[i].POCKETNAME);
            }
            
           $('#toPocket').append('<option value="0"> ????????? ?????? </option>');
          
            for(let i=0; i<pocketName.length; i++) {
                $('#toPocket').append('<option value='+pocketName[i]+'> ' + pocketName[i] + ' ????????? </option>');               
            }
   
       })
   
  

}   
</script>   


<script>
function doReBudgetSet() {
	
	let accountNo = '${accountNo}';
	let toPocket = $('#toPocket').val();
    let autoDivDate = $('#autoDivDate').val(); //select option ??? ????????? ?????? ????????????
    let divAmount = $('#divAmount').val()*1;
    console.log(accountNo);
   // console.log(autoDivDate);
   // console.log(divAmount);
   
    fetch("/doReBudgetSet?accountNo="+accountNo+"&toPocket="+toPocket+'&autoDivDate='+autoDivDate+'&divAmount='+divAmount)

            .then(res=>{
            	
            	 //$('#modalbody').empty();
            	 
            	changeModal(toPocket);
            	
          })
}
</script>

<script>
function changeModal(toPocket) {
	let accountNo = '${accountNo}';
	//console.log(toPocket + '???????');
	
	fetch("/changeModal?accountNo="+accountNo+"&toPocket="+toPocket)
	.then(res=>res.json())
    .then(res=>{
        changeModalList = res;
        console.log(changeModalList[0].POCKETNAME)
        
      //  changeModalList.POCKETNAME ?????????
        $('#modalbody').empty();
        str ='';
        str += '<h4 style="font-size:23px; text-align:center;">?????? ?????? ?????? ??????</h4><br>';
        str += '<table style="border:3px solid #E0E0E0; width:85%; height:100px; margin-top:15px; margin:auto; text-align:center;">';
        str += '<tr style="background: #E0E0E0">';
        str += '<td width="30%" style="border-right:2px solid white; font-size:18px;"><b>?????? ?????????</b></td>';
        str += '<td style="border-right:2px solid white; font-size:18px;"><b>?????? ?????? ??????</b></td>';
        str += '<td style="font-size:18px;"><b>??????</b></td>';
        str += '</tr>';
        str += '<tr>';
        str += '<td style="border-right:2px solid #E0E0E0; font-size:19px;">' + changeModalList[0].POCKETNAME + ' ?????????</td>';
        	str += '<td style="border-right:2px solid #E0E0E0; font-size:20px;">?????? ' + changeModalList[0].AUTODIVDATE + ' ???</td>';
        		str += '<td style="font-size:20px;">' + (Math.floor(changeModalList[0].AUTODIVAMOUNT)).toLocaleString('ko-KR') + ' ???</td>';
        			str += '</tr> </table>';
        				
	  
	  
	  /* 
	    <h4 style="font-size:20px; text-align:center;">?????? ?????? ?????? ?????? ??????</h4><br>
	       
	       <table style="border : 3px solid #E0E0E0; width : 70%; height : 100px; margin-top : 15px;  margin : auto; text-align : center;">
               <tr style="background: #E0E0E0">
                   <td width="30%" style="border-right:2px solid white;"><b>?????? ?????????</b></td>
                   <td><b>?????? ?????? ??????</b></td>
                   <td><b>??????</b></td>
               <tr>
               
               <tr>
                   <td style="border-right:2px solid #E0E0E0;">changeModalList.POCKETNAME ?????????</td>
                   <td style="border-right:2px solid #E0E0E0;">?????? changeModalList.AUTODIVDATE ???</td>
                   <td>changeModalList.AUTODIVAMOUNT ???</td>
               </tr>
                                            
          </table>
	  
	   */
	  
         
         $('#modalbody').append(str);
         
         
         $('#modalFooter').empty();
         str2 = '';
         str2 += '<button type="button" class="btn btn-primary" id="divBtn" onclick="doReBudgetSet()"'; 
         str2 += 'data-bs-dismiss="modal" style="width:150px; margin-top:10px; margin-bottom:25px;">??????</button>';
         
         $('#modalFooter').append(str2);
        
 })
	
}


</script>   



<!-- ?????? ?????? ?????? ?????? ?????? -->
<script>
   function displayParkingDetail() { 
       $('#parking').hide();
       $('#parkingDetail').show();   
   } 
</script>   

    
<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
<script>
    $(document).ready(function(){
  
         var accountNo = '<c:out value="${accountNo}"/>' ;
         //let id ='${loginVO.id}';
         //console.log("id  ??????????????????!!: " + id );
         
          
         fetch('/getParkingData?accountNo='+accountNo)
         .then(res=>res.json())
         .then(res=>{
              let parkingList = res
               
             //console.log(parkingList);
                 
             let str ='';
             str += '<div style="font-size:23px; text-align:center; margin-bottom:30px;"> ???????????? ??? "'+ (parkingList[0].PARKINGAMOUNT*1 + parkingList[1].PARKINGAMOUNT*1+parkingList[2].PARKINGAMOUNT*1) +'" ??? ??? ???????????????! </div><br>';
            
             
             
             str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[0].FROMPOCKET + ' </p> ?????? &nbsp;' + parkingList[0].AUTODIVAMOUNT*1 + '??? ??? <p style="color:#008485; display:inline;">"'+ parkingList[0].PARKINGAMOUNT*1 +'???"</p> ?????? </div>';
                 str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
                 /* str += '<div class="progress-bar bg-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:60%">'; */
                 str += '<div class="progress-bar bg-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[0].AUTODIVAMOUNT*1 - parkingList[0].PARKINGAMOUNT*1)/(parkingList[0].AUTODIVAMOUNT*1)  + '%">';
                 str += + (parkingList[0].AUTODIVAMOUNT*1 - parkingList[0].PARKINGAMOUNT*1) + ' ??? ??????  </div></div><br>'
             
                 
             
             str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[6].FROMPOCKET+'</p> ?????? &nbsp;' + parkingList[6].AUTODIVAMOUNT*1 + '??? ??? <p style="color:#008485; display:inline;">"'+ parkingList[1].PARKINGAMOUNT*1 +'???"</p> ?????? </div>';
                 str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
                 str += '<div class="progress-bar bg-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[1].AUTODIVAMOUNT*1 - parkingList[1].PARKINGAMOUNT*1)/(parkingList[1].AUTODIVAMOUNT*1)  + '%">';
                 str += + (parkingList[1].AUTODIVAMOUNT*1 - parkingList[1].PARKINGAMOUNT*1) + ' ??? ??????  </div></div><br>'
             
                     
             
          /*    str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[2].FROMPOCKET+' </p> ?????? &nbsp;' + parkingList[2].AUTODIVAMOUNT*1 + '??? ??? <p style="color:#008485; display:inline;">"'+ parkingList[2].PARKINGAMOUNT*1 +'???"</p> ?????? </div>';
                 str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
                 str += '<div class="progress-bar bg-info progress-bar-striped" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[2].AUTODIVAMOUNT*1 - parkingList[2].PARKINGAMOUNT*1)/(parkingList[2].AUTODIVAMOUNT*1)  + '%">';
                 str += + (parkingList[2].AUTODIVAMOUNT*1 - parkingList[2].PARKINGAMOUNT*1) + ' ??? ??????  </div></div>'
             
           */      
             
             $('#parkingAmount').append(str);
        })
       
  })
</script>
    
   

</body>
</html>