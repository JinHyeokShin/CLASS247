<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
	<script type="text/javascript">
		$(function(){
			CKEDITOR.replace('bo_content',{
				filebrowserUploadUrl: '${pageContext.request.contextPath }/adm/fileupload.do'
			});
		});
	</script>

<style>
	.button {
	
	    width:100px;
	
	    background-color: #f8585b;
	
	    border: none;
	
	    color:#fff;
	
	    padding: 15px 0;
	
	    text-align: center;
	
	    text-decoration: none;
	
	    display: inline-block;
	
	    font-size: 15px;
	
	    margin: 4px;
	
	    cursor: pointer;
	    
	    border-radius: 10px;
	
	}
</style>


</head>
<body class="animsition">
   <c:import url="../common/aMenubar.jsp"/>
    <div class="page-container2" style="">
   
                  <!-- FORM START -->
            <section class="main-content">
            
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30">
                                <i class="fas fas fa-user"></i>관리자 게시판작성
                            </h3>
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>공지사항 작성</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                            	<form action="aNinsert.do" method="post" encType="multipart/form-data">
												  <div class="form-group">
													<table align="center">
														<tr>												
															<td>제목 : </td>
															<td><input type="text" name="noticeTitle"><hr></td>								
														</tr>															
														<tr>
															<td>작성자 : </td>
															<td><input type="text" readonly name="memNum" value="${ loginUser.memNum }"><hr></td>
														</tr>
														<tr>
															<td>내용 : </td>
															<td><textarea cols="50" rows="7" name="noticeContent"></textarea><hr></td>
														</tr>
														<tr>
															<td>첨부파일 &nbsp; </td>															
															<td><input type="file" name="uploadFile"><hr></td>
														</tr>
														<tr>
															<td colspan="2" align="center">	
																<button type="submit" class="button">등록하기</button>&nbsp;&nbsp;
																<button type="button" onclick="location.href='aNoticeList.do'; "class="button">목록으로</button>
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
                   </section>
                </div>



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
   
    
   
	<c:import url="../common/aImportJs.jsp"/>
                

</body>



</html>

