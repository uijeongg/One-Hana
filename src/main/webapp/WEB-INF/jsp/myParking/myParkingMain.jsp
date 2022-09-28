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

<!-- <style type="text/css">
.progress {
    width: 350px;
    display: flex;
    height: 1rem;
    overflow: hidden;
    font-size: .75rem;
    background-color: #e9ecef;
    }
</style> -->


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
    <hr style="width:900px; height: 5px; background-color:#066262;">
    <!-- page title end -->
    
    
    
 
    
    
    
    <!-- 프로그레스 로딩바 + 파킹 주머니 현황 텍스트 -->
    <div id="parkingMap">
    
    </div>
   
    
    
    
    
    <!-- 이번달 예산 구성 파이차트, 금액 표 자리 -->
    
    
    
    
    <!-- 정의정 님의 9월 파킹 내역 -->
    <!-- 정의정 님의 9월 파킹 내역 -->
    <!-- 정의정 님의 9월 파킹 내역 -->
    <div style="margin-top:30px;">
       <!--  <span style="font-size:23px; margin-left:350px;">파킹 현황</span> -->

        
        
        <div id="parkingAmount">
            <!--   이번달의 총 파킹 금액은    parkingList[0].autoDivAmount   원 입니다 -->
            
            <div style="font-size:23px; width:1280px; text-align:center; margin-bottom:30px;"> 이번달엔 총 "AUTODIVAMOUNT" 원을 저축했어요! </div>
            <div><p style="color:#008485; display:inline;">FROMPOCKET 주머니</p> 에서의 파킹 금액은 <p style="color:#008485; display:inline;">" AUTODIVAMOUNT원 "</p> 입니다 </div>
            <div><p style="color:#008485; display:inline;">FROMPOCKET 주머니</p> 에서의 파킹 금액은 <p style="color:#008485; display:inline;">" AUTODIVAMOUNT원 "</p> 입니다 </div>
                
            
        </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
        
        
        <!-- 주머니 추가버튼 -->
  <!--       <div style="margin-left:430px;">
            <input type="button" id="parking" value="상세 파킹 내역 확인" onclick="displayParkingDetail()"
                   class="btn" 
                   style="font-family:hanaBFont; background-color:#008485; font-size:17px; width:200px; height:50px; 
                   border-radius:10px; color:white; border:none; margin-bottom:40px;">
        </div>
  -->
        <!-- 주머니 추가 버튼 누르면 뜨는 파킹디테일 div -->
    <!--     <div>  
        </div> -->
       
       
        
    </div>   
    
    
    <script>
    $(document).ready(function(){
  
            var accountNo = '<c:out value="${accountNo}"/>' ;
            console.log("accountNo : " + accountNo );
          
            fetch('/getParkingData?accountNo='+accountNo)
            .then(res=>res.json())
            .then(res=>{
                let parkingList = res
                
                console.log(parkingList);
                 
                let str ='';
                str += '<div style="font-size:23px; width:1280px; text-align:center; margin-bottom:30px;"> 이번달엔 총 "'+ (parkingList[0].AUTODIVAMOUNT*1 + parkingList[1].AUTODIVAMOUNT*1) +'" 원 을 저축했어요! </div>';
                str += '<div><p style="color:#008485; display:inline;">'+ parkingList[0].FROMPOCKET+' 주머니</p> 에서의 파킹 금액은 <p style="color:#008485; display:inline;">"'+ parkingList[0].AUTODIVAMOUNT*1 +'원"</p> 입니다 </div>';
                str += '<div><p style="color:#008485; display:inline;">'+ parkingList[1].FROMPOCKET+' 주머니</p> 에서의 파킹 금액은 <p style="color:#008485; display:inline;">"'+ parkingList[1].AUTODIVAMOUNT*1 +'원"</p> 입니다 </div>';
                
                $('#parkingAmount').append(str);
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
    
    
<!--     
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
 -->


<!-- <script src="/resources/vendor/apexcharts.min.js_3.18.1/cdnjs/apexcharts.min.js"></script> -->

<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/2.6.0/apexcharts.cjs.min.js"></script> -->

    
       <script>

        var options = {
                series: [67],
                chart: {
                height: 350,
                type: 'radialBar',
              },
              plotOptions: {
                radialBar: {
                  hollow: {
                    margin: 15,
                    size: '70%',
                    image: '',
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
                  src: [''],
                }
              },
              stroke: {
                lineCap: 'round'
              },
              labels: ['Volatility'],
              };

              var chart = new ApexCharts(document.querySelector("#chart"), options);
              chart.render();
            
    
    </script>


 <script>
     $(document).ready(function(){
        
         var accountNo = '${accountNo}';  
         console.log("accountNo : " + accountNo );
         
         $.ajax({
                url : '${ pageContext.request.contextPath }/getParkingSum',
                type : 'post',
                data : {
                    accountNo  : accountNo          
                },
                success : function(data) {
                          alert('겟파킹썸')
                          //$('#parkingMap').html(data)
                          
                          let parkingSum = data.parkingSum*1;   
                          let parkingBal = data.parkingBal*1;        
                          console.log('parkingSum : ' + parkingSum);
                          console.log('parkingBal : ' + parkingBal);
                          
                          let parkingPer = parkingBal/parkingSum*1;
                          console.log('parkingPer : ' + parkingPer);
                          
                          
                          let str ='';
                        
             
                          str += '<div class="border d-flex justify-content-between" style="width:900px; height:300px;">'
                        
                          str += '<div>';
                        /*   
                          str += '<div class="progress">';
                          str += '<div class="progress-bar" role="progressbar" aria-valuenow=' + parkingPer + 'aria-valuemin="0" aria-valuemax="100" style="width:100px;">';
                          str += '<span class="sr-only">' + parkingPer + '% Complete</span></div></div>'; 
                       */
                       
                       str += '<div id="chart">';
                       str += '<span>가나다</span>';
                       str += '</div>'; 
                       
                       
                          str += '<span>' + parkingPer + '% 달성 </span>';
                         
                          str += '</div>'
                          
                          str += '<div>'
                          str += '<div> 파킹 주머니 목표금액 "'+ parkingSum + '"원 중, "' + parkingBal + '"원을 모았어요 </div>';
                          str += '</div>'
                                  
                                  
                          str += '</div>'
                          
                          $('#parkingMap').append(str);
                         
                          
                }
            })
         
            
            
      })
    
    </script>


<script src="/resources/vendor/apexcharts-bundle/dist/apexcharts.min.js"></script>
</body>
</html>