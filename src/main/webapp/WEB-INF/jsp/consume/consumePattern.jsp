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

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.8.5/bootstrap-progressbar.min.js" integrity="sha512-ShSScKTSdSD7IiMKfgTdqaEY8gOGm5cNfqMr6Wc5BZvMgc1UveS+UqpS0TNUtRD1CZ9KhmbGtzwUN7HJlXxY8Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.8.5/bootstrap-progressbar.js" integrity="sha512-tH+o43f9pBn8Kw1Nbyr+wrAQ/SbmKVMuGy2hoGWm9/xFacsOFIz3OmHeEEorjq/CKD4BxHT86qu7zp1wJKGtVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>             
   
   
<!-- my css  -->

<link href="/resources/mycss/consumeDate.css" rel="stylesheet">
<link href="/resources/mycss/chart.css" rel="stylesheet"> 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<style>
.nav-tabs {
    border-bottom:3px solid #008485;
    width:900px;
}

.modalbtn:focus {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}

.modalbtn:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}

.setNotice:focus {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}

.setNotice:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}
</style>

</head>
<body>

    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header>
    
       <!--  --><!--  -->
    <div id="allPage" style="display:none;">
    
    
    <jsp:include page="/WEB-INF/jsp/include/sidebar2.jsp"></jsp:include>
    
    
 
    
   
   <!-- page title start -->
   <div style="margin-left:610px; margin-top:6px;" class="animate__animated animate__bounce" >
        <img src="${pageContext.request.contextPath}/resources/myicon/graph.png" 
            style="width:10%;"/>
        <!-- <span style="color:#008485; font-size:30px; margin-top: 30px;">&nbsp;" ?????? ?????? ?????? "</span> -->
        
         <span style="font-size:30px; font-weight:bold; margin-top:30px; display:inline;">&nbsp;?????? </span>
         <span style="color:#008485; font-weight:bold; font-size:30px; margin-top: 30px; display:inline;">?????? ??????</span>
   </div>
   <hr style="width:900px; height:7px; background-color:#066262;">
   <!-- page title end -->
   
   
   
   
   <ul class="nav nav-tabs">
  <li class="nav-item">
    <!-- <a class="nav-link active" aria-current="page" href="monthPage">??????</a> -->
    
     <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#datePage" aria-controls="datePage"
             aria-selected="true" id="displaySummaryChart">
          ????????????
     </button>  
  </li>

   <li class="nav-item">
    <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" data-bs-target="#catePage" aria-controls="catePage" 
            aria-selected="true" id="displayDetailChart">
         ????????????
    </button>
  </li>
</ul>
   
   
<div class="tab-content">


<!-- ???????????? tab -->
<!-- ???????????? tab -->
<!-- ???????????? tab -->
<div class="tab-pane fade show active" id="datePage" role="tabpanel">

   <!-- ??? ??? ?????? ?????? -->
    <div style="margin-left:570px; margin-top:50px; margin-bottom:40px;">
	    <div id="month" style="font-size:25px;"></div>
   </div>

 
 
<%--  <div style="text-align:center;">
  <!-- ????????? start -->
            <div  class="main_image" style="width:50%;">
            <img src="${pageContext.request.contextPath}/resources/myicon/bigmemo84.png" 
                 style="width:700px; height:100px; position: relative;"/>
             
                <div  id="month" class="main_image_text" style="position:absolute; top:300px; left:600px;"></div>   
            </div>
  <!-- ????????? end -->
 </div>
  --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
   <div class="d-flex flex-column" style="width: 60%;">
    
    
        <!-- ????????? -->
        <!-- ????????? -->
        <!-- ????????? -->
        <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">   
        <h4 style=" margin-bottom:30px; text-align:center;"><strong style="color:#008485">??????</strong> ???</h4>
        <div class="d-flex justify-content-between">
        
            <!-- ????????? -->
            <div style="width:65% "> 
                <div id="chart"></div>
            </div>
          
            <!-- ????????? start -->
            <div class="main_image" style="width:30%;">
            <img src="${pageContext.request.contextPath}/resources/myicon/memoGreen.png" 
                 style="width:100%; position: relative;"/>
             
                 <div  id="chartcomment" class="main_image_text" style="position:absolute; top:575px; left:770px;"></div>    
            </div>
            <!-- ????????? end -->
        
        </div>
        </div>
        
        
        
        
        
        <!-- ????????? -->
        <!-- ????????? -->
        <!-- ????????? -->
        <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">   
        <h4 style=" margin-bottom:30px; text-align:center;"><strong style="color:#008485">??????</strong> ???</h4>
        <div class="d-flex justify-content-between">

            <!-- ????????? start -->
            <div  class="main_image" style="width:30%;">
            <img src="${pageContext.request.contextPath}/resources/myicon/memoP.png" 
                 style="width:105%; position: relative;" />
             
                 <div id="chart2comment" class="main_image_text" 
                       style="font-size:18px; fontWeight:bold; position:absolute; top:1050px; left:165px;"></div>    
            </div>
            <!-- ????????? end -->

             <!-- ????????? ????????? -->
             <div style="width:65%">
                <div id="chart2"></div>
            </div>
        </div>
        </div>
        
        
        
        
        
        <!-- ??????  -->
        <!-- ??????  -->
        <!-- ??????  -->
        <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">   
        <h4 style=" margin-bottom:30px; text-align:center;"><strong style="color:#008485">???</strong> ???</h4>
        <div class="d-flex justify-content-between">
        
            <!-- ????????? -->
            <div style="width:58%"> 
            
                <div>
                    <div id="chart3" style="position: relative;"></div>
                    <img src="${pageContext.request.contextPath}/resources/myicon/silver2.png" 
                         style="position:absolute; width:7%; top:1538px; left:432px;"/>
                    
                    <img src="${pageContext.request.contextPath}/resources/myicon/gold1.png" 
                         style="position:absolute; width:7%; top:1528px; left:575px;"/>
                         
                         <img src="${pageContext.request.contextPath}/resources/myicon/third2.png" 
                         style="position:absolute; width:7%; top:1681px; left:710px;"/>
                </div>
                
            </div>
            
           
            <!-- ????????? start -->
            <div  class="main_image" style="width:35%;">
            <img src="${pageContext.request.contextPath}/resources/myicon/memoYello.png" 
                 style="width:100%; height:330px; position: relative;"/>
             
                 <div id="chart3comment" class="main_image_text" style="position:absolute; top:1550px; left:923px;"></div>
                 <div id="dateTopHisto" class="main_image_text" style="position:absolute; top:1650px; left:925px;"></div>        
            </div>
            <!-- ????????? end -->
              
        </div>
        </div>
        
        
        
        <!-- ??????????????? -->
        <!-- ??????????????? -->
        <!-- ??????????????? -->
        <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">   
        <h4 style=" margin-bottom:30px; text-align:center;"><strong style="color:#008485">????????????</strong> ???</h4>
        <div class="d-flex justify-content-between">
        
            <!-- ????????? start -->
            <div  class="main_image" style="width:30%;">
            <img src="${pageContext.request.contextPath}/resources/myicon/memoBl.png" 
                 style="width:100%; height:340px; position:relative;"/>
             
                 <div  id="chart4comment" class="main_image_text" style="position:absolute; top:2070px; left:165px;"></div>    
            </div>
            <!-- ????????? end -->
            
            
            <!-- ????????? -->
             <div style="width:65%">
                <div id="chart4"></div>
            </div>
        </div>
        </div>
        
        
        
        
        
        
        
     </div>
  
</div>

    
    
    
    
    
    
    
    
    
  

<!-- ???????????? -->
<!-- ???????????? -->
<!-- <div class="tab-pane fade show" id="timePage" role="tabpanel">
<figure class="highcharts-figure">   
   <div id="container4"></div>
 </figure>    
</div>    
-->
    
    
    
    
    
    
    
    
    
    
    
    
<!-- 6????????? ???????????? tab -->
<!-- ???????????? tab -->
<!-- ???????????? tab -->    
<div class="tab-pane fade show" id="catePage" role="tabpanel"> 
    

    <div class="d-flex flex-column" style="width: 60%;">
    
    
       <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-top:30px; margin-bottom:20px;">   
         
        <h4 style=" margin-bottom:30px;">????????? ?????? ?????? <strong style="color:#008485"> ???????????? </strong> <small style="font-size:19px;">(?????? 6??????)</small></h4>
        
        
        <div class="d-flex">
            <div style="width: 100%">
            
                 <figure class="highcharts-figure">   
                    <div id="container6"></div>
                 </figure>
            </div>
          <!--   
            <div style="width: 30%; background-color:;" class="d-flex justify-content-center align-items-center">
                <div style="background-color:#E90061; height:300px; width:250px">
                    <h2>?????????</h2>
                    <h5>6????????? ????????? ????????? 900,000?????????, ?????? ?????? ????????? xx?????????. <br> ????????? ????????? ??? xx% ????????? ???????????????! </h5>
                </div>
            </div>
             -->
        </div>
      </div>  
        
        
        
          
    <!-- ????????? ?????? ????????? -->
    <!-- ????????? ?????? ????????? -->
         <div class="d-flex">
            <div style="width: 100%">
                <figure class="highcharts-figure">   
                    <div id="container3"></div>
                </figure>
            </div>
          <!--   
            <div style="width: 30%; background-color:;" class="d-flex justify-content-center align-items-center">
                <div style="background-color:#E90061; height:300px; width:250px">
                    <h2>?????????</h2>
                    <h5>6????????? ????????? ????????? 900,000?????????, ?????? ?????? ????????? xx?????????. <br> ????????? ????????? ??? xx% ????????? ???????????????! </h5>
                </div>
            </div>
             -->
        </div>
        
      
        

<form action="${pageContext.request.contextPath}/reBudgetSetting" method="post">   <!-- ?????? ?????? ????????? ???????????? ????????? ??????????????? ???????????? -->
    <input type="hidden" name="sumTopSavingAmount" value="">
    <input type="hidden" name="countTopSavingAmount" value="">
        
        
        
      <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">   
        <div class="d-flex justify-content-between" style="width:370px; text-align:center;">
