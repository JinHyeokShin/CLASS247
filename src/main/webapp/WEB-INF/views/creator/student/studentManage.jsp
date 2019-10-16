<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../common/cMenubar.jsp"/>
	
		   <div class="page-wrapper">
	            <section class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="fas fa-user"></i>students status
                        </h3>
                        <div class="row">
                            <div class="col-md-12">
                            <!-- DATA TABLE -->
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md">
                                        <select class="js-select2" name="property">
                                            <option selected="selected">All Properties</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <div class="rs-select2--light rs-select2--sm">
                                        <select class="js-select2" name="time">
                                            <option selected="selected">Today</option>
                                            <option value="">3 Days</option>
                                            <option value="">1 Week</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters</button>
                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2" name="type">
                                            <option selected="selected">Export</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </th>
                                            <th>profile</th>
                                            <th>name </th>
                                            <th>class</th>
                                            <th>registration</th>
                                            <th>phone</th>
                                            <th>status</th>
                                            <th>level</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-02.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>
                                            <td>한미선</td>
                                            <td>
                                                <span class="block-email">포토샵으로 손그림</span>
                                            </td>
                                            <td>09/27</td>
                                            <td>01093201234</td>
                                                <td>
                                                    <span class="status--process">수강</span>
                                                </td>
                                            <td>입문자</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                        <i class="zmdi zmdi-info"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>
                                                    <div class="image img-cir img-40">
                                                        <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-01.jpg" alt="Cynthia Harvey" />
                                                    </div> 
                                                </td>
                                                <td>신진혁</td>
                                                <td>
                                                    <span class="block-email">포토샵으로 손그림</span>
                                                </td>
                                                <td>09/27</td>
                                                <td>01093201234</td>
                                                    <td>
                                                        <span class="status--process">수강</span>
                                                    </td>
                                                <td>중급</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                            <i class="zmdi zmdi-info"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>
                                            <td>이승은</td>
                                            <td>
                                                <span class="block-email">포토샵으로 손그림</span>
                                            </td>
                                            <td>09/27</td>
                                            <td>01093201234</td>
                                                <td>
                                                    <span class="status--process">수강</span>
                                                </td>
                                            <td>고급</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                        <i class="zmdi zmdi-info"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>
                                            <td>김상민</td>
                                            <td>
                                                <span class="block-email">포토샵으로 손그림</span>
                                            </td>
                                            <td>09/27</td>
                                            <td>01093201234</td>
                                                <td>
                                                    <span class="status--process">수강</span>
                                                </td>
                                            <td>입문자</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                        <i class="zmdi zmdi-info"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                       
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-03.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>                                            
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span class="block-email">lyn@example.com</span>
                                            </td>
                                            <td class="desc">iPhone X 256Gb Black</td>
                                            <td>2018-09-25 19:03</td>
                                            <td>
                                                <span class="status--denied">Denied</span>
                                            </td>
                                            <td>$1199.00</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>

                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
	</div>


</body>
</html>