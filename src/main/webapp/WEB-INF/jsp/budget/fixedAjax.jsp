<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tr>
                          
                        <!-- 고정비 명 -->
                        <th scope="col" width="40%">
                        
                            <p> ${insertList[0].fixedName}</p>
                           
                        
                            <!-- <input id="expenseInfo" class="form-control" type="text"> -->
                            <!-- <input type="text" id="fixedName" name="fixedName" class="form-control"> -->
                            
                            
                        </th>
                          

                          <!-- 고정비 이체일 -->
                       <%--    <th scope="col" width="20%"> 
                          
                          
                          <p> ${insertList[0].fixedDate}일</p> --%>
                          
                         <%-- 
                          <h4 style="font-size: 20px; display:inline;">매달</h4>&nbsp;&nbsp;
                            <select name="fixedDate" id="fixedDate" 
                                     style="width:50px; background:white; color:#008485; text-align:center; height: 37px;">
                               <c:forEach begin="1" end="31" var="x">
                                    <option>
                                        <c:out value="${x}" /> 
                                    </option><br>
                               </c:forEach>
                            </select>
                            <h4 style="font-size: 20px; display:inline;">일</h4> --%>
                            
                       <!--    </th> -->


                          <!-- 고정비 금액 -->      
                          <th scope="col">
                            <div class="row">
                                <div class="col-md-9" >
                                
                                    <p> ${insertList[0].fixedCost}원</p>
                                    <!-- <input type="text" id="fixedCost" name="fixedCost" placeholder="(원)" class="form-control" style="color:#008485; text-align:center;"> -->
                                </div>
                                
                                <div class="col-md-2" id="btn-add-div">
                                   <%--  <img id="btn-add" src="${pageContext.request.contextPath}/resources/img/My_plus.png" 
                                         style="width:38px; height:38px;"/> --%>
                                <!-- <button type="button" >추가</button> -->
                                
                                 
                             <!--    <input type="submit" id="fixedSettings" value="확인" onclick="return fixedDate()"> -->
                             <input type="button" id="fixedReSettings" value="삭제">
                                <!-- <input type="button" id="fixedSettings" value="추가"> -->
                                
                                </div>
                            </div>
                          </th>
                          
                          
                        </tr>
              
              
              
              
              
              
              
              
              
              
   