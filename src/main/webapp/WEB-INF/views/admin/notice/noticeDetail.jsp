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
                                            <h3><strong>공지사항 상세보기</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                            	<form action="aNinsert.do" method="post" encType="multipart/form-data">
												  <div class="form-group">
												 
											<br>
											
											<table align="center">
													<tr>
														<td>제목 : </td>														
														<td>${ n.noticeTitle} <hr></td>												
													</tr>
													<tr>
														<td>작성자 : </td>
														<td>${ n.memNum } <hr></td>
													</tr>
													<tr>
														<td>내용 : </td>
														<td>${ n.noticeContent } <hr></td>
													</tr>
													<tr>
														<td>첨부파일  &nbsp;</td>
														<td>
															<c:if test="${ !empty n.noticeFileName }">
																<a href="${ contextPath }/resources/admin/images/noticeupload/${ n.noticeFileName }" download="${ n.noticeFileName }">${ n.noticeFileName }</a>
															</c:if>												
														</td>
													</tr>
													<tr align="center">
														<td colspan="2">
															<c:url var="bupView" value="bupView.do">
																<c:param name="noticeNum" value="${ n.noticeNum }"/>
															</c:url>
															<c:url var="bdelete" value="bdelete.do">
																<c:param name="noticeNum" value="${ n.noticeNum }"/>
															</c:url>
															
															<c:if test="${ loginUser.memNum eq n.memNum }">
															<hr>
																<a href="${ bupView }">수정하기</a>
																<a href="${ bdelete }">삭제하기</a>
															</c:if>
														</td>
													</tr>
												</table>
												
													<br><br>
										
													<!-- 댓글 등록 부분 -->
													<table align="center" width="500" border="1" cellspacing="0">
														<tr>
															<td><textarea cols="55" rows="3" id="rContent"></textarea></td>
															<td><button id="rSubmit">등록하기</button></td>
														</tr>
													</table>
													<!-- 댓글 목록 부분-->
													<table align="center" width="500" border="1" cellspacing="0" id="rtb">
														<thead>
															<tr>
																<td colspan="2"><b id="rCount"></b></td>
															</tr>
														</thead>
														<tbody>
														
														</tbody>
										
														
													</table>	
															
												</div>
												</form>
                                           </div>
                                       </div>            
                                   </div> 
                               </div>
                           </div>
                       </div>
                   </section>
                </div>
<!-- 댓글 
		<script>
			$(function(){
				 getReplyList();
			});
			
			function getReplyList();
			
				var noitceNum= ${n.noticeNum};
			
				$.ajax({
					url:"rnlist.do",
					data:{noticeNum:${n.noticeNum}},
					dataType:"json",
					success:function(data){
						
					},
					error:function(){
						console.log("ajax 통신 실패");
					}
				})
			 
		</script>
 -->
</body>
</html>