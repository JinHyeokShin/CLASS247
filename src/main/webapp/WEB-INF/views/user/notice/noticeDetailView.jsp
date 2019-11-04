<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table tr{
		height:30px;
	}
</style>
<body>
	<c:import url="../common/menubar.jsp"/>
	
	<section class="special_cource padding_top" style="padding-top:100px">
	<div class="container" style="padding-bottom: 40px">
			<hr>
			<h1>CLASS 247</h1>
			<hr>
			<div class="row justify-content-left">
				<div class="col-xl-5">
					<div class="section_tittle text-left">
						<p></p>
						<h2>${ n.noticeNum }번 공 지 사 항</h2>
					</div>
				</div>
			</div>
		<table align="center" border="1px solid black" style="width:900px;" align="center">
			<tr style="color:white;background-color:#954CBC;">
				<th width="5%">번호</th>
				<th width="60px">작성자</th>
				<th width="90px">작성된 날짜</th>
				<th width="90px">수정된 날짜</th>
				<th width="60px">조회수</th>
			</tr>
			<tr>
				<td>${ n.noticeNum }</td>
				<td>관리자</td>
				<td>${ n.noticeEnrollDate }</td>
				<td>${ n.noticeModifyDate }</td>
				<td>${ n.noticeCount }</td>
			</tr>
			<tr>
				<th colspan="2" style="color:white;background-color:#954CBC;">제목</th>
				<td colspan="4">${ n.noticeTitle }</td>
			</tr>
			<tr >
				<td colspan="6" align="left" height="400px" border="0px;">
					<textarea style="width:100%; height:100%; resize: none;"readonly>&nbsp;${ n.noticeContent }</textarea>
				</td>
			</tr>
		</table>
		
		</div>
		
		<br><br>
		
		<table align="center" style="width:900px;" align="center" border="1" cellspacing="0">
			<tr>
				<td><textarea cols="55" rows="3" id="rContent"></textarea></td>
				<td><button id="rSubmit">등록하기</button></td>
			</tr>
		</table>
		<!-- 댓글 목록 부분-->
					<table class="table table-borderless table-striped table-earning" align="center" style="width:900px;" align="center" border="1" cellspacing="0" id="rtb">
														
						<tbody class="ttbody">
														
							</tbody>
								<tfoot>
								<tr>
									<td colspan="5" id="footTd" align="center"></td>
								</tr>
							<tfoot>
					</table>
					<div align="center">
						<a href="noticeListView.do" class="btn_1" style="color:white;">돌아가기</a>
						<a href="home.do" class="btn_1" style="color:white;">홈으로</a>
					</div>	
            <script>
		$(function(){
			getReplyList(rPage);
			
		});
		
		// 댓글작성
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
		
		
		// 페이징바
		function rPage(num) {
			
			var currentPage = num;
			
			getReplyList(currentPage);
			
		}
		

		
		// 리스트 가지고오기
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
				type:"post",
				success:function(data){
					
					
					var $tableBody = $("#rtb tbody"); // <tbody></tbody>
					
					if(data.nrList.length > 0){ // 존재하는 댓글 있음
						$tableBody.html("");
					
							$.each(data.nrList, function(index, value){
								
								var $tr = $("<tr id='n"+value.nReplyNum+"'>");
								var $profile = $("<td width='50'>");
								var $profileDiv = $("<div class='img'>");
								var $rNReply = $("<td id="+value.nReplyNum+" >")
								
								
								var $rWriter = $("<td width='100'>").text(value.memNickname);
								
								var	$rContent = $("<td>");
								var brs = "";
								
								for(var i = 0; i < value.nReplyDepth-1 ; i++) {
									
									brs = brs+'\u00A0\u00A0';
									
								}
								
								console.log(brs);
								
								$rNReply.text(brs + value.nReplyContent)
								$rContent.append($rNReply);
								
								//$rContent.text(brs + value.nReplyContent).append($rNReply);
								
								
								if(value.nReplyEnrollDate == value.nReplyModifyDate) {
									var $rCreateDate = $("<td width='200'>").text(value.nReplyEnrollDate);
								
								}else{
									var $rCreateDate = $("<td width='200'>").text(value.nReplyModifyDate + '(수정됨)');
								}
								
								var $deleteTd = $("<td width='50' align='center'>");
								
								var $updateA;
								var $deleteA;
								
								if(value.nReplyStatus == 'Y') {
									$deleteA = $("<div id=d"+value.nReplyNum+" class='rD'>").text("[삭제]");
									$updateA = $("<div id=d"+value.nReplyNum+" class='rU'>").text("[수정]")
								}
								
								$profileDiv.prepend('<img src='+value.memProfileName+'>');
								$profile.append($profileDiv);
								
								
								$tr.append($profile);
								$tr.append($rWriter);
								$tr.append($rContent);
								
								var $rreplySpan;
								
								
								
								if(value.nReplyStatus == 'Y') {
									$rreplySpan = $("<td class='rNRDiv' id='r"+value.nReplyNum+"'>").text("[답글]");
									
								}else{
									$rreplySpan = $("<td class='rNRDiv' id='r"+value.nReplyNum+"'>")
								}
								
								$tr.append($rreplySpan);
								$tr.append($rCreateDate);
								$deleteTd.append($updateA);
								$deleteTd.append($deleteA);
								$tr.append($deleteTd);
								
								$tableBody.append($tr);
							});
							
					}else{ // 존재하는 댓글 없음
						var $tr = $("<tr>");
						var $rCountent = $("<td colspan='3'>").text('등록된 댓글이 없습니다.');
						
						$tr.append($rCountent); // <tr><td>~~</td></tr>
						
						
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
		
		// 대댓글 폼 보여주기
		$(".ttbody").on("click", ".rNRDiv", function(e) {
			
			$(".nnrreply").html("");
			
		
			
			if(e.target.textContent == '[답글]') {
				
				$(".nnrreply").remove();
				
				var rNum = "#n"+ (e.target.id).substring(1);
						
				var $tr = $("<tr class='nnrreply'>");
				var $td1 = $("<td colspan='5'>");
				
				var $rtextarea = $("<textarea cols='55' row='3' id='rContent2'>");
				
				var $td2 = $("<td>");
				var $rButton = $("<button id='rSubmit2'>").text('등록하기');
				
				$td1.append($rtextarea);
				$td2.append($rButton);
				
				$tr.append($td1);
				$tr.append($td2);
				$(rNum).after($tr);
				
				
				$.each($(".rU"), function(index, value) {
		
					var id = value.id.substring(1);
					
					if($("#r"+id).html() == "[취소]") {
						$("#r"+id).html("[답글]");
					};
					
					if($("#d"+id).html() == "[취소]") {
						$("#d"+id).html("[수정]");
					}
					
					var nid = "#n"+id;
					
					
					if($(nid).css("display") == "none") {
				
						
						$(nid).show();
					}
					
				});
				
				
				$(e.target).html("[취소]");
				
			}else{
				
		
				$(".nnrreply").html("");
				
				$(e.target).html("[답글]");
			}
		});
		
		
		
		// 대댓글 작성
		$(".ttbody").on("click", "#rSubmit2", function(e){
			var rContent = $("#rContent2").val();
			
			var memNum = ${n.memNum};
				
			var noticeNum= ${n.noticeNum};
			
			var parentId = ($('#rContent2').parent().parent().prev().attr('id')).substring(1);
			
			
			$.ajax({
				url:"aRNRInsert.do",
				data:{rContent:rContent, memNum:memNum, noticeNum:noticeNum, parentId:parentId},
				type:"post",
				success:function(data){
					var $tableBody = $("#rtb tbody");
					var currentPage;
					
	
					
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
			
			
			
		});
		
		
		// 댓글 수정
		$(".ttbody").on("click", "#rSubmit3", function(e){
			var rContent = $("#rContent2").val();
			
			var nReplyNum = ($('#rContent2').parent().parent().prev().attr('id')).substring(1);
			
			
			$.ajax({
				url:"aRNRUpdate.do",
				data:{rContent:rContent, nReplyNum:nReplyNum},
				type:"post",
				success:function(data){
					var $tableBody = $("#rtb tbody");
					var currentPage;
					
	
					
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
			
			
			
		});
		
		
		
		// 삭제하기
		$(".ttbody").on("click", ".rD", function(e) {
			
			var nReplyNum = (e.target.id).substring(1);
			
			
			$.ajax({
				url:"aNRDelete.do",
				data:{nReplyNum:nReplyNum},
				type:"post",
				success:function(data){
					var $tableBody = $("#rtb tbody");
					var currentPage;
					
					console.log(data);
					
					if(data == "success"){
						$tableBody.html("");
						getReplyList(currentPage); // 댓글 등록 성공시 다시 댓글 리스트 불러오기
					}else{
						alert("댓글 작성 실패 !");
					}
				},
				error:function(){
					console.log("서버와의 통신 실패");
				}
			
			});
			
		});
		
		
		// 수정하기
		$(".ttbody").on("click", ".rU", function(e) {
			
			var tempText;
			
			var rNum = "#n"+(e.target.id).substring(1);
			
			$(".nnrreply").html("");
					
			if(e.target.textContent == '[수정]') {
				
				var tempId = "#"+rNum.substring(2);
				
				var $tr = $("<tr class='nnrreply'>");
				var $td1 = $("<td colspan='5'>");
				
				var $rtextarea = $("<textarea cols='55' row='3' id='rContent2'>");
				
				var $td2 = $("<td>");
				var $rButton = $("<button id='rSubmit3'>").text('등록하기');
				
				$td1.append($rtextarea);
				$td2.append($rButton);
				
				$tr.append($td1);
				$tr.append($td2);
				
				$(rNum).after($tr);
				
				$.each($(".rU"), function(index, value) {
					
					var id = value.id.substring(1);
					
					if($("#r"+id).html() == "[취소]") {
						$("#r"+id).html("[답글]");
					};
					
					if($("#d"+id).html() == "[취소]") {
						$("#d"+id).html("[수정]");
					}
					
					var nid = "#n"+id;
					
					
					if($(nid).css("display") == "none") {
				
						
						$(nid).show();
					}
					
				});
				
				$(tempId).parent().parent().css("display", "none");
				
				
				
				$(e.target).html("[취소]");

				
			}else{
				
				$(".nnrreply").html("");
				
				$(e.target).html("[수정]");
				
			}
			
		});
		
		
			 
		</script>
</body>
</html>