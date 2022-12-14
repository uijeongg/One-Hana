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

.button:hover {
    border-color: #008485;
    color: #008485;
}

.active {
    /* border-color: #e90061; */
    border : 5px solid #fca474;
    box-shadow: none !important;
}

.button {
    background-color:#9d9d9d; 
    border:none; 
    height:32px; 
    width:19.5%; 
    border-radius:5px; 
    font-family:hanaBFont;
    color:white;
}


.selectSavings:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}

.selectSavings:focus {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}  

.calculAmount:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}

.calculAmount:hover {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}  

.compareSavings:focus {
    outline: 0;
    box-shadow:none !important; 
    /* color: white !important; */
}

.versusAmount:hover {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important;
    color: white !important; 
}  

.versusAmount:focus {
    outline: 0;
    box-shadow:none !important; 
    color: white !important;
}

.selProduct:hover {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important;
    color: white !important; 
}

.selProduct:focus {
    outline: 0;
    box-shadow:none !important; 
    color: white !important;
}

/* .doDivide:hover {
background:none !important;
color:black !important;
border:none !important;
} 

.doDivide:focus {
background:none !important;
color:black !important;
border:none !important;
}   

.btn:focus {
    outline: 0;
    box-shadow:none !important; 
}

 */


/* tr {
   padding: 15px; 
}

th {
    border-right:1px solid;
}

td, th {
    padding: 15px; 
}
 */



.accordion-button:not(.collapsed) {
    color: #008485 !important;
    background-color: #ebf7ee;
    box-shadow: inset 0 -1px 0 rgb(0 0 0 / 13%);
    font-size: 18px !important;
}
</style>



</head>
<body>

     <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
        <jsp:include page="/WEB-INF/jsp/include/sidebar4.jsp"></jsp:include>
    


<div id="savingsHeader"></div>

<div id="savingsMain" >
   
    <div>
    
       <!--  <h3>???????????? ????????????, ??? ?????? ?????????????</h3> -->


<div style="text-align:center; margin-top:50px; margin-right:70px;">
<h1 style="margin-bottom:50px;">???????????? ????????????, <span style="color:#f7570b;">??? ?????? ?????????????</span></h1>
	<ul>
		<li style="display:inline-block;">
		    <div style="text-align:center; width:250px; height:250px; border-radius:40px; border:1px solid; border-color:#ffd400; background-color:#ffd400;">
		      <div style="font-size:27px; margin-top:35px;">?????????<br>????????????</div>
		      <div style="font-size:20px; margin-top:20px; margin-bottom:26px;">????????? ??????????</div>
		      <div style="font-size:15px; color:#707070;">(1????????? ??????, <br>1?????? ?????? ~ 5??? ??????)</div>
		    </div>
		</li>
		
		<li style="display:inline-block;">
		    <div style="width:250px; height:250px; border-radius:40px; border:1px solid; border-color:#99cece; background-color:#99cece;">
		      
		      <div style="font-size:27px; margin-top:35px;">???????????? ?????????<br>(Double-Up) ??????</div>
		      <div style="font-size:20px; margin-top:7px;">?????? ??? 1.75% ~<br>?????? ??? 5.50%</div>
		      <div style="font-size:15px; margin-top:8px; color:#707070;">(??????, 1???, ?????????????????????,<br>2022.09.16??????)</div>
		    </div>
		</li>
		
		<li style="display:inline-block;">
		    <div style="width:250px; height:250px; border-radius:40px; border:1px solid; border-color:#ffc0cb; background-color:#ffc0cb;">
		      <div style="font-size:27px; margin-top:35px;">?????????<br>????????????</div>
		      <div style="font-size:20px; margin-top:7px;">?????? ??? 2.51% ~<br>?????? ??? 3.01%</div>
		      <div style="font-size:15px; margin-top:8px; color:#707070;">(??????, ?????????????????????,<br>2022.09.23??????)</div>
		    </div>
		</li>
	</ul>


    <div style="text-align:center; margin-top:50px;">
        <h3 style="font-size:25px; color:#707070; margin-bottom:40px;">???????????? ????????? ?????? ????????????????</h3>
        
        <div class="d-flex justify-content-start">
        <button style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:160px; background-color:#f3f3f3; border-color:#f3f3f3; font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center"
         type="button" class="selectSavings col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectSavings">?????????</button>
        <!-- <div style="width:87px; height:87px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:22px; color:#868686; display:flex; align-items:center; justify-content:center">??????</div> -->
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">??????<br>?????????</div>
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">??????<br>??????</div>
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">??????</div>
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">????????????<br>ELD</div>
        </div>
        
    </div>

