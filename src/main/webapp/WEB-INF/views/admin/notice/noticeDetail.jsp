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
 <body class="animsition">

            <c:import url="../common/aMenubar.jsp" />
            <div class="page-container2">

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive table--no-card m-b-40">

                                 
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
                                       <table class="table table-borderless table-striped table-earning" align="center" width="500" border="1" cellspacing="0">
                                          <tbody>
                                             <tr>
                                                <td><textarea cols="50" rows="3" id="rContent"></textarea></td>
                                                <td><button id="rSubmit">등록하기</button></td>
                                             </tr>
                                          </tbody>
                                       </table>
                                       <!-- 댓글 목록 부분-->
                                       <table class="table table-borderless table-striped table-earning" align="center" width="500" border="1" cellspacing="0" id="rtb">
                                          
                                          <tbody class="ttbody">
                                          
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
                        
                        var img = "<img src='<%=request.getContextPath()%>" + "/resources/user/img/profile/${s.memProfileName}'/>";
                        
                        var $profileDiv = $("<div class='image img-cir img-40'>").append(img);
                        
                        
                        var $rNReply = $("<td id="+value.nReplyNum+" >")
                        
                        
                        var $rWriter = $("<td width='100'>").text(value.memNickname);
                        
                        var   $rContent = $("<td>");
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
              
   <c:import url="../common/aImportJs.jsp" />
      
      

</body>
</html>