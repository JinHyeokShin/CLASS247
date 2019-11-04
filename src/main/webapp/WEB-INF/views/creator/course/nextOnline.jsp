<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온라인 클래스 신청</title>
</head>
<body>

	<c:import url="../common/cMenubar.jsp"/>
	
			<div class="modal fade" id="preInfoModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="mediumModalLabel"><b>온라인 동영상 추가 관련 정보</b></h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>
					                                온라인 클래스 신청이 완료되었습니다. <br>
					                                클래스 관리 > 수강대기중인 클래스 > 해당 온라인클래스 클릭 -> 동영상 추가하기 <br>
					                               클래스 승인을 위해선 반드시 동영상 링크를 추가해주셔야 합니다! <br>
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="goSubmit()">확인</button>
						</div>
					</div>
				</div>
			</div>
	   		 <button type="button" data-toggle="modal" data-target="#preInfoModal" id="preInfoModalBtn"></button>	
	
	
	

	
	<div class="page-wrapper">
        <!-- FORM START -->
            <section class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30">
                                <i class="zmdi zmdi-book"></i>New Class
                            </h3>
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>온라인 클래스 상세정보</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                            <form id="onlineForm" action="onlineInsert.do" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <div class="form-group">
                                                    <label class=" form-control-label">* 준비물 여부</label><br>
                                                    <div class="form-check-inline form-check">
                                                        <label for="noMaterial" class="form-check-label ">
                                                            <input type="radio" id="noMaterial" name="materialCheck" value="" class="form-check-input" onchange="check()" checked>준비물 없음 &nbsp;&nbsp;
                                                        </label>
                                                        <label for="material" class="form-check-label">
                                                            <input type="radio" id="material" name="materialCheck" class="form-check-input" onchange="check()">준비물 추가
                                                        </label>
                                                    </div>
                                                    <small class="help-block form-text">&nbsp;수업에 필요한 준비물이 있다면 입력해주세요.</small>
                                                    <div class="form-group" id="meterialBox">
