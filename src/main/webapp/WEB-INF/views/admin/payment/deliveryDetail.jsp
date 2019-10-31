<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>AwaitCourseDetail</title>

<style>

	
	.text{
		padding-top:1px;
	}
	

</style>

</head>





<body class="animsition">
	<c:import url="../common/aMenubar.jsp" />
	<div class="page-container2" style="">



		<!-- FORM START -->
		<section class="main-content">
			<div class="section__content section__content--p30">

				<div class="container-fluid">

					<div class="row">


						<div class="col-lg-10">
							<div class="card" id="creator-div">
								<div class="card-header">
									<h3>
										<strong>배송 상세 정보</strong>
									</h3>
								</div>
								<div class="card-body card-block">
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class="form-control-label text">No</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ d.deliveryNum }</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">결제번호</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text" >${ d.payNum }</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">이름</label>
											
										</div>
										<div class="col-12 col-md-4 user" >
											<label for="creID" class=" form-control-label text">${ d.memNum } </label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">결제코드</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text"> ${ d.payCode }</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">클래스명</label>
										</div>
										<div class="col-12 col-md-10 user">
											<label for="creID" class=" form-control-label text">${ d.courseTitle }</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">결제수단</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ d.payMethod }</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">결제가격</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ d.payPrice }</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">주소</label>
										</div>
										<div class="col-12 col-md-10 user">
											<label for="creID" class=" form-control-label text">${ d.deliveryAddress }</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">준비물명</label>
										</div>
										<div class="col-12 col-md-10 user">
											<label for="creID" class=" form-control-label text">${ d.courseMaterial }</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">결제날짜</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ d.payDate }</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">배송상태</label>
											
										</div>
										<div class="col-12 col-md-4 user" id="bts">
											
										</div>
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
	
	<script>
		$(function () {
			
			deliStatus();
			
		});
		
		function deliStatus(data) {
			
			console.log(data);
			
			var $bts = $("#bts");
			
			$bts.html("");
			
			var dStatus;
			
			if(data == null) {
				
				console.log("null");
				
				dStatus = "${d.deliveryStatus}";
			}else{
				dStatus = data;
			}
			
			console.log(dStatus);
			
			if(dStatus == 'S') {
				$bts.append('<input type="button" value="배송대기" onclick="status(1)" class="btn btn-outline-danger">');
			};
			
			if(dStatus == 'I') {
				$bts.append('<input type="button" value="배송중" onclick="status(2)" class="btn btn-outline-primary">');
			};
			
			if(dStatus == 'E') {
				$bts.append('<input type="button" value="배송완료" onclick="status(3)" class="btn btn-outline-success" disabled>');
			};
			
			
			
		};
		
		function status(data) {
			
			
			var temp = data;
			
			var status;
			
			var deliveryNum = ${d.deliveryNum}
			
			if(temp == 1) {
				status = 'I';
			}else{
				status = 'E';
			}
			
			console.log(status + "123");
			
			$.ajax({
				url:"updateDeliStatus.do",
				data:{status:status, deliveryNum:deliveryNum},
				type:"post",
				success:function(data) {
					
					console.log("---");
					
					console.log(data);
					
					var spend = data;
					
					console.log("---");
					
					
					deliStatus(spend);
				},
				error:function() {
					console.log("서버와의 통신 실패");
				}
				
			});
			
			
			
		};
	
	</script>

</body>

</html>