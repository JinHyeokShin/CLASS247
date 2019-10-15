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
                                            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <div class="form-group">
                                                    <label class=" form-control-label">준비물 여부</label><br>
                                                    <div class="form-check-inline form-check">
                                                        <label for="noMaterial" class="form-check-label ">
                                                            <input type="radio" id="noMaterial" name="courseMaterial" value="" class="form-check-input" onchange="check()">준비물 없음 &nbsp;&nbsp;
                                                        </label>
                                                        <label for="material" class="form-check-label">
                                                            <input type="radio" id="material" name="courseMaterial" value="" class="form-check-input" onchange="check()">준비물 추가
                                                        </label>
                                                    </div>
                                                    <small class="help-block form-text">&nbsp;수업에 필요한 준비물이 있다면 입력해주세요.</small>
                                                    <div class="form-group" id="meterialBox" style="display:none">
                                                    	<table id="meterialTable">
                                                    		<tr> 
	                                                    		<td><input type="text" placeholder="준비물 이름" class="form-control"><td>
	                                                    		<td><button type="button" onclick="add()" class="btn btn-primary btn-sm">추가</button><td>
	                                                    		<td></td>
	                                                    		<td width="300">&nbsp;&nbsp;&nbsp;<input type="number" placeholder="준비물 총 가격 입력" class="form-control" required>원</td>
                                                    		</tr>
                                                    	</table>
                                                    </div>
                                                </div>                                                
                                                <hr>
                                                
                                                <script>
                                                	//준비물 여부 선택에 따라 준비물 입력칸 보이기/숨기기
                                                	function check() {
                                                		
                                                		if( $('#material').is(":checked") ) {
                                                			$('#meterialBox').css('display', 'inline');
                                                		} else {
                                                			var $meterialTable = $('#meterialTable');
                                                			$meterialTable.text('');
                                                			
                                                			var $tr = $('<tr>');
                                                			var $meName = $('<td>').html('<input type="text" placeholder="준비물 이름" class="form-control">'); 
                                                    		var $meBtn = $('<td>').html('<buttn onclick="add()" class="btn btn-primary btn-sm">추가</button>');
                                                    		$tr.append($meName);
                                                    		$tr.append($meBtn);
                                                    		$meterialTable.append($tr);
                                                    		
                                                			$('#meterialBox').css('display', 'none');
                                                		}
                                                		
                                                	}
                                                	
                                                	//준비물 추가버튼 무르면 입력칸 추가하기
                                                	function add(){
                                                		var $meterialTable = $('#meterialTable');
                                                		
                                                		var $tr = $('<tr>');
                                                		var $meName = $('<td>').html('<input type="text" placeholder="준비물 이름" class="form-control">'); 
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
                                                    <label class=" form-control-label">수업 날짜/시간</label><br>
                                                    <div>
                                                    	<input type="date" placeholder="최소인원수" class="form-control" style="width:200px; display:inline-block"> ~ 
                                                    	<input type="date" placeholder="최대인원수" class="form-control" style="width:200px;display:inline-block">
                                                    </div>  
                                                    <small class="help-block form-text">수업 시작일과 종료일을 입력해주세요(최소 1개월)</small>
                                                </div>                                                
                                                <hr> 
                                                <div class="form-group">
                                                	<label class=" form-control-label">온라인 수업 가격</label><br>
                                                	<input type="number" class="form-control" placeholder="수업의 총 가격을 입력하세요." style="width:300px; display:inline-block"> 원
                                                </div>
                                                <hr> 
                                                <div class="form-group">
                                                    <label class=" form-control-label">샘플 영상등록</label><br>
                                                    <div class="">
                                                       <input type="number" placeholder="ex) http://youbute/1stCl2as4s7" id="courseHourPrice" name="courseHourPrice" class="form-control" style="width:300px; display:inline-block"> 원 &nbsp;&nbsp;
                                                 	   <small class="help-block form-text"> 수업 샘플 영상의 url을 입력해주세요.</small><br>
                                                    </div>
                                                </div>             
		                                        <div style="text-align:center">
		                                            <button type="submit" class="btn btn-primary btn-sm">
		                                           		클래스 신청하기
		                                            </button>
		                                            <button type="reset" class="btn btn-secondary btn-sm">
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