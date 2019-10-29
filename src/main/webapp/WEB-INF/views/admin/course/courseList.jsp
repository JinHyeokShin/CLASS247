<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Await</title>


        </head>

        <body class="animsition">
                    <script src="http://unpkg.com/vue@2.5.16/dist/vue.js"></script>

            <c:import url="../common/aMenubar.jsp" />

            <div class="page-container2">

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">Await List</h2>
                                    

                                    <div class="table-responsive table--no-card m-b-40" id="example">
                                    <p>
                                    	<input type="text" v-model="courseName"/>
                                    </p>
                                        <table class="table table-borderless table-striped table-earning" id="list">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>제목</th>
                                                    <th>타입</th>
                                                    <th>크리에이터명</th>
                                                    <th>인원수</th>
                                                    <th>시작날짜</th>
                                                    <th>종료날짜</th>
                                                    <th>좋아요수</th>
                                                    <th>상태</th>
                                                </tr>
                                            </thead>
                                            <tbody id="contacts">
                                                <tr v-for="d in filtered">
                                                	<td>{{d.nn}}</td>
                                                	<td>{{d.tt}}</td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                            <td id="tfoot" colspan="9">
                                            		
                                            	
                                            </td>
                                            <tr>
                                            </tfoot>
                                            
                                        </table>
                                    </div>
                         
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				

            </div>
        

            
            <c:import url="../common/aImportJs.jsp" />
            <script>
            var model={
            		pageno : 1,
            		pagesize : 10,
            		totalcount : 10,
            		courseName : "",
            		course : [

        				<c:forEach items="${list}" var="co">
						 
        				{nn:"${co.courseNum}", tt:"${co.courseTitle}", kk:"${co.courseKind}", ii:"${co.memNickName}", pp:"${co.courseCurrentNum}", dd:"${co.courseStartDate}", ee:"${co.courseEndDate}", ll:"${co.loveCount}", ss:"${co.courseStatus}"},
        				
        				</c:forEach>
            			
            		]
            
            		
            }
            
            var list = new Vue({
            	el:"#example",
            	data:model,
            	computed: {
                    filtered: function() {
                        var cname = this.courseName.trim();
                        return this.course.filter(function(item, index) {
                            if (item.tt.indexOf(cname) > -1) {
                                return true;
                            }
                        });
                    }
                },
            	
            	methods : {
            		nameChanged : function(e) {
            			this.courseName = e.target.value;
            		}
            	}
            });
            

            
            </script>

        </body>

        </html>