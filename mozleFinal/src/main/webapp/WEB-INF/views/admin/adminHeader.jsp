<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MOZLE-ADMIN</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/cs-skin-elastic.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/scss/style.css">
    <link rel="stylesheet" type="text/css" href="/mozle/resources/admin/css/lib/vector-map/jqvmap.min.css" >

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    
    
</head>
<body>


        <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#">ADMIN PAGE</a>
                <a class="navbar-brand hidden" href="./"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
<!--                     <li class="active"> -->
<!--                         <a href="index.html"> <i class="menu-icon fa fa-dashboard"></i>전체 정보 </a> -->
<!--                     </li> -->
                    
                    
                    
                    <h3 class="menu-title">Member</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>회원 관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="memberChart.do">회원 통계 정보</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="memberData.do">회원 정보 관리</a></li>

                        </ul>
                    </li>
                   
     
                    <h3 class="menu-title">Club</h3>
                    <!-- /.menu-title -->

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>동호회 관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="clubChart.do">동호회 통계 정보</a></li>
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="clubData.do">동호회 정보 관리</a></li>
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="clubMemberData.do">동호회원 정보 관리</a></li>
                        </ul>
                    </li>

                    <h3 class="menu-title">Board</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>게시물 관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="boardChart.do">게시물 통계</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="noticeList.do">공지사항 관리</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="freeBoardList.do">게시판 관리</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="faq.do">자주묻는질문 관리</a></li>
                        </ul>
                    </li>
                    
                 <h3 class="menu-title">Main Page</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="index.do" class="dropdown-toggle"> <i class="menu-icon fa fa-glass"></i>메인 페이지로 이동</a>
                        
                    </li>    
                
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->


    <div id="right-panel" class="right-panel">
      
    </div>
     
    <script src="/mozle/resources/admin/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="/mozle/resources/admin/js/plugins.js"></script>
    <script src="/mozle/resources/admin/js/main.js"></script>
    
    
<!-- 	<script src="/mozle/resources/admin/js/lib/chart-js/Chart.bundle.js"></script> -->
<!-- 	<script src="/mozle/resources/admin/js/dashboard.js"></script> -->
<!-- 	<script src="/mozle/resources/admin/js/widgets.js"></script> -->
<!--
    <script src="/mozle/resources/admin/js/lib/vector-map/jquery.vmap.js"></script>
    <script src="/mozle/resources/admin/js/lib/vector-map/jquery.vmap.min.js"></script>
    <script src="/mozle/resources/admin/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="/mozle/resources/admin/js/lib/vector-map/country/jquery.vmap.world.js"></script>
-->
   

</body>
</html>

    