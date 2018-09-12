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
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!--     <link rel="apple-touch-icon" href="apple-icon.png"> -->
<!--     <link rel="shortcut icon" href="favicon.ico"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/css/normalize.css"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/css/bootstrap.min.css"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/css/font-awesome.min.css"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/css/themify-icons.css"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/css/flag-icon.min.css"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/css/cs-skin-elastic.css"> -->
<!--     <link rel="stylesheet" href="/mozle/resources/admin/scss/style.css"> -->
<!--     <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'> -->


</head>
<body>
    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">
        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>게시물 통계</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">

                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="mb-3">총 게시물수</h4>
                                    <canvas id="sales-chart">
                                    </canvas>
                                </div>
                            </div>
                        </div><!-- /# column -->

<!--                         <div class="col-lg-6"> -->
<!--                             <div class="card"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <h4 class="mb-3">방문자 수</h4> -->
<%--                                     <canvas id="team-chart"></canvas> --%>
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
  
                 

                <!----------------------------------->
<!--                         <div class="col-lg-6"> -->
<!--                             <div class="card"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <h4 class="mb-3">Pie Chart </h4> -->
<%--                                     <canvas id="pieChart"></canvas> --%>
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->


                </div>

            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->

<!--     <script src="/mozle/resources/admin/js/vendor/jquery-2.1.4.min.js"></script> -->
<!--     <script src="/mozle/resources/admin/js/popper.min.js"></script> -->
<!--     <script src="/mozle/resources/admin/js/plugins.js"></script> -->
<!--     <script src="/mozle/resources/admin/js/main.js"></script> -->
        <!--  Chart js -->
    <script src="/mozle/resources/admin/js/lib/chart-js/Chart.bundle.js"></script>
<!--     <script src="/mozle/resources/admin/js/lib/chart-js/chartjs-init.js"></script> -->
<script>
( function ( $ ) {
    "use strict";
    //Sales chart
    var ctx = document.getElementById( "sales-chart" );
   ctx.height = 150;
    var myChart = new Chart( ctx, {
        type: 'line',
        data: {
            
            //x축
            labels: ["2016", "2017", "2018"],
            type: 'line',
            defaultFontFamily: 'Montserrat',
            datasets: [ {
                label: "등록된 게시물 수",
                data: [ 100, 200, 20],
                backgroundColor: 'transparent',
                borderColor: 'rgba(0,42,40,0.5)',
                borderWidth: 3,
                pointStyle: 'circle',
                pointRadius: 5,
                pointBorderColor: 'transparent',
                pointBackgroundColor: 'rgba(0,42,40,0.5)',
                    } ]
        },
        options: {
            responsive: true,

            tooltips: {
                mode: 'index',
                titleFontSize: 12,
                titleFontColor: '#000',
                bodyFontColor: '#000',
                backgroundColor: '#fff',
                titleFontFamily: 'Montserrat',
                bodyFontFamily: 'Montserrat',
                cornerRadius: 3,
                intersect: false,
            },
            legend: {
                display: false,
                labels: {
                    usePointStyle: true,
                    fontFamily: 'Montserrat',
                },
            },
            scales: {
                xAxes: [ {
                    display: true,
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    scaleLabel: {
                        display: false,
                        labelString: 'Month'
                    }
                        } ],
                yAxes: [ {
                    display: true,
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    scaleLabel: {
                        display: true,
                        labelString: 'Value'
                    }
                        } ]
            },
            title: {
                display: false,
                text: 'Normal Legend'
            }
        }
    } );


  



} )( jQuery );
</script>


</body>
</html>
