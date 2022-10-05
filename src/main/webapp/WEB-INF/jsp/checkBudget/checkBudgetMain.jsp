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
				<div id="chart1" style="margin-bottom: 40px;"></div>
			</div>
			<div style="width: 30%; background-color:;" class="d-flex justify-content-center align-items-center">
				<div style="background-color:#E90061; height:300px; width:250px">
					<h2>코멘트</h2>
					<h5>6개월간 고정비 예산은 900,000원이고, 평균 사용 금액은 xx입니다. <br> 고정비 예산을 약 xx% 줄여도 충분합니다! </h5>
				</div>

			</div>
		</div>
		
		
		
		
		 <div class="d-flex">
            <div style="width: 70%">
                <span>생활비 예산 사용 추이</span>
                <div id="chart2" style="margin-bottom: 40px;"></div>
            </div>
            <div style="width: 30%; background-color:;" class="d-flex justify-content-center align-items-center">
                <div style="background-color:#E90061; height:300px; width:250px">
                    <h2>코멘트</h2>
                    <h5>6개월간 생활비 예산은 1,200,000원이고, 평균 사용 금액은 xx원입니다. <br> 자세한 사용 내역을 확인할 수 있습니다. </h5>
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

	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script>
    $(document).ready(function(){   
	//autoDivSetting에서 amount (불러오기 - 포켓번호별로 싹 다)
	//한달 사용 금액 불러오기
	
	   //생활비예산만!!!!!!!!!!!!!!!!!!!!!!!!
	   let id = '${loginVO.id}';
	   let accountNo = '${accountNo}';
	  // let pocketcd2 = 2;
	   //let pocketcd3 = 3;
     
	   //let autoDivAmount = []; //주머니별 월 예산
	     let secondBudget = [];//고정비 예산
	     let secondMonth = []; //고정비 달
	     let secondAmount = []; //고정비 사용금액
	     let thirdBudget = [];//생활비 예산
         let thirdMonth = []; //생활비 달
         let thirdAmount = []; //생활비 사용금액
	   
            fetch("/getBudgetGraphData?id="+id+'&accountNo='+accountNo)
            .then(res=>res.json())
            .then(res=>{
                let budgetGraphMap = res;
                       
         
                
                let settingAmountList = budgetGraphMap.settingAmountList;
                let secondConsumeList = budgetGraphMap.secondConsumeList;
                
                let thirdConsumeList = budgetGraphMap.thirdConsumeList;
                
                console.log("secondConsumeList : " + secondConsumeList[0].MONTH);
                console.log(settingAmountList[0].AUTODIVAMOUNT); //고정비예산
                console.log(settingAmountList[1].AUTODIVAMOUNT); //생활비예산
                
                
                //고정비 그래프용
                for(let i=0;i<secondConsumeList.length;i++){  
                	secondMonth.push(secondConsumeList[i].MONTH);
                	secondAmount.push(secondConsumeList[i].AMOUNT);
                }
                //console.log(secondMonth); 
                
                
                //생활비 그래프용
                for(let i=0;i<secondConsumeList.length;i++){  
                    thirdMonth.push(thirdConsumeList[i].MONTH);
                    thirdAmount.push(thirdConsumeList[i].AMOUNT);
                }
                
                
                //let str ='';                 
                //$('#month').append(str); 
                var options = {
                        series: [{
                        name: '고정비 사용 금액',
                        type: 'column',
                        data: secondAmount //바 - 고정비사용금액
                      }, {
                        name: '고정비 주머니 예산',
                        type: 'line',
                        data: [900000, 900000, 900000, 900000, 900000, 900000] //라인
                      }],
                        chart: {
                        height: 350,
                        type: 'line',
                      },
                      stroke: {
                        width: [0, 4]
                      },
                      title: {
                        //text: '고정비 예산 사용 추이'
                      },
                      dataLabels: {
                        enabled: true,
                        enabledOnSeries: [1]
                      },
                      labels: secondMonth,
                      xaxis: {
                        type: 'datetime'
                      },
                      yaxis: [{
                        title: {
                          text: '고정비 사용 금액',
                        },
                      
                      }, {
                        opposite: true,
                        title: {
                          text: '고정비 주머니 예산'
                        }
                      }]
                      };

                      var chart = new ApexCharts(document.querySelector("#chart1"), options);
                      chart.render();
                      
                      
     /////////////////////////////////////////////////////////////////////////////////////////////////////                 
                      
                      var options = {
                              series: [{
                              name: '고정비 사용 금액',
                              type: 'column',
                              data: thirdAmount //바 - 생활비사용금액
                            }, {
                              name: '고정비 주머니 예산',
                              type: 'line',
                              data: [1200000, 1200000, 1200000, 1200000, 1200000, 1200000] //라인
                            }],
                              chart: {
                              height: 350,
                              type: 'line',
                            },
                            stroke: {
                              width: [0, 4]
                            },
                            title: {
                              //text: '생활비 예산 사용 추이'
                            },
                            dataLabels: {
                              enabled: true,
                              enabledOnSeries: [1]
                            },
                            labels: thirdMonth,
                            xaxis: {
                              type: 'datetime'
                            },
                            yaxis: [{
                              title: {
                                text: '생활비 사용 금액',
                              },
                            
                            }, {
                              opposite: true,
                              title: {
                                text: '생활비 주머니 예산'
                              }
                            }]
                            };

                            var chart = new ApexCharts(document.querySelector("#chart2"), options);
                            chart.render();
            })     
    }) 
</script>


</body>
</html>