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
                                    		
									
								<div class="container" role="main">
														
		
										<div class="mb-3">
						
											<label for="title">제목</label>
						
											<input type="text" class="form-control" name="noticeTitle" id="noticeTitle" value=" ${ n.noticeTitle}" readonly style="background:white">
						
										</div>
										
										<div class="mb-3">
						
											<label for="title">작성날짜</label>
						
											<input type="text" class="form-control" name="noticeEnrollDate" id="noticeEnrollDate" value=" ${n.noticeEnrollDate}" readonly style="background:white">
						
										</div>
										
										
										
						
										<div class="mb-3">
						
											<label for="reg_id">작성자</label>
						
											<input type="text" class="form-control" readonly  placeholder="관리자" style="background:white">
						
										</div>
						
										
						
										<div class="mb-3">
						
											<label for="content">내용</label>
						
											<textarea class="form-control" rows="5" name="noticeContent" id="noticeContent" readonly style="background:white">${n.noticeContent }</textarea>
						
										</div>
						
										
						
										<div class="mb-3">
						
											<label for="tag">첨부파일</label>
						
											<c:if test="${ !empty n.noticeFileName }">
												<a href="${ contextPath }/resources/admin/images/noticeupload/${ n.noticeFileName }" download="${ n.noticeFileName }">${ n.noticeFileName }</a>
											</c:if>	
						
										</div>
								
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


            </div>
    
            
            
	<c:import url="../common/aImportJs.jsp" />
</body>
</html>