<!--         <div style="display:inline; font-size:22px;"><strong style="color:#008485; display:inline;">???????????? ???</strong> ?????? ?????? ??? </div> -->
        <div>
            <h4 style=" margin-bottom:30px; text-align:center;"><strong style="color:#008485">????????????</strong> ??? ?????? <strong style="color:#008485">??????</strong></h4> 
        </div>
        
        
            <div style="display:inline;">
            <!-- <div style="width: 100%"> -->
            
             <select name="selectMonth_cate3" id="selectMonth_cate3"
                         style="width:100px; margin-top:30px; background:white; color:#008485; border-radius:20px; text-align:center; height:30px;" onchange="cate3AmountSelect(this.value);">                        
                <option value="6">6??????</option>
                <option value="3">3??????</option>  
             </select>
             </div>
            </div> 
             
             
            <div class="d-flex justify-content-between">   
            
	             <div class="main_image" style="width:37%;">
	                <img src="${pageContext.request.contextPath}/resources/myicon/memo11.png" 
	                     style="width:115%; height:380px; position: relative;"/>
	               
	                    <div id="sumMedianComment" class="main_image_text" style="position:absolute; top:1070px; left:205px;"></div>
	             </div>
	                
                             
	             <div style="width:60% ">  
	               <figure class="highcharts-figure">   
	                    <div id="container5"></div>
	               </figure>
	             </div>
     
        </div>
      </div>
        
        
        
        
        
      <div style="width:900px; border:2px solid; border-radius:10px; border-color:#e0e0e0; padding:35px; margin-bottom:20px;">  
         
      
        <div class="d-flex justify-content-between align-items-center" style="width:340px; text-align:center;">
      
            <div>
                <h4 style=" margin-bottom:30px; text-align:center;"><strong style="color:#008485">????????? </strong> ??? ?????? <strong style="color:#008485">??????</strong></h4> 
            </div>
         
         
            <div style="display:inline; margin-bottom:30px;">
              <!-- <div style="width: 100%"> -->
              <select name="selectMonth_times" id="selectMonth_times"
                         style="width:100px; background:white; color:#008485; border-radius:20px; text-align:center; height:30px;" onchange="timesSelect(this.value)">                        
                <option value="6">6??????</option>
                <option value="3">3??????</option>
             </select>
            </div>
            
        </div>     
            
            
            
         <div class="d-flex justify-content-between">
                
            <div style="width:56% ">  
	             <figure class="highcharts-figure">   
	                  <div id="container7" style="height:500px;"></div>
	             </figure>
            </div>
        
		    <!-- ????????? start -->
            <div class="main_image" style="width:42%;">
                 <img src="${pageContext.request.contextPath}/resources/myicon/memo11.png" 
                      style="width:120%; height:500px; position: relative;"/>
             
                 <div id="topCountComment" class="main_image_text" style="position:absolute; top:1642px; left:940px;"></div>
                 <div id="countMedianComment" class="main_image_text" style="position:absolute; top:1750px; left:895px;"></div> 
                 <div id="setNoticeSMSParent" class="main_image_text" style="position:absolute; top:2120px; left:1100x;"></div>     
            </div>
            <!-- ????????? end -->
		        
	  
        </div>        
      </div>  
      <!--  <input type="submit" id="reBudget" value="???????????????"
               style="width:475px; height:50px; border-radius:5px; background-color:#008485; color:white; border:none; font-size:20px;">  -->
</form>    
        
        
    </div>


</div>  
    
    



<!-- ?????? -->
<div class="modal fade" id="setNotice" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">?????? ?????? ?????????</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <div class="modal-body" id="modalbody" class="d-flex justify-content-center align-items-center mb-3"  style="text-align:center; font-size:120%">
          
          
          
             <h4 style="text-align:center; margin-bottom:40px;">?????? ?????? ?????? ??????</h4>
                       
            <div id="getModalTime">
            <!-- ???????????? -->
            </div>
          
          <!--   ?????? <select name="noticeDate" id="noticeDate"
	                     style="width:100px; margin-top:30px; background:white; color:#008485; border-radius:20px; text-align:center; height:30px;">	                    
	            <option value="1">?????????</option>
	            <option value="2">?????????</option>
	            <option value="3">?????????</option>
	            <option value="4">?????????</option>
	            <option value="5">?????????</option>
	            <option value="6">?????????</option>
	            <option value="7">?????????</option>
	            
	        </select> ??? ??????
	           -->
          
          </div>
         
           <div id="modalFooter" style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary modalbtn" data-bs-dismiss="modal" id="noticeBtn" onclick="doSetNotice()" style="width:150px; margin-top:10px; margin-bottom:25px;">?????? ?????? ??????</button>         
            </div>
        </div>
      </div>
    </div>
<!--  data-bs-dismiss="modal" --> 
    
    
    
    
    

    <!-- ???????????? amount ?????? -->
    <!-- ????????? ???(??????) ?????? ?????? ?????? ?????? -->
<!--    <div style="margin-left:430px;">
            <input type="button" id="pocket" value="?????? ??? ???????????? ?????? ?????? ??????" onclick="displaySixMonth()"
                   class="btn" 
                   style="font-family:hanaBFont; background-color:#008485; font-size:17px; width:788px; height:50px; 
                   border-radius:10px; color:white; border:none; margin-bottom:40px;">
    </div>
       -->
            
            <div id="sixmonth" style="display:none;">
            
                 <div style="margin-bottom:60px; border:5px solid; border-radius:20px; border-color:#008485; width:890px; margin-left:400px;">                
                    <figure class="highcharts-figure" style="margin-left:42px; margin-top:30px;">
                        <div id="container"></div>
                        <p class="highcharts-description">
                           <!-- ??????????????? -->
                        </p>
                    </figure>  
                    
                    <div style="font-size:25px; margin-top:40px; margin-left:370px; margin-bottom:30px;">
                       "comment"
                    </div>      
                </div>       
            </div>   
    
 
	
	
    
</div>  <!-- ??? ?????? ?????? div -->  


</div>
<!--  --><!-- justify-content:center; align-items:center; -->

<div id="loadingBar" style="display:flex; flex-direction:column; justify-content:center; align-items:center; ">
<img src="${ pageContext.request.contextPath }/resources/myicon/analysis.gif" style="width:32%;" />
<div style="font-family:hanaBFont; font-size:32px;"><strong style="font-size:37px; color:#008485">?????? ?????????</strong> ??? ?????? ????????????</div>
</div>

   
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/variable-pie.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
    
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>


<script>
  Highcharts.setOptions({
     lang:{
        thousandsSep:','
     }         
   })
</script>
<!--    
<script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js"></script>
      
<script type="text/javascript">

   async function LoadingProcess() {
         $.LoadingOverlay("show", {
            image :"${ pageContext.request.contextPath }/resources/myicon/analysis.gif",
            text : "???????????? ????????? ?????? ????????????",
            /* imageAutoResize : false, */
            maxSize : 100
         });
         
         setTimeout(function(){
            $.LoadingOverlay("text", "????????? ????????? ????????????");
    
            clearTimeout(LoadingProcess); 
         }, 2000);
         
         
       // setTimeout(function(){
           // location.href = "/user/chat";
        // }, 4000);
      }
   


</script>   
    -->
<script>
    setTimeout(function(){
    	$('#loadingBar').fadeOut(300,function(){
    		$('#allPage').fadeIn(300)
    	})
    },1500)
</script>
    
