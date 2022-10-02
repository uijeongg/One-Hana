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

<style>
.nav-tabs {
    border-bottom: 3px solid #008485;
    width: 1060px;
}
</style>

</head>
<body>

    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
    
    <!-- side bar start -->
    <div class="container-fluid sidepanel-inner d-flex flex-column"
      style="width:20%; float:left; margin-top:37px; margin-left:10px; margin-right:10px;">
      <div style="padding-left: 30px;">
         <h3 style="margin-bottom: 10px;">
            <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
            <strong style="color:#008485;"> HANA </strong>   
         </h3>
         <hr style="width: 200px; height: 5px; background-color:#066262;">
         <div>
            <a href="${pageContext.request.contextPath}/mybankMain"
               style="color:#808080;">나의 주머니</a>
         </div>     
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/setBudgetMain"
               style="color:#808080;">나의 예산 관리</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath }/myParkingMain"
               style="color:#808080;">나의 파킹 관리</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/consumeMain"
               style="color:#808080;">나의 소비 달력</a>
         </div>
         <hr style="width: 200px;">  
         <div>
            <a href="${pageContext.request.contextPath }/consumePattern"
               style="color:#808080;">나의 소비 패턴</a>
         </div>
         <hr style="width: 200px;">
          <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">나의 투자 성향</a>
         </div>
         <hr style="width:200px;">
      </div>
   </div>
   <!-- side bar end -->
   
   
   
   
   <!-- page title start -->
   <div style="margin-left:670px; margin-top:11px;" class="animate__animated animate__bounce" >
        <img src="${pageContext.request.contextPath}/resources/img/My_gragh3.png" 
            style="width:110px; height:60px;"/>
        <span style="color:#008485; font-size:30px; margin-top: 30px;">&nbsp;" 나의 소비 패턴 "</span>
   </div>
   <hr style="width: 1060px; height: 5px; background-color:#066262;">
   <!-- page title end -->
   
   
   
   
   <ul class="nav nav-tabs">
  <li class="nav-item">
    <!-- <a class="nav-link active" aria-current="page" href="monthPage">월별</a> -->
    
     <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#datePage" aria-controls="datePage"
             aria-selected="true" id="displaySummaryChart">
          요약분석
     </button>  
  </li>

   <li class="nav-item">
    <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" data-bs-target="#catePage" aria-controls="catePage" 
            aria-selected="true" id="displayDetailChart">
         세부분석
    </button>
  </li>
</ul>
   
   
<div class="tab-content">


<!-- 요약분석 tab -->
<!-- 요약분석 tab -->
<!-- 요약분석 tab -->
<div class="tab-pane fade show active" id="datePage" role="tabpanel">

   <!-- 월 총 이용 금액 -->
   <div style="margin-left:620px; margin-top:50px; margin-bottom:40px;">
	    <div id="month" style="font-size:25px;">
	        <!-- fetch로 불러옴 -->
	    </div>
   </div>
 
 
 
 
   <!-- 주차별 -->  
   <!-- <div class="container" style="position:absolute; display:flex; margin-top:50px;">  -->
   <!-- <div id="chart" style="width:650px; margin-left:350px; text-align:left;"> -->
   <div id="chart" style="width:1000px; margin-left:350px; margin-top:40px;">
        <!-- fetch로 apexchart 삽입 -->
   </div>
   
   <div id="chartcomment" style="width:400px; margin-right:350px; ">
       <!--  -목-요일의 소비가 가장 많네요!<br>      -->      
   </div>
 
 
 
   <!-- 요일별 -->
   <div id="chart2" style="width:1000px; margin-left:350px; margin-top:40px;">
      <!-- fetch로 apexchart 삽입 -->
   </div>
   
   <div id="chart2comment">
   
   </div>
   
  
   <!-- 일별 -->
   <div id="chart3" style="width:1000px; margin-left:350px; margin-top:40px;">
            <!-- fetch로 apexchart 삽입 -->
   </div>
   <div id="chart3comment" style="width:400px; margin-right:350px; ">
    
   </div>
   
   <div id="dateTopHisto">
   
   </div>
    
     
   <!-- 잦은 거래 수 -->
   <div id="chart4" style="width:1000px; margin-left:350px; margin-top:40px;">
        <!-- fetch로 apexchart 삽입 -->
   </div>
   <div id="chart4comment">
   </div>
     
     
     
     
     
     
     
     
    
