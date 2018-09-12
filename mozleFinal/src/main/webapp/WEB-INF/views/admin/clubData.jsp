<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="adminHeader.jsp" />
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원 관리</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
 #bootstrap-data-table_filter{
 text-align:right;
 }

</style>

</head>
<body>
     <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>동호회 정보 관리</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
<!--                             <li><a href="#"></a></li> -->
<!--                             <li><a href="#"></a></li> -->
<!--                             <li class="active"></li> -->
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">동호회 정보 관리</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>동호회 명</th>
                        <th>카테고리</th>
                        <th>동호회장</th>
                        <th>동호회원</th>
                        <th>주요활동 지역</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:if test="${!empty clubData}">
                      <c:forEach items="${clubData }" var="club">
                      <tr>
                        <td>${club.c_name }</td>
                        <td>${club.c_category }</td>
                        <td>${club.c_leader_id }</td>
                        <td>${club.c_member_id }</td>
                        <td>${club.c_location }</td>
                      </tr>
                      </c:forEach>
                      </c:if>
                    </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


<!--     <script src="/mozle/resources/admin/js/vendor/jquery-2.1.4.min.js"></script> -->
<!--     <script src="/mozle/resources/admin/js/popper.min.js"></script> -->
<!--     <script src="/mozle/resources/admin/js/plugins.js"></script> -->
<!--     <script src="/mozle/resources/admin/js/main.js"></script> -->


    <script src="/mozle/resources/admin/js/lib/data-table/datatables.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/jszip.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/pdfmake.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/vfs_fonts.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/buttons.print.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/data-table/datatables-init.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>


</body>
</html>