<script>
       $(function(){
    	    $('#displayDetailChart').click(function(){
    	    	//cateAmount();
    	    	cate3Amount();
    	    	sixMonthLine();
    	       
    	        times();
    	        topCount();
    	        //countMedian();
    	        sumMedian();
    	    })
       })   
    </script>
    
    
    <!-- ??? ?????? ????????? ??? ?????? ?????? -->
	<script>
	$(document).ready(function(){
		
		//LoadingProcess();
		
		
		
	        let month = -1; //9???
	        let id = '${loginVO.id}';
	       
	        fetch('/getMonthConsume?id='+id+'&month='+month)
	        .then(res=>res.json())
	        .then(res=>{
	        	let consumeList = res;
                //console.log("consumeList: "+consumeList.length);
	        	
                for(let i=0;i<consumeList.length;i++){
	        		
	        		let str ='';
	                /* str += '<div style="display:inline; ">'+consumeList[i].CURRENT_MONTH+'</div> <div style="display:inline;">??? ??? ???????????? </div><div style="display:inline;">' +consumeList[i].MONTHSUM+ ' ??? ?????????</div>';
	        	 */
	        	 str += '<div style="font-size:25px; fontWeight:bold;">" ??? ??? ??? ????????????';
	        	 str += '<strong style="font-size:30px; color:#008485"> ' +(Math.floor(consumeList[i].MONTHSUM)).toLocaleString('ko-KR')+ ' </strong> ??? ????????? "</div>';
	                $('#month').append(str);                
	        	}
	        }) 
	        
	        weeklyBar();
            dayBar();
            dateTopBar();
            cateCount();
            dateTopHistory();
          
	})
	</script>
	

	
 
    <!-- ?????? ?????? ??? ????????? ?????? ?????? ????????? - high chart -->
    <script>
    function displaySixMonth(){ 
        	let dayArray = [];
        	$('#pocket').hide();
            $('#sixmonth').fadeIn(2000);
            
            let monthStart = -6;
            let monthEnd = -1;
            let id ='${loginVO.id}';
            fetch("/getSixMonthConsume?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
            .then(res=>res.json())
            .then(res=>{
            	recentConsumeList = res; 
            	for(let i=0;i<recentConsumeList.length;i++){
            		let dayConsumeArray = [];
            		dayConsumeArray.push(recentConsumeList[i].CONDATE);
            		dayConsumeArray.push(recentConsumeList[i].CONAMOUNT);
            	    dayArray.push(dayConsumeArray);
            	}
            	return new Promise((resolve,reject)=>{
            		resolve("22");		
            	})
            })
            .then(res=>{
     
            		        Highcharts.chart('container', {
            		            chart: {
            		                zoomType: 'x'
            		            },
            		            title: {
            		                text: '" ${loginVO.name} ?????? ?????? ??? ?????? ?????? "'
            		            },
            		            subtitle: {
            		                text: document.ontouchstart === undefined ?
            		                    '?????? ?????? ??? ?????? ????????? ??????????????????' : 'Pinch the chart to zoom in'
            		            },
            		            xAxis: {
            		                type: 'datetime'
            		            },
            		            yAxis: {
            		                title: {
            		                    text: '?????? ??????'
            		                }
            		            },
            		            legend: {
            		                enabled: false
            		            },
            		            plotOptions: {
            		                area: {
            		                    fillColor: {
            		                        linearGradient: {
            		                            x1: 0,
            		                            y1: 0,
            		                            x2: 0,
            		                            y2: 1
            		                        },
            		                        stops: [
            		                            [0, Highcharts.getOptions().colors[0]],
            		                            [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
            		                        ]
            		                    },
            		                    marker: {
            		                        radius: 2
            		                    },
            		                    lineWidth: 1,
            		                    states: {
            		                        hover: {
            		                            lineWidth: 1
            		                        }
            		                    },
            		                    threshold: null
            		                }
            		            },

            		            series: [{
            		      
            		                name: '?????? ?????????',
            		                data: dayArray
            		            }]
            		        });
            })
      }
    </script> 
    
    
    
    <!-- ?????? -->   
    <script>    
    function weeklyBar() {
        let weeklyArray = [];
        //?????????????????? ???????????? ?????? ?????????
         let monthStart = -1;
         let monthEnd = -1;
         let id ='${loginVO.id}';
         let object = {};
         let weeklyConsumeData = [];
         let dayofweek = [];
         
         fetch("/getDayConsume?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
            .then(res=>res.json())
            .then(res=>{
               let dayConsumeList = res;
               
               lastDay = dayConsumeList[dayConsumeList.length-1].CONDATE;
               //console.log(lastDay.substring(8,10));
               let lastDate = Number(lastDay.substring(8,10));

               let mod = parseInt(lastDate/7)+1;
               for(let i=0;i<mod;i++){
            	  weeklyConsumeData.push(0);
               }
               for(let i=1;i<=mod;i++){
            	    dayofweek.push(i+'??????');
            	    console.log(i+'??????'); 
            	    for(let j=0;j<dayConsumeList.length;j++){
            	    	if(parseInt(dayConsumeList[j].CONDATE.substring(8,10)/7)==i-1){
            	    		weeklyConsumeData[i-1] = weeklyConsumeData[i-1] + Number(dayConsumeList[j].CONAMOUNT);
            	    	}
            	    }
               }
               //console.log(weeklyConsumeData);
               //console.log(dayofweek);
               let maxWeek = Math.max.apply(null, weeklyConsumeData);
               let index = weeklyConsumeData.indexOf(maxWeek);
               //console.log('maxWeek : ' + maxWeek);
               //console.log('index : ' + dayofweek[index]);

              return new Promise((resolve,reject)=>{
            	    resolve(dayofweek[index]);
              })
            })
           
            .then(res=>{
            	console.log(weeklyConsumeData);
               let weekComment = res;
               
                 var options = {
                          series: [{
                          data: weeklyConsumeData
                        }],
                          chart: {                    
                          height: 300,
                          type: 'bar',
                          events: {
                            click: function(chart, w, e) {
                              // console.log(chart, w, e)
                            }
                          }
                        },
                        
                        plotOptions: {
                          bar: {
                            columnWidth: '60%',
                            distributed: true,
                          }
                        },
                        dataLabels: {
                          enabled: false                           
                        },
                        legend: {
                          show: false
                        },
                        xaxis: {
                          categories: 
                        	  dayofweek
                            ,
                          labels: {
                            style: {                           
                              fontSize: '20px',
                              fontWeight: 'bold',
                              fontFamily: 'hanaBFont',
                            }
                          }
                        }
                        }; 
                      
                        var chart = new ApexCharts(document.querySelector("#chart"), options);
                        chart.render();   
                        
                        str = '';
                        str += '<div style="font-size:21px; text-align:center;"><strong style="font-size:21px;">' + weekComment + '</strong> ????????? ????????????!<br><br>';
                        str += '?????? ???,<br>????????? ?????? ????????? ??????<br>';
                        str += '<strong style="font-size:22px; color:#008485;">" ' + weekComment + ' "</strong> ?????????</div>';
                        
                        str += '<br><div style="text-align:center; font-size:18px;"><img src="${pageContext.request.contextPath}/resources/myicon/notice2.png" class="animate__animated animate__bounce" style="width:10%;"/><strong style="font-size:21px; color:#008485">' + weekComment + '</strong> ??? ????????????! </div>';
                        $('#chartcomment').append(str);     
            })       
    }
    </script>
    
    
    
    <script>
    function dayBar() {
    	  let monthStart = -1;
          let monthEnd = -1;
          let id ='${loginVO.id}';
         // console.log(id + '?????????')
         let dayArray2 = [];
         let daySum = [];
                 
         fetch("/getDayConsume2?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
            .then(res=>res.json())
            .then(res=>{
               let dayList = res;
               
               for(let i=0;i<dayList.length;i++){
	               daySum.push(dayList[i].SUM*1);
	               dayArray2.push(dayList[i].DAY);
               } 
           
               let sumMax = Math.max.apply(null, daySum);
               let index = daySum.indexOf(sumMax);
               //console.log('index : ' + dayArray2[index]);
                           
               return new Promise((resolve,reject)=>{
                    resolve(dayArray2[index]);
              })
          })
          .then(res=>{
        	  let arrayComment = res;
        	  console.log(arrayComment);
/*           var options = {
          series: [{
          data: daySum
        }],
          chart: {
          height: 350,
          type: 'bar',
          events: {
            click: function(chart, w, e) {
              // console.log(chart, w, e)
            }
          }
        },
       
        plotOptions: {
          bar: {
            columnWidth: '45%',
            distributed: true,
          }
        },
        dataLabels: {
          enabled: true
        },
        legend: {
          show: false
        },
        xaxis: {
          categories: dayArray2,
          labels: {
            style: {
                 fontSize: '20px',
                 fontWeight: 'bold',
                 fontFamily: 'hanaBFont'
            }
          }
        }
        }; */
          
          
          
          
          var options = {
                  series: [{
                  name: 'Series 1',
                  data: daySum,
                }],
                  chart: {
                  height: 350,
                  type: 'radar',
                },
                dataLabels: {
                  enabled: true
                },
                plotOptions: {
                  radar: {
                    size: 140,
                    polygons: {
                      strokeColors: '#fead96',
                      fill: {
                        colors: ['#e6f3f3', '#fff']
                      }
                    }
                  }
                },
                title: {
                  text: ''
                },
                colors: ['#008485'],
                markers: {
                  size: 4,
                  colors: ['#fff'],
                  strokeColor: '#008485',
                  strokeWidth: 5,
                },
                tooltip: {
                  y: {
                    formatter: function(val) {
                      return val
                    }
                  }
                },
                xaxis: {
                  categories:  dayArray2
                },
                yaxis: {
                  tickAmount: 7,
                  labels: {
                    formatter: function(val, i) {
                      if (i % 2 === 0) {
                        return val
                      } else {
                        return ''
                      }
                    }
                  }
                }
            };
             var chart = new ApexCharts(document.querySelector("#chart2"), options);
             chart.render();   
             
             let str = '';
             str += '<div style="text-align:center;">'+ arrayComment +'??? ?????? ?????? ?????????????';
             str += '<br><br>????????? ???, <br> ????????? ?????? ????????? ????????? <br><strong style="font-size:22px; color:#027596;">" '+arrayComment+' "</strong> ????????? <br><br>';
             str += '<img src="${pageContext.request.contextPath}/resources/myicon/notice2.png" class="animate__animated animate__bounce" style="width:7%;"/> '+ arrayComment + ' ?????? ?????? ?????? !!</div>';
 
             $('#chart2comment').append(str);     
            })
    }
    </script>
    
      
    <script>
    function dateTopBar() {
       let monthStart = -1;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       
       let date = [];
       let dateSum = [];
       
       fetch("/getDateTop?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
            .then(res=>{
               let dateTopList = res;
               
               for(let i=0;i<3;i++){
            	    dateSum.push(dateTopList[i].AMOUNT_SUM*1);
                    date.push(dateTopList[i].DAY);
               } 
               //console.log('dateSum : ' + dateSum);
               //console.log('date : ' + date);
               
               let dateSumList = [dateSum[1], dateSum[0], dateSum[2]];
               let dateList = [date[1]+'???', date[0]+'???', date[2]+'???'];
 
               let object = {};
               object.dateSumList = dateSumList;
               object.dateList = dateList;
               
               let dateSumMax = Math.max.apply(null, dateSumList);
               console.log('dateSumMax : ' + dateSumMax);
               //let index = daySum.indexOf(sumMax);
               //console.log('index : ' + index);
               
               //console.log('index : ' + object[index]);
  
          return new Promise((resolve,reject)=>{
                    resolve(object);
              })
            })
            
            .then(res=>{	
             let receivedObject = res;
              
                 var options = {
          series: [{
          data: receivedObject.dateSumList
        }],
          chart: {
          width:500,
          height: 330,
          type: 'bar',
          events: {
            click: function(chart, w, e) {
              // console.log(chart, w, e)
            }
          }
        },
       
        plotOptions: {
          bar: {
            columnWidth: '80%',
            distributed: true,
          }
        },
        dataLabels: {
          enabled: false
        },
        legend: {
          show: false
        },
        xaxis: {
          categories: receivedObject.dateList, 
          labels: {
            style: {
            	 fontSize: '20px',
                 fontWeight: 'bold',
                 fontFamily: 'hanaBFont'
            }
          }
        }
        };

        var chart = new ApexCharts(document.querySelector("#chart3"), options);
        chart.render();    
        
        //console.log(receivedObject.dateList[1] + ' ?????????');
        let str = '';
        str += '<div style="text-align:center; font-size:18px;"> ?????? ???,<br>????????? ?????? ????????? ??????<br>';
        str += '<strong style="font-size:22px; color:#f56991;">" '+receivedObject.dateList[1]+' "</strong> ?????????<br>';
        str += '<p style=" font-size:16px;">&nbsp;?????? ????????? ?????? ???????????? ???????????????????</p></div>';

        $('#chart3comment').append(str);     
        
      })
    }
     </script>
     
     <!-- ????????? ?????? ?????? ?????? ?????? ?????? -->
     <script>
     function dateTopHistory() {
     let monthStart = -1;
     let monthEnd = -1;
     let id ='${loginVO.id}';
     
     let object = [];
     
     fetch("/getDateTopList?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
     .then(res=>res.json())
     .then(res=>{
         let dateTopHistoryList = res;
            
	            for(let i=0;i<dateTopHistoryList.length;i++){
	            	if(dateTopHistoryList[4].DAY == dateTopHistoryList[i].DAY){
	            		  let list22 = {};
	            	     
	            		  list22.name=dateTopHistoryList[i].CONNAME;
	            		  list22.amount=dateTopHistoryList[i].CONAMOUNT;
	            		  list22.time=dateTopHistoryList[i].TIME;
	            		  object.push(list22);
	            	}
	           }    
          //  console.log('object????' + object.length);
          //  console.log("???????????????"+object[1]); 
          
            let str = '';
            str += '<div style="color:gray; font-size:18px; margin-bottom:7px;"><br>';
            str += '&nbsp;<img src="${pageContext.request.contextPath}/resources/myicon/check3.png" style="width:9%;"/>?????? TOP 1 DAY ??? ????????????</div>';
            
            
            str += '<div style="font-size:18px; color:#5a5a5a; margin-left:50px;">';
            for(let i=0;i<object.length;i++) {           	
                str += '' + object[i].name + '  ' +  (Math.floor(object[i].amount)).toLocaleString('ko-KR') + ' ??? <br>'; 
                // + object[i].time +
            }
            str += '</div>';
            $('#dateTopHisto').append(str);
      })
     }
     </script>
    
  
  <!-- ?????? ?????? -->
  <script>
  function cateCount() {
	  let monthStart = -1;
      let monthEnd = -1;
      let id ='${loginVO.id}';
      
      let cate3name = []; 
      let cate3count = [];
      
      fetch("/getCateCount?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
      .then(res=>res.json())
           .then(res=>{
              let cate3CountList = res;
              
              for(let i=0;i<cate3CountList.length;i++){
            	  cate3name.push(cate3CountList[i].CATE3);
            	  cate3count.push(cate3CountList[i].CATE3COUNT*1);
              } 
             //   console.log('1???: ' + cate3name[0] + cate3count[0]);
             //   console.log('2???: ' + cate3name[1] + cate3count[1]);
                
                let object = {};
                object.cate3name = cate3name;
                object.cate3count = cate3count;
                
        
         return new Promise((resolve,reject)=>{
                   resolve(object);
             })
           })
           .then(res=>{ 
        	   countObject = res;
        	   
        	   var options = {
        		          series: cate3count,
        		          chart: {
        		          width: 510,
        		          type: 'donut',
        		          dropShadow: {
        		            enabled: true,
        		            color: '#111',
        		            top: -1,
        		            left: 7,
        		            blur: 3,
        		            opacity: 0.2
        		          }
        		        },
        		        stroke: {
        		          width: 0,
        		        },
        		        plotOptions: {
        		          pie: {
        		            donut: {
        		              labels: {
        		                show: true,
        		                total: {
        		                  showAlways: true,
        		                  show: true
        		                }
        		              }
        		            }
        		          }
        		        },
        		        labels: cate3name,
        		        dataLabels: {
        		          dropShadow: {
        		            blur: 3,
        		            opacity: 0.8
        		          }
        		        },
        		        fill: {
        		        type: 'pattern',
        		          opacity: 1,
        		          pattern: {
        		            enabled: true,
        		            style: [],    /* 'verticalLines', 'squares', 'horizontalLines', 'circles','slantedLines' */
        		          },
        		        },
        		        states: {
        		          hover: {
        		            filter: 'none'
        		          }
        		        },
        		        theme: {
        		          palette: 'palette4'
        		        },
        		        title: {
        		          text: ""
        		        },
        		        responsive: [{
        		          breakpoint: 450,
        		          options: {
        		            chart: {
        		              width: 300,
        		              height: 300
        		            },
        		            legend: {
        		              position: 'bottom'
        		            }
        		          }
        		        }]
        		        };

        		        var chart = new ApexCharts(document.querySelector("#chart4"), options);
        		        chart.render();
     
        		      //?????? ?????? ????????? ????????? (~???)??? ???????????????(~???) ?????????. ????????? ????????? ????????? ??????????????????
        		        let str = '';
        		        str += '<div style="text-align:center; font-size:18px;"> ????????? ??????..  <strong style="font-size:22px;">' + countObject.cate3name[0] + '</strong> ??????? <br><br>';
        		        str += '?????? ???, <br> ?????? ????????? ?????? ???????????????<br>';
        		        str += '<strong style="font-size:23px; color:#008485">" '+countObject.cate3name[0]+ '   ('+countObject.cate3count[0]+'???) "</strong> ?????????';
        		        /* str =+ ' ????????? ??????????????? "'+ countObject.cate3name[1]+ '(' + countObject.cate3count[1] + '???)" ?????????';  */
        		        str += '<br><br><img src="${pageContext.request.contextPath}/resources/myicon/notice2.png" style="width:7%;"/> ????????? ????????? ?????????<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;??????????????????</div>';
        		        $('#chart4comment').append(str);     	   
           })
  }
  </script>
     
     
     
 
     <script>
     function cateAmount() {
    	 let monthStart = -6;
         let monthEnd = -1;
         let id ='${loginVO.id}';
         
         let allCate = [];
          
         fetch("/getCateAmount?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
              .then(res=>res.json())
              .then(res=>{
                 let cateList = res;
              
                 for(let i=0;i<cateList.length;i++){
                	 let allCate1 = {};
                		 
                	 allCate1.name=cateList[i].CATE1;
                	 allCate1.y=cateList[i].COUNT*1;
                	 allCate1.z=cateList[i].AMOUNT*1;
                	 console.log(allCate1);
                	 allCate.push(allCate1);
                       
                 }             
                  return new Promise((resolve,reject)=>{
                      resolve(allCate);
                      })
              })
              
              .then(res=>{
            	  let objectList = res;
            	  //console.log("objectList : " + objectList[1].y);
                                 
               Highcharts.chart('container3', {
            	    chart: {
            	        type: 'variablepie'
            	    },
            	    title: {
            	        text: '??????????????? ?????? ?????? ?????? ??? ??????'
            	        
            	    },
            	    tooltip: {
            	        headerFormat: '',
            	        pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
            	            '?????? ?????????: <b>{point.y} ???</b><br/>' +
            	            '??? ??????: <b>{point.z} ???</b><br/>'
            	    },
            	    series: [{
            	        minPointSize: 10,
            	        innerSize: '20%',
            	        zMin: 0,
            	        name: 'CATEGORY',
            	        data: objectList
            	    }]
            	});               
        })
      }
     </script>

     <script>
     function times() {
    	 $('#setNoticeSMSParent').empty();
    	 let monthStart = -6;
         let monthEnd = -1;
         let id ='${loginVO.id}';
         
         let topCountData = [];
         let count = 0 ;
         let time = '';
         
         
         
         timeListObject_1 = {};
         timeListObject_1.name = '0~4???';
         timeListObject_1.drilldown= '0~4???';
         
         timeListObject_2 = {};
         timeListObject_2.name = '4~8???';
         timeListObject_2.drilldown= '4~8???';
         
         timeListObject_3 = {};
         timeListObject_3.name = '8~12???';
         timeListObject_3.drilldown= '8~12???';
         
         timeListObject_4 = {};
         timeListObject_4.name = '12~16???';
         timeListObject_4.drilldown= '12~16???';
         
         timeListObject_5 = {};
         timeListObject_5.name = '16~20???';
         timeListObject_5.drilldown= '16~20???';
         
         timeListObject_6 = {};
         timeListObject_6.name = '20~24???';
         timeListObject_6.drilldown = '20~24???';
         
         let timeListArray_1 = [];
         let timeListArray_2 = [];
         let timeListArray_3 = [];
         let timeListArray_4 = [];
         let timeListArray_5 = [];
         let timeListArray_6 = [];
         
         let timeListTimeBiggerArray = [];
         
         let detailTimeArray = [];
         
         let detailTimeObject_1 = {};
         detailTimeObject_1.name = '0~4???';
         detailTimeObject_1.id = '0~4???';
         detailTimeObject_1.data=[];
         detailTimeObject_1.data.push([0,0]);
         
         let detailTimeObject_2 = {};
         detailTimeObject_2.name = '4~8???';
         detailTimeObject_2.id = '4~8???';
         detailTimeObject_2.data=[];
         detailTimeObject_2.data.push([0,0]);
           
         let detailTimeObject_3 = {};
         detailTimeObject_3.name = '8~12???';
         detailTimeObject_3.id = '8~12???';
         detailTimeObject_3.data=[];
         detailTimeObject_3.data.push([0,0]);
         
         let detailTimeObject_4 = {};
         detailTimeObject_4.name = '12~16???';
         detailTimeObject_4.id = '12~16???';
         detailTimeObject_4.data=[];
         detailTimeObject_4.data.push([0,0]);
           
         let detailTimeObject_5 = {};
         detailTimeObject_5.name = '16~20???';
         detailTimeObject_5.id = '16~20???';
         detailTimeObject_5.data=[];
         detailTimeObject_5.data.push([0,0]);
            
         let detailTimeObject_6 = {};
         detailTimeObject_6.name = '20~24???';
         detailTimeObject_6.id = '20~24???';
         detailTimeObject_6.data=[];
         detailTimeObject_6.data.push([0,0]);      
      	 
         fetch("/getTimesData?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
         .then(res=>res.json())
         .then(res=>{
       
        	    let timesList = res;

                 for(let i=0;i<timesList.length;i++){
                	 let mod = parseInt(Number(timesList[i].CONDATE.substring(11,13).replace(':',''))/4); 
                     let detailTimeOneArray = [];
                     
                	 if(mod<1){
                		 timeListArray_1.push(mod);
                         if(detailTimeObject_1.data[detailTimeObject_1.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_1.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                       
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_1.data.push(detailTimeOneArray);
                	     
                	 }else if(mod<2){
                		 timeListArray_2.push(mod);
                         if(detailTimeObject_2.data[detailTimeObject_2.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_2.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                   
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_2.data.push(detailTimeOneArray);     
                		 
                	 }else if(mod<3){
                		 timeListArray_3.push(mod);
                         if(detailTimeObject_3.data[detailTimeObject_3.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_3.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                       
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_3.data.push(detailTimeOneArray);
                    
                	 }else if(mod<4){
                		 timeListArray_4.push(mod);
                         if(detailTimeObject_4.data[detailTimeObject_4.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_4.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                   
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_4.data.push(detailTimeOneArray);
                    
                	 }else if(mod<5){
                		 timeListArray_5.push(mod);
                        if(detailTimeObject_5.data[detailTimeObject_5.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_5.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
              
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_5.data.push(detailTimeOneArray);
                	 }else{
                		 timeListArray_6.push(mod);
                		 if(detailTimeObject_6.data[detailTimeObject_6.data.length-1][0]===timesList[i].CATENAME3){                			 
                			 let lastNumber = Number(detailTimeObject_6.data.pop()[1]);
                			 detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                
                        	 detailTimeOneArray.push(timesList[i].CATENAME3);                             
                        	 detailTimeOneArray.push(1);                                                  
                         }
                		 detailTimeObject_6.data.push(detailTimeOneArray);                
                	 }         
                 }
               
                 timeListObject_1.y = timeListArray_1.length; //????????????
                 timeListObject_2.y = timeListArray_2.length;
                 timeListObject_3.y = timeListArray_3.length;
                 timeListObject_4.y = timeListArray_4.length;
                 timeListObject_5.y = timeListArray_5.length;
                 timeListObject_6.y = timeListArray_6.length; 
                 
                 timeListTimeBiggerArray.push(timeListObject_1); //??? timeListTimeBiggerArray ????????? ??????
                 timeListTimeBiggerArray.push(timeListObject_2);
                 timeListTimeBiggerArray.push(timeListObject_3);
                 timeListTimeBiggerArray.push(timeListObject_4);
                 timeListTimeBiggerArray.push(timeListObject_5);
                 timeListTimeBiggerArray.push(timeListObject_6);
                 
                 detailTimeObject_1.data.shift();
                 detailTimeObject_2.data.shift();
                 detailTimeObject_3.data.shift();
                 detailTimeObject_4.data.shift();
                 detailTimeObject_5.data.shift();
                 detailTimeObject_6.data.shift();   
                 
                 detailTimeArray.push(detailTimeObject_1);
                 detailTimeArray.push(detailTimeObject_2);
                 detailTimeArray.push(detailTimeObject_3);
                 detailTimeArray.push(detailTimeObject_4);
                 detailTimeArray.push(detailTimeObject_5);
                 detailTimeArray.push(detailTimeObject_6);
                 //console.log(Number(detailTimeObject_6.data.pop()[1])+1);
                 
                 
                 //detailTimeArray ??????
                 console.log(" detailTimeArray " + detailTimeArray[0]);

                 return new Promise((resolve,reject)=>{
                	 resolve('gogo');
                 })
                 
         }) 
         .then(res=>{
                 
                 Highcharts.chart('container7', {
                	    chart: {
                	        type: 'column'
                	    },
                	    title: {
                	        align: 'left',
                	        text: ''
                	    },
                	    subtitle: {
                	        align: 'left',
                	        text: ''
                	    },
                	    accessibility: {
                	        announceNewData: {
                	            enabled: true
                	        }
                	    },
                	    xAxis: {
                	        type: 'category'
                	    },
                	    yAxis: {
                	        title: {
                	            text: '?????? ??????'
                	        }

                	    },
                	    legend: {
                	        enabled: false
                	    },
                	    plotOptions: {
                	        series: {
                	            borderWidth: 0,
                	            dataLabels: {
                	                enabled: true,
                	                format: '{point.y} ???'
                	            }
                	        }
                	    },

                	    tooltip: {
                	        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                	        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y} ???</b><br/>'
                	    },

                	    series: [
                	        {
                	            name: "?????? ?????? ??????",
                	            colorByPoint: true,
                	            data: timeListTimeBiggerArray
                	        }
                	    ],
                	    drilldown: {
                	        breadcrumbs: {
                	            position: {
                	                align: 'right'
                	            }
                	        },
                	        series: detailTimeArray
                	    }
                	});
                 
                 
      
                 //let count = 0 ;
                 //let time = '';
                 for(let i=0;i<timeListTimeBiggerArray.length;i++){
                     if(i==0){
                         count=timeListTimeBiggerArray[i].y;
                     }else{
                         if(count<timeListTimeBiggerArray[i].y){
                             count = timeListTimeBiggerArray[i].y;
                             time = timeListTimeBiggerArray[i].name;
                         }
                     }
                   
                 } 
                 
                 //let topCountData = [];
                 //console.log("?????????" + count + time);
                 topCountData.push(count);
                 topCountData.push(Number(time.substring(0,2)));
                 
                 //console.log(topCountData + "????????? ?????????");
                 
                 $('#setNoticeSMSParent').append('<button type="button" class="setNotice col-3 btn btn-primary" data-bs-toggle="modal" data-bs-dismiss="modal" data-bs-target="#setNotice" style="width:354px; height:33px; font-size:16px; font-family:hanaBFont;" onclick="setNoticeSMS('+count+','+Number(time.substring(0,2))+')">?????? ?????? ??????</button>');      
        })
    }
     
     function timesSelect(input){
         $('#setNoticeSMSParent').empty();
         let monthStart = -input;
         let monthEnd = -1;
         let id ='${loginVO.id}';
         
         let topCountData = [];
         let count = 0 ;
         let time = '';
         
         
         
         timeListObject_1 = {};
         timeListObject_1.name = '0~4???';
         timeListObject_1.drilldown= '0~4???';
         
         timeListObject_2 = {};
         timeListObject_2.name = '4~8???';
         timeListObject_2.drilldown= '4~8???';
         
         timeListObject_3 = {};
         timeListObject_3.name = '8~12???';
         timeListObject_3.drilldown= '8~12???';
         
         timeListObject_4 = {};
         timeListObject_4.name = '12~16???';
         timeListObject_4.drilldown= '12~16???';
         
         timeListObject_5 = {};
         timeListObject_5.name = '16~20???';
         timeListObject_5.drilldown= '16~20???';
         
         timeListObject_6 = {};
         timeListObject_6.name = '20~24???';
         timeListObject_6.drilldown = '20~24???';
         
         let timeListArray_1 = [];
         let timeListArray_2 = [];
         let timeListArray_3 = [];
         let timeListArray_4 = [];
         let timeListArray_5 = [];
         let timeListArray_6 = [];
         
         let timeListTimeBiggerArray = [];
         
         let detailTimeArray = [];
         
         let detailTimeObject_1 = {};
         detailTimeObject_1.name = '0~4???';
         detailTimeObject_1.id = '0~4???';
         detailTimeObject_1.data=[];
         detailTimeObject_1.data.push([0,0]);
         
         let detailTimeObject_2 = {};
         detailTimeObject_2.name = '4~8???';
         detailTimeObject_2.id = '4~8???';
         detailTimeObject_2.data=[];
         detailTimeObject_2.data.push([0,0]);
           
         let detailTimeObject_3 = {};
         detailTimeObject_3.name = '8~12???';
         detailTimeObject_3.id = '8~12???';
         detailTimeObject_3.data=[];
         detailTimeObject_3.data.push([0,0]);
         
         let detailTimeObject_4 = {};
         detailTimeObject_4.name = '12~16???';
         detailTimeObject_4.id = '12~16???';
         detailTimeObject_4.data=[];
         detailTimeObject_4.data.push([0,0]);
           
         let detailTimeObject_5 = {};
         detailTimeObject_5.name = '16~20???';
         detailTimeObject_5.id = '16~20???';
         detailTimeObject_5.data=[];
         detailTimeObject_5.data.push([0,0]);
            
         let detailTimeObject_6 = {};
         detailTimeObject_6.name = '20~24???';
         detailTimeObject_6.id = '20~24???';
         detailTimeObject_6.data=[];
         detailTimeObject_6.data.push([0,0]);      
         
         fetch("/getTimesData?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
         .then(res=>res.json())
         .then(res=>{
       
                let timesList = res;

                 for(let i=0;i<timesList.length;i++){
                     let mod = parseInt(Number(timesList[i].CONDATE.substring(11,13).replace(':',''))/4); 
                     let detailTimeOneArray = [];
                     
                     if(mod<1){
                         timeListArray_1.push(mod);
                         if(detailTimeObject_1.data[detailTimeObject_1.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_1.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                       
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_1.data.push(detailTimeOneArray);
                         
                     }else if(mod<2){
                         timeListArray_2.push(mod);
                         if(detailTimeObject_2.data[detailTimeObject_2.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_2.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                   
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_2.data.push(detailTimeOneArray);     
                         
                     }else if(mod<3){
                         timeListArray_3.push(mod);
                         if(detailTimeObject_3.data[detailTimeObject_3.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_3.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                       
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_3.data.push(detailTimeOneArray);
                    
                     }else if(mod<4){
                         timeListArray_4.push(mod);
                         if(detailTimeObject_4.data[detailTimeObject_4.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_4.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                   
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_4.data.push(detailTimeOneArray);
                    
                     }else if(mod<5){
                         timeListArray_5.push(mod);
                        if(detailTimeObject_5.data[detailTimeObject_5.data.length-1][0]===timesList[i].CATENAME3){
                             
                             let lastNumber = Number(detailTimeObject_5.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
              
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_5.data.push(detailTimeOneArray);
                     }else{
                         timeListArray_6.push(mod);
                         if(detailTimeObject_6.data[detailTimeObject_6.data.length-1][0]===timesList[i].CATENAME3){                          
                             let lastNumber = Number(detailTimeObject_6.data.pop()[1]);
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(lastNumber+1);
                         }else{
                
                             detailTimeOneArray.push(timesList[i].CATENAME3);                             
                             detailTimeOneArray.push(1);                                                  
                         }
                         detailTimeObject_6.data.push(detailTimeOneArray);                
                     }         
                 }
               
                 timeListObject_1.y = timeListArray_1.length; //????????????
                 timeListObject_2.y = timeListArray_2.length;
                 timeListObject_3.y = timeListArray_3.length;
                 timeListObject_4.y = timeListArray_4.length;
                 timeListObject_5.y = timeListArray_5.length;
                 timeListObject_6.y = timeListArray_6.length; 
                 
                 timeListTimeBiggerArray.push(timeListObject_1); //??? timeListTimeBiggerArray ????????? ??????
                 timeListTimeBiggerArray.push(timeListObject_2);
                 timeListTimeBiggerArray.push(timeListObject_3);
                 timeListTimeBiggerArray.push(timeListObject_4);
                 timeListTimeBiggerArray.push(timeListObject_5);
                 timeListTimeBiggerArray.push(timeListObject_6);
                 
                 detailTimeObject_1.data.shift();
                 detailTimeObject_2.data.shift();
                 detailTimeObject_3.data.shift();
                 detailTimeObject_4.data.shift();
                 detailTimeObject_5.data.shift();
                 detailTimeObject_6.data.shift();   
                 
                 detailTimeArray.push(detailTimeObject_1);
                 detailTimeArray.push(detailTimeObject_2);
                 detailTimeArray.push(detailTimeObject_3);
                 detailTimeArray.push(detailTimeObject_4);
                 detailTimeArray.push(detailTimeObject_5);
                 detailTimeArray.push(detailTimeObject_6);
                 //console.log(Number(detailTimeObject_6.data.pop()[1])+1);
                 
                 
                 //detailTimeArray ??????
                 console.log(" detailTimeArray " + detailTimeArray[0]);

                 return new Promise((resolve,reject)=>{
                     resolve('gogo');
                 })
                 
         }) 
         .then(res=>{
                 
                 Highcharts.chart('container7', {
                        chart: {
                            type: 'column'
                        },
                        title: {
                            align: 'left',
                            text: ''
                        },
                        subtitle: {
                            align: 'left',
                            text: ''
                        },
                        accessibility: {
                            announceNewData: {
                                enabled: true
                            }
                        },
                        xAxis: {
                            type: 'category'
                        },
                        yAxis: {
                            title: {
                                text: '?????? ??????'
                            }

                        },
                        legend: {
                            enabled: false
                        },
                        plotOptions: {
                            series: {
                                borderWidth: 0,
                                dataLabels: {
                                    enabled: true,
                                    format: '{point.y} ???'
                                }
                            }
                        },

                        tooltip: {
                            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y} ???</b><br/>'
                        },

                        series: [
                            {
                                name: "????????????",
                                colorByPoint: true,
                                data: timeListTimeBiggerArray
                            }
                        ],
                        drilldown: {
                            breadcrumbs: {
                                position: {
                                    align: 'right'
                                }
                            },
                            series: detailTimeArray
                        }
                    });
                 
                 
      
                 //let count = 0 ;
                 //let time = '';
                 for(let i=0;i<timeListTimeBiggerArray.length;i++){
                     if(i==0){
                         count=timeListTimeBiggerArray[i].y;
                     }else{
                         if(count<timeListTimeBiggerArray[i].y){
                             count = timeListTimeBiggerArray[i].y;
                             time = timeListTimeBiggerArray[i].name;
                         }
                     }
                   
                 } 
                 
                 //let topCountData = [];
                
                 topCountData.push(count);
                 topCountData.push(Number(time.substring(0,2)));
                 
                 //console.log(topCountData + "????????? ?????????");
                 
                 $('#setNoticeSMSParent').append('<button type="button" class="setNotice col-3 btn btn-primary" data-bs-toggle="modal" data-bs-dismiss="modal" data-bs-target="#setNotice" style="width:354px; height:33px; font-size:16px; font-family:hanaBFont;" onclick="setNoticeSMS('+count+','+Number(time.substring(0,2))+')">?????? ?????? ??????</button>');      
                   })
        $('#topCountComment').empty();
         $('#countMedianComment').empty();
        
         let cate3 = [];
         let cate3count = [];
         
         fetch("/getTopCount?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
         .then(res=>res.json())
         .then(res=>{
             let topCountList = res;
             
             for(let i=0;i<2;i++){
                 cate3.push(topCountList[i].CATE3);
                 cate3count.push(topCountList[i].CATE3COUNT*1);      
             }  
               let str = '';
               str += '<div style="text-align:center; font-size:18px; margin-bottom:10px;"> [ ?????? ?????? TOP ]</div>';
               str += '<div style="text-align:center;"><h6 style="font-size:16px; display:inline;">1 ???&nbsp; </h6> <h6 style="font-size:19px; color:#ff4d4d; display:inline;">' + cate3[0] + ' (' + cate3count[0] + ' ???) <h6>';
               str += '<h6 style="font-size:16px; display:inline;">2 ???&nbsp; </h6> <h6 style="font-size:19px; color:#ff7f00; display:inline;">' + cate3[1] + ' (' + cate3count[1] + ' ???) <h6></div>';
                    
                        $('#topCountComment').append(str);    
              
                        let cate3name = cate3;                        
                        fetch("/getTop2Data?id="+id+'&cate3name='+cate3name+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
                         .then(res=>res.json())
                         .then(res=>{
                             let bigArrayList = res;
                              
                             let result = bigArrayList.filter(function(item1,idx1){
                                 return bigArrayList.findIndex(function(item2,idx){
                                   return item1.CATENAME3 == item2.CATENAME3  
                                 })==idx1;
                             })

                             let cateArray = [];
                             
                             
                             for(let i=0;i<result.length;i++){
                                 let cateObject = {};
                                 cateObject.name = result[i].CATENAME3;
                                 cateObject.data = [];
                                 //console.log("22 "+cateObject);
                                 for(let j=0;j<bigArrayList.length;j++){
                                     if(result[i].CATENAME3===bigArrayList[j].CATENAME3){
                                         let oneArray = [];
                                         oneArray.push(bigArrayList[j].CATENAME3);
                                         oneArray.push(bigArrayList[j].AMOUNT);
                                         oneArray.push(bigArrayList[j].COUNT);
                                         cateObject.data.push(oneArray);  
                                      }              
                                 }
                                 cateArray.push(cateObject);          
                             }
                             
                             //console.log("????????? : "+cateArray[0].data);
                             //console.log("????????? ?????? : "+cateArray[0].data[0][0]);
                             //console.log("????????? : "+cateArray[0].data.length); // length:6
                             //console.log("????????? : "+cateArray[0].data[2][2]); //COUNT???
                             
                             
                             //????????? ????????? ??????
                             let firstCountSum = 0;
                             for(let i=0;i<cateArray[0].data.length;i++) {
                                 firstCountSum += cateArray[0].data[i][2];   
                             }
                             let firstCountAvg = Math.floor(firstCountSum/cateArray[0].data.length); //?????? ????????? ??????
                             //  console.log("????????? ????????? ?????? " + firstCountAvg);  // ????????? 17?????? ?????????
                               
                             //????????? ????????? ??????
                             // let maxCount1 = 0;
                              let arrCount1 = new Array()
                              for(let i=0; i < (cateArray[0].data).length; i++){
                                  arrCount1.push(cateArray[0].data[i][2])                  
                              }  
                              let firstCountMax = Math.max.apply(null,arrCount1); 
                              //console.log('????????? ????????? ??????' + firstCountMax);
                             
                          
                             //????????? ???????????? 
                             let firstAmountSum = 0;
                             for(let i=0;i<cateArray[0].data.length;i++) {
                               firstAmountSum += cateArray[0].data[i][1];
                             }
                             let firstAmountAvg = Math.floor(firstAmountSum/cateArray[0].data.length); //?????? ?????? ??????
                             //console.log("?????????  ?????????????????? " + firstAmountAvg); 
                             
                             let max = 0;
                             let arr = new Array()
                             for(let i=0; i < (cateArray[0].data).length; i++){
                               arr.push(cateArray[0].data[i][1])                  
                             }
                              
                             let firstAmountMax = Math.max.apply(null,arr); //?????? ?????? ??????
                             //console.log('firstAmountMax' + firstAmountMax);
                               
                             let firstSavingAmount = firstAmountMax - firstAmountAvg; //????????? ??????
                             //console.log('firstSavingAmount ???????????????' + firstSavingAmount);
                               
                                
                             //??????????????? ?????????  
                             let secondCountSum = 0;
                             for(let i=0;i<cateArray[1].data.length;i++) {
                                 secondCountSum += cateArray[1].data[i][2];   
                             }
                             let secondCountAvg = Math.floor(secondCountSum/cateArray[1].data.length); //?????? ????????? ??????
                             //  console.log("??????????????? ????????? ?????? " + secondCountAvg);  // ????????? 17?????? ?????????
                               
                             //??????????????? ????????? ??????
                             let arrCount2 = new Array()
                             for(let i=0; i < (cateArray[1].data).length; i++){
                                 arrCount2.push(cateArray[1].data[i][2])                  
                             }  
                             let secondCountMax = Math.max.apply(null,arrCount2); 
                             
                             //??????????????? ????????????
                             let secondAmountSum = 0;
                             for(let i=0;i<cateArray[1].data.length;i++) {
                              secondAmountSum += cateArray[1].data[i][1];
                             }
                             let secondAmountAvg = Math.floor(secondAmountSum/cateArray[1].data.length); //?????? ?????? ??????
                            // console.log("???????????????  ?????????????????? " + secondAmountAvg); 
                               
                             //??????????????? ???????????? ??????
                             let max2 = 0;
                             let arr2 = new Array()
                             for(let i=0; i < (cateArray[1].data).length; i++){
                               arr2.push(cateArray[1].data[i][1])                  
                             }
                                
                             let secondAmountMax = Math.max.apply(null,arr2); //?????? ?????? ??????
                             //console.log('secondAmountMax' + secondAmountMax);
                               
                             let secondSavingAmount = secondAmountMax - secondAmountAvg; //????????? ??????
                             //console.log('secondSavingAmount ???????????????' + secondSavingAmount);   

                             let countTopSavingAmount = firstSavingAmount + secondSavingAmount;
                    
                             let str = '';
                             
                             str += '<div> <img src="${pageContext.request.contextPath}/resources/myicon/check3.png" style="width:7%; display:inline;"/>';
                             str += '<h5 style="font-size:17px; color:#ff4d4d; display:inline;"> ' + cateArray[0].data[0][0] + ' </h5></div>';
                             str += '<div style="font-size:17px; margin-bottom:10px; color:#5a5a5a;">?????? ?????? ?????????<strong style="font-size:21px; color:black;"> " ' + (Math.floor(firstAmountAvg)).toLocaleString('ko-KR') + ' ??? "</strong> ????????? <br>';
                             str += '?????? ?????? ????????? <strong style="font-size:19px; color:black;">' + firstCountMax + '???</strong>?????? <br>?????? ????????? <strong style="font-size:19px; color:black;">' + firstCountAvg + '???</strong>??? ?????????<br>';
                             str += '??? <p style="font-size:22px; color:#ff4d4d; display:inline;">" ' + (Math.floor(firstSavingAmount)).toLocaleString('ko-KR') + ' ??? "</p> ????????? ??????</div>';

                             
                          
                             str += '<div> <img src="${pageContext.request.contextPath}/resources/myicon/check3.png" style="width:7%; display:inline;"/>';
                             str += '<h5 style="font-size:17px; color:#ff7f00; display:inline;"> ' + cateArray[1].data[0][0] + ' </h5></div>';
                             str += '<div style="font-size:17px; color:#5a5a5a;">?????? ?????? ????????? <strong style="font-size:21px; color:black;">" ' + (Math.floor(secondAmountAvg)).toLocaleString('ko-KR') + ' ??? "</strong> ????????? <br>';
                             str += '?????? ?????? ????????? <strong style="font-size:19px; color:black;">' + secondCountMax + '???</strong>?????? <br>?????? ????????? <strong style="font-size:19px; color:black;">' + secondCountAvg + '???</strong>??? ?????????<br>';
                             str += '??? <p style="font-size:22px; color:#ff7f00; display:inline;">" ' + (Math.floor(secondSavingAmount)).toLocaleString('ko-KR') + ' ??? "</p> ????????? ??????</div>';

                             
                          //   str += '???????????? ????????? ???????????? ??? ' + newBudgetSaving + '?????? ????????? ??? ????????????. ????????? ??????????????????? </div>';
                             
                             $('#countMedianComment').append(str);  
                             
                             $('input[name=countTopSavingAmount]').attr('value',countTopSavingAmount);
                             
                         })
              })
              
              fetch("/getTop2Data?id="+id+'&cate3name='+cate3name+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
                      .then(res=>res.json())
                      .then(res=>{
                          let bigArrayList = res;
                           
                          let result = bigArrayList.filter(function(item1,idx1){
                              return bigArrayList.findIndex(function(item2,idx){
                                return item1.CATENAME3 == item2.CATENAME3  
                              })==idx1;
                          })

                          let cateArray = [];
                          
                          
                          for(let i=0;i<result.length;i++){
                              let cateObject = {};
                              cateObject.name = result[i].CATENAME3;
                              cateObject.data = [];
                              //console.log("22 "+cateObject);
                              for(let j=0;j<bigArrayList.length;j++){
                                  if(result[i].CATENAME3===bigArrayList[j].CATENAME3){
                                      let oneArray = [];
                                      oneArray.push(bigArrayList[j].CATENAME3);
                                      oneArray.push(bigArrayList[j].AMOUNT);
                                      oneArray.push(bigArrayList[j].COUNT);
                                      cateObject.data.push(oneArray);  
                                   }              
                              }
                              cateArray.push(cateObject);          
                          }
                          
                          //console.log("????????? : "+cateArray[0].data);
                          //console.log("????????? ?????? : "+cateArray[0].data[0][0]);
                          //console.log("????????? : "+cateArray[0].data.length); // length:6
                          //console.log("????????? : "+cateArray[0].data[2][2]); //COUNT???
                          
                          
                          //????????? ????????? ??????
                          let firstCountSum = 0;
                          for(let i=0;i<cateArray[0].data.length;i++) {
                              firstCountSum += cateArray[0].data[i][2];   
                          }
                          let firstCountAvg = Math.floor(firstCountSum/cateArray[0].data.length); //?????? ????????? ??????
                          //  console.log("????????? ????????? ?????? " + firstCountAvg);  // ????????? 17?????? ?????????
                            
                          //????????? ????????? ??????
                          // let maxCount1 = 0;
                           let arrCount1 = new Array()
                           for(let i=0; i < (cateArray[0].data).length; i++){
                               arrCount1.push(cateArray[0].data[i][2])                  
                           }  
                           let firstCountMax = Math.max.apply(null,arrCount1); 
                           //console.log('????????? ????????? ??????' + firstCountMax);
                          
                       
                          //????????? ???????????? 
                          let firstAmountSum = 0;
                          for(let i=0;i<cateArray[0].data.length;i++) {
                            firstAmountSum += cateArray[0].data[i][1];
                          }
                          let firstAmountAvg = Math.floor(firstAmountSum/cateArray[0].data.length); //?????? ?????? ??????
                          //console.log("?????????  ?????????????????? " + firstAmountAvg); 
                          
                          let max = 0;
                          let arr = new Array()
                          for(let i=0; i < (cateArray[0].data).length; i++){
                            arr.push(cateArray[0].data[i][1])                  
                          }
                           
                          let firstAmountMax = Math.max.apply(null,arr); //?????? ?????? ??????
                          //console.log('firstAmountMax' + firstAmountMax);
                            
                          let firstSavingAmount = firstAmountMax - firstAmountAvg; //????????? ??????
                          //console.log('firstSavingAmount ???????????????' + firstSavingAmount);
                            
                             
                          //??????????????? ?????????  
                          let secondCountSum = 0;
                          for(let i=0;i<cateArray[1].data.length;i++) {
                              secondCountSum += cateArray[1].data[i][2];   
                          }
                          let secondCountAvg = Math.floor(secondCountSum/cateArray[1].data.length); //?????? ????????? ??????
                          //  console.log("??????????????? ????????? ?????? " + secondCountAvg);  // ????????? 17?????? ?????????
                            
                          //??????????????? ????????? ??????
                          let arrCount2 = new Array()
                          for(let i=0; i < (cateArray[1].data).length; i++){
                              arrCount2.push(cateArray[1].data[i][2])                  
                          }  
                          let secondCountMax = Math.max.apply(null,arrCount2); 
                          
                          //??????????????? ????????????
                          let secondAmountSum = 0;
                          for(let i=0;i<cateArray[1].data.length;i++) {
                           secondAmountSum += cateArray[1].data[i][1];
                          }
                          let secondAmountAvg = Math.floor(secondAmountSum/cateArray[1].data.length); //?????? ?????? ??????
                         // console.log("???????????????  ?????????????????? " + secondAmountAvg); 
                            
                          //??????????????? ???????????? ??????
                          let max2 = 0;
                          let arr2 = new Array()
                          for(let i=0; i < (cateArray[1].data).length; i++){
                            arr2.push(cateArray[1].data[i][1])                  
                          }
                             
                          let secondAmountMax = Math.max.apply(null,arr2); //?????? ?????? ??????
                          //console.log('secondAmountMax' + secondAmountMax);
                            
                          let secondSavingAmount = secondAmountMax - secondAmountAvg; //????????? ??????
                          //console.log('secondSavingAmount ???????????????' + secondSavingAmount);   

                          let countTopSavingAmount = firstSavingAmount + secondSavingAmount;
                 
                          let str = '';
                          str += '<div> "' + cateArray[0].data[0][0] + '"??? ?????? ???????????? ????????? <strong style="font-size:17px;">' + firstAmountAvg + '</strong> ??? ????????? <br>';
                          str += '?????? ?????? ????????? ' + firstCountMax + '????????? ?????? ' + secondCountAvg + '?????? ????????? ??? ' + firstSavingAmount + '?????? ????????? ??? ??? ???????????? <br><br>';

                          str += '"' + cateArray[1].data[0][0] + '"??? ?????? ???????????? ????????? ' + secondAmountAvg + '??? ????????? <br>';
                          str += '?????? ?????? ????????? ' + secondCountMax + '????????? ?????? ' + secondCountAvg + '?????? ????????? ??? ' + secondSavingAmount + '?????? ????????? ??? ??? ????????????<br></div>';
                          
                       //   str += '???????????? ????????? ???????????? ??? ' + newBudgetSaving + '?????? ????????? ??? ????????????. ????????? ??????????????????? </div>';
                          
                          $('#countMedianComment').append(str);  
                          
                          $('input[name=countTopSavingAmount]').attr('value',countTopSavingAmount);
                          
                      })
              
              
              
     }
    </script>
	     
	<script>
	   function setNoticeSMS(input1,input2){
	       console.log(input1); //117???
	       console.log(input2); //12???
	       
	       $('#getModalTime').empty();
	       
	       str = '';
	       str += '?????? ????????? ????????? ???????????? <strong style="color:red; font-size:23px;">' + input2 + '~' + (input2+4) + '???</strong>??? ??????<br> ?????? ?????? ?????? ????????? ?????? ??? ????????????. <br>';
	       str += '?????? ?????? ????????? ????????????????';
	       
	      $('#getModalTime').append(str); 
	   }
	</script>
   
   <script>
   function doSetNotice() {
	   let accountNo = '${accountNo}';
	   let noticeDate = $('#noticeDate').val(); //string ????????? *1
	   console.log(noticeDate);
	   
	   fetch("/doSetNotice?accountNo="+accountNo+"&noticeDate="+noticeDate)

            .then(res=>{
                
                //changeModal(toPocket);
                
          })
	   
	   
   }
   </script>
   
   <script>
   function cate3Amount() {	   
	   let monthStart = -6;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       let sixMonthLargeCate = [];
       let sixMonthsmallDrilldownArray = [];
       
       fetch("/getCate3Data?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
               let cate3List = res;
               let largeConsumeList = cate3List.filter(function(item1,idx1){
            	   return cate3List.findIndex(function(item2,idx){
            		 return item1.CATE2 == item2.CATE2  
            	   })==idx1;
               })
               for(let i=0;i<largeConsumeList.length;i++){
            	  
            	   let sum = 0;
            	   let largeComponent = {};
            	   largeComponent.name = largeConsumeList[i].CATE2;
            	   largeComponent.drilldown = largeConsumeList[i].CATE2;
                   let drilldownObject = {};
                   drilldownObject.name = largeConsumeList[i].CATE2;
                   drilldownObject.id = largeConsumeList[i].CATE2;
                   drilldownObject.data = [];
                   
            	   for(let j=0;j<cate3List.length;j++){
            		   if(largeConsumeList[i].CATE2==cate3List[j].CATE2){
            			   
            			   drilldownCate3Array = [];
            			   drilldownCate3Array.push(cate3List[j].CATE3);
            			   drilldownCate3Array.push(cate3List[j].AMOUNT);
            			   drilldownObject.data.push(drilldownCate3Array);
            			   
            			   sum += cate3List[j].AMOUNT;	   
            		   }
            	   }
            	   largeComponent.y= sum;
            	   sixMonthLargeCate.push(largeComponent);
            	   sixMonthsmallDrilldownArray.push(drilldownObject);
            	   //console.log(drilldownObject.data.length);
               }
  
                return new Promise((resolve,reject)=>{
                    resolve('22');
                })
            })
            .then(res=>{
            	Highcharts.chart('container5', {
            	    chart: {
            	        type: 'pie'
            	    },
            	    title: {
            	        text: ''
            	    },
            	   /*  subtitle: {
            	        text: 'Click the slices to view versions. Source: <a href="http://statcounter.com" target="_blank">statcounter.com</a>'
            	    }, */

            	    accessibility: {
            	        announceNewData: {
            	            enabled: true
            	        },
            	        point: {
            	            valueSuffix: ' ???'
            	        }
            	    },

            	    plotOptions: {
            	        series: {
            	            dataLabels: {
            	                enabled: true,
            	                format: '{point.name}'
            	            }
            	        }
            	    },

            	    tooltip: {
            	        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            	        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:,.0f}???</b><br/>'
            	    },

            	    series: [
            	        {
            	            name: "??????",
            	            colorByPoint: true,
            	            data:sixMonthLargeCate 
            	        }
            	    ],
            	    drilldown: {
            	        series:sixMonthsmallDrilldownArray
            	            }          	            
            	})
            })
   }
   
   function cate3AmountSelect(input){
	   console.log("input : "+input);
       let monthStart = -input;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       let sixMonthLargeCate = [];
       let sixMonthsmallDrilldownArray = [];
       
       fetch("/getCate3Data?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
               let cate3List = res;
               let largeConsumeList = cate3List.filter(function(item1,idx1){
                   return cate3List.findIndex(function(item2,idx){
                     return item1.CATE2 == item2.CATE2  
                   })==idx1;
               })
               for(let i=0;i<largeConsumeList.length;i++){
                  
                   let sum = 0;
                   let largeComponent = {};
                   largeComponent.name = largeConsumeList[i].CATE2;
                   largeComponent.drilldown = largeConsumeList[i].CATE2;
                   let drilldownObject = {};
                   drilldownObject.name = largeConsumeList[i].CATE2;
                   drilldownObject.id = largeConsumeList[i].CATE2;
                   drilldownObject.data = [];
                   
                   for(let j=0;j<cate3List.length;j++){
                       if(largeConsumeList[i].CATE2==cate3List[j].CATE2){
                           
                           drilldownCate3Array = [];
                           drilldownCate3Array.push(cate3List[j].CATE3);
                           drilldownCate3Array.push(cate3List[j].AMOUNT);
                           drilldownObject.data.push(drilldownCate3Array);
                           
                           sum += cate3List[j].AMOUNT;     
                       }
                   }
                   largeComponent.y= sum;
                   sixMonthLargeCate.push(largeComponent);
                   sixMonthsmallDrilldownArray.push(drilldownObject);
                   //console.log(drilldownObject.data.length);
               }
  
                return new Promise((resolve,reject)=>{
                    resolve('22');
                })
            })
            .then(res=>{
                Highcharts.chart('container5', {
                    chart: {
                        type: 'pie'
                    },
                    title: {
                        text: ''
                    },
                   /*  subtitle: {
                        text: 'Click the slices to view versions. Source: <a href="http://statcounter.com" target="_blank">statcounter.com</a>'
                    }, */

                    accessibility: {
                        announceNewData: {
                            enabled: true
                        },
                        point: {
                            valueSuffix: ' ???'
                        }
                    },

                    plotOptions: {
                        series: {
                            dataLabels: {
                                enabled: true,
                                format: '{point.name}'
                            }
                        }
                    },

                    tooltip: {
                        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:,.0f}???</b><br/>'
                    },

                    series: [
                        {
                            name: "??????",
                            colorByPoint: true,
                            data:sixMonthLargeCate 
                        }
                    ],
                    drilldown: {
                        series:sixMonthsmallDrilldownArray
                            }                       
                })
            })
                
       
       let count = [];
       let month = [];
       let sum = [];
       $('#sumMedianComment').empty();
       fetch("/getSumMedian?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
           let sumMedianList = res;
           
           for(let i=0;i<sumMedianList.length;i++){
               count.push(sumMedianList[i].COUNT*1);
               sum.push(sumMedianList[i].SUM*1);      
           }  
                  
           let countSum = 0;
           for(let i=0;i<count.length;i++) {
               countSum += count[i];   
           }
           let countAvg = Math.floor(countSum/count.length); //?????? ?????? ??????

            
            //??????????????????
           let amountSum = 0;
           for(let i=0;i<sum.length;i++) {
               amountSum += sum[i];   
           }
           let amountAvg = Math.floor(amountSum/sum.length); //?????? ?????? ??????
           
           let amountMax = Math.max.apply(null, sum);
          
           
           let savingAmount = amountMax - amountAvg; 
           //console.log('amountMax ??????' + amountMax);
           //console.log('savingAmount ??????' + savingAmount);
    
           str = '';
           str += '<div style="text-align:center; font-size:18px;"> ?????? ????????? ?????? ?????? ???????????????<br>';
           str += '<strong style="color:#008485; font-size:20px;"></strong> ??????, <br>';
           str += '<br>??? ??? ?????? ???????????????<br> <strong style="font-size:22px; color:#008485;"> " ' + (Math.floor(amountAvg)).toLocaleString('ko-KR') + ' ??? " </strong> ?????????</div>';
           
           str += '<div style="margin-top:20px; text-align:center; font-size:18px;"> <img src="${pageContext.request.contextPath}/resources/myicon/notice3.gif" style="width:15%;"/>';
           str += ' <br>????????? ?????? ????????? ?????????<br>';
           str += '?????? <strong style="font-size:23px; color:#ff3333;">" ' + (Math.floor(savingAmount)).toLocaleString('ko-KR') + ' ??? " </strong> ????????? !!</div>';
           
          $('#sumMedianComment').append(str);    
          
          $('input[name=sumTopSavingAmount]').attr('value',savingAmount);
       })
            
            
	   
   }
   
   
   </script>

   <script>
   //MONTH SUM 6????????? ????????????
   function sixMonthLine() {
	   let monthStart = -6;
       let monthEnd = -1;
       let id ='${loginVO.id}';
      
       let month = [];
       let sum = [];
       
       fetch("/getSixMonthAmount?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
    	   let sixMonthAmountList = res;
    	   //console.log('sixMonthAmountList: ' + sixMonthAmountList);
    	   
    	   for(let i=0;i<sixMonthAmountList.length;i++){

    		   month.push(sixMonthAmountList[i].MONTH);
    		   sum.push(sixMonthAmountList[i].SUM*1);
               }      
               return new Promise((resolve,reject)=>{
                    resolve('23');
              })
          })
    	  .then(res=>{

	    	   Highcharts.chart('container6', {
	    		    chart: {
	    		        type: 'line'
	    		    },
	    		    title: {
	    		        text: ''
	    		    },
	    		    subtitle: {
	    		        text: ''
	    		    },
	    		    xAxis: {
	    		        categories: month
	    		    },
	    		    yAxis: {
	    		        title: {
	    		            text: '?????? ?????? (???)'
	    		        }
	    		    },
	    		    plotOptions: {
	    		        line: {
	    		            dataLabels: {
	    		                enabled: true
	    		            },
	    		            enableMouseTracking: true
	    		        }
	    		    },
	    		    series: [{
	    		        name: '?????? ??????',
	    		        data: sum
	    		    }]
	    		});
       })  
   }
   </script>
    
   <script>
   function topCount() {
	   $('#topCountComment').empty();
	   $('#countMedianComment').empty();
	   let monthStart = -6;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       
       let cate3 = [];
       let cate3count = [];
       
       fetch("/getTopCount?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
    	   let topCountList = res;
    	   
    	   for(let i=0;i<2;i++){
               cate3.push(topCountList[i].CATE3);
               cate3count.push(topCountList[i].CATE3COUNT*1);      
           }  
    	       let str = '';
               str += '<div style="text-align:center; font-size:18px; margin-bottom:10px;"> [ ?????? ?????? TOP ]</div>';
               str += '<div style="text-align:center;"><h6 style="font-size:16px; display:inline;">1 ??? &nbsp;</h6> <h6 style="font-size:19px; color:#ff4d4d; display:inline;">' + cate3[0] + ' (' + cate3count[0] + ' ???) <h6>';
               str += '<h6 style="font-size:16px; display:inline;">2 ???&nbsp; </h6> <h6 style="font-size:19px; color:#ff7f00; display:inline;">' + cate3[1] + ' (' + cate3count[1] + ' ???) <h6></div>';
    	              
    	              $('#topCountComment').append(str); 	
            
 

    	              
    	              
    	              let cate3name = cate3;
    	              
    	             fetch("/getTop2Data?id="+id+'&cate3name='+cate3name+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
    	              .then(res=>res.json())
    	              .then(res=>{
    	                  let bigArrayList = res;
    	                   
    	                  let result = bigArrayList.filter(function(item1,idx1){
    	                      return bigArrayList.findIndex(function(item2,idx){
    	                        return item1.CATENAME3 == item2.CATENAME3  
    	                      })==idx1;
    	                  })

    	                  let cateArray = [];
    	                  
    	                  
    	                  for(let i=0;i<result.length;i++){
    	                      let cateObject = {};
    	                      cateObject.name = result[i].CATENAME3;
    	                      cateObject.data = [];
    	                      //console.log("22 "+cateObject);
    	                      for(let j=0;j<bigArrayList.length;j++){
    	                          if(result[i].CATENAME3===bigArrayList[j].CATENAME3){
    	                              let oneArray = [];
    	                              oneArray.push(bigArrayList[j].CATENAME3);
    	                              oneArray.push(bigArrayList[j].AMOUNT);
    	                              oneArray.push(bigArrayList[j].COUNT);
    	                              cateObject.data.push(oneArray);  
    	                           }              
    	                      }
    	                      cateArray.push(cateObject);          
    	                  }
    	                  
    	                  //console.log("????????? : "+cateArray[0].data);
    	                  //console.log("????????? ?????? : "+cateArray[0].data[0][0]);
    	                  //console.log("????????? : "+cateArray[0].data.length); // length:6
    	                  //console.log("????????? : "+cateArray[0].data[2][2]); //COUNT???
    	                  
    	                  
    	                  //????????? ????????? ??????
    	                  let firstCountSum = 0;
    	                  for(let i=0;i<cateArray[0].data.length;i++) {
    	                      firstCountSum += cateArray[0].data[i][2];   
    	                  }
    	                  let firstCountAvg = Math.floor(firstCountSum/cateArray[0].data.length); //?????? ????????? ??????
    	                  //  console.log("????????? ????????? ?????? " + firstCountAvg);  // ????????? 17?????? ?????????
    	                    
    	                  //????????? ????????? ??????
    	                  // let maxCount1 = 0;
    	                   let arrCount1 = new Array()
    	                   for(let i=0; i < (cateArray[0].data).length; i++){
    	                       arrCount1.push(cateArray[0].data[i][2])                  
    	                   }  
    	                   let firstCountMax = Math.max.apply(null,arrCount1); 
    	                   //console.log('????????? ????????? ??????' + firstCountMax);
    	                  
    	               
    	                  //????????? ???????????? 
    	                  let firstAmountSum = 0;
    	                  for(let i=0;i<cateArray[0].data.length;i++) {
    	                    firstAmountSum += cateArray[0].data[i][1];
    	                  }
    	                  let firstAmountAvg = Math.floor(firstAmountSum/cateArray[0].data.length); //?????? ?????? ??????
    	                  //console.log("?????????  ?????????????????? " + firstAmountAvg); 
    	                  
    	                  let max = 0;
    	                  let arr = new Array()
    	                  for(let i=0; i < (cateArray[0].data).length; i++){
    	                    arr.push(cateArray[0].data[i][1])                  
    	                  }
    	                   
    	                  let firstAmountMax = Math.max.apply(null,arr); //?????? ?????? ??????
    	                  //console.log('firstAmountMax' + firstAmountMax);
    	                    
    	                  let firstSavingAmount = firstAmountMax - firstAmountAvg; //????????? ??????
    	                  //console.log('firstSavingAmount ???????????????' + firstSavingAmount);
    	                    
    	                     
    	                  //??????????????? ?????????  
    	                  let secondCountSum = 0;
    	                  for(let i=0;i<cateArray[1].data.length;i++) {
    	                      secondCountSum += cateArray[1].data[i][2];   
    	                  }
    	                  let secondCountAvg = Math.floor(secondCountSum/cateArray[1].data.length); //?????? ????????? ??????
    	                  //  console.log("??????????????? ????????? ?????? " + secondCountAvg);  // ????????? 17?????? ?????????
    	                    
    	                  //??????????????? ????????? ??????
    	                  let arrCount2 = new Array()
    	                  for(let i=0; i < (cateArray[1].data).length; i++){
    	                      arrCount2.push(cateArray[1].data[i][2])                  
    	                  }  
    	                  let secondCountMax = Math.max.apply(null,arrCount2); 
    	                  
    	                  //??????????????? ????????????
    	                  let secondAmountSum = 0;
    	                  for(let i=0;i<cateArray[1].data.length;i++) {
    	                   secondAmountSum += cateArray[1].data[i][1];
    	                  }
    	                  let secondAmountAvg = Math.floor(secondAmountSum/cateArray[1].data.length); //?????? ?????? ??????
    	                 // console.log("???????????????  ?????????????????? " + secondAmountAvg); 
    	                    
    	                  //??????????????? ???????????? ??????
    	                  let max2 = 0;
    	                  let arr2 = new Array()
    	                  for(let i=0; i < (cateArray[1].data).length; i++){
    	                    arr2.push(cateArray[1].data[i][1])                  
    	                  }
    	                     
    	                  let secondAmountMax = Math.max.apply(null,arr2); //?????? ?????? ??????
    	                  //console.log('secondAmountMax' + secondAmountMax);
    	                    
    	                  let secondSavingAmount = secondAmountMax - secondAmountAvg; //????????? ??????
    	                  //console.log('secondSavingAmount ???????????????' + secondSavingAmount);   

    	                  let countTopSavingAmount = firstSavingAmount + secondSavingAmount;
    	         
    	                  let str = '';
    	                  
    	                  
    	                  str += '<div> <img src="${pageContext.request.contextPath}/resources/myicon/check3.png" style="width:7%; display:inline;"/>';
    	                  str += '<h5 style="font-size:17px; color:#ff4d4d; display:inline;"> ' + cateArray[0].data[0][0] + ' </h5></div>';
    	                  str += '<div style="font-size:17px; margin-bottom:10px; color:#5a5a5a;">?????? ?????? ????????? <strong style="20px;">"' + (Math.floor(firstAmountAvg)).toLocaleString('ko-KR') + '</strong> ???" ????????? <br>';
    	                  str += '?????? ?????? ????????? ' + firstCountMax + '????????? <br>?????? ????????? ' + firstCountAvg + '?????? ?????????<br>';
    	                  str += '??? <p style="font-size:21px; color:#333333; display:inline;">' + (Math.floor(firstSavingAmount)).toLocaleString('ko-KR') + ' ???</p> ????????? ??????</div>';

    	                  
    	               
                          str += '<div> <img src="${pageContext.request.contextPath}/resources/myicon/check3.png" style="width:7%; display:inline;"/>';
                          str += '<h5 style="font-size:17px; color:#ff7f00; display:inline;"> ' + cateArray[1].data[0][0] + ' </h5></div>';
                          str += '<div style="font-size:17px; color:#5a5a5a;">?????? ?????? ????????? ' + (Math.floor(secondAmountAvg)).toLocaleString('ko-KR') + '??? ????????? <br>';
                          str += '?????? ?????? ????????? ' + secondCountMax + '????????? <br>?????? ????????? ' + secondCountAvg + '?????? ?????????<br>';
                          str += '??? <p style="font-size:21px; color:#333333; display:inline;">' + (Math.floor(secondSavingAmount)).toLocaleString('ko-KR') + ' ???</p> ????????? ??????</div>';

    	                  
    	               //   str += '???????????? ????????? ???????????? ??? ' + newBudgetSaving + '?????? ????????? ??? ????????????. ????????? ??????????????????? </div>';
    	                  
    	                  $('#countMedianComment').append(str);  
    	                  
    	                  $('input[name=countTopSavingAmount]').attr('value',countTopSavingAmount);
    	                  
    	              })
    	        
    	    })         
   }
   </script> 
   
   <script type="text/javascript">

   </script>
   

   <script>
   function top2categoryName() {
	   let monthStart = -6;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       
       let cate3 = [];
       let cate3count = [];
       
       fetch("/top2categoryName?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
          
    	   
    	   let topCountList = res;
           
           for(let i=0;i<2;i++){
               cate3.push(topCountList[i].CATE3);
               cate3count.push(topCountList[i].CATE3COUNT*1);      
           }  

             let str = '';
             str += '<div> ?????? ????????? ?????? ?????? ???????????? 1 ?????? ' + cate3[0] + ' (' + cate3count[0] + ' ???) ????????? <br>';
                    str += '2 ?????? ' + cate3[1] + ' (' + cate3count[1] + ' ???) ????????? </div>';            
                      $('#topCountComment').append(str);       
          })
   }
	
   
   </script>
   
   
   <script>
   function sumMedian() {
	   $('#sumMedianComment').empty();
	   let monthStart = -6;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       
       let count = [];
       let month = [];
       let sum = [];
       
       fetch("/getSumMedian?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
           let sumMedianList = res;
           
           for(let i=0;i<sumMedianList.length;i++){
               count.push(sumMedianList[i].COUNT*1);
               sum.push(sumMedianList[i].SUM*1);      
           }  
                  
           let countSum = 0;
           for(let i=0;i<count.length;i++) {
               countSum += count[i];   
           }
           let countAvg = Math.floor(countSum/count.length); //?????? ?????? ??????

            
            //??????????????????
           let amountSum = 0;
           for(let i=0;i<sum.length;i++) {
               amountSum += sum[i];   
           }
           let amountAvg = Math.floor(amountSum/sum.length); //?????? ?????? ??????
           
           let amountMax = Math.max.apply(null, sum);
          
           
           let savingAmount = amountMax - amountAvg; 
           //console.log('amountMax ??????' + amountMax);
           //console.log('savingAmount ??????' + savingAmount);
    
           str = '';
           str += '<div style="text-align:center; font-size:18px;"> ?????? ????????? ?????? ?????? ???????????????<br>';
           str += '<strong style="color:#008485; font-size:20px;"></strong> ??????, <br>';
           str += '<br>??? ??? ?????? ???????????????<br> <strong style="font-size:22px; color:#008485;"> " ' + (Math.floor(amountAvg)).toLocaleString('ko-KR') + ' ??? " </strong> ?????????</div>';
           
           str += '<div style="margin-top:20px; text-align:center; font-size:18px;"> <img src="${pageContext.request.contextPath}/resources/myicon/notice3.gif" style="width:15%;"/>';
           str += ' <br>????????? ?????? ????????? ?????????<br>';
           str += '?????? <strong style="font-size:23px; color:#ff3333;">" ' + (Math.floor(savingAmount)).toLocaleString('ko-KR') + ' ??? " </strong> ????????? !!</div>';
           
          $('#sumMedianComment').append(str);    
          
          $('input[name=sumTopSavingAmount]').attr('value',savingAmount);
       })
   }
   </script>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   <script>
   function countMedian() {
	   let monthStart = -6;
       let monthEnd = -1;
       let id ='${loginVO.id}';
       
       let count = [];
       let month = [];
       let sum = [];
       
       fetch("/getCountMedian?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
       .then(res=>res.json())
       .then(res=>{
           let countMedianList = res;
           
           for(let i=0;i<countMedianList.length;i++){
        	   count.push(countMedianList[i].COUNT*1);
        	   sum.push(countMedianList[i].SUM*1);      
           }  
           
           let countSum = 0;
           for(let i=0;i<count.length;i++) {
        	   countSum += count[i];   
           }
           let countAvg = Math.floor(countSum/count.length); //?????? ?????? ??????
               
           
           let amountSum = 0;
           for(let i=0;i<sum.length;i++) {
        	   amountSum += sum[i];   
           }
           let amountAvg = Math.floor(amountSum/sum.length); //?????? ?????? ??????
           
           let amountMax = Math.max.apply(null, sum);
           //console.log('amountMax' + amountMax)
           
           let savingAmount = amountMax - amountAvg; 
           
    //       str = '';
    //       str += '<div> ????????? ?????? ?????? ??????????????? ??? ?????? ???????????? ????????? ' + amountAvg + '??? ????????? <br>';
    //       str += '????????? ' + countAvg + '?????? ????????? ??? ' + savingAmount + '?????? ????????? ??? ??? ????????????</div>';
           
     //      $('#countMedianComment').append(str);       
       })
   }
   
   </script>
   
 
             
    
    
</body>
</html>