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
      style="width:20%; float:left; margin-top:37px; margin-left:10px; margin-right:10px; height:1500px;">
      <div style="padding-left: 30px;">
         <h3 style="margin-bottom: 10px;">
            <!-- <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
            <strong style="color:#008485;"> HANA </strong>    -->
            <strong style="color:#008485;">?????? ??????</strong>
            
         </h3>
         <hr style="width: 200px; height: 5px; background-color:#066262;">
         <div>
            <a href="${pageContext.request.contextPath}/mybankMain"
               style="color:#808080;">?????????</a>
         </div>     
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">?????????</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">??????</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">??????</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">??????</a>
         </div>
         <hr style="width: 200px;">  
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">????????????</a>
         </div>
         <hr style="width: 200px;">
          
      </div>
   </div>
   <!-- side bar end -->
   


<div id="compareBtn"></div>

<div id="savingsMain" >
   
    <div>
    
        <h3>???????????? ????????????, ??? ?????? ?????????????</h3>
        
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
	    <div style="width:100px; height:100px; border-radius:20px; border:1px solid;">??????</div>
	</li>
	
	<li style="display:inline-block;">
	    <div style="width:100px; height:100px; border-radius:20px; border:1px solid;">???</div>
	</li>
	
	<li style="display:inline-block;">
	    <div style="width:100px; height:100px; border-radius:20px; border:1px solid;">???</div>
	</li>
</ul>

        
        
        
          
    </div>
   
   

	
	<div>
	    <button type="button" class="selectSavings col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectSavings"
	     style="width:200px; font-size:18px; font-family:hanaBFont;" > <!-- onclick="intoSelectSavings()" -->
	        ????????? ????????? ??????
	    </button>  
	</div>   
	
	
	
	
	
	
<!--  --><!--  --><!--  --><!--  --><!--  -->

  <div style="text-align:center;">
  <h4 style="margin-bottom:30px;"><strong style="color:#008485; margin-bottom:30px;">???????????????&nbsp;</strong>(??????)</h4>
  
  
    <ul>
	    <li style="display:inline-block;">????????????
	        <div style="margin-top:10px; width:300px; height:400px; border-radius:20px; border:1px solid; background-color:#486A80; ">
                
                <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="font-size:23px; color:white;">???????????? ?????????</span>
                    <span style="font-size:25px; color:#FFDE00;">xxxx ???</span>
                </div>
                
                <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="color:#E8E8E8;">????????????</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>
                
                <div class="d-flex justify-content-between">
                    <span style="color:#E8E8E8;">????????????(??????!!, ??????)</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>

                <hr style="margin-top:20px; margin-bottom:20px; color:white;">
                
                     <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="font-size:23px; color:white;">???????????? ??????</span>
                    <span style="font-size:25px; color:#FFDE00;">xxxx ???</span>
                </div>
                
                <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="color:#E8E8E8;">????????????</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>
                
                <div class="d-flex justify-content-between">
                    <span style="color:#E8E8E8;">????????????(??????!!, ??????)</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>
                
            </div><button style="width:300px; border-radius:10px; margin-top:30px; background-color:#008485; color:white; border:none;">????????????</button>
	    </li>
	    
	    <li style="display:inline-block;">????????????
	        <div style="margin-top:10px; width:300px; height:400px; border-radius:20px; border:1px solid; background-color:#486A80; ">
                
                <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="font-size:23px; color:white;">???????????? ?????????</span>
                    <span style="font-size:25px; color:#FFDE00;">xxxx ???</span>
                </div>
                
                <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="color:#E8E8E8;">????????????</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>
                
                <div class="d-flex justify-content-between">
                    <span style="color:#E8E8E8;">????????????(??????!!, ??????)</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>

                <hr style="margin-top:20px; margin-bottom:20px; color:white;">
                
                     <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="font-size:23px; color:white;">???????????? ??????</span>
                    <span style="font-size:25px; color:#FFDE00;">xxxx ???</span>
                </div>
                
                <div class="d-flex justify-content-between" style="margin-top:30px;">
                    <span style="color:#E8E8E8;">????????????</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>
                
                <div class="d-flex justify-content-between">
                    <span style="color:#E8E8E8;">????????????(??????!!, ??????)</span>
                    <span style="color:#E8E8E8;">xxxx???</span>
                </div>
                
            </div><button style="width:300px; border-radius:10px; margin-top:30px; background-color:#008485; color:white; border:none;">????????????</button>
	    </li>
    
    </ul>
  
    <button style="width:300px; border-radius:20px; margin-top:20px; ">??????</button>
 </div>

