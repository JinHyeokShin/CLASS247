<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<title>FAQ List</title>

</head>

<body class="animsition">

	<c:import url="../common/aMenubar.jsp"/>
        <div class="page-container2">

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25">Member List</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>프로필사진</th>
                                                <th>아이디</th>
                                                <th class="text-right">닉네임</th>
                                                <th class="text-right">회원타입</th>
                                                <th class="text-right">탈퇴여부</th>
                                            </tr>
                                        	
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${list}" var="m">
                                            <tr>
                                               
                                                <td>${ m.memNum }</td>
                                                <td></td>
                                                 
                                        		<td>
												  <c:url value="aMemDetail.do" var="memDetail">
                                                	<c:param name="memNum" value="${ m.memNum }"/>
                                                  </c:url>
                                                  <a style="color:black" href="${memDetail}">${m.memId }</a></td>
                                                
                                                <td class="text-right">${ m.memNickName }</td>
                                                <td class="text-right">${ m.memType }</td>
                                                <td class="text-right">${ m.memStatus }</td>
                                               	
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
            

            </div>
 	<c:import url="../common/aImportJs.jsp"/>



</body>

</html>