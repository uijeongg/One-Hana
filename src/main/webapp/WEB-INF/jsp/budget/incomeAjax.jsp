<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


        <h3>월 급여</h3>
        <p>한달 급여를 입력하면 정확한 예산 관리가 가능합니다</p> 
    
          <div style="font-size:20px; display:inline;">매달 ${updateList.incomeDate}일에 급여</div>&nbsp;&nbsp;
          <div id="updateIncome" style="font-size: 20px; display:inline; color:#008485; font-weight:bold;">${updateList.income}</div> 
          원이 들어옵니다.
          <div>예산 사용 시작일은 매달 ${incomeMap.incomeDate +1} 일 입니다.</div>
          
        <%--  <input disabled type="text" id="income3" class="input-cal" value="${updateList.income}" style="border: none;"> --%>
     