<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
<style>
		#test2{
			background:white !important;
			border: 1px solid black;
		}
		#listbutton{
			 align:right !important;
		}
	 	
	 	p{
	 		text-align:right
	 	}
</style>

<!--
<style>
table.type10 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    margin: 20px 10px;
}
table.type10 thead th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
    background: gray;
    margin: 20px 10px;
}
table.type10 tbody th {
    width: 150px;
    padding: 10px;
}
table.type10 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
}
table.type10 .even {
    background: #fdf3f5;
}
</style>
-->


</head>

  <body class="animsition">

            <c:import url="../common/aMenubar.jsp" />               
           	<div class="page-container2">

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">notice  Detail</h2>
                                    <div class="table-responsive table--no-card" id="test2">
                                    
						
						
									<!--
									<div id="test">
										<table>
											<br>
											<th style="witdh: 200px;">제목 : </th>
											<th style="color: black; width: 80%;">${ n.noticeTitle}</th>
											<th>날짜 : </th>
											<th style="width: 130px; color: black; ">${n.noticeEnrollDate}</th>
										</table>
										
										
										<hr>
										<table>
											<th style=" width: 83%;"></th>									
											<th style="color: black;"> 관리자  </th>
											<th></th>
											<th>${n.noticeContent }</th>									
										</table>
										<hr>
									-->
									
									
									<table style="width:100%">
										      <thead style="border:1px;">
										        <tr>
										          
										          <th>제목 : ${ n.noticeTitle}</th>
										          <th width="750px"></th>
										          <th></th>
										          <th style="color: black;">날짜 : ${n.noticeEnrollDate}</th>
										        </tr>
										      </thead>
										      <tbody>
										        <tr>
										          <th></th>
										          <td></td>										         
										          <td></td>
										          <td style="color: black;">관리자</td>
										        </tr>
										        <tr>										         
										          <td rowspan="4">${n.noticeContent }</td>
										          <td rowspan="4"></td>
										        </tr>
										        <tr>
										          <th></th>
										          <td></td>
										          <td></td>
										          <td></td>
										        </tr>
										      </tbody>										   						     
									</table>
									 
										  
									<!--
										  <table class="type10" width="98%">
											    <thead>
											    <tr>
											    	<th scope="cols" >작성날짜 : ${n.noticeEnrollDate}</th>
											        <th scope="cols" >제목 : ${ n.noticeTitle}</th>											        
											    </tr>
											    </thead>
											    <tbody>
											    <tr>
											        <th scope="row"></th>
											        <td scope="row"></td>
											    </tr>
											    <tr>
											        <th scope="row" class="even">내용 : </th>
											        <td style="background:white">${n.noticeContent }</td>
											    </tr>
											    <tr>
											        <th scope="row"></th>
											        <td scope="row"></td>
											    </tr>
											    </tbody>
											</table>  
										-->
																
										<div id="view-menu" align="center">
															<c:url var="bupView" value="aNupdate.do">
																<c:param name="noticeNum" value="${ n.noticeNum }"/>
															</c:url>
															<c:url var="bdelete" value="aNdelete.do">
																<c:param name="noticeNum" value="${ n.noticeNum }"/>
															</c:url>
															
															<c:if test="${ loginUser.memNum eq n.memNum }">						
																<a href="${ bupView }"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/calendar/btn_modify.gif" alt="수정" /></a>
																<a href="${ bdelete }"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/calendar/btn_delete.gif" alt="삭제" /></a>													
															</c:if>
																		
										</div>		
									
														
														<p>
															<a>
																<button type="button" onclick="location.href='aNoticeList.do';" class="button" id="listbutton">목록으로</button>
															</a>
														</p>													
									
									
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
    
            
            
	<c:import url="../common/aImportJs.jsp" />
</body>
</html>