</div>

    
    
    
    
    
    
    
    
    
  

<!-- 시간대별 -->
<!-- 시간대별 -->
<div class="tab-pane fade show" id="timePage" role="tabpanel">
<figure class="highcharts-figure">   
   <div id="container4"></div>
 </figure>
    
</div>    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<!-- 6개월치 세부분석 tab -->
<!-- 세부분석 tab -->
<!-- 세부분석 tab -->    
<div class="tab-pane fade show" id="catePage" role="tabpanel"> 
    
    
    <div> <span style="font-size:25px;"> 6개월치 소비 추이 라인그래프 </span>
    <figure class="highcharts-figure">   
       <div id="container6"></div>
     </figure>
    </div>
    
    
    <!-- 시간대별 amount 차트 -->
    <!-- 시간대별 amount 차트 -->
    <!-- 이번달 총(일별) 소비 추이 확인 버튼 -->
<!--    <div style="margin-left:430px;">
            <input type="button" id="pocket" value="이번 달 전체적인 소비 추이 확인" onclick="displaySixMonth()"
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
                           <!-- 그래프자리 -->
                        </p>
                    </figure>  
                    
                    <div style="font-size:25px; margin-top:40px; margin-left:370px; margin-bottom:30px;">
                       "comment"
                    </div>      
                     
                 </div>       
            </div>   
    
    
    <!-- 중분류 파이 그래프 -->
    <!-- 중분류 파이 그래프 -->
	<div> <span style="font-size:25px;"> 6개월치 중분류 </span>
	<figure class="highcharts-figure">   
	   <div id="container3"></div>
	 </figure>
	</div>
	
	
	<div> <span style="font-size:25px;"> 6개월치 소분류 </span>
    <figure class="highcharts-figure">   
       <div id="container5"></div>
     </figure>
    </div>
	
            
            
            

</div>  


   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