<!-- 
 <button type="button" class="selectSavings col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectSavings"
         style="width:400px; font-size:20px; font-family:hanaBFont; margin-top:40px;" >
            ????????? ????????? ??????
        </button>  -->   
        

</div>
</div>
   
   

</div>	
	


<div id="compareBtn"></div>

<!-- ?????? ????????? ?????? ?????? ?????? ??????  -->
<div class="modal fade" id="selectSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content" style="border:5px solid; border-color:#008485;">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">?????? ?????? ?????????</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="modalbody">
            
            <h3 style="text-align:center; margin-bottom:40px;">????????? 
            <strong style="color:#008485; display:inline;">?????????</strong> 
            ??????</h3>
            
            
                <!-- ???????????? -->
                <div style="margin-bottom:35px;">
	               <span style="margin-left:10%; font-size:20px;">????????????</span>
	                   <div class="nav productType" style="text-align:center; margin-top:5px;">
	            
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="??????"
		                           style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
	                         ??????
	                       </button>
	                     
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="??????"
	                                style="font-size:18px; font-family:hanaBFont; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
	                         ??????
	                       </button> 
      
	                   </div>
	            </div>
	           
	           
	           
	            <!-- ?????? ???????????? -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">????????????</span>
                       <div class="nav accumulateMethod" style="text-align:center; margin-top:5px;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="???????????????"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            ???????????????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="???????????????"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
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
                       
                       
                       
                       
                         <!--    <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3??????"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            3??????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="6??????"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             6??????
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="1???"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             1???
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="2???"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            2???
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3???"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             3???
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="5???"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             5???
                           </button>  -->
                           
                           
                           
                           
                           
                              <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            3??????
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="6"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             6??????
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="12"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             1???
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="24"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            2???
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="36"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             3???
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="60"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             5???
                           </button> 
                           
                           
                         
       
                       </div>
                </div>
            
            
            
                <!-- ?????? ???????????? -->
                <!-- minAmount?????? ?????? maxAmount?????? ????????? ??? -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">?????? ????????????</span>
                       <div style="margin-left:auto; margin-right:auto; text-align:center; margin-top:5px;">
                           
                           <input type="text" id="firstAmount" name="firstAmount" value="" placeholder="???????????? (???)" class="form-control" 
                           style="font-size:20px; color:black; text-align:right; font-family:hanaBFont; margin-left:42px; width:81%; height:50px; border-radius:5px;"><br>
                           
                              <button class="button" id="50000" onClick="amountClick(this.id)">+5???</button>
                              <button class="button" id="100000" onClick="amountClick(this.id)">+10???</button>
                              <button class="button" id="1000000" onClick="amountClick(this.id)" >+100???</button>
                              <button class="button">?????????</button>
                       </div>
                </div>
                
                
               
                
                <!-- ?????????????????? ?????? -->
                <div class="d-flex justify-content-between" style="text-align:center;">
                    <div style="font-family:hanaBFont; color:#008485; font-size:20px; margin-left:10%;">???????????? ?????? ??????</div> 
                    <div style="font-family:hanaBFont; margin-right:6%;">
	                    <!-- <input type="button" onclick="displayPrefer()" id="displayPreferBtn" 
	                    value="+" > -->
	                    
	                    <input type="image" onclick="displayPrefer()" id="displayPreferBtn" 
                        src="${pageContext.request.contextPath}/resources/myicon/My_plus.png"
                        style="width:40%;" > 
	                     
	                  
	                    
                    </div>
                
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
            <button type="button" class="btn btn-primary selProduct" id="divBtn" data-bs-dismiss="modal" onclick="sortSavings()" 
                    style="width:76%; font-size:20px; font-family:hanaBFont; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">??????</button>         
            </div>
        </div>
      </div>
    </div>

   
   
   
   
  
   
   
   
   
   
   
<!-- ????????? ?????? ?????? ???????????? ?????? ??????  -->
<div class="modal fade" id="compareSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content" style="border: 4px solid #008485;">
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
                    style="width:76%; font-size:22px; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">?????? ????????? ????????????</button>         
                    data-bs-dismiss="modal" -->
            </div>
        </div>
      </div>
    </div>

   
   
   
   
   
   
   
   
   
   
   

