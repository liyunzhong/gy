<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="UI.apps._default" %>
<!DOCTYPE html>
<html>

<head>
    <!-- -------------- Meta and Title -------------- -->
    <meta charset="utf-8">
    <title>学生宿舍管理系统</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- -------------- Fonts -------------- -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic' rel='stylesheet'
          type='text/css'>

    <!-- -------------- Icomoon -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/fonts/icomoon/icomoon.css">

    <!-- -------------- FullCalendar -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/js/plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="assets/js/plugins/magnific/magnific-popup.css">

    <!-- -------------- Plugins -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/js/plugins/c3charts/c3.min.css">

    <!-- -------------- CSS - theme -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">

    <!-- -------------- CSS - allcp forms -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/allcp/forms/css/forms.css">

    <!-- -------------- Favicon -------------- -->
    <link rel="shortcut icon" href="assets/img/favicon.ico">

    <!-- -------------- IE8 HTML5 support  -------------- -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="dashboard-page">

<!-- -------------- Body Wrap  -------------- -->
<div id="main">

    <!-- -------------- Header  -------------- -->
    <header class="navbar navbar-fixed-top bg-dark">
        <div class="navbar-logo-wrapper">
            <a class="navbar-logo-text" href="default.aspx">
                <b>学生宿舍管理系统</b>
            </a>
            <span id="sidebar_left_toggle" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-left">
            <li class="dropdown dropdown-fuse hidden-xs">
                <a href="#" class="dropdown-toggle" 
                    data-toggle="dropdown" role="button"
                     aria-expanded="false">欢迎您，<%=Session["UserName"] %>
                    <span class="fa fa-chevron-down"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                    <li><a target="mainframe" href="profile.aspx">个人资料</a></li>
                    <li><a target="mainframe" href="password.aspx">密码设置</a></li>
                    <li class="divider"></li>
                    <li><a href="quit.aspx">安全退出</a></li>
                </ul>
            </li>
            <li class="hidden-xs">
                <a class="navbar-fullscreen toggle-active" href="#">
                    <span class="glyphicon glyphicon-fullscreen"></span>
                </a>
            </li>
        </ul>
        
        
    </header>
    <!-- -------------- /Header  -------------- -->

    <!-- -------------- Sidebar  -------------- -->
    <aside id="sidebar_left" class="nano nano-light affix">

        <!-- -------------- Sidebar Left Wrapper  -------------- -->
        <div class="sidebar-left-content nano-content">

            <!-- -------------- Sidebar Header -------------- -->
            <header class="sidebar-header">

                <!-- -------------- Sidebar - Author -------------- -->
                

                <!-- -------------- Sidebar - Author Menu  -------------- -->
                

            </header>
            <!-- -------------- /Sidebar Header -------------- -->

            <!-- -------------- Sidebar Menu  -------------- -->
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt30">操作菜单</li>

                <% if("3".Equals(Session["UserType"]+"")){ %>
                <li class="">
                    <a class="accordion-toggle " href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">系统管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="adminlist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                管理员数据 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="addadmin.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                添加管理员 </a>
                        </li>
                    </ul>
                </li>


                <li class="">
                    <a class="accordion-toggle " href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">员工管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="emplist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                员工数据 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="addemp.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                添加员工 </a>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a class="accordion-toggle " href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">学生管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="userlist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                学生数据 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="adduser.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                添加学生 </a>
                        </li>
                    </ul>
                </li>


                
                <% }else{ %>

                <% } %>

                <li class="">
                    <a class="accordion-toggle " href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">离校管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="outlist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                离校数据 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="addout.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                办理离校 </a>
                        </li>
                    </ul>
                </li>



                <li class="">
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">公寓管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="roomlist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                房源数据 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="addroom.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                创建房源 </a>
                        </li>
                    </ul>
                </li>


                <li class="">
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">出入登记</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="inout1.aspx">
                                <span class="fa fa-file-text-o"></span>
                                物品出入 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="inout2.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                人员出入 </a>
                        </li>
                    </ul>
                </li>


                <li class="">
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">住宿/维修</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="">
                            <a target="mainframe" href="arlist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                住宿查询 </a>
                        </li>
                        <li class="active">
                            <a target="mainframe" href="domin.aspx">
                                <span class="fa fa-file-text-o"></span>
                                住宿登记 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="fixlist.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                维修记录 </a>
                        </li>
                    </ul>
                </li>


                
                <li class="">
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-chevron-right"></span>
                        <span class="sidebar-title">意见反馈</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li class="active">
                            <a target="mainframe" href="msglist.aspx">
                                <span class="fa fa-file-text-o"></span>
                                反馈数据 </a>
                        </li>
                        <li>
                            <a target="mainframe" href="addmsg.aspx">
                                <span class="fa fa-file-text-o"></span> 
                                反馈意见 </a>
                        </li>
                    </ul>
                </li>

                <li class="sidebar-label pt25">Copyrights 2017</li>
               
            </ul>
            <!-- -------------- /Sidebar Menu  -------------- -->

            <!-- -------------- Sidebar Hide Button -------------- -->
            <div class="sidebar-toggler">
                <a href="#">
                    <span class="fa fa-arrow-circle-o-left"></span>
                </a>
            </div>
            <!-- -------------- /Sidebar Hide Button -------------- -->

        </div>
        <!-- -------------- /Sidebar Left Wrapper  -------------- -->

    </aside>
    <!-- -------------- /Sidebar -------------- -->

    <!-- -------------- Main Wrapper -------------- -->
    <section id="content_wrapper">

       
        <!-- -------------- Topbar -------------- -->
        <header id="topbar" class="alt">
            <div class="topbar-left">
                <ol class="breadcrumb">
                    <li class="breadcrumb-icon">
                        <a href="default.aspx">
                            <span class="fa fa-home"></span>
                        </a>
                    </li>
                    <li class="breadcrumb-active">
                        <a href="default.aspx">学生宿舍管理系统</a>
                    </li>
                    <li class="breadcrumb-link">
                        <a href="default.aspx">首页</a>
                    </li>
                    <li class="breadcrumb-current-item">欢迎您</li>
                </ol>
            </div>
        </header>
        <!-- -------------- /Topbar -------------- -->

        <!-- -------------- Content -------------- -->
        <section id="content" class="table-layout animated fadeIn">

            <!-- -------------- Column Center -------------- -->
            <div class="chute chute-center" style="padding-top:5px;">

              

                <!-- -------------- AllCP Info -------------- -->
                <div class="allcp-panels fade-onload">

                                               <iframe src="" name="mainframe" style="width:100%;min-height:1968px;border:none;"></iframe>
            </div>
        </div>
    </section>
    <!-- -------------- /Sidebar Right -------------- -->