<!--  --><!--  --><!--  --><!--  --><!--  -->
	   





</div>

    

<!-- ?????? ????????? ?????? ?????? ?????? ??????  -->
<div class="modal fade" id="selectSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">?????? ?????? ?????????</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="modalbody">
            
            <h4 style="text-align:center; margin-bottom:40px;">????????? ????????? ??????</h4>
            
            
                <!-- ???????????? -->
                <div style="margin-bottom:35px;">
	               <span style="margin-left:10%; font-size:20px;">????????????</span>
	                   <div class="nav productType" style="text-align:center; margin-top:5px;">
	            
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="??????"
		                           style="font-family:hanaBFont; margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
	                         ??????
	                       </button>
	                     
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="??????"
	                                style="font-family:hanaBFont; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
	                         ??????
	                       </button> 
      
	                   </div>
	            </div>
	           
	           
	           
	            <!-- ?????? ???????????? -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">????????????</span>
                       <div class="nav accumulateMethod" style="text-align:center; margin-top:5px;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="???????????????"
                                   style="font-family:hanaBFont; margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            ???????????????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="???????????????"
                                    style="font-family:hanaBFont; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             ???????????????
                           </button> 
                           
                      <!--      <input type="button" class="button" id="interestMedtod1" value="??????????????????" style="display:inline; width:40%; height:50px; border-radius:5px; background:none;">
                           <input type="button" class="button" id="interestMedtod2" value="??????????????????" style="width:40%; height:50px; border-radius:5px; background:none;">
                       -->
                       </div>
                </div>
                
                
                
                
                <!-- ???????????? -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">????????????</span>
                       <div class="nav minPeriod" style="text-align:center; margin-top:5px;">
                       
                       
                       
                       
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3??????"
                                   style="font-family:hanaBFont; margin-left:9%; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            3??????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="6??????"
                                    style="font-family:hanaBFont; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             6??????
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="1???"
                                    style="font-family:hanaBFont; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             1???
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="2???"
                                   style="font-family:hanaBFont; margin-left:9%; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            2???
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3???"
                                    style="font-family:hanaBFont; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             3???
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="5???"
                                    style="font-family:hanaBFont; display:inline; width:26.4%;; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             5???
                           </button> 
       
                       </div>
                </div>
            
            
            
                <!-- ?????? ???????????? -->
                <!-- minAmount?????? ?????? maxAmount?????? ????????? ??? -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">?????? ????????????</span>
                       <div style="text-align:center; margin-top:5px;">
                           <input type="text" id="firstAmount" name="minAmount" value="" placeholder="???????????? (???)" style="font-family:hanaBFont; width:81%; height:60px; margin-bottom:5px; border-radius:5px;"><br>
                           
                              <button type="button" class="button" style="width:19.5%; border-radius:5px; font-family:hanaBFont;">+5???</button>
                              <button type="button" class="button" style="width:19.5%; border-radius:5px; font-family:hanaBFont;">+10???</button>
                              <button type="button" class="button" style="width:19.5%; border-radius:5px; font-family:hanaBFont;">+100???</button>
                              <button type="button" class="button" style="width:19.5%; border-radius:5px; font-family:hanaBFont;">?????????</button>
                       </div>
                </div>
                
                
                
                <!-- ?????????????????? ?????? -->
                <div class="d-flex justify-content-between" style="text-align:center;">
                
                    <div style="font-family:hanaBFont; margin-left:10%;">???????????? ?????? ??????</div> 
                    <div style="font-family:hanaBFont; margin-right:10%;"><input type="button" id="displayPreferBtn" value="+" onclick="displayPrefer()"></div>
                
                </div>
                
               
               <div id="preferList"  style="display:none; ">
                  
                    <span style="font-family:hanaBFont; margin-left:10%; margin-top:10px;">???????????? ?????? ?????? ???</span><br>
                    
                        <div style="width:80%; margin-left:10%; font-family:hanaBFont;  margin-top:10px;">??? ?????? ??? ?????? ????????? ?????? ????????????, ???????????? ????????? ?????? ??? ?????? ???????????????</div>
                        <div style="width:80%; margin-left:10%; font-family:hanaBFont;">??? ?????? ???????????? ??????????????? ???????????? ???????????? ????????????(???, ???????????? ??????)??? ????????? ??????????????????,
                          ?????? ?????? ??? ????????? ???????????? ????????? ?????? ???????????? ?????? ????????? ?????? ??? ????????? ???????????? ????????? ????????????.</div>


                        <div class="nav preferCondition1" style="text-align:center; margin-top:25px;">
                           
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="????????????"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            ????????????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="?????????????????? ??????"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             ?????????????????? ??????
                           </button> 
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="????????????????????????"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            ????????????????????????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="?????????"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             ?????????
                           </button> 
                           
                           
                           </div>
                           
                           
                           <div class="nav preferCondition2" style="text-align:center;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="????????????"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            ????????????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="????????????"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             ????????????
                           </button> 
                           
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="????????? ??????"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            ????????? ??????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="????????????"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             ????????????
                           </button> 
                          
                       </div> <br>
               
               
                       <span style="margin-left:10%; font-family:hanaBFont;">???????????? ????????????? ???</span>
               </div> 
                
      
            
         
            
            
          </div>
          
           <div id="modalFooter" style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary" id="divBtn" data-bs-dismiss="modal" onclick="sortSavings()" 
                    style="width:76%; font-family:hanaBFont; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">??????</button>         
            </div>
        </div>
      </div>
    </div>

   
   
   
   
  
   
   
   
   
   
   