<script>
function displayPrefer() {
	
	$('#displayPreferBtn').hide();
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
            	  
            	  
            	  str3 ='';
            	  
            	  str3 += '<div style="margin-left:470px; margin-top:32px;">';
            	 
            	  str3 += '<h5 style="font-size:23px;">" <strong style="font-size:23px; color:#008485; display:inline;">?????????</strong> ?????? ???????????? ????????? ??? ?????? ????????? ??????????????????! "</h5>';
            	  str3 += '</div>';            	  
            	  str3 += '<hr style="width:840px; margin-bottom:30px; height:7px; background-color:#066262;">';
            	  
            	  $('#savingsHeader').append(str3);
            	 
            	  /*   <div style="margin-left:670px; margin-top:9px;" class="animate__animated animate__bounce" >
            	        <img src="${pageContext.request.contextPath}/resources/myicon/park.PNG" 
            	            style="width:80px; height:70px;"/>
            	        <span style="font-size:30px; font-weight:bold; margin-top:80px;">&nbsp; ?????? </span> 
            	        <span style="color:#008485; font-weight:bold; font-size:30px; margin-top:80px;"> ?????? </span>
    */
            	    
            	    
            	  
            	  
            	  
            	  
            	  
            	  
            	
                      
            	  for(let i=0; i<data.length; i++) {
            		  str ='';
            		  str += '<div style="font-family:hanaBFont; margin-bottom:20px; border:3px solid #9d9d9d; padding:10px; width:60%; border-radius:40px; display:flex; justify-content:space-between;" class= "row">';
            		  str += '<div class="col-8">';
            		  str += '<div class="d-flex flex-column">';
            		  str += '<div class="d-flex" style="font-family:hanaBFont; margin-top:17px;">';
            		  str += '<input name="checkSavings" type="checkbox" value="'+data[i].SAVINGSNAME+'" style="margin-left:15px; margin-right:10px;">';
            		  str += '<h4 style="margin-left:10px; margin-right:20px;">' + data[i].SAVINGSNAME + '</h4>';
            		  
            	
            		  
            		  if( data[i].STATUS == 'new') {
            			  str += '<img src="${pageContext.request.contextPath}/resources/myicon/newest3.png"'; 
                          str += 'class="animate__animated animate__heartBeat" style="width:16%; margin-top:-20px;"/>';
            		  }
            		  
            		  
            		  str += '</div>';
            		
            		  
            		  str += '<div style="margin-left:20px;">';
                      str += '<pre style="word-wrap:break-word; white-space:pre-wrap; white-space:-moz-pre-wrap; white-space:-pre-wrap; ';
                      str += 'white-space:-o-pre-wrap; word-break:break-all;';
                      str += 'font-weight:bold; font-size:18px; font-family:hanaBFont; fontWeight:bold; margin-top:7px;">' + data[i].PRODUCTDESC + '</pre>';
                      str += '</div>';
                    
            		  
            		  
            		  
            		  str += '</div>';
            		  str += '<button type="button" style="margin-left:20px; background-color:#fca474; border:none; color:white;  width:300px; height:42px; font-family:hanaBFont; border-radius:30px;">';
            		  str += '??????????????? </button> </div>';
            		  
            		  
            		  str += '<div class="col-3" style="text-align:right; margin-left:20px; font-weight:bold; display: flex; justify-content: flex-end; align-items: center;">';
            		  str += '<div style="font-size:20px; display:inline;"> ?????? ??? <br><strong style="font-size:30px; color:#008485;">' + (data[i].BASICRATE + data[i].PREFERRATE) + '% </strong><br>  (??????, ' + data[i].MINPERIOD + '??????) </div>';
            		  str += '</div><br></div>';
            		  $('#savingsMain').append(str);
            		  
            	  }  
            	  
            	  
                  str2 = '';
                  str2 += '<div style="margin-left:580px;">';
                  str2 += '<button type="button" class="compareSavings col-3 btn btn-primary" onclick="compareSavings();" data-bs-toggle="modal" data-bs-target="#compareSavings"';
                  str2 += 'style="width:400px; height:50px; font-size:20px; color:#434343; background-color:#66b5b6; border:none; border-radius:30px; font-family:hanaBFont;">';
                  str2 += '????????? ?????? ????????????';
                  str2 += '</button></div>';
                  $('#compareBtn').append(str2);
                  
                  
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
                str += '<h3 style="font-family:hanaBFont; text-align:center; margin-bottom:40px;">????????? <strong style="color:#008485">?????? ??????</strong></h3>';
                
                
     
                /* str += '<div class="d-flex justify-content-between" style="margin-left:25px; width:700px; margin-bottom:30px;">'; */
                str += '<div class="d-flex justify-content-start" style="margin-left:130px; width:700px; margin-top:50px; margin-bottom:15px;">';
                str += '<strong style="font-size:24px; margin-right:70px;">' + data[0].SAVINGSNAME + '</strong>';
                str += '<strong style="font-size:25px; margin-right:70px;">VS</strong>';
                str += '<strong style="font-size:24px;">' + data[1].SAVINGSNAME + '</strong>';
                str += '</div>';
                str += '<hr style="width:700px; height:6px; color:#008485; margin-left:25px; margin-bottom:15px;">';
                
                str += '<div style="margin-left: 25px;">';
                
                str += '<div class="accordion" id="accordionExample" style="width:700px;">';

                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingOne">';
                str += '<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">';
                str += '???????????? </button></h2>';
                str += '<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                
                str += '<div style="width:50%; padding-right:3px;">';
                str += '<strong>' + data[0].PRODUCTDESC + '</strong>';
                str += '</div>';
                str += '<div style="width:50%; border-left:3px solid #008485; padding-left:10px;" >';
                str += '<strong>' + data[1].PRODUCTDESC + '</strong>';
                str += '</div>';
                
                str += '</div></div></div>';

                
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingTwo">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">';
                str += '?????? ??????</button></h2>';
                str += '<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                
                str += '<div style="width:50%; padding-right:3px;">';
                str += '<strong>' + data[0].TARGET + '</strong> ';
                str += '</div>';
                str += '<div style="width:50%; border-left:3px solid #008485; padding-left:10px;" >';
                str += '<strong>' + data[1].TARGET + '</strong> ';
                str += '</div>';
                
                str += '</div></div></div>';

                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingThree">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">';
                str += '?????? ?????? </button></h2>';
                str += '<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].ACCUMULATEMETHOD + '</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].ACCUMULATEMETHOD + '</strong>';
                str += '</div></div></div>';


                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingFour">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">';
                str += '?????? ?????? </button></h2>';
                str += '<div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[0].MAXLIMIT)).toLocaleString('ko-KR') + ' ???</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[1].MAXLIMIT)).toLocaleString('ko-KR') + ' ???</strong>';
                str += '</div></div></div>';


                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingFive">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">';
                str += '?????? ??????</button></h2>';
                str += '<div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].MINPERIOD + ' ?????? ~ ' + data[0].MAXPERIOD + ' ?????? </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].MINPERIOD + ' ?????? ~ ' + data[1].MAXPERIOD + ' ?????? </strong>';
                str += '</div></div></div>';
                  
                  
                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingSix">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">';
                str += '?????? ??????</button></h2>';
                str += '<div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[0].MINAMOUNT)).toLocaleString('ko-KR') + ' ??? ~ ' + (Math.floor(data[0].MAXAMOUNT)).toLocaleString('ko-KR') + ' ???</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[1].MINAMOUNT)).toLocaleString('ko-KR') + ' ??? ~ ' + (Math.floor(data[1].MAXAMOUNT)).toLocaleString('ko-KR') + ' ???</strong>';
                str += '</div></div></div>';

                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingSeven">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">';
                str += '?????? ??????</button></h2>';
                str += '<div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].BASICRATE + ' % </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].BASICRATE + ' % </strong>';
                str += '</div></div></div>';
                  

                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingEight">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">';
                str += '?????? ??????</button></h2>';
                str += '<div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].MAXRATE + ' % </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].MAXRATE + ' % </strong>';
                str += '</div></div></div>';
                  

                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingNine">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">';
                str += '?????? ??????</button></h2>';
                str += '<div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].PREFERRATE + ' % </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].PREFERRATE + ' % </strong>';
                str += '</div></div></div>';


                 
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingTen">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">';
                str += '?????? ?????? ??????</button></h2>';
                str += '<div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].CONDITION1 + ' / ' + data[0].CONDITION2 + '</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].CONDITION1 + ' / ' + data[1].CONDITION2 + '</strong>';
                str += '</div></div></div>';
                str += '</div>';
                
                
                
                str += '</div>';
                
                
                
                
                
                
                
                
                
                
                
                $('#comparemodalbody').append(str);
               
               // tes1(data);
               
               let str2 ='';
               compareArray = data
               str2 += '<button type="button" class="btn btn-primary calculAmount" style="font-family:hanaBFont; font-size:17px; width:76%; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;" onclick="expectedSavings()"> ?????? ????????? ????????????</button>';
              
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
  str2 += '<button type="button" class="btn btn-primary versusAmount" style="font-family:hanaBFont; width:76%; font-size:17px; margin-top:20px; margin-bottom:25px; height:50px;';
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
	let maxRate1 = compareArray[0].MAXRATE*0.01;
	//console.log('goExpectedSavings() = ' + compareArray[0].BASICRATE);
	//console.log('goExpectedSavings() = ' + compareArray[0].PREFERRATE);
	
	/* select2 ?????? ?????? */
    let basicRate2 = compareArray[1].BASICRATE*0.01;
    let prefRate2 = compareArray[1].PREFERRATE*0.01;
    let maxRate2 = compareArray[1].MAXRATE*0.01;
    
    
    
    
    
    
    
    
    
    /////////////////////////////////////////
    
    
     //compareArray[0] ?????????????????????(basicRate)
    let result11sehu = 0; 
    let sehu11 = 0;
    if(compareArray[0].SAVINGSTYPE==='??????') {
        console.log('??????');
        sehu11 = savingsAmount*savingsTerm*basicRate1*0.154;
        console.log(sehu11 + '??????' + compareArray[0].SAVINGSNAME);
        
        
    } else if(compareArray[0].SAVINGSTYPE==='??????') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result11sehu += savingsAmount * Math.pow(1+(basicRate1/12),i);
            //console.log(result);
        }
        //console.log("????????????" + ((result11sehu-(savingsAmount*savingsTerm)) - (result11sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu11 = ((result11sehu-(savingsAmount*savingsTerm)) - (result11sehu-(savingsAmount*savingsTerm)) * 0.154); //????????????
        console.log(sehu11 + '??????' + compareArray[0].SAVINGSNAME);
    }
    
   

    
    
    
    
    //compareArray[1] ?????????????????????(basicRate)
    let result22sehu = 0; 
    let sehu22 = 0;
    if(compareArray[1].SAVINGSTYPE==='??????') {
        //console.log('??????');
        sehu22 = savingsAmount*savingsTerm*maxRate2*0.154;
        
    } else if(compareArray[1].SAVINGSTYPE==='??????') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result22sehu += savingsAmount * Math.pow(1+(basicRate2/12),i);
            //console.log(result);
        }
        //console.log("????????????" + ((result22sehu-(savingsAmount*savingsTerm)) - (result22sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu22 = ((result22sehu-(savingsAmount*savingsTerm)) - (result22sehu-(savingsAmount*savingsTerm)) * 0.154); //????????????
    }
    
    
    //console.log("??????????????????2" + ((savingsAmount*savingsTerm)+sehu2));
    
    
    
    
    
    
    
    
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //??????????????????
    //??????????????????
    //??????????????????

    /* ??????????????? 
       SAVINGSTYPE='??????' ?????? */
    let result02 = 0; 
    for(let i=1; i<savingsTerm+1; i++) {
    	result02 += savingsAmount * Math.pow(1+(maxRate1/12),i);
        //console.log(result);
    }
    //console.log("????????????" + ((result02-(savingsAmount*savingsTerm)) - (result02-(savingsAmount*savingsTerm)) * 0.154));
    
    let sehu = ((result02-(savingsAmount*savingsTerm)) - (result02-(savingsAmount*savingsTerm)) * 0.154); //????????????
    
    //console.log(compareArray[0].SAVINGSTYPE);
    
    
    

    
    
    
    
    
    
    
    
  //compareArray[0] ??????????????????(maxRate)
    let result1sehu = 0; 
    let sehu1 = 0;
    if(compareArray[0].SAVINGSTYPE==='??????') {
        //console.log('??????');
        sehu1 = savingsAmount*savingsTerm*maxRate1*0.154;
        console.log(sehu1 + '??????????????????');
        
        
    } else if(compareArray[0].SAVINGSTYPE==='??????') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result1sehu += savingsAmount * Math.pow(1+(maxRate1/12),i);
            //console.log(result);
        }
        console.log("????????????" + ((result1sehu-(savingsAmount*savingsTerm)) - (result1sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu1 = ((result1sehu-(savingsAmount*savingsTerm)) - (result1sehu-(savingsAmount*savingsTerm)) * 0.154); //????????????
    }
    
    console.log('??????????????????1' + sehu1);

    
    
    
    
    //compareArray[1] ??????????????????(maxRate)
    let result2sehu = 0; 
    let sehu2 = 0;
    if(compareArray[1].SAVINGSTYPE==='??????') {
        //console.log('??????');
    	sehu2 = savingsAmount*savingsTerm*maxRate2*0.154;
    	
    } else if(compareArray[1].SAVINGSTYPE==='??????') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result2sehu += savingsAmount * Math.pow(1+(maxRate2/12),i);
            //console.log(result);
        }
        console.log("????????????" + ((result2sehu-(savingsAmount*savingsTerm)) - (result2sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu2 = ((result2sehu-(savingsAmount*savingsTerm)) - (result2sehu-(savingsAmount*savingsTerm)) * 0.154); //????????????
    }
    
    
    console.log("??????????????????2" + ((savingsAmount*savingsTerm)+sehu2));

    
    
    
  
    
    
    
	
	
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
	 
	 
    
  let str = '';
        str += '<div style="text-align:center;">';
        str += '<h3 style="margin-bottom:30px;"><strong style="color:#008485; margin-bottom:40px;">???????????????&nbsp;</strong>(??????)</h3>';
        
        str += '<ul style="margin-left:-30px">';
        str += '<li style="display:inline-block;"><h4>' + compareArray[0].SAVINGSNAME + '</h4>';
        
        str += '<div style="margin-top:10px; width:330px; height:400px; padding:15px; border-radius:20px; border:1px solid; background-color:#486A80; ">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">???????????? ?????????</span>';
            str += '<span style="font-size:25px; color:#FFDE00;">' + (Math.floor((savingsAmount*savingsTerm) + sehu11)).toLocaleString('ko-KR') + ' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">????????????</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') +' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">????????????(' + compareArray[0].SAVINGSTYPE + ', ??????)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu11)).toLocaleString('ko-KR') +' ???</span>';
        str += '</div>';
        
        str += '<hr style="margin-top:20px; margin-bottom:20px; color:white;">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">???????????? ??????</span>';
        str += '<span style="font-size:25px; color:#FFDE00;">' + (Math.floor((savingsAmount*savingsTerm) + sehu1)).toLocaleString('ko-KR') + ' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">????????????</span>';
        str += '<span style="color:#E8E8E8;">' + (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') + ' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">????????????(' + compareArray[0].SAVINGSTYPE + ', ??????)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu1)).toLocaleString('ko-KR') + ' ???</span>';
        str += '</div>';
        
        str += '</div><button style="width:330px; height:50px; border-radius:10px; margin-top:30px; background-color:#008485; color:white; border:none;">????????????</button>';
        str += '</li>';
        
        
        
        
        
        
        
        str += '<li style="display:inline-block;"><h4>' + compareArray[1].SAVINGSNAME + '</h4>';
        str += '<div style="margin-top:10px; width:330px; height:400px; padding:15px; border-radius:20px; border:1px solid; background-color:#486A80; ">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">???????????? ?????????</span>';
        str += '<span style="font-size:25px; color:#FFDE00;">'+ (Math.floor((savingsAmount*savingsTerm) + sehu22)).toLocaleString('ko-KR') +' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">????????????</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') +' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">????????????(' + compareArray[1].SAVINGSTYPE + ', ??????)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu22)).toLocaleString('ko-KR') +' ???</span>';
        str += '</div>';
        
        str += '<hr style="margin-top:20px; margin-bottom:20px; color:white;">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">???????????? ??????</span>';
        str += '<span style="font-size:25px; color:#FFDE00;">' + (Math.floor((savingsAmount*savingsTerm) + sehu2)).toLocaleString('ko-KR') + ' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">????????????</span>';
        str += '<span style="color:#E8E8E8;">' + (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') + ' ???</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">????????????(' + compareArray[1].SAVINGSTYPE + ', ??????)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu2)).toLocaleString('ko-KR') +' ???</span>';
        str += '</div>';
        
        str += '</div><button style="width:330px; height:50px; border-radius:10px; margin-top:30px; background-color:#008485; color:white; border:none;">????????????</button>';
        str += '</li>';
        
        str += '</ul>';
        str += '<button style="width:180px; height:50px; border-radius:10px; margin-top:30px; background-color:#868686; color:white; border:none;">????????????</button>';
        str += '</div>';

	 
	 
	 /*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  */
	 
	 
	 $('#comparemodalbody').append(str);
	  
	  
	  
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
function amountClick(input){
	console.log(input);

	$('input[name=firstAmount]').attr('value',input);
}



</script>
   
   
   
</body>
</html>
















