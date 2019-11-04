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
		
										<div class="container" role="main">
										
										<div class="mb-3">
						
											<label for="title">제목</label>
											<input type="hidden" name="noticeNum" value="${n.noticeNum }">
											<input type="text" class="form-control" name="noticeTitle" id="noticeTitle" value=" ${ n.noticeTitle}" >
						
										</div>
														
						
										<div class="mb-3">									
											<label for="title">작성날짜</label>
									
											<input type="text" class="form-control" name="noticeEnrollDate" id="noticeEnrollDate" value=" ${n.noticeEnrollDate}" >
						
										</div>
		
						
										<div class="mb-3">
						
											<label for="reg_id">작성자</label>
						
											<input type="text" class="form-control" readonly  placeholder="관리자">
						
										</div>
						
										
						
										<div class="mb-3">
						
											<label for="content">내용</label>
						
											<textarea class="form-control" rows="5" name="noticeContent" id="noticeContent" >${n.noticeContent }</textarea>
						
										</div>
										
										<div class="mb-3">
						
											<label for="reg_id">첨부파일</label>
						
											<input type="file" name="uploadFile">
						
										</div>
						
															
														<div align="center">
															<button type="submit"  class="btn btn-primary">수정완료</button>&nbsp;&nbsp;		
															<button type="button"  onclick="location.href='aNoticeList.do';" class="btn btn-primary">목록으로</button>
																	
														</div>		
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