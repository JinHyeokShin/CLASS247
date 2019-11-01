<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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
                                          				
			<form action="aNupdatedetail.do" method="post">
			<div>
									<table style="width:100%">
							 
							
						
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
													
										      <thead style="border:1px;">
										        <tr>
										          <th style="color: black;">제목 :
										          <input type="hidden" name="noticeNum" value="${n.noticeNum }">
										          <input type="text" name="noticeTitle" value="${ n.noticeTitle }"><hr width="80px">
										          </th>
										          <th></th>
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
										          <td rowspan="4"><input type="text" style="width:80%; height:100px" name="noticeContent" value="${n.noticeContent }"></td>
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
														
															
																<input type="submit" value="수정완료">		
																<button type="button" onclick="location.href='aNoticeList.do';" class="button">목록으로</button>
															
														
														</div>												
									
										     </form>			
											
                                      
                                 
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