<!-- ????????? ?????? ?????? ???????????? ?????? ??????  -->
<div class="modal fade" id="compareSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">?????? ?????? ?????????</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="comparemodalbody">
     
           </div>
           <div id="comparemodalFooter" style="font-family:hanaBFont; text-align:center; margin-bottom:20px;">
            <!-- <button type="button" class="btn btn-primary" id="resolveBtn"  
                    style="width:76%;  margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">?????? ????????? ????????????</button>         
                    data-bs-dismiss="modal" -->
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




<!-- ???????????? ???????????? ????????? ??? ???????????? ??????????????? -->
<script>
function sortSavings() {
    
	let productType = $('.productType').children('.active').val();
	let accumulateMethod = $('.accumulateMethod').children('.active').val();
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
            	  accumulateMethod :accumulateMethod,
                  minPeriod  : minPeriod,
                  firstAmount : firstAmount,
                  preferCondition1 : preferCondition1,
                  preferCondition2 : preferCondition2
                  
              },
              success : function(data) {
            	  console.log(data);
            	  console.log(data[0].TARGET);
            	  
            	  
            	  $('#savingsMain').empty();
            	  
            	  
            	  str2 ='';
            	  str2 += '<div>';
            	  str2 += '<button type="button" class="compareSavings col-3 btn btn-primary" onclick="compareSavings();" data-bs-toggle="modal" data-bs-target="#compareSavings"';
            	  str2 += 'style="width:200px; font-size:18px; font-family:hanaBFont;">';
            	  str2 += '????????? ?????? ????????????';
            	  str2 += '</button></div>';
            	  $('#compareBtn').append(str2);
            	  
           
              
            	  
            	  for(let i=0; i<data.length; i++) {
            		  str ='';
            		  str += '<div style="font-family:hanaBFont; margin-bottom:20px; border:3px solid; padding:10px; width:60%; height:240px; border-radius:40px; display:flex; justify-content:space-between;" class= "row">';
            		  str += '<div class="col-8">';
            		  str += '<div class="d-flex flex-column">';
            		  str += '<div class="d-flex" style="font-family:hanaBFont; margin-top:20px;">';
            		  str += '<input name="checkSavings" type="checkbox" value="'+data[i].SAVINGSNAME+'" style="margin-left:15px; margin-right:10px;">';
            		  str += '<h4 style="margin-left:10px;">' + data[i].SAVINGSNAME + '</h4>';
            		  str += '</div>';
            		  str += '<small style="margin-left:50px; margin-top:7px; font-size:20px; color:black; font-weight:bold; white-space: nowrap;">' + data[i].PRODUCTDESC + '</small><br><br>';
            		  str += '</div>';
            		  str += '<button type="button" style="margin-left:20px; width:350px; height:60px; font-family:hanaBFont; border-radius:30px; ">';
            		  str += '??????????????? </button> </div>';
            		  str += '<div class="col-3" style="text-align:right; margin-left:20px; color:black;  font-weight:bold; display: flex; justify-content: flex-end; align-items: center;">';
            		  str += '<div style="font-size:20px; display:inline;"> ?????? ??? <br><strong style="font-size:30px;">' + (data[i].BASICRATE + data[i].PREFERRATE) + '% </strong><br>  (??????, ' + data[i].MINPERIOD + ') </div>';
            		  str += '</div><br></div>';
            		  $('#savingsMain').append(str);
            		  
            	  }  
            	  
            	 
              }
          })
}
</script>   