<!--                                                     	<table id="meterialTable">
                                                    		<tr> 
	                                                    		<td><input type="text" name="courseMaterial" placeholder="준비물 이름" class="form-control"><td>
	                                                    		<td><button type="button" onclick="add()" class="btn btn-primary btn-sm">추가</button><td>
	                                                    		<td></td>
	                                                    		<td width="300">&nbsp;&nbsp;&nbsp;<input type="number" name="courseMaterialPrice" placeholder="준비물 총 가격 입력" class="form-control" required>원</td>
                                                    		</tr>
                                                    	</table> -->
                                                    </div>
                                                </div>                                                
                                                <hr>
                                                
                                                <script>
                                                	//준비물 여부 선택에 따라 준비물 입력칸 보이기/숨기기
                                                	function check() {
                                                		
                                                		if( $('#material').is(":checked") ) {
                                                			
                                                			var $meterialTable = $('<table id="meterialTable">');
                                                  			var $tr = $('<tr>');
                                                			var $meName = $('<td>').html('<input type="text" name="courseMaterial" placeholder="준비물 이름" class="form-control">'); 
                                                    		var $meBtn = $('<td>').html('<buttn onclick="add()" class="btn btn-primary btn-sm">추가</button>');
                                                    		var $MaPrice = $('<td>').html('<input type="number" name="courseMaterialPrice" placeholder="준비물 총 가격 입력" class="form-control">원');
                                                    		$tr.append($meName);
                                                    		$tr.append($meBtn);
                                                    		$tr.append($MaPrice);
                                                    		$meterialTable.append($tr);
                                                    		$('#meterialBox').append($meterialTable);
                                                			
                                                		} else {
                                                			
                                                			$('#meterialTable').remove();
/*                                                 			$meterialTable.text('');
                                                			
                                                			var $tr = $('<tr>');
                                                			var $meName = $('<td>').html('<input type="text" name="courseMaterial" placeholder="준비물 이름" class="form-control">'); 
                                                    		var $meBtn = $('<td>').html('<buttn onclick="add()" class="btn btn-primary btn-sm">추가</button>');
                                                    		var $MaPrice = $('<td>').html('<input type="number" name="courseMaterialPrice" placeholder="준비물 총 가격 입력" class="form-control">원');
                                                    		$tr.append($meName);
                                                    		$tr.append($meBtn);
                                                    		$tr.append($MaPrice);
                                                    		$meterialTable.append($tr);
                                                    		
                                                			$('#meterialBox').css('display', 'none'); */
                                                		}
                                                		
                                                	}
                                                	
                                                	//준비물 추가버튼 무르면 입력칸 추가하기
                                                	function add(){
                                                		var $meterialTable = $('#meterialTable');
                                                		
                                                		var $tr = $('<tr>');
                                                		var $meName = $('<td>').html('<input type="text" name="courseMaterial" placeholder="준비물 이름" class="form-control">'); 
                                                		var $meBtn = $('<td>').html('<buttn onclick="add()" class="btn btn-primary btn-sm">추가</button>');
                                                		var $meBtn2 = $('<td>').html('<buttn onclick="delete_row(this)" class="btn btn-primary btn-sm">삭제</button>');
                                                		
                                                		$tr.append($meName);
                                                		$tr.append($meBtn);
                                                		$tr.append($meBtn2);
                                                		$meterialTable.append($tr);
                                                	}

                                                	  function delete_row(row) {
                                                		  var tr = $(row).parent().parent();
                                                		  tr.remove();
                                                		  }

                                                </script>
                                                
                                                <div class="form-group">
                                                    <label class=" form-control-label">* 수업 날짜/시간</label><br>
                                                    <div>
                                                    	<input type="date" name="courseStartDate" id="courseStartDate" class="form-control" style="width:200px; display:inline-block" required> ~ 
                                                    	<input type="date" name="courseEndDate" id="courseEndDate" class="form-control" style="width:200px;display:inline-block" required>
                                                    </div>  
                                                    <small class="help-block form-text">수업 시작일과 종료일을 입력해주세요(최소 1개월)</small>
                                                </div> 
                                                <hr> 
                                                <div class="form-group">
                                                	<label class=" form-control-label">* 온라인 수업 가격</label><br>
                                                	<input type="number" class="form-control" placeholder="수업의 총 가격을 입력하세요." name="coursePrice" style="width:300px; display:inline-block" required> 원
                                                </div>
                                                <div class="form-group">
                                                    <input type="hidden" name="categoryNum" value="${ co.categoryNum }">
                                                    <input type="hidden" name="creNum" value="${ co.creNum }">
                                                    <input type="hidden" name="courseTitle" value="${ co.courseTitle }">
                                                    <input type="hidden" name="courseContent" value="${ co.courseContent }">
                                                    <input type="hidden" name="courseKind" value="${ co.courseKind }"> 
                                                    <input type="hidden" name="courseLevel" value="${ co.courseLevel }">
                                                </div>  
                                                <hr>
                                                <div class="form-group">
                                                    <div class="col col-md-5">
                                                        <label for="text-input" class=" form-control-label">* 클래스 커버 사진</label>
                                                        <input class="" type="file" name="coverImage" onchange="loadImg(this)" required>
                                                    </div>
                                                    <div class="col-12 col-md-9" style="height:200px">
                                                        <small class="help-block form-text">클래스를 대표할 커버사진을 추가하세요.</small>
                                                        <div style="width:40%; height:40%; margin-top: 10px; text-align: center">
                                                            <img id="imgBox" src="resources/creator/images/bg-title-02.jpg" alt="cover" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div style="display:none">
		                                        	<button type="submit" id="submitBtn" class="btn btn-primary btn-sm" >제출</button>
		                                        </div>
		                                        <div style="text-align:center">
		                                            <button type="button" class="btn btn-primary btn-sm" onclick="info();">
		                                           		클래스 신청하기
		                                            </button>
		                                            <button type="button" class="btn btn-secondary btn-sm" onclick="history.back()">
		                                          		뒤로가기
		                                            </button>		                                            
		                                            <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='<%= request.getContextPath() %>/cMainView.do'">
		                                          		취소하기
		                                            </button>
		                                        </div>
                                            </form>
                                        </div>
                                    </div>            
                                </div> 
                            </div>
                        </div>
                    </div>
                </section>
                
                <script>
                	function info(){
                		
                		$('#preInfoModalBtn').click(); 
                		
                	}
                	
                	function goSubmit(){
                		
                		$('#submitBtn').click();
                	}
                
                
                	function loadImg(value){
                		
                		if(value.files && value.files[0]) {
                			var reader = new FileReader();
                			reader.onload = function(e) {
                				$('#imgBox').attr("src", e.target.result);
                			}
                			reader.readAsDataURL(value.files[0]);
                		}
                	}
                	
                	$(function() {
                		$('#courseStartDate').on("change", function(){
                			var start = $('#courseStartDate').val();
                			var startDate = new Date(start);
                			var today = new Date();
                			if(startDate < today) {
                				alert("오늘 이전 날짜는 입력이 불가합니다.");
                				$('#courseStartDate').val('');
                				$('#courseStartDate').focus();
                			} 
                		});
                		
                		
                		$('#courseEndDate').on("change", function(){
                			var start = $('#courseStartDate').val();
                			var end = $('#courseEndDate').val();
                			var endDate = new Date(end);
                			var startDate = new Date(start);
                			var newDate = startDate.setMonth(startDate.getMonth() + 1);
                			
                			if(endDate < newDate) {
                				alert("클래스 시작날로 부터 최소 1개월 이상 가능합니다.");
                				$('#courseEndDate').val('');
                				$('#courseEndDate').focus();
                			} else if(start == '') {
                				alert('시작일을 먼저 선택해주세요.');
                				$('#courseEndDate').val('');
                				$('#courseStartDate').focus();
                			} 
                		});

                	})
                	
                
                </script>


            <!-- PAGE CONTAINER-->
            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->	
		</div>


</body>
</html>