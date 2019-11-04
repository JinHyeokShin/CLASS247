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
	
<style>
	td {
    display: table-cell;
    vertical-align: Text-top;
	width:30px;
	}


</style>
</head>
<body>


	<c:import url="../common/aMenubar.jsp"/>
    <div class="page-container2" style="">
   
                  <!-- FORM START -->
            <section class="main-content">
            
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30">
                                <i class="fas fas fa-user"></i>관리자 게시판
                            </h3>
                            <div class="row">
                            
                         
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>질문사항</strong></h3>
                                        </div>
                                        <div class="card-body card-block">                                           
											<div class="form-group">											 										
											<table style="width:100%">
													<tr>
														<td>제목 : </td>
														<td><input type="text" name="inquiryTitle" rows="7" value="${ ai.inquiryTitle}" readonly><hr width="100px"></td>
													<tr>
														<td>작성자 : </td>
														<td>${ ai.creNum } <hr width="100px"></td>
													</tr>
													<tr>
														<td>내용 : </td>
														<td>${ ai.inquiryContent } <hr width="80%"></td>
													</tr>
													<tr>
														<td>첨부파일  &nbsp;</td>													
														<td>
															<c:if test="${ !empty n.noticeFileName }">
																<a href="${ contextPath }/resources/admin/images/noticeupload/${ n.noticeFileName }" download="${ n.noticeFileName }">${ n.noticeFileName }</a>
															</c:if>												
														</td>
													</tr>											
												</table>										
											</div>												
                                          </div>      
                                       </div>            
                                   </div> 
                               </div>                          
                            <div class="row" id="answer">
                             <div class="col-lg-10">
                               <div class="card">
                                        <div class="card-header">
                                            <h3><strong>관리자 답변 작성</strong></h3>
                                        </div>                      
                               	<div class="card-body card-block">                                									
											<div class="card-body card-block">
                                            	<form action="aIinsert.do" method="post">
												  <div class="form-group">
													<table  style="width:100%">																								
														<tr>
															<input type="hidden" name="inquiryNum" value="${ ai.inquiryNum }"/>
															<td>작성자 : </td>
															<td><input type="text" readonly value="관리자"><hr width="100px"></td>
														</tr>																									
														<tr>
															<td>내용 : </td>
															<td>
																<p>
																<textarea style="width:80%; height:50px" name="inquiryContent">${ai.answerContent}</textarea>
																</p>
																<hr width="80%">																
															</td>
														</tr>
														<tr>
															<td colspan="2" align="center">	
																<button type="submit" class="btn btn-primary">등록하기</button>&nbsp;&nbsp;
																<button type="button" onclick="location.href='adminInquriyList.do'; "class="btn btn-primary">목록으로</button>
															</td>
														</tr>	
													</table>
													</div>
												</form>
                                           	</div>
		                               	</div>
		                              </div>                                          
		                           </div>
		                       </div>
                  
		                      </div>		                    
		                      </div>
		                   </section>
		                </div>
	         
		                
		                
	<c:import url="../common/aImportJs.jsp" />
</body>
</html>