</div>
<!-- -------------- /Body Wrap  -------------- -->

<!-- -------------- Scripts -------------- -->

<!-- -------------- jQuery -------------- -->
<script src="assets/js/jquery/jquery-1.11.3.min.js"></script>
<script src="assets/js/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- -------------- HighCharts Plugin -------------- -->
<script src="assets/js/plugins/highcharts/highcharts.js"></script>
<script src="assets/js/plugins/c3charts/d3.min.js"></script>
<script src="assets/js/plugins/c3charts/c3.min.js"></script>

<!-- -------------- Simple Circles Plugin -------------- -->
<script src="assets/js/plugins/circles/circles.js"></script>

<!-- -------------- Maps JSs -------------- -->
<script src="assets/js/plugins/jvectormap/jquery.jvectormap.min.js"></script>
<script src="assets/js/plugins/jvectormap/assets/jquery-jvectormap-us-lcc-en.js"></script>

<!-- -------------- FullCalendar Plugin -------------- -->
<script src="assets/js/plugins/fullcalendar/lib/moment.min.js"></script>
<script src="assets/js/plugins/fullcalendar/fullcalendar.min.js"></script>

<!-- -------------- Date/Month - Pickers -------------- -->
<script src="assets/allcp/forms/js/jquery-ui-monthpicker.min.js"></script>
<script src="assets/allcp/forms/js/jquery-ui-datepicker.min.js"></script>

<!-- -------------- Magnific Popup Plugin -------------- -->
<script src="assets/js/plugins/magnific/jquery.magnific-popup.js"></script>

<!-- -------------- Theme Scripts -------------- -->
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>

<!-- -------------- Widget JS -------------- -->
<script src="assets/js/demo/widgets.js"></script>
<script src="assets/js/demo/widgets_sidebar.js"></script>
<script src="assets/js/pages/dashboard1.js"></script>
<!-- -------------- /Scripts -------------- -->

</body>

</html>
