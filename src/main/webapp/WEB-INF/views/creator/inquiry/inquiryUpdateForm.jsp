<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 수정하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
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
	             <div class="card-header">
	                 <strong>1:1 문의글 수정하기</strong>
	             </div>
	             <div class="card-body card-block">
	                 <form action="updateInquiry.do" method="post" enctype="multipart/form-data">
	                     <div class="form-group">
	                         <label for="inquiryTitle" class=" form-control-label">제목</label>
	                         <input type="text" name="inquiryTitle"  class="form-control" value="${i.inquiryTitle }">
	                     </div>
	                     <hr>
	                     <div class="form-group">
	                         <label for="summernote" class=" form-control-label">문의 내용</label>
	                         <textarea id="summernote" name="inquiryContent"></textarea>
	                         <input type="hidden" name="creNum" value="${ creator.creNum }">
	                         <input type="hidden" name="inquiryNum" value="${i.inquiryNum}">
	                     </div>
	                     <div class="form-group">
	                     	<input type="file" name="file" value="${i.inquiryPath}"><br>
	                     </div>
	                     <div class="form-group" align="center">
			                 <button type="submit" class="btn btn-primary">작성하기</button>
			                 <button type="button" class="btn btn-danger" onclick="history.back()">취소하기</button>	                     
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
  
  
<div id="hi"></div>
    <script>
    $(document).ready(function() {
        
        $('#summernote').summernote({
            placeholder: '${i.inquiryContent}',
            tabsize: 2,
            height: 400,
            dialogsInBody: true,
          });
   });
    </script>
    
    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
  </body>
</html>