</div>  <!-- 탭 가장 상단 div -->  
   
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
    
    <script>
       $(function(){
    	    $('#displayDetailChart').click(function(){
    	    	cateAmount();
    	    	cate3Amount();
    	    	sixMonthLine();
    	        //시간대별아직미완!!
    	        times();
    	    })
       })   
    </script>
    
    
    <!-- 맨 윗단 이번달 총 소비 금액 -->
	<script>
	$(document).ready(function(){	 
	        let month = -1; //9월
	        let id = '${loginVO.id}';
	       
	        fetch('/getMonthConsume?id='+id+'&month='+month)
	        .then(res=>res.json())
	        .then(res=>{
	        	let consumeList = res;
                //console.log("consumeList: "+consumeList.length);
	        	
                for(let i=0;i<consumeList.length;i++){
	        		
	        		let str ='';
	                str += '<div style="display:inline; ">'+consumeList[i].CURRENT_MONTH+'</div> <div style="display:inline;">월 총 소비액은 </div><div style="display:inline;">' +consumeList[i].MONTHSUM+ ' 원 입니다</div>';
	        	
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
	

	
 
    <!-- 버튼 클릭 시 이번달 소비 추이 보이기 - high chart -->
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
            		                text: '" ${loginVO.name} 님의 이번 달 소비 추이 "'
            		            },
            		            subtitle: {
            		                text: document.ontouchstart === undefined ?
            		                    '이번 달의 총 소비 패턴을 확인해보세요' : 'Pinch the chart to zoom in'
            		            },
            		            xAxis: {
            		                type: 'datetime'
            		            },
            		            yAxis: {
            		                title: {
            		                    text: '소비 금액'
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
            		      
            		                name: '하루 지출액',
            		                data: dayArray
            		            }]
            		        });
            })
      }
    </script> 
    
    
    
    <!-- 주간 -->   
    <script>    
    function weeklyBar() {
        let weeklyArray = [];
        //받아와야할건 한달치의 하루 소비값
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
            	    dayofweek.push(i+'주차');
            	    console.log(i+'주차'); 
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
                          height: 400,
                          type: 'bar',
                          events: {
                            click: function(chart, w, e) {
                              // console.log(chart, w, e)
                            }
                          }
                        },
                        
                        plotOptions: {
                          bar: {
                            columnWidth: '40%',
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
                        str += '<div>소비가 가장 많은 주는 "' + weekComment + '" 입니다</div>';
                        
                        $('#chartcomment').append(str);     
            })       
    }
    </script>
    
    
    
    <script>
    
    function dayBar() {
    	  let monthStart = -1;
          let monthEnd = -1;
          let id ='${loginVO.id}';
         // console.log(id + '아이디')
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
         //      console.log('index : ' + index);
               
               console.log('index : ' + dayArray2[index]);
                           
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
                      strokeColors: '#e9e9e9',
                      fill: {
                        colors: ['#f8f8f8', '#fff']
                      }
                    }
                  }
                },
                title: {
                  text: 'Radar with Polygon Fill'
                },
                colors: ['#FF4560'],
                markers: {
                  size: 4,
                  colors: ['#fff'],
                  strokeColor: '#FF4560',
                  strokeWidth: 2,
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
             str += '<div> 일주일 중 소비가 가장 많았던 요일은 "'+arrayComment+'" 입니다 <br>' + arrayComment + ' 소비를 주의하세요</div>';
 
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
               let dateList = [date[1]+'일', date[0]+'일', date[2]+'일'];
 
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
        
        //console.log(receivedObject.dateList[1] + ' 입니다');
        let str = '';
        str += '<div> 한달 간 소비가 가장 많았던 날은 "'+receivedObject.dateList[1]+'" 입니다 <br> 충동 구매가 있진 않았는지 확인해볼까요?</div>';

        $('#chart3comment').append(str);     
        
      })
    }
     </script>
     
     <!-- 소비가 가장 잦은 날의 거래 내역 -->
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
	            	if(dateTopHistoryList[0].DAY == dateTopHistoryList[i].DAY){
	            		  let list22 = {};
	            	     
	            		  list22.name=dateTopHistoryList[i].CONNAME;
	            		  list22.amount=dateTopHistoryList[i].CONAMOUNT;
	            		  list22.time=dateTopHistoryList[i].TIME;
	            		  object.push(list22);
	            	}
	           } 
         
          //  console.log('object는?' + object.length);
          //  console.log("안녕하세요"+object[1]); 
          
            let str = '';
            str += '<br>세부 거래내역<br>';
            for(let i=0;i<object.length;i++) {
            	
                str += '  ' + object[i].name + '  ' + object[i].amount + ' 원 ' + object[i].time + '<br>'; 
                
                
             
            }
          
            $('#dateTopHisto').append(str);
             
         

      })
     
  
     
     }
     </script>
     
     
     
     
  <!-- 잦은 거래 -->
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
              
             
             //   console.log('1등: ' + cate3name[0] + cate3count[0]);
             //   console.log('2등: ' + cate3name[1] + cate3count[1]);
                
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
        		          width: 380,
        		          type: 'donut',
        		          dropShadow: {
        		            enabled: true,
        		            color: '#111',
        		            top: -1,
        		            left: 3,
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
        		            style: ['verticalLines', 'squares', 'horizontalLines', 'circles','slantedLines'],
        		          },
        		        },
        		        states: {
        		          hover: {
        		            filter: 'none'
        		          }
        		        },
        		        theme: {
        		          palette: 'palette2'
        		        },
        		        title: {
        		          text: "카테고리별 소비 횟수"
        		        },
        		        responsive: [{
        		          breakpoint: 480,
        		          options: {
        		            chart: {
        		              width: 600,
        		              height: 600
        		            },
        		            legend: {
        		              position: 'bottom'
        		            }
        		          }
        		        }]
        		        };

        		        var chart = new ApexCharts(document.querySelector("#chart4"), options);
        		        chart.render();
        		      
        		       
        		      //가장 잦은 소비는 편의점 (~회)과 커피전문점(~회) 입니다. 습관적 소비가 아닌지 되돌아보아요
        		        let str = '';
        		        str += '<div> 한달 간 가장 잦았던 소비 카테고리는 "'+countObject.cate3name[0]+ '   ('+countObject.cate3count[0]+'회)" 입니다';
        		        /* str =+ ' 두번째 카테고리는 "'+ countObject.cate3name[1]+ '(' + countObject.cate3count[1] + '회)" 입니다';  */
        		        str += '<br> 습관적 소비가 아닌지 되돌아보아요</div>';
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
            	        text: '카테고리별 소비 빈도 수와 총 금액'
            	        
            	    },
            	    tooltip: {
            	        headerFormat: '',
            	        pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
            	            '거래 빈도수: <b>{point.y} 번</b><br/>' +
            	            '총 금액: <b>{point.z} 원</b><br/>'
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
     /* chart container4 주기 */
     function times() {
    	 let monthStart = -6;
         let monthEnd = -1;
         let id ='${loginVO.id}';
    	 
         fetch("/getTimesData?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
         .then(res=>res.json())
         .then(res=>{
                 let timesList = res;
                 timeListArray_1 = [];
                 timeListArray_2 = [];
                 timeListArray_3 = [];
                 timeListArray_4 = [];
                 timeListArray_5 = [];
                 timeListArray_6 = [];
                 console.log("케이시 노래듣는중 " + timesList[6].CONDATE.substring(11,16));
                 for(let i=0;i<timesList.length;i++){
                	 let mod = parseInt(Number(timesList[i].CONDATE.substring(11,13).replace(':',''))/4); 
                	 if(mod<1){
                		 timeListArray_1.push(mod);
                	 }else if(mod<2){
                		 timeListArray_2.push(mod);
                	 }else if(mod<3){
                		 timeListArray_3.push(mod);
                	 }else if(mod<4){
                		 timeListArray_4.push(mod);
                	 }else if(mod<5){
                		 timeListArray_5.push(mod);
                	 }else{
                		 timeListArray_6.push(mod);
                	 }
                 }
                 
               
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
            	        text: '세부 소비 내역과 금액'
            	    },
            	   /*  subtitle: {
            	        text: 'Click the slices to view versions. Source: <a href="http://statcounter.com" target="_blank">statcounter.com</a>'
            	    }, */

            	    accessibility: {
            	        announceNewData: {
            	            enabled: true
            	        },
            	        point: {
            	            valueSuffix: ' 원'
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
            	        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:,.0f}원</b><br/>'
            	    },

            	    series: [
            	        {
            	            name: "금액",
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
   </script>
   
   
   
   <script>
//   container6
   //MONTH SUM 6개월치 선그래프
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
    	   console.log('sixMonthAmountList: ' + sixMonthAmountList);
    	   
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
	    		        text: '6개월 간 소비 금액 추이'
	    		    },
	    		    subtitle: {
	    		        text: ''
	    		    },
	    		    xAxis: {
	    		        categories: month
	    		    },
	    		    yAxis: {
	    		        title: {
	    		            text: '소비 금액 (원)'
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
	    		        name: '소비 금액',
	    		        data: sum
	    		    }]
	    		});
	    	   
    	   
       })
	   
	   
   }
   
   </script>
    
</body>
</html>