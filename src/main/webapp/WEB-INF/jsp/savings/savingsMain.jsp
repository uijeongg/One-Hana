<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- <link href="/resources/mycss/chart.css" rel="stylesheet"> -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<style>
.nav-tabs {
    border-bottom: 3px solid #008485;
    width: 1060px;
}

.parent {
    display: flex;
}
.child {
    flex: 1;
}

.button-active {
    border-color: #008485;
    font-color: #008485;
    

}

.button:hover {
    border-color: #008485;
    color: #008485;

}

.active {
    border-color: red;
    color: red;
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
            <!-- <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
            <strong style="color:#008485;"> HANA </strong>    -->
            <strong style="color:#008485;">상품 추천</strong>
            
         </h3>
         <hr style="width: 200px; height: 5px; background-color:#066262;">
         <div>
            <a href="${pageContext.request.contextPath}/mybankMain"
               style="color:#808080;">예적금</a>
         </div>     
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">입출금</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">펀드</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">대출</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">외화</a>
         </div>
         <hr style="width: 200px;">  
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">퇴직연금</a>
         </div>
         <hr style="width: 200px;">
          
      </div>
   </div>
   <!-- side bar end -->
   
   
    <div>
    
        <h3>손님들이 선택하신, 이 상품 어떠세요?</h3>
        
    <!--    <div class="parent" style="width: 300px; height: 100px; background: #585858;">
            <div class="child" style="background-color:yellow; border-radius:20px;">
            </div>
    
            <div class="child" style="background-color:#008485; border-radius:20px;">		
		    </div>
		    
            <div class="child" style="background-color:pink; border-radius:20px;">
            </div>
      </div>
        
         -->

<ul>
	<li style="display:inline-block;">
	    <div style="width:100px; height:100px; border-radius:20px; border:1px solid;">하나</div>
	</li>
	
	<li style="display:inline-block;">
	    <div style="width:100px; height:100px; border-radius:20px; border:1px solid;">둘</div>
	</li>
	
	<li style="display:inline-block;">
	    <div style="width:100px; height:100px; border-radius:20px; border:1px solid;">셋</div>
	</li>
</ul>

        
        
        
          
    </div>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

<div>
    <button type="button" class="selectSavings col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectSavings"
     style="width:200px; font-size:18px; font-family:hanaBFont;" > <!-- onclick="intoSelectSavings()" -->
        나만의 예적금 찾기
    </button>  
</div>   
   

    

<!-- 모달 -->
<div class="modal fade" id="selectSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">잔액 이동 재설정</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="modalbody">
            
            <h4 style="text-align:center; margin-bottom:40px;">나만의 예적금 찾기</h4>
            
            
                <!-- 상품유형 -->
                <div style="margin-bottom:35px;">
	               <span style="margin-left:10%; font-size:20px;">상품유형</span>
	                   <div class="nav productType" style="text-align:center; margin-top:5px;">
	            
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="적금"
		                           style="margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
	                         적금
	                       </button>
	                     
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="예금"
	                                style="display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
	                         예금
	                       </button> 
      
	                   </div>
	            </div>
	           
	           
	           
	            <!-- 이자 지급방식 -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">이자 지급방식</span>
                       <div class="nav interestMethod" style="text-align:center; margin-top:5px;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="만기일지급식"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            만기일지급식
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="월이자지급식"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             월이자지급식
                           </button> 
                           
                      <!--      <input type="button" class="button" id="interestMedtod1" value="만기일지급식" style="display:inline; width:40%; height:50px; border-radius:5px; background:none;">
                           <input type="button" class="button" id="interestMedtod2" value="월이자지급식" style="width:40%; height:50px; border-radius:5px; background:none;">
                       -->
                       </div>
                </div>
                
                
                
                
                <!-- 가입기간 -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">가입기간</span>
                       <div class="nav minPeriod" style="text-align:center; margin-top:5px;">
                       
                       
                       
                       
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3개월"
                                   style="margin-left:9%; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            3개월
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="6개월"
                                    style="display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             6개월
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="1년"
                                    style="display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             1년
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="2년"
                                   style="margin-left:9%; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            2년
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3년"
                                    style="display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             3년
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="5년"
                                    style="display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             5년
                           </button> 
       
                       </div>
                </div>
            
            
            
                <!-- 예정 신규금액 -->
                <!-- minAmount보다 크고 maxAmount보다 작으면 됨 -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">예정 신규금액</span>
                       <div style="text-align:center; margin-top:5px;">
                           <input type="text" id="firstAmount" name="minAmount" value="" placeholder="예치금액 (원)" style="width:81%; height:60px; margin-bottom:5px; border-radius:5px;"><br>
                           
                              <button type="button" class="button" style="width:19.5%; border-radius:5px;">+5만</button>
                              <button type="button" class="button" style="width:19.5%; border-radius:5px;">+10만</button>
                              <button type="button" class="button" style="width:19.5%; border-radius:5px;">+100만</button>
                              <button type="button" class="button" style="width:19.5%; border-radius:5px;">초기화</button>
                       </div>
                </div>
                
                
                
                <!-- 우대금리항목 추가 -->
                <div class="d-flex justify-content-between" style="text-align:center;">
                
                    <div style="margin-left:10%;">우대금리 항목 추가</div> 
                    <div style="margin-right:10%;"><input type="button" id="displayPreferBtn" value="+" onclick="displayPrefer()"></div>
                
                </div>
                
               
               <div id="preferList"  style="display:none; ">
                  
                    <span style="margin-left:10%; margin-top:10px;">우대금리 항목 안내 △</span><br>
                    
                        <div style="width:80%; margin-left:10%;   margin-top:10px;">● 금액 밎 가입 기간은 필수 조건이며, 우대금리 항목은 선택 시 선택 사항입니다</div>
                        <div style="width:80%; margin-left:10%;">● 같은 우대금리 항목이라도 상품별로 적용되는 상세요건(예, 적용우대 이율)은 다름을 안내드리오니,
                          상품 가입 전 반드시 선택하신 상품의 적용 우대금리 상세 내용을 확인 후 가입을 진행하여 주시기 바랍니다.</div>


                        <div class="nav preferCondition1" style="text-align:center; margin-top:25px;">
                           
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="카드실적"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            카드실적
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="아파트관리비 실적"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             아파트관리비 실적
                           </button> 
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="주택청약종합저축"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            주택청약종합저축
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="첫거래"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             첫거래
                           </button> 
                           
                           
                           </div>
                           
                           
                           <div class="nav preferCondition2" style="text-align:center;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="연금이체"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            연금이체
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="급여이체"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             급여이체
                           </button> 
                           
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="온라인 신규"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            온라인 신규
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="하나머니"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             하나머니
                           </button> 
                          
                       </div> <br>
               
               
                       <span style="margin-left:10%;">우대금리 항목이란? ▽</span>
               </div> 
                
      
            
         
            
            
          </div>
          
           <div id="modalFooter" style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary" id="divBtn" data-bs-dismiss="modal" onclick="sortSavings()" 
                    style="width:76%;  margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">조회</button>         
            </div>
        </div>
      </div>
    </div>

   
   
   
   

<script>
function displayPrefer() {
	
	//$('#displayPreferBtn').hide();
    $('#preferList').show();
}

</script>   
   

<!--    
    //let productType = document.getElementById('productType').children('.active').value; -->
<script>
function addActive() {
	//onclick="addActive();
	
//	let productType = $('.productType').children('.active').val();
//	let interestMethod = $('.interestMethod').children('.active').val();
//	let minPeriod = $('.minPeriod').children('.active').val();
//    let preferCondition = $('.preferCondition').children('.active').val();   
}
</script>




<!-- 모달에서 조회버튼 눌렀을 때 실행되는 온클릭함수 -->
<script>
function sortSavings() {
    
	let productType = $('.productType').children('.active').val();
	let interestMethod = $('.interestMethod').children('.active').val();
	let minPeriod = $('.minPeriod').children('.active').val();
	let preferCondition1 = $('.preferCondition1').children('.active').val();
	let preferCondition2 = $('.preferCondition2').children('.active').val();
	let firstAmount = $('#firstAmount').val();
    //console.log(minAmount);
   /*  fetch("/doReBudgetSet?accountNo="+accountNo+"&toPocket="+toPocket+'&autoDivDate='+autoDivDate+'&divAmount='+divAmount)

            .then(res=>{
                
                 
                changeModal(toPocket);
                
          }) */
          
          
          $.ajax({
              url : '${ pageContext.request.contextPath }/selectSortSavings',
              type : 'post',
              data : {
            	  productType  : productType,
            	  interestMethod :interestMethod,
                  minPeriod  : minPeriod,
                  firstAmount : firstAmount,
                  preferCondition1 : preferCondition1
                  preferCondition2 : preferCondition2
                  
              },
              success : function(data) {
                  if(data == 'success'){

                  }
              }
          })
}
</script>   
   
   
</body>
</html>