<script type="text/javascript">
let compareArray = new Array()
function compareSavings() {
	let checkVal = new Array();
	$('input:checkbox[name=checkSavings]:checked').each(function() {
		checkVal.push($(this).val());
		
		
		//console.log(typeof checkVal);
		
	})
	       console.log(checkVal);
	       $.ajax({
            url : '${ pageContext.request.contextPath }/compareSortSavings',
            type : 'post',
            data : {
                "checkVal"  : checkVal
                
            },
            success : function(data) {
               // console.log(data);
              //  console.log(data[1].SAVINGSNAME);
                
                
                str = '';
                str += '<h4 style="font-family:hanaBFont; text-align:center; margin-bottom:40px;">????????? ?????? ??????</h4>';
                str += '<table border="1">';
                str += '<th>' + data[0].SAVINGSNAME + '</th>';
                str += '<th>' + data[1].SAVINGSNAME + '</th>';
                
                str += '<tr>';
                str += '<td>' + data[0].PRODUCTDESC + '</td>';
                str += '<td>' + data[1].PRODUCTDESC + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].TARGET + '</td>';
                str += '<td>' + data[1].TARGET + '</td>';
                str += '</tr>';
                              
                str += '<tr>';
                str += '<td>' + data[0].MAXLIMIT + '</td>';
                str += '<td>' + data[1].MAXLIMIT + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].MINPERIOD + '~' + data[0].MAXPERIOD + '</td>';
                str += '<td>' + data[1].MINPERIOD + '~' + data[1].MAXPERIOD + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].MINAMOUNT + '~' + data[0].MAXAMOUNT + '</td>';
                str += '<td>' + data[1].MINAMOUNT + '~' + data[1].MAXAMOUNT + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].BASICRATE + '</td>';
                str += '<td>' + data[1].BASICRATE + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].MAXRATE + '</td>';
                str += '<td>' + data[1].MAXRATE + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].PREFERRATE + '</td>';
                str += '<td>' + data[1].PREFERRATE + '</td>';
                str += '</tr>';
                
                str += '<tr>';
                str += '<td>' + data[0].CONDITION1 + ',' + data[0].CONDITION2 + '</td>';
                str += '<td>' + data[1].CONDITION1 + ',' + data[1].CONDITION2 + '</td>';
                str += '</tr>';
                
                
                str += '</table>';
                
                
                $('#comparemodalbody').append(str);
               
               // tes1(data);
               
               let str2 ='';
               compareArray = data
               str2 += '<button type="button" class="btn btn-primary" style="font-family:hanaBFont; width:76%; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;" onclick="expectedSavings()"> ?????? ????????? ????????????</button>';
              
               $('#comparemodalFooter').append(str2);
               
               //console.log(data[0]. + '?????????');
             
             }
        })	
}


function expectedSavings() {
    console.log('compareArray = '+compareArray[0].BASICRATE);
  //console.log(typeof checkVal); 
  
  $('#comparemodalbody').empty();
  let str = '';
  
  str += '<div style="text-align:center; font-family:hanaBFont;">'; 
  str += '<h4 style="margin-bottom:50px;">????????? ????????? <strong style="color:#008485; margin-bottom:30px;">"???????????????"</strong>??? ????????? ??? ?????????!</h4>';
  str += '<div style="margin-bottom:30px;">';
  

  str += '<span style="font-size:26px; font-weight:700; color:#263A4F;">??????&nbsp;</span>';
  str += '<input type="text" id="savingsAmount" name="savingsAmount" style="font-size:30px; width:150px; text-align:right; font-weight:700; color:#008485; outline:none; border:none; border-bottom:2px solid #008485;">';
  str += '<span style="font-size:26px; font-weight:700; color:#263A4F;">??????&nbsp;&nbsp;</span>';
  

  str += '<select name="savingsTerm" id="savingsTerm"';
  str += 'style="width:100px; font-size:26px; border:none; outline:none; color:#008485; text-align:center; height:30px;">';
  str += '<option value="1">12??????</option>';
  str += '<option value="2">24??????</option>';
  str += '<option value="3">36??????</option>';
  str += '</select> ';
  
  str += '<span style="font-size:26px; font-weight:700; color:#263A4F;"> ??????&nbsp; ?????????? </span>';
  str += '</div>';
  str += '</div>'; 

  /*  background-color:#f2f2f1; */
  
  $('#comparemodalbody').append(str);
  
  
  
  $('#comparemodalFooter').empty();
  let str2 = '';
  str2 += '<button type="button" class="btn btn-primary" style="font-family:hanaBFont; width:76%; margin-top:20px; margin-bottom:25px; height:50px;';
  str2 += 'border-radius:10px;" onclick="goExpectedSavings()"> ??????????????? ???????????? ?????? </button>';
  $('#comparemodalFooter').append(str2);
 
}



