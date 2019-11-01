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
		                       
		                       
		                    
		                   <!--  
		                   <div class="row">
	                        <div class="col-lg-12">
	                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
	                                    <div class="au-card-title" style="background-image:url('images/bg-title-02.jpg');">
	                                        <div class="bg-overlay bg-overlay--blue"></div>
	                                        
	                                        <h3>
	                                           <i class="fas fa-users"></i> 문의사항</h3>
	
	                                    </div>
	                                    <div class="au-inbox-wrap js-inbox-wrap">	                            			
	                                        <div class="au-chat">
	                                            <div class="au-chat__title">
	                                                <div class="au-chat-info">
	                                                    <div class="avatar-wrap online">
	                                                        <div class="avatar avatar--small">
	                                                            <img src="images/icon/avatar-02.jpg" alt="John Smith">
	                                                        </div>
	                                                    </div>
	                                                    <span class="nick">
	                                                    	<input type="hidden" name="inquiryNum" value="${ ai.inquiryNum }"/>
	                                                        <a href="#">${ ai.creNum }</a>
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="au-chat__content">
	                                                <div class="recei-mess-wrap">
	                                                    <span class="mess-time">${ai.inquiryEnrollDate}</span>
	                                                    <div class="recei-mess__inner">
	                                                        <div class="avatar avatar--tiny">
	                                                            <img src="images/icon/avatar-02.jpg" alt="John Smith">
	                                                        </div>
	                                                        <div class="recei-mess-list">
	                                                            <div class="recei-mess">${ ai.inquiryContent }</div>
	                                                            
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                                <div class="send-mess-wrap">
	                                                    <span class="mess-time">${ai.answerEnrollDate}</span>
	                                                    <div class="send-mess__inner">
	                                                        <div class="send-mess-list">
	                                                            <div class="send-mess">${ ai.answerContent }</div>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="au-chat-textfield">
	                                                <form class="au-form-icon">
	                                                    <input class="au-input au-input--full au-input--h65" type="text" placeholder="Type a message">
	                                                    <button class="au-input-icon" type="submit">
	                                                    		등록                                                       
	                                                    </button>
	                                                    <button type="button" onclick="location.href='adminInquriyList.do';" class="button">목록으로</button>
	                                                </form>	                                                	                                                
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div> 
                       		 </div>
		                       
		                        -->
		                       
		                      </div>		                    
		                      </div>
		                   </section>
		                </div>
	         
		                
		                
	<c:import url="../common/aImportJs.jsp" />
</body>
</html>