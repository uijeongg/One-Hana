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
    
     <button
                          type="button"
                          class="nav-link active"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#monthPage"
                          aria-controls="monthPage"
                          aria-selected="true"
                        >
                          월별
                        </button>
    
    
    
  </li>
  <li class="nav-item">
     <button
                          type="button"
                          class="nav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#weeklyPage"
                          aria-controls="weeklyPage"
                          aria-selected="true"
                        >
                          주차별
                        </button>
  </li>
  <li class="nav-item">
    <button
                          type="button"
                          class="nav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#dayPage"
                          aria-controls="dayPage"
                          aria-selected="true"
                        >
                          요일별
                        </button>
  </li>
  <li class="nav-item">
    <button
                          type="button"
                          class="nav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#datePage"
                          aria-controls="datePage"
                          aria-selected="true"
                        >
                          일별
                        </button>
    
  </li>
</ul>
   
   
   
   
   
<div class="tab-content">


<!-- 월별 tab -->
<!-- 월별 tab -->
<!-- 월별 tab -->
<div class="tab-pane fade show active" id="monthPage" role="tabpanel">


   <!-- 월 총 이용 금액 start -->
   <div style="margin-left:620px; margin-top:50px; margin-bottom:40px;">
	    <div id="month" style="font-size:25px;">
	        <!-- fetch로 불러옴 -->
	    </div>
   </div>
    
   <!-- 이번달 총(일별) 소비 추이 확인 버튼 -->
   <div style="margin-left:430px;">
            <input type="button" id="pocket" value="이번 달 전체적인 소비 추이 확인" onclick="displaySixMonth()"
                   class="btn" 
                   style="font-family:hanaBFont; background-color:#008485; font-size:17px; width:788px; height:50px; 
                   border-radius:10px; color:white; border:none; margin-bottom:40px;">
   </div>
      
            
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
    
    
</div>

    
    
    
    
  
<!-- 주차별 tab -->
<!-- 주차별 tab -->
<!-- 주차별 tab -->
<div class="tab-pane fade show" id="weeklyPage" role="tabpanel">
   <!-- 막대그래프로 뽑을거임 / 주별 총금액, 주별 건수, 큰소비 있는지 없는지? -->
   <!-- <hr style="border:ridge; width:1060px; height:3px; background-color:#066262; margin-left:280px;"> -->
   <!--  <div style="margin-bottom:30px; margin-left:740px; font-size:25px;">
        <div style="color:#008485; display:inline;"> 주간 </div>
	    <div style="display:inline;">소비 추이</div>
    </div> -->
    
   <div class="container justify-content-center" style="position:absolute; display:flex; margin-top:50px;"> 
    <div id="chart" style="width:900px; margin-left:350px;">
    <!-- fetch로 apexchart 삽입 -->
    </div>
   </div> 
    
</div>    
    
    
    
    
    
<div class="tab-pane fade show" id="dayPage" role="tabpanel">    
    <!-- 요일별 -->
     <div id="chart2">
    <!-- fetch로 apexchart 삽입 -->
    </div>
    
    <!-- 막대그래프, 탑2  -->
</div>  


   
   
