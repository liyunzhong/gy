<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="UI.apps.adduser" %>
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

    <!-- -------------- Main Wrapper -------------- -->
    <section id="">

       

        <!-- -------------- Content -------------- -->
        <section id="content" class="table-layout animated fadeIn">

            <!-- -------------- Column Center -------------- -->
            <div class="chute chute-center">

              

                <!-- -------------- AllCP Info -------------- -->
                <div class="mw1000 ">

                    <!-- -------------- Spec Form -------------- -->
                    <div class="allcp-form theme-primary">
                        <div class="panel">
                            <div class="panel-heading">
                                <div class="panel-title">新增学生
                                </div>
                            </div>
                            <div class="panel-body">
                                <form method="post" runat="server" action="" >
                                    
                                    <!-- -------------- Basic -------------- -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" required name="username" id="username" class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">学号</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>



                                     <div class="row">
                                        <div class="col-md-5">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" required name="realname" id="realname" class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">姓名</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>

                                      <div class="row">
                                        <div class="col-md-3">
                                            <div class="section">
                                                 <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" name="sex"  required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">性别</label>
                                                </div>
                                        </div>
                                        </div>  </div>

                                      <div class="row">
                                        <div class="col-md-6">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" name="college"  required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">学院</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>

                                      <div class="row">
                                        <div class="col-md-6">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" name="major" required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">专业</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>

                                           <div class="row">
                                        <div class="col-md-4">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" name="classs" required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">班级</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>


                                          <div class="row">
                                        <div class="col-md-4">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" name="nation" required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">民族</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>

                                          <div class="row">
                                        <div class="col-md-4">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-120">
                                                    <label class="field">
                                                        <input type="text" name="zzmm" required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">政治面貌</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>

                                          <div class="row">
                                        <div class="col-md-6">
                                            <div class="section">

                                                <div class="smart-widget sm-left sml-80">
                                                    <label class="field">
                                                        <input type="text" name="tel" required class="gui-input" placeholder="">
                                                    </label>
                                                    <label for="sm2" class="button btn-primary">电话</label>
                                                </div>

                                                
                                            </div>
                                        </div>
                                        </div>

                                     <div class="row">
                                        <div class="col-md-5">
                                            <button class="btn btn-primary" type="submit">提交信息</button>
                                            </div>
                                         </div>


                                        </div>
                                    </div>
                                    <!-- -------------- /section -------------- -->


                                </form>
                                <!-- -------------- /form -------------- -->
                            </div>
                        </div>

                    </div>

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
