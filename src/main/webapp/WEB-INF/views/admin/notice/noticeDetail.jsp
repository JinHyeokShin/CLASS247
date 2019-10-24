<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>

 <c:import url="../common/aMenubar.jsp"/>
    <div class="page-container2" style="">
   
                  <!-- FORM START -->
            <section class="main-content">
            
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>공지사항 상세보기</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                     
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
														
														<tbody>
														
														</tbody>
														<tfoot>
															<tr>
																<td colspan="5" id="footTd" align="center"></td>
															</tr>
														<tfoot>
													</table>	
															
												</div>
										
                                           </div>
                                       </div>            
                                   </div> 
                               </div>
                           </div>
                       </div>
                   </section>
                </div>
            <script>
		$(function(){
			getReplyList(rPage);
			
			
		});
		
		$("#rSubmit").on("click",function(){
			var rContent = $("#rContent").val();
			if(rContent != "") {
				var memNum = ${n.memNum};
				
				var noticeNum= ${n.noticeNum};
				
				$.ajax({
					url:"aNRInsert.do",
					data:{rContent:rContent, memNum:memNum, noticeNum:noticeNum},
					type:"post",
					success:function(data){
						var $tableBody = $("#rtb tbody");
						var currentPage;
						
						console.log(data);
						
						if(data == "success"){
							$tableBody.html("");
							getReplyList(currentPage); // 댓글 등록 성공시 다시 댓글 리스트 불러오기
							$("#rConteent").val();
						}else{
							alert("댓글 작성 실패 !");
						}
					},
					error:function(){
						console.log("서버와의 통신 실패");
					}
				
				});
			}
		});
		
		
		function rPage(num) {
			
			var currentPage = num;
			
			getReplyList(currentPage);
			
		}
		
		
		function getReplyList(rPage){
			
			var currentPage;
			
			if(rPage == null) {
				currentPage = 0;
			}else{
				currentPage=rPage;
			}
			
			
			var noticeNum= ${n.noticeNum};
			
			$.ajax({
				url:"noticeReplyList.do",
				data:{noticeNum:noticeNum, currentPage:currentPage},
				success:function(data){
					
					
					var $tableBody = $("#rtb tbody"); // <tbody></tbody>
					
					if(data.nrList.length > 0){ // 존재하는 댓글 있음
						$tableBody.html("");
					
							$.each(data.nrList, function(index, value){
								
								var $tr = $("<tr>");
								var $profile = $("<td width='50'>");
								var $profileDiv = $("<div>");
								var $rNReply = $("<a onlick='rNReply("+value.nReplyNum+")'>").text("[답글]");
								
			
								var $rWriter = $("<td width='100'>").text(value.memNickname);
								
								var	$rContent = $("<td>");
								var brs = "";
								
								for(var i = 0; i < value.nReplyDepth-1 ; i++) {
									
									brs = brs+'\u00A0\u00A0';
									
								}
								
								console.log(brs);
								
								$rContent.text(brs + value.nReplyContent).append($rNReply);
								
								
								if(value.nReplyEnrollDate == value.nReplyModifyDate) {
									var $rCreateDate = $("<td width='200'>").text(value.nReplyEnrollDate);
								
								}else{
									var $rCreateDate = $("<td width='200'>").text(value.nReplyModifyDate + '(수정됨)');
								}
								
								var $deleteTd = $("<td width='50' align='center'>")
								
								var $deleteA = $("<a onclick='rdelete("+value.nReplyNum+")'>").text("X");
								
								$profileDiv.prepend('<img src='+value.memProfileName+'>');
								$profile.append($profileDiv);
								
								
								$tr.append($profile);
								$tr.append($rWriter);
								$tr.append($rContent);
								$tr.append($rCreateDate);
								$deleteTd.append($deleteA);
								$tr.append($deleteTd);
								
								$tableBody.append($tr);
							});
							
					}else{ // 존재하는 댓글 없음
						var $tr = $("<tr>");
						var $rCountent = $("<td colspan='3'>").text('등록된 댓글이 없습니다.');
						
						$tr.append($rCount); // <tr><td>~~</td></tr>
						
						$tableBody.append($tr);
					}
					
					console.log(data.rpi);
					
					$("#footTd").html("");
					
					for(var i = data.rpi.startPage ; i <= data.rpi.endPage ; i++) {
						
						var $aNum;
						
						if(i == data.rpi.currentPage) {
							$aNum = $("<a style='padding-right:3em'>").text(i);
						}else{
							$aNum = $("<a style='padding-right:3em' onclick='rPage("+i+")'>").text(i);
						}
						
						
						
						$("#footTd").append($aNum);
	
						
							
					}
					
					
					
					
					
					
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
		}
			 
		</script>

</body>
</html>