<div class="tab-pane fade show" id="datePage" role="tabpanel">     
    <!-- 일별은 일별로 제일 많이 쓴 날짜 top3 -> 카테고리, 상호명, 금액 리스트 보여주기  -->
 </div>   
    
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
</div>  <!-- 탭 가장 상단 div -->  
    
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <!-- 맨 윗단 이번달 총 소비 금액 -->
	<script>
	$(document).ready(function(){	 
	        let month = 0; //sysdate 기준 이번달
	        let id = '${loginVO.id}';
	      //console.log("id : " + id );
	        console.log("month : " + month);
	        
	        
	        fetch('/getMonthConsume?id='+id+'&month='+month)
	        .then(res=>res.json())
	        .then(res=>{
	        	let consumeList = res;
          //      console.log("의정이: "+consumeList.length);
	        	for(let i=0;i<consumeList.length;i++){
	        		/* $('#month').append('<div>'+consumeList[i].CURRENT_MONTH+'에 쓴 금액은 ' +consumeList[i].MONTHSUM+ '입니다</div>'); */

	        		let str ='';
	                str += '<div style="display:inline; ">'+consumeList[i].CURRENT_MONTH+'</div> <div style="display:inline;">월 총 소비액은 </div><div style="display:inline;">' +consumeList[i].MONTHSUM+ ' 원 입니다</div>';
	        	
	                $('#month').append(str);
	                
	        	}
	        }) 
	        
	        
	        
       //weekly
	   weeklyBar();
	   
       dayBar();     
            
	        
	       
	})
	</script>
	
	
	<!-- 하이차트 src -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    
    <!-- 버튼 클릭 시 이번달 소비 추이 보이기 - high chart -->
    <script>
    function displaySixMonth(){ 
        	let dayArray = [];
        	$('#pocket').hide();
            $('#sixmonth').fadeIn(2000);
            
            
            let monthStart = -1;
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
            		resolve("의정이 풀바셋");
            		
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
            		                    '이번 달의 총 소비 패턴을 확인해 보세요' : 'Pinch the chart to zoom in'
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
         console.log(id + '아이디')
         let object = {};
         let weeklyConsumeData = [];
         let dayofweek = [];
         
         
         fetch("/getDayConsume?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
            .then(res=>res.json())
            .then(res=>{
               let dayConsumeList = res;
               
               lastDay = dayConsumeList[dayConsumeList.length-1].CONDATE;
               console.log(lastDay.substring(8,10));
               let lastDate = Number(lastDay.substring(8,10));
               console.log(lastDate);
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
               console.log(weeklyConsumeData);
               console.log(dayofweek);

              return new Promise((resolve,reject)=>{
            	    resolve('hihi');
              })
            })
           
              
            .then(res=>{
            	console.log(weeklyConsumeData);
                weekArray = res;
                
                var options = {
                          series: [{
                          data: weeklyConsumeData
                        }],
                          chart: {
                        	  /* fill: {
                                  colors: ['red', 'green', 'gray', 'blue', 'orange']
                              }, */
                       
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
                        
                        
            })
            
        
        
    }
 
    
    </script>
    
    
    <script>
    
    function dayBar() {
    	  let monthStart = -1;
          let monthEnd = -1;
          let id ='${loginVO.id}';
         // console.log(id + '아이디')
          
          
          
        
       //  let dayArray = [];
         
         let dayArray2 = [];
         let daySum = [];
         
         fetch("/getDayConsume2?id="+id+'&monthEnd='+monthEnd+'&monthStart='+monthStart)
            .then(res=>res.json())
            .then(res=>{
               let dayList = res;
               
               for(let i=0;i<dayList.length;i++){
               
               //let dayListArray = [];
           

               //dayListArray.push(dayList[i].COUNT*1);
               daySum.push(dayList[i].SUM*1);
               dayArray2.push(dayList[i].DAY);
         //      dayArray.push(dayListArray);
               
               
               } 
               
               console.log('daySum : ' + daySum);
               console.log('dayArray2 : ' + dayArray2);
               
              return new Promise((resolve,reject)=>{
                    resolve('hihi22');
              })
            })
            
            .then(res=>{
               // console.log(weeklyConsumeData);
               // weekArray = res;
                

                
                var options = {
                  series: [{
                  name: 'Servings',
                  data: daySum
                }],
                  annotations: {
                  points: [{
                    x: 'Bananas',
                    seriesIndex: 0,
                    label: {
                      borderColor: '#775DD0',
                      offsetY: 0,
                      style: {
                        color: '#fff',
                        background: '#775DD0',
                      },
                      text: 'Bananas are good',
                    }
                  }]
                },
                chart: {
                  height: 350,
                  type: 'bar',
                },
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '50%',
                  }
                },
                dataLabels: {
                  enabled: false
                },
                stroke: {
                  width: 2
                },
                
                grid: {
                  row: {
                    colors: ['#fff', '#f2f2f2']
                  }
                },
                xaxis: {
                  labels: {
                    rotate: -45
                  },
                  categories:dayArray2,
                  tickPlacement: 'on'
                },
                yaxis: {
                  title: {
                    text: 'Servings',
                  },
                },
                fill: {
                  type: 'gradient',
                  gradient: {
                    shade: 'light',
                    type: "horizontal",
                    shadeIntensity: 0.25,
                    gradientToColors: undefined,
                    inverseColors: true,
                    opacityFrom: 0.85,
                    opacityTo: 0.85,
                    stops: [50, 0, 100]
                  },
                }
                };

                var chart = new ApexCharts(document.querySelector("#chart2"), options);
                chart.render();
                        
                        
            })
            
            
          
          
          
    }
    </script>
   
    
</body>
</html>