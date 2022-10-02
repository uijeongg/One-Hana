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
   
   
<style type="text/css">
.progress {
    width: 350px;
    display: flex;
    height: 1rem;
    overflow: hidden;
    font-size: .75rem;
    background-color: #e9ecef;
    }  
</style> 
</head>


<body>

    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header>
    <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>


    <!-- page title start -->
    <div style="margin-left:670px;" class="animate__animated animate__bounce" >
        <img src="${pageContext.request.contextPath}/resources/img/My_calendar.png" 
            style="width:70px; height:70px;"/>
        <span style="color:#008485; font-size:30px; margin-top: 30px;">&nbsp;" 나의 파킹 내역 "</span>
    </div>
    <hr style="width:920px; height: 5px; background-color:#066262;">
    <!-- page title end -->
    
    
    
 
    
    
    
    <!-- 프로그레스 로딩바 + 파킹 주머니 현황 텍스트 -->
    <div id="parkingMap" style="margin-right:21%;">
    
    </div>
   
    
    
    
    
    <!-- 이번달 예산 구성 파이차트, 금액 표 자리 -->
    
    
    
    <!-- 정의정 님의 9월 파킹 내역 -->
    <!-- 정의정 님의 9월 파킹 내역 -->
    <!-- 정의정 님의 9월 파킹 내역 -->
    <div id="parkingDetail" style="border:1px solid; display:none; margin-top:30px; width:60%; margin-left:27%;">
       <!--  <span style="font-size:23px; margin-left:350px;">파킹 현황</span> -->

        
        
        <div id="parkingAmount">
            <!--   이번달의 총 파킹 금액은    parkingList[0].autoDivAmount   원 입니다 -->
           
            
            
        </div>
  


        <!-- 주머니 추가 버튼 누르면 뜨는 파킹디테일 div -->
        <div>  
        
        </div> 
       
       
        
    </div>   
    
    
    
    
    
    
  
   
    

<script>
     $(document).ready(function(){
        
         var accountNo = '${accountNo}';  
       //  console.log("accountNo : " + accountNo );
         //let id ='${loginVO.id}';
        // console.log("id : " + id );
         fetch("/getParkingSum?accountNo="+accountNo)
         .then(res=>res.json())
         .then(data=>{
        	 console.log(data);
        	 let parkingSum = data.parkingSum*1; 
        	 let parkingBal = data.parkingBal*1; 
        	 let parkingPer = parkingBal/parkingSum*1;
             let str ='';
             
             
             str += '<div class="container text-center"><div class="row">'; 
            
	             str += '<div class="col-6 chartLcoation" style="justify-content : center; align-items : center; display : flex;">';
	                 str += '<div id="chart"></div>';
	                 /* 프로그레스바 들어가는 자리 */          
	                 /* str += '<span>' + parkingPer + '% 달성 </span>'; */
	             str += '</div>'
             
             
	             str += '<div class="col-6 chartLocation2" style="justify-content:center; align-items:center;">';
		             str += '<div style="font-size:22px; margin-top:80px; justify-content:center;"> 지금까지 <br>파킹 주머니 목표금액 <p style="color:#008485; display:inline;"><br>'+ parkingSum + '&nbsp;원</p> 중';
		             str += '<br> 총 <p style="color:#008485; display:inline; font-size:30px;">"' + parkingBal + ' 원"</p>을 모았어요';
		             
		             str += '<div style="margin-top:10px;">';
		             str += '<input type="button" id="parking" value="상세 파킹 내역" onclick="displayParkingDetail()" class="btn"';
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
        	  
         })        
      })
    
</script>


<!-- 상세 파킹 내역 버튼 추가 -->
<script>
   function displayParkingDetail() { 
       $('#parking').hide();
       $('#parkingDetail').show();   
   } 
</script>   



    
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
    $(document).ready(function(){
  
         //var accountNo = '<c:out value="${accountNo}"/>' ;
         let id ='${loginVO.id}';
         console.log("id : " + id );
          
         fetch('/getParkingData?id='+id)
         .then(res=>res.json())
         .then(res=>{
              let parkingList = res
               
             //console.log(parkingList);
                 
             let str ='';
             str += '<div style="font-size:23px; text-align:center; margin-bottom:30px;"> 이번달엔 총 "'+ (parkingList[0].PARKINGAMOUNT*1 + parkingList[1].PARKINGAMOUNT*1+parkingList[2].PARKINGAMOUNT*1) +'" 원 을 파킹했어요! </div><br>';
            
             
             
             str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[0].FROMPOCKET + ' </p> 예산 &nbsp;' + parkingList[0].AUTODIVAMOUNT*1 + '원 중 <p style="color:#008485; display:inline;">"'+ parkingList[0].PARKINGAMOUNT*1 +'원"</p> 파킹 </div>';
                 str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
                 /* str += '<div class="progress-bar bg-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:60%">'; */
                 str += '<div class="progress-bar bg-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[0].AUTODIVAMOUNT*1 - parkingList[0].PARKINGAMOUNT*1)/(parkingList[0].AUTODIVAMOUNT*1)  + '%">';
                 str += + (parkingList[0].AUTODIVAMOUNT*1 - parkingList[0].PARKINGAMOUNT*1) + ' 원 사용  </div></div><br>'
             
                 
             
             str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[1].FROMPOCKET+'</p> 예산 &nbsp;' + parkingList[1].AUTODIVAMOUNT*1 + '원 중 <p style="color:#008485; display:inline;">"'+ parkingList[1].PARKINGAMOUNT*1 +'원"</p> 파킹 </div>';
	             str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
	             str += '<div class="progress-bar bg-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[1].AUTODIVAMOUNT*1 - parkingList[1].PARKINGAMOUNT*1)/(parkingList[1].AUTODIVAMOUNT*1)  + '%">';
	             str += + (parkingList[1].AUTODIVAMOUNT*1 - parkingList[1].PARKINGAMOUNT*1) + ' 원 사용  </div></div><br>'
             
	            	 
             
             str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[2].FROMPOCKET+' </p> 예산 &nbsp;' + parkingList[2].AUTODIVAMOUNT*1 + '원 중 <p style="color:#008485; display:inline;">"'+ parkingList[2].PARKINGAMOUNT*1 +'원"</p> 파킹 </div>';
	             str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
	             str += '<div class="progress-bar bg-info progress-bar-striped" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[2].AUTODIVAMOUNT*1 - parkingList[2].PARKINGAMOUNT*1)/(parkingList[2].AUTODIVAMOUNT*1)  + '%">';
	             str += + (parkingList[2].AUTODIVAMOUNT*1 - parkingList[2].PARKINGAMOUNT*1) + ' 원 사용  </div></div>'
             
	            
             
             $('#parkingAmount').append(str);
        })
       
  })
</script>
    


</body>
</html>