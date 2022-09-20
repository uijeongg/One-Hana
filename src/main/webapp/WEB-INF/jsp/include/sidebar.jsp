<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
    <div class="container-fluid sidepanel-inner d-flex flex-column"
      style="width: 20%; float: left; margin-top:30px;">
      <div style="padding-left: 30px;">
         <h3 style="color: #008485; margin-bottom: 10px;">My One HANA</h3>
         <hr style="width: 200px; height: 5px; background-color:#008485;">
         <div style="color: grey;">내 주머니</div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath }/retire/retireForm.do"
               style="color: grey;">내 소비 현황</a>
         </div>
         <hr style="width: 200px;">
         <h6 style="color: black">내 투자성향</h6>
         <hr style="width: 200px;">
         <div style="color: grey">맞춤 금융 상품 추천</div>
         <hr style="width: 200px;">
      </div>
   </div>