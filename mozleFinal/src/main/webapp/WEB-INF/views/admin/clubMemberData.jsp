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
                        <h1>동호회원 정보 관리</h1>
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
                            <strong class="card-title">동호회원 정보 관리</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>카테고리</th>
                        <th>동호회명</th>
                        <th>이름</th>
                        <th>전화번호</th>
                        <th>E-MAIL</th>
                        <th>주소</th>
                                                  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>soccer</td>
                        <td>축구동호회</td>
                        <td>조하늘</td>
                        <td>010-1234-5678</td>
                        <td>jo@naver.com</td>
                        <td>서울시 강동구</td>
                      </tr>
                      <tr>
                        <td>basketBall</td>
                        <td>농구동호회</td>
                        <td>황인선</td>
                        <td>010-2342-4983</td>
                        <td>Hwang@naver.com</td>
                        <td>서울시 송파구</td>
                      </tr>
                       <tr>
                       <td>baseBall</td>
                        <td>야구동호회</td>
                        <td>연제각</td>
                        <td>010-5555-6548</td>
                        <td>yoen@naver.com</td>
                        <td>서울시 강남구</td>
                      </tr>
                       <tr>
                       <td>vocal</td>
                        <td>노래동호회</td>
                        <td>안보람</td>
                        <td>010-8887-9986</td>
                        <td>boram@naver.com</td>
                        <td>서울시 강북구</td>
                      </tr>
                       <tr>
                        <td>piano</td>
                        <td>피아노동호회</td>
                        <td>김현수</td>
                        <td>010-5465-8877</td>
                        <td>kim@naver.com</td>
                        <td>서울시 송파구</td>
                      </tr>
                       <tr>
                        <td>guitar</td>
                        <td>기타동호회</td>
                        <td>최범석</td>
                        <td>010-2123-5651</td>
                        <td>choi@naver.com</td>
                        <td>서울시 출입구</td>
                      </tr>
                      
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
