<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body class="animsition">
  <c:import url="../common/cMenubar.jsp"/>

  <div class="page-wrapper">
 	<div class="main-content">
   		<div class="section__content section__content--p30">
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-lg-10"> 
	           <div class="card">
	             <div class="card-header" align="center">
	                 <h1><strong>${inq.inquiryTitle}</strong></h1>
	             </div>
	             <div class="card-body card-block">
	                 <form action="insertInquiry.do" method="post" enctype="multipart/form-data">
	                     <div class="form-group">
	                     	<table width="100%">
	                     		<tr>
	                     			<td width="70px">
	                     				<div class="mx-auto d-block">
                                           	<img class="rounded-circle mx-auto d-block" style="width:35px; height:35px" src="<%= request.getContextPath() %>/resources/creator/creatorImages/${creProfile}" alt="Card image cap">
                                        </div>
	                     			</td>
	                     			<td width="70px">${creator.creName }</td>
	                     			<td>${inq.inquiryEnrollDate}</td>
	                     			<td width="200px"></td>	
	                     			<td width="auto">
		                     				<ul class="nav nav-pills" style="float:right">
		                     					<li class="nav-item dropdown">
													<a class="nav-link dropdown-toggle" style="color:gray" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
													<div class="dropdown-menu">
													<c:if test="${ inq.answerStatus == 'N' }">
														<a class="dropdown-item" href="#" onclick="updateInquiry()">수정하기</a>
													</c:if>
														<a class="dropdown-item" href="#" onclick="deleteInquiry()">삭제하기</a>
													</div>
												</li>
											</ul>
	                     			</td>
	                     		</tr>
	                     	</table>
	                     </div>
	                     <hr>
	                     <div class="form-group"  style="padding:30px; text-align:center; width:100%; height:500px; overflow:auto">
	                         <div id="summernote"></div>
	                         <input type="hidden" name="creNum" value="${ creator.creNum }">
	                     </div>
	                     <hr>
	                     <div class="form-group"> 
	                     	<c:if test="${ !empty inq.inquiryFileName }">
			                    	첨부파일<br>
			                    	<div style="width:300px;">
	                     				<img src="<%= request.getContextPath() %>/resources/creator/inquiryImages/${inq.inquiryFileName}">
	                     			</div>
		                    	 <hr>
	                     	</c:if>
	                     </div>
	                     <div class="form-group" align="center">
			                 <button type="button" class="btn btn-primary" onclick="location.href='inquiryList.do'">목록으로</button>
	                     </div>
	                 </form>
	             </div>
	         </div>
         </div>
      </div>
    </div>
  </div>
</div>
</div>
<script>

	function deleteInquiry() {
		if(confirm('정말 삭제하시겠습니까?')){
			var num = ${inq.inquiryNum};
			location.href= '<%= request.getContextPath() %>/deleteInquiry.do?inquiryNum=' + num; 
		}
	}
	
	function updateInquiry() {
		var num = ${inq.inquiryNum};
		location.href= '<%= request.getContextPath() %>/InquiryForm.do?inquiryNum=' + num; 
	}
	
	$(document).ready(function() {
		
		$('#summernote').summernote({
			  height: 300,                 // set editor height
			  minHeight: null,             // set minimum height of editor
			  maxHeight: null, 
			  airMode: true
			});
		
 	    var markupStr = '${inq.inquiryContent}';
	    $('#summernote').summernote('code', markupStr); 
	});

</script>


  
    
<c:import url="../common/cMenubar.jsp"/>   
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
  </body>
</html>