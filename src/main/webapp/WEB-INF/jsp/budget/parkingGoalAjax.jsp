<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="border-box" id="autoFromParkingSet" 
    style="margin-left:410px; text-align:center;  border:3px solid; border-color:#008485; border-radius:20px; width:900px;">
        <h3 style="margin-top:20px; margin-bottom:10px;">파킹 주머니 자동 이동 설정</h3>
        <p>남은 잔액을 모두 끌어모아 새는 돈 없이 종잣돈 만들기가 가능합니다</p>
        
        <br>
        <div class="row" style="margin:0 auto;">
            <!-- <div class="col-4">파킹 주머니 목표금액 : </div> -->
            
            <div style="margin:0 auto; display:inline;">
	            <p style="font-size:18px; margin:0 auto; display:inline;">파킹 주머니 목표 금액 : </p>
	
	            <p style="font-size:23px; margin:0 auto; display:inline;">
	               "<fmt:formatNumber value="${updateData.parkingLimit}" pattern="#,###"/>&nbsp;원"
	            </p> 
            
            </div>
            
            <div style="margin:0 auto; display:inline;">
	            <p style="font-size:18px; display:inline;">파킹 주머니 이동 날짜 : </p>
	             
	            <p style="font-size:20px; display:inline;">    
	                예산 사용 마지막날 ("매달 ${incomeMap.incomeDate} 일")
	            </p>
            </div>
                
            <br><br>
            <div>
                
                 
            <div style="margin-left:3px; margin-bottom:20px; margin-top:20px;">
                <img src="${pageContext.request.contextPath}/resources/img/My_!orange2.png" 
                     style="width:40px; height:40px; display:inline;"/>
                <p style=" display:inline;">&nbsp;목표 금액이 모일 때까지 파킹 주머니는 입금만 가능, 출금은 불가합니다</p>
            </div>  
         
                <input type="button" id="parkingSetBtn" value="수정"
                       style="background-color:#FA6400; margin-bottom:20px; color:white; border:none; border-radius:10px; width:120px; height:45px;">
            </div>
            
        </div>  
    </div>