function goExpectedSavings() {
	//console.log('goExpectedSavings() = ' + compareArray[0].BASICRATE);
	
	/* ???????????? */
	let savingsAmount = document.getElementById('savingsAmount').value*1; //??????
	let savingsTerm = $('select[name=savingsTerm]').val()*12; //???????????????
	console.log(savingsAmount);
	console.log(savingsTerm);
	
	/* select1 ?????? ?????? */
	let basicRate1 = compareArray[0].BASICRATE*0.01;
	let prefRate1 = compareArray[0].PREFERRATE*0.01;
	//console.log('goExpectedSavings() = ' + compareArray[0].BASICRATE);
	//console.log('goExpectedSavings() = ' + compareArray[0].PREFERRATE);
	
	/* select2 ?????? ?????? */
    let basicRate2 = compareArray[1].BASICRATE*0.01;
    let prefRate2 = compareArray[1].PREFERRATE*0.01;
    
    

    /* ??????????????? 
       SAVINGSTYPE='??????' ?????? */
    let result02 = 0; 
    for(let i=1; i<savingsTerm+1; i++) {
    	result02 += savingsAmount * Math.pow(1+(prefRate1/12),i);
        //console.log(result);
    }
    console.log("????????????" + ((result02-(savingsAmount*savingsTerm)) - (result02-(savingsAmount*savingsTerm)) * 0.154));
    
    let sehu = ((result02-(savingsAmount*savingsTerm)) - (result02-(savingsAmount*savingsTerm)) * 0.154); //????????????
    
    
    
    
    
    //compareArray[0]
    let result1sehu = 0; 
    let sehu1 = 0;
    if(compareArray[0].SAVINGSTYPE==='??????') {
    	console.log('??????');
    } else(compareArray[0].SAVINGSTYPE==='??????') {
    	
    	for(let i=1; i<savingsTerm+1; i++) {
    		result1sehu += savingsAmount * Math.pow(1+(prefRate1/12),i);
            //console.log(result);
        }
        console.log("????????????" + ((result1sehu-(savingsAmount*savingsTerm)) - (result1sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu1 = ((result1sehu-(savingsAmount*savingsTerm)) - (result1sehu-(savingsAmount*savingsTerm)) * 0.154); //????????????
    }
    
    
    
    
    
    
    
    //compareArray[1]
    let result2sehu = 0; 
    let sehu2 = 0;
    if(compareArray[1].SAVINGSTYPE==='??????') {
        console.log('??????');
    } else(compareArray[1].SAVINGSTYPE==='??????') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result2sehu += savingsAmount * Math.pow(1+(prefRate2/12),i);
            //console.log(result);
        }
        console.log("????????????" + ((result2sehu-(savingsAmount*savingsTerm)) - (result2sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu2 = ((result2sehu-(savingsAmount*savingsTerm)) - (result2sehu-(savingsAmount*savingsTerm)) * 0.154); //????????????
    }
    
    
    
    
    
  
    
    
    
	
	
	/* 
	   let basicRate = 0.029;
	    let prefRate = 0.041;
	    let term = 12;
	    
	    
	    let a = 200000; //??????
	    let result = 0;
	    
	    for(let i=1; i<term+1; i++) {
	        result += a * Math.pow(1+(prefRate/12),i);
	        console.log(result);
	    }
	    
	    console.log("????????????" + ((result-(a*term)) - (result-(a*term)) * 0.154));
	
	 */
	
	$('#comparemodalbody').empty();
	
	 /*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  */
	 
	 

	 
	 
	 /*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  */
	 
	 
	 //$('#comparemodalbody').append(str);
	  
	  
	  
	  $('#comparemodalFooter').empty();
	/*   let str2 = '';
	  str2 += '<button type="button" class="btn btn-primary" style="font-family:hanaBFont; width:60%; margin-top:20px; margin-bottom:25px; height:50px;';
	  str2 += 'border-radius:10px;" onclick="goExpectedSavings()"> ??????????????? ???????????? ?????? </button>';
	  str2 += '<button type="button" class="btn btn-primary" style="font-family:hanaBFont; width:30%; margin-top:20px; margin-bottom:25px; height:50px;';
      str2 += 'border-radius:10px;" onclick="goExpectedSavings()"> ??????????????? ???????????? ?????? </button>';
	  $('#comparemodalFooter').append(str2); */
	
}
</script>

<script>




</script>
   
   
   
</body>
</html>
















