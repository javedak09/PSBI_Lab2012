<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="sample_recv_20220104.aspx.cs" Inherits="PSBI_Lab2012.sample_recv_20220104" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="PSBI Lab Management System">
    <meta name="keywords" content="PSBI Lab Management System">
    <meta name="author" content="ThemeSelect">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <title>PSBI Lab Management System</title>

    <link rel="apple-touch-icon" href="favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="Content/demo/chameleon-admin-template/app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Content/demo/chameleon-admin-template/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="Content/demo/chameleon-admin-template/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="Content/demo/chameleon-admin-template/app-assets/css/components.min.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="Content/demo/chameleon-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="Content/demo/chameleon-admin-template/app-assets/css/core/colors/palette-gradient.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link href="Content/demo/chameleon-admin-template/assets/css/style.css" rel="stylesheet" />
    <link href="Content/demo/chameleon-admin-template/assets/feather/style.min.css" rel="stylesheet" />
    <!-- END: Custom CSS-->


    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


    <link href="Scripts/timepicker/css/timepicki.css" rel="stylesheet" />
    <script src="Scripts/timepicker/timepicki.js"></script>


    <script type="text/javascript">
        function lettersOnly(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122)) {
                alert("Please enter string value ");
                return false;
            }
            return true;
        }

        function lettersOnly_WithSpace(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122) && charCode != 32) {
                alert("Please enter string value ");
                return false;
            }
            return true;
        }

        function lettersOnly_WithSpace_Email(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122) && charCode != 32 && charCode != 46 && charCode != 64) {
                alert("Please enter string value ");
                return false;
            }
            return true;
        }

        function numeralsOnly(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Please enter Numeric value ");
                return false;
            }
            return true;
        }

        function numeralsOnly1(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46) {
                alert("Please enter Numeric value ");
                return false;
            }
            return true;
        }

        function RestrictSpecialCharacters(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));
            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122) && charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 32) {
                alert("Please enter string / numeric value but special characters not allowed ");
                return false;
            }
            return true;
        }

        function RestrictSpecialCharacters_New2(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));
            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122) && charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Please enter string / numeric value but special characters not allowed ");
                return false;
            }
            return true;
        }




        function RestrictSpecialCharacters_New(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122) && charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 32 && charCode != 46 && charCode != 47) {
                alert("Please enter string / numeric value but special characters not allowed ");
                return false;
            }
            return true;
        }


        function RestrictSpecialCharacters_Projectcode(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122) && charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 32 && charCode != 46 && charCode != 47) {
                alert("Please enter string / numeric value but special characters not allowed ");
                return false;
            }
            return true;
        }


        function numeralsOnly_decimal(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));

            if (charCode > 31 && charCode != 46 && (charCode < 48 || charCode > 57)) {
                alert("Please enter Numeric value ");
                return false;
            }
            return true;
        }


    </script>

    <script>

        $(document).on("change", "#AS2_Q8_2", function () {
            $("#lbl_AS2_Q8_3").hide();
            $("#AS2_Q8_3").val("");
            $("#AS2_Q8_3").hide();
        });

        $(document).on("change", "#AS2_Q8_1", function () {
            $("#lbl_AS2_Q8_3").show();
            $("#AS2_Q8_3").show();
        });

    </script>

    <script>

        function ValidateForm() {

            if ($("#AS1_screening_ID").val() == "__-_-____") {
                alert("Please enter screening id");
                $("#AS1_screening_ID").focus();
                return false;
            }
            else if ($("#AS1_screening_ID").val().indexOf("_") != -1) {
                alert("Please enter full screening id");
                $("#AS1_screening_ID").focus();
                return false;
            }
            else if ($("#AS1_rand_id").val() == "") {
                alert("Please enter randomization id");
                $("#AS1_rand_id").focus();
                return false;
            }
            else if ($("#AS1_name").val() == "") {
                alert("Please enter name ");
                $("#AS1_name").focus();
                return false;
            }
            else if ($('input[name=AS1_sex]:checked').length <= 0) {
                alert("Please select gender");
                $("#AS1_sex_a").focus();
                return false;
            }
            else if ($("#AS1_age").val() == "") {
                alert("Please enter age ");
                $("#AS1_age").focus();
                return false;
            }
            else if ($("#AS1_barcode").val() == "") {
                alert("Please enter sample id ");
                $("#AS1_barcode").focus();
                return false;
            }
            else if ($('input[name=AS1_fsite]:checked').length <= 0) {
                alert("Please select field site hospital");
                $("#AS1_fsite_1").focus();
                return false;
            }
            else if ($('input[name=AS1_Samp]:checked').length <= 0) {
                alert("Please select sample collected ");
                $("#AS1_Samp_1").focus();
                return false;
            }
            else if ($('input[name=AS1_Q1_1]:checked').length <= 0) {
                alert("Please select CBC Sample Collected In EDTA tube ");
                $("#AS1_Q1_11").focus();
                return false;
            }
            else if ($("#AS1_Q1_2").val() == "") {
                alert("Please enter Volume of blood for CBC mL ");
                $("#AS1_Q1_2").focus();
                return false;
            }
            else if ($('input[name=AS1_Q2_1]:checked').length <= 0) {
                alert("Please select Blood Culture Sample collection ");
                $("#AS1_Q2_11").focus();
                return false;
            }
            else if ($("#AS1_Q2_2").val() == "") {
                alert("Please enter Volume of blood in Paeds BacT Alert Paeds bottle ml ");
                $("#AS1_Q2_2").focus();
                return false;
            }
            else if ($('input[name=AS1_Q3]:checked').length <= 0) {
                alert("Please select Metagenomics Sample collection ");
                $("#AS1_Q3_1").focus();
                return false;
            }
            else if ($('input[name=AS1_Q3a_1]:checked').length <= 0 && ($("#AS1_Q3a_11").is(":visible") == true ||
                $("#AS1_Q3a_12").is(":visible") == true)) {
                alert("Please select CRP Sample Collected In Gel tube ");
                $("#AS1_Q3a_11").focus();
                return false;
            }
            else if ($("#AS1_Q3a_2").val() == "" && $("#AS1_Q3a_2").is(":visible") == true) {
                alert("Please enter Volume of blood for CBC ml ");
                $("#AS1_Q3a_2").focus();
                return false;
            }
            else if ($("#AS1_Q4").val() == "") {
                alert("Please enter collection time ");
                $("#AS1_Q4").focus();
                return false;
            }
            else if ($("#AS1_Q5").val() == "") {
                alert("Please enter collection date ");
                $("#AS1_Q5").focus();
                return false;
            }
            else if ($("#AS1_Q6").val() == "") {
                alert("Please enter Name of Phlebotomist  ");
                $("#AS1_Q6").focus();
                return false;
            }
            else if ($('input[name=AS2_Q7_1]:checked').length <= 0) {
                alert("Please select CBC EDTA tube Received ");
                $("#AS2_Q7_11").focus();
                return false;
            }
            else if ($("#AS2_Q7_2").val() == "") {
                alert("Please enter CBC EDTA tube Charged at AKU clinical lab (L Number) ");
                $("#AS2_Q7_2").focus();
                return false;
            }
            else if ($('input[name=AS2_Q8]:checked').length <= 0) {
                alert("Please select BacT Alert Paeds Bottle Received (Difference : Weight Before –Weight after) ");
                $("#AS2_Q8_1").focus();
                return false;
            }
            else if ($("#AS2_Q8_3").val() == "" && $("#AS2_Q8_3").is(":visiable") == true) {
                alert("Please enter Weight in gm ");
                $("#AS2_Q8_3").focus();
                return false;
            }
            else if ($('input[name=AS2_Q8a]:checked').length <= 0 && ($("#AS1_Q3a_11").is(":visible") == true ||
                $("#AS1_Q3a_12").is(":visible") == true)) {
                alert("Please select CRP Gel tube Received ");
                $("#AS2_Q8a_1").focus();
                return false;
            }
            else if ($("#AS2_Q9").val() == "") {
                alert("Please enter date received ");
                $("#AS2_Q9").focus();
                return false;
            }
            else if ($("#AS2_Q10").val() == "") {
                alert("Please enter time received ");
                $("#AS2_Q10").focus();
                return false;
            }
            else if ($('input[name=AS2_Q11]:checked').length <= 0 && $('input[name=AS2_Q11]').find(':visible')) {
                alert("Please enter Condition of sample container received ");
                $("#AS2_Q11_1").focus();
                return false;
            }
            else if ($("#AS2_Q12_1").val() == "") {
                alert("Please enter Temperature of the Coleman upon arrival at the lab (CBC tube)  ");
                $("#AS2_Q12_1").focus();
                return false;
            }
            else if ($("#AS2_Q12_2").val() == "") {
                alert("Please enter Temperature of the Coleman upon arrival at the lab (BacT Alert Peads bottle)  ");
                $("#AS2_Q12_2").focus();
                return false;
            }
            else if ($("#AS2_Q12_3").val() == "") {
                alert("Please enter Temperature of the Coleman upon arrival at the lab (Metagenomics)  ");
                $("#AS2_Q12_3").focus();
                return false;
            }
            else if ($("#AS2_Q12_4").val() == "") {
                alert("Please enter Temperature of the Coleman upon arrival at the lab (CRP Gel tube)  ");
                $("#AS2_Q12_4").focus();
                return false;
            }
            else if ($("#AS2_Q13").val() == "") {
                alert("Please enter Name of the laboratory person receiving the sample ");
                $("#AS2_Q13").focus();
                return false;
            }
            else if ($("#AS3_Q14").val() == "") {
                alert("Please enter Name of IDRL laboratory person receiving the sample ");
                $("#AS3_Q14").focus();
                return false;
            }
            else if ($("#AS3_Q15").val() == "") {
                alert("Please enter Time received ");
                $("#AS3_Q15").focus();
                return false;
            }
            else if ($("#AS3_Q16").val() == "") {
                alert("Please enter Temperature of the Coleman upon arrival at the NRL lab ");
                $("#AS3_Q16").focus();
                return false;
            }
            else if ($("#AS3_Q17").val() == "") {
                alert("Please enter Time of Serum separation ");
                $("#AS3_Q17").focus();
                return false;
            }
            else if ($("#AS3_Q18").val() == "") {
                alert("Please enter No. of Aliquots made ");
                $("#AS3_Q18").focus();
                return false;
            }
            else if ($("#AS3_Q19").val() == "") {
                alert("Please enter Volume in each aliquot ");
                $("#AS3_Q19").focus();
                return false;
            }
            else if ($("#AS3_Q20").val() == "") {
                alert("Please enter Time Aliquots placed in ULT Freezer ");
                $("#AS3_Q20").focus();
                return false;
            }
            else if ($("#AS3_A1").val() == "") {
                alert("Please enter Form checked by PSBI Laboratory Person ");
                $("#AS3_A1").focus();
                return false;
            }
            else if ($("#AS3_A2").val() == "") {
                alert("Please enter date of Form checked by PSBI Laboratory Person ");
                $("#AS3_A2").focus();
                return false;
            }
            else if ($("#AS3_B1").val() == "") {
                alert("Please enter Form checked by PSBI Study Physician ");
                $("#AS3_B1").focus();
                return false;
            }
            else if ($("#AS3_B2").val() == "") {
                alert("Please enter date of Form checked by PSBI Study Physician ");
                $("#AS3_B2").focus();
                return false;
            }


            return true;

        }

    </script>

</head>
<body class="vertical-layout vertical-menu 2-columns fixed-navbar" data-open="click" data-menu="vertical-menu" data-color="bg-blue" data-col="2-columns">
    <form id="form1" name="form1" runat="server" autocomplete="off" enctype="multipart/form-data">

        <!-- BEGIN: Header-->
        <nav class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light">
            <div class="navbar-wrapper">
                <div class="navbar-container content">
                    <div class="collapse navbar-collapse show" id="navbar-mobile">
                        <ul class="nav navbar-nav mr-auto float-left">
                            <li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu font-large-1"></i></a></li>
                            <li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu"></i></a></li>
                            <li class="nav-item d-none d-md-block"><a class="nav-link nav-link-expand" href="#"><i class="ficon ft-maximize"></i></a></li>
                            <li class="dropdown nav-item mega-dropdown d-none d-md-block"><%--<a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown">Mega</a>--%>
                                <ul class="mega-dropdown-menu dropdown-menu row">
                                    <li class="col-md-2">
                                        <h6 class="dropdown-menu-header text-uppercase mb-1"><i class="ft-link"></i>Quick Links</h6>
                                        <ul>
                                            <li><a class="my-1" href="chat-application.html"><i class="ft-home"></i>Chat</a></li>
                                            <li><a class="my-1" href="table-bootstrap.html"><i class="ft-grid"></i>Tables</a></li>
                                            <li><a class="my-1" href="chartist-charts.html"><i class="ft-bar-chart"></i>Charts</a></li>
                                            <li><a class="my-1" href="gallery-grid.html"><i class="ft-sidebar"></i>Gallery</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-md-3">
                                        <h6 class="dropdown-menu-header text-uppercase mb-1"><i class="ft-star"></i>My Bookmarks</h6>
                                        <ul class="ml-2">
                                            <li class="list-style-circle"><a class="my-1" href="card-bootstrap.html">Cards</a></li>
                                            <li class="list-style-circle"><a class="my-1" href="full-calender.html">Calender</a></li>
                                            <li class="list-style-circle"><a class="my-1" href="invoice-template.html">Invoice</a></li>
                                            <li class="list-style-circle"><a class="my-1" href="users-contacts.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-md-4">
                                        <h6 class="dropdown-menu-header text-uppercase mb-1"><i class="ft-thumbs-up"></i>Get in touch</h6>
                                        <div class="form-body">
                                            <div class="form-group row">
                                                <label class="col-sm-3 form-control-label" for="inputName1">Name</label>
                                                <div class="col-sm-9">
                                                    <div class="position-relative has-icon-left">
                                                        <input class="form-control" id="inputName1" runat="server" type="text">
                                                        <div class="form-control-position pl-1"><i class="ft-user"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 form-control-label" for="inputContact1">Contact</label>
                                                <div class="col-sm-9">
                                                    <div class="position-relative has-icon-left">
                                                        <input class="form-control" id="inputContact1" type="text" placeholder="(123)-456-7890">
                                                        <div class="form-control-position pl-1"><i class="ft-smartphone"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 form-control-label" for="inputEmail1">Email</label>
                                                <div class="col-sm-9">
                                                    <div class="position-relative has-icon-left">
                                                        <input class="form-control" id="inputEmail1" type="email" placeholder="john@example.com">
                                                        <div class="form-control-position pl-1"><i class="ft-mail"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 form-control-label" for="inputMessage1">Message</label>
                                                <div class="col-sm-9">
                                                    <div class="position-relative has-icon-left">
                                                        <textarea class="form-control" id="inputMessage1" rows="2" placeholder="Simple Textarea"></textarea>
                                                        <div class="form-control-position pl-1"><i class="ft-message-circle"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 mb-1">
                                                    <button class="btn btn-danger float-right" type="button"><i class="ft-arrow-right"></i>Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown d-none d-md-block mr-1"><%--<a class="dropdown-toggle nav-link" id="apps-navbar-links" href="#" data-toggle="dropdown">Apps</a>--%>
                                <div class="dropdown-menu">
                                    <div class="arrow_box"><a class="dropdown-item" href="email-application.html"><i class="ft-user"></i>Email</a><a class="dropdown-item" href="chat-application.html"><i class="ft-mail"></i> Chat</a><a class="dropdown-item" href="project-summary.html"><i class="ft-briefcase"></i> Project Summary            </a><a class="dropdown-item" href="full-calender.html"><i class="ft-calendar"></i>Calendar1            </a></div>
                                </div>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav float-right">
                            <li class="dropdown dropdown-language nav-item"><a class="dropdown-toggle nav-link" id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:LinkButton ID="usernme" name="usernme" runat="server" CssClass="dropdown-toggle nav-link"><i class="ft-power"></i>Welcome:</asp:LinkButton>
                            </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- END: Header-->


        <!-- BEGIN: Main Menu-->
        <div class="main-menu menu-fixed menu-light menu-accordion    menu-shadow " data-scroll-to-active="true" data-img="Content/demo/chameleon-admin-template/app-assets/images/backgrounds/02.jpg">
            <div class="navbar-header">
                <ul class="nav navbar-nav flex-row">
                    <li class="nav-item mr-auto"><a class="navbar-brand" href="main.aspx">
                        <h3 class="brand-text">Sample Forms</h3>
                    </a></li>
                    <li class="nav-item d-md-none"><a class="nav-link close-navbar"><i class="ft-x"></i></a></li>
                </ul>
            </div>
            <div class="navigation-background"></div>
            <div class="main-menu-content">
                <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
                    <li class="nav-item"><a href="sample_recv.aspx"><span style="font-family: Verdana">Sample Receiving</span></a>
                        <%--<ul class="menu-content">
                            <li><a class="active" href="form.aspx">Employee Entry</a>
                            </li>
                            <li><a class="menu-item" href="emplist.aspx">Employee List</a>
                            </li>
                            <li><a class="menu-item" href="form-switch.html">Change Password</a>
                            </li>
                        </ul>--%>
                    </li>
                    <li class="nav-item"><a href="sample_results.aspx"><span class="menu-title" data-i18n=""><span style="font-family: Verdana">Lab Results</span></span></a>
                    <li class="nav-item">
                        <asp:LinkButton Style="font-family: Verdana" runat="server" OnClick="Unnamed_Click">Logout</asp:LinkButton>
                </ul>
            </div>
        </div>
        <!-- END: Main Menu-->

        <!-- BEGIN: Content-->
        <div class="app-content content">
            <div class="content-wrapper">
                <div class="content-wrapper-before"></div>
                <div class="content-header row">
                    <div class="content-header-left col-12 mb-2">
                        <span style="font-family: Verdana; font-size: 1.6rem; color: white;">PSBI Lab Management System</span>
                    </div>
                </div>
                <div class="content-body">

                    <div class="content-body">
                        <!-- Basic form layout section start -->
                        <section id="horizontal-form-layouts">
                            <div class="row">
                                <div class="col-xl-6 col-lg-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title" id="horz-layout-basic"></h4>
                                            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                            <div class="heading-elements">
                                                <ul class="list-inline mb-0">
                                                    <%--<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                    <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                    <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                    <li><a data-action="close"><i class="ft-x"></i></a></li>--%>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-content collpase show">
                                            <div class="card-body">
                                                <div class="form-body">

                                                    <h4 class="form-section"><i class="ft-clipboard"></i>Sample Details</h4>

                                                    <br />

                                                    <div class="form-group row">
                                                        <div class="col-md-9">
                                                            <asp:Label runat="server" Style="color: #FF0000" ID="lblerr" name="lblerr"></asp:Label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Screening number</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_screening_ID" class="form-control" name="AS1_screening_ID" onkeypress="return numeralsOnly(event);"></asp:TextBox>
                                                            <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="AS1_screening_ID" MaskType="Number" AutoComplete="false" ClearMaskOnLostFocus="false" Mask="99-9-9999"></cc1:MaskedEditExtender>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Randomization ID</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_rand_id" class="form-control" name="AS1_rand_id" onkeypress="return numeralsOnly(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Name</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_name" class="form-control" name="AS1_name" onkeypress="return lettersOnly_WithSpace(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Gender</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls1" GroupName="AS1_sex" name="input-radio-3" ID="AS1_sex_a" />
                                                                <label for="input-radio-11">Male</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls1" GroupName="AS1_sex" name="input-radio-3" ID="AS1_sex_b" />
                                                                <label for="input-radio-12">Female</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Age</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_age" MaxLength="2" class="form-control" name="AS1_age" onkeypress="return numeralsOnly(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Specimen ID</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_barcode" class="form-control" name="AS1_barcode" onkeypress="return RestrictSpecialCharacters(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Field site hospital name</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="AS1_fsite" name="AS1_fsite_1" ID="AS1_fsite_1" />
                                                                <label for="input-radio-11">AKU KHARADAR HOSPITAL</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="AS1_fsite" name="AS1_fsite_2" ID="AS1_fsite_2" />
                                                                <label for="input-radio-12">SINDH GOVERNMENT CHILDREN HOSPITAL</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="AS1_fsite" name="AS1_fsite_3" ID="AS1_fsite_3" />
                                                                <label for="input-radio-12">Liyari General Hospital</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Sample Collected</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls3" GroupName="AS1_Samp" name="AS1_Samp_1" ID="AS1_Samp_1" />
                                                                <label for="input-radio-11">CBC</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls3" GroupName="AS1_Samp" name="AS1_Samp_2" ID="AS1_Samp_2" />
                                                                <label for="input-radio-12">Blood Culture</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls3" GroupName="AS1_Samp" name="AS1_Samp_3" ID="AS1_Samp_3" />
                                                                <label for="input-radio-12">Metagenomics</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls3" GroupName="AS1_Samp" name="AS1_Samp_4" ID="AS1_Samp_4" />
                                                                <label for="input-radio-12">CRP</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">CBC Sample Collected In EDTA tube</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls4" GroupName="AS1_Q1_1" name="AS1_Q1_11" ID="AS1_Q1_11" />
                                                                <label for="input-radio-11">RCT 1</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls4" GroupName="AS1_Q1_1" name="AS1_Q1_12" ID="AS1_Q1_12" />
                                                                <label for="input-radio-12">RCT 2</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Volume of blood for CBC mL</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_Q1_2" MaxLength="6" class="form-control" name="AS1_Q1_2" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Blood Culture Sample collection</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls5" GroupName="AS1_Q2_1" name="AS1_Q2_11" ID="AS1_Q2_11" />
                                                                <label for="input-radio-11">RCT 1</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls5" GroupName="AS1_Q2_1" name="AS1_Q2_12" ID="AS1_Q2_12" />
                                                                <label for="input-radio-12">RCT 2</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Volume of blood in Paeds BacT Alert Paeds bottle ml</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_Q2_2" MaxLength="6" class="form-control" name="AS1_Q2_2" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Metagenomics Sample collection</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls6" GroupName="AS1_Q3" name="AS1_Q3_1" ID="AS1_Q3_1" />
                                                                <label for="input-radio-11">RCT 1</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls6" GroupName="AS1_Q3" name="AS1_Q3_2" ID="AS1_Q3_2" />
                                                                <label for="input-radio-12">RCT 2</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <asp:Panel runat="server" ID="pnl_AS1_Q3a_1">
                                                        <div class="form-group row">
                                                            <label class="col-md-3 label-control" for="projectinput5">CRP Sample Collected In Gel tube</label>
                                                            <div class="col-md-6 col-sm-12">
                                                                <fieldset>
                                                                    <asp:RadioButton runat="server" class=".radiocls7" GroupName="AS1_Q3a_1" name="AS1_Q3a_11" ID="AS1_Q3a_11" />
                                                                    <label for="input-radio-11">RCT 1</label>
                                                                </fieldset>
                                                                <fieldset>
                                                                    <asp:RadioButton runat="server" class=".radiocls7" GroupName="AS1_Q3a_1" name="AS1_Q3a_12" ID="AS1_Q3a_12" />
                                                                    <label for="input-radio-12">RCT 2</label>
                                                                </fieldset>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>


                                                    <asp:Panel runat="server" ID="pnl_AS1_Q3a_2">
                                                        <div class="form-group row">
                                                            <label class="col-md-3 label-control" for="projectinput5">Volume of blood for CBC ml</label>
                                                            <div class="col-md-9">
                                                                <asp:TextBox runat="server" ID="AS1_Q3a_2" MaxLength="6" class="form-control" name="AS1_Q3a_2" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Collection time (hh:mm 24 hr clock)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_Q4" class="form-control" name="AS1_Q4"></asp:TextBox>
                                                            <script src="Scripts/timepicker/timepicki.js"></script>
                                                            <script>
                                                                $('#<%=AS1_Q4.ClientID%>').timepicki();
                                                            </script>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Collection date (dd:mm:yy)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_Q5" class="form-control" name="AS1_Q5"></asp:TextBox>
                                                            <div id="Div1" runat="server">
                                                                <script type="text/javascript">
                                                                    $(document).ready(function () {
                                                                        $('#<%=AS1_Q5.ClientID%>').datepicker({
                                                                            dateFormat: 'dd/mm/yy',
                                                                            focusOn: 'button',
                                                                            onSelect: function () { },
                                                                            onClose: function () { $(this).focus(); }
                                                                        });
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Name of Phlebotomist</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS1_Q6" class="form-control" name="AS1_Q6" onkeypress="return lettersOnly_WithSpace(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">CBC EDTA tube Received</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls8" GroupName="AS2_Q7_1" name="AS2_Q7_11" ID="AS2_Q7_11" />
                                                                <label for="input-radio-11">Yes</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls8" GroupName="AS2_Q7_1" name="AS2_Q7_12" ID="AS2_Q7_12" />
                                                                <label for="input-radio-12">No</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">CBC EDTA tube Charged at AKU clinical lab (L Number)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q7_2" class="form-control" name="AS2_Q7_2" onkeypress="return RestrictSpecialCharacters_New2(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">BacT Alert Paeds Bottle Received (Difference : Weight Before –Weight after)</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls9" GroupName="AS2_Q8" name="AS2_Q8_1" ID="AS2_Q8_1" />
                                                                <label for="input-radio-11">Yes</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls9" GroupName="AS2_Q8" name="AS2_Q8_2" ID="AS2_Q8_2" />
                                                                <label for="input-radio-12">No</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label id="lbl_AS2_Q8_3" runat="server" class="col-md-3 label-control" for="projectinput5">Weight in gm</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q8_3" class="form-control" name="AS2_Q8_3" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <asp:Panel runat="server" ID="pnl_AS2_Q8a">
                                                        <div class="form-group row">
                                                            <label class="col-md-3 label-control" for="projectinput5">CRP Gel tube Received</label>
                                                            <div class="col-md-6 col-sm-12">
                                                                <fieldset>
                                                                    <asp:RadioButton runat="server" class=".radiocls10" GroupName="AS2_Q8a" name="AS2_Q8a_1" ID="AS2_Q8a_1" />
                                                                    <label for="input-radio-11">Yes</label>
                                                                </fieldset>
                                                                <fieldset>
                                                                    <asp:RadioButton runat="server" class=".radiocls10" GroupName="AS2_Q8a" name="AS2_Q8a_2" ID="AS2_Q8a_2" />
                                                                    <label for="input-radio-12">No</label>
                                                                </fieldset>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Date received (dd/mm/yyyy)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q9" class="form-control" name="AS2_Q9"></asp:TextBox>
                                                            <div id="Div4662" runat="server">
                                                                <script type="text/javascript">
                                                                    $(document).ready(function () {
                                                                        $('#<%=AS2_Q9.ClientID%>').datepicker({
                                                                            dateFormat: 'dd/mm/yy',
                                                                            focusOn: 'button',
                                                                            onSelect: function () { },
                                                                            onClose: function () { $(this).focus(); }
                                                                        });
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">
                                                            Time received (hh:mm, 24 hr clock)
                                                        </label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q10" class="form-control" name="AS2_Q10"></asp:TextBox>
                                                            <script src="Scripts/timepicker/timepicki.js"></script>
                                                            <script>
                                                                $('#<%=AS2_Q10.ClientID%>').timepicki();
                                                            </script>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Condition of sample container received</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls11" GroupName="AS2_Q11" name="AS2_Q11_1" ID="AS2_Q11_1" />
                                                                <label for="input-radio-11">Intact</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls11" GroupName="AS2_Q11" name="AS2_Q11_2" ID="AS2_Q11_2" />
                                                                <label for="input-radio-12">Physical damage</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Temperature of the Coleman upon arrival at the lab (CBC tube)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q12_1" class="form-control" name="AS2_Q12_1" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Temperature of the Coleman upon arrival at the lab (BacT Alert Peads bottle)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q12_2" class="form-control" name="AS2_Q12_2" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Temperature of the Coleman upon arrival at the lab (Metagenomics)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q12_3" class="form-control" name="AS2_Q12_3" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Temperature of the Coleman upon arrival at the lab (CRP Gel tube)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q12_4" class="form-control" name="AS2_Q12_4" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Name of the laboratory person receiving the sample</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS2_Q13" class="form-control" name="AS2_Q13" onkeypress="return lettersOnly_WithSpace(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Name of IDRL laboratory person receiving the sample</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q14" class="form-control" name="AS3_Q14" onkeypress="return lettersOnly_WithSpace(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Time received (hh:mm 24 hr clock)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q15" class="form-control" name="AS3_Q15"></asp:TextBox>
                                                            <script src="Scripts/timepicker/timepicki.js"></script>
                                                            <script>
                                                                $('#<%=AS3_Q15.ClientID%>').timepicki();
                                                            </script>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Temperature of the Coleman upon arrival at the NRL lab</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q16" class="form-control" name="AS3_Q16" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Time of Serum separation (hh:mm 24 hr clock)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q17" class="form-control" name="AS3_Q17"></asp:TextBox>
                                                            <script src="Scripts/timepicker/timepicki.js"></script>
                                                            <script>
                                                                $('#<%=AS3_Q17.ClientID%>').timepicki();
                                                            </script>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">No. of Aliquots made</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q18" MaxLength="4" class="form-control" name="AS3_Q18" onkeypress="return numeralsOnly(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Volume in each aliquot</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q19" MaxLength="6" class="form-control" name="AS3_Q19" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Time Aliquots placed in ULT Freezer</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Q20" class="form-control" name="AS3_Q20"></asp:TextBox>
                                                            <script src="Scripts/timepicker/timepicki.js"></script>
                                                            <script>
                                                                $('#<%=AS3_Q20.ClientID%>').timepicki();
                                                            </script>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Remarks (if any)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_Remarks" class="form-control" TextMode="MultiLine" Rows="5" name="AS3_Remarks" onkeypress="return RestrictSpecialCharacters(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Form checked by PSBI Laboratory Person</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_A1" class="form-control" name="AS3_A1" onkeypress="return RestrictSpecialCharacters(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Date (dd/mm/yyyy)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_A2" class="form-control" name="AS3_A2"></asp:TextBox>
                                                            <div id="Div288" runat="server">
                                                                <script type="text/javascript">
                                                                    $(document).ready(function () {
                                                                        $('#<%=AS3_A2.ClientID%>').datepicker({
                                                                            dateFormat: 'dd/mm/yy',
                                                                            focusOn: 'button',
                                                                            onSelect: function () { },
                                                                            onClose: function () { $(this).focus(); }
                                                                        });
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Form checked by PSBI Study Physician</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_B1" class="form-control" name="AS3_B1" onkeypress="return RestrictSpecialCharacters(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Date (dd/mm/yyyy)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" ID="AS3_B2" class="form-control" name="AS3_B2"></asp:TextBox>
                                                            <div id="Div42" runat="server">
                                                                <script type="text/javascript">
                                                                    $(document).ready(function () {
                                                                        $('#<%=AS3_B2.ClientID%>').datepicker({
                                                                            dateFormat: 'dd/mm/yy',
                                                                            focusOn: 'button',
                                                                            onSelect: function () { },
                                                                            onClose: function () { $(this).focus(); }
                                                                        });
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>


                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>

                                                        <div class="form-actions left">
                                                            <asp:Button runat="server" ID="cmdSave" class="btn btn-danger mr-1" Text=" Save " OnClick="cmdSave_Click"></asp:Button>
                                                            <asp:Button ID="cmdCancel" runat="server" class="btn btn-primary" Text="Cancel" OnClick="cmdCancel_Click"></asp:Button>
                                                        </div>


                                                    </ContentTemplate>
                                                </asp:UpdatePanel>

                                                <%--<div class="form-actions right">
                                    <button type="button" class="btn btn-danger mr-1">
                                        <i class="ft-x"></i>Cancel
	                           
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i>Save
	                           
                                    </button>
                                </div>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- // Basic form layout section end -->
                    </div>


                </div>
            </div>
        </div>
        <!-- END: Content-->


        <!-- BEGIN: Footer-->
        <%--<a class="btn btn-try-builder btn-bg-gradient-x-purple-red btn-glow white" href="https://www.themeselection.com/layout-builder/horizontal" target="_blank">Try Layout Builder</a>--%>
        <footer class="footer footer-static footer-light navbar-border navbar-shadow">
            <div class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">
                <span class="float-none d-block d-md-inline-block">Designed and developed by <a class="text-bold-800 grey darken-2" href="https://themeselection.com/" target="_blank">Paeds Department</a> &copy; Copyright <% Response.Write(DateTime.Now.Year.ToString()); %></span>
                <%--<ul class="list-inline float-md-right d-block d-md-inline-blockd-none d-lg-block mb-0">
                    <li class="list-inline-item"><a class="my-1" href="https://themeselection.com/" target="_blank">More themes</a></li>
                    <li class="list-inline-item"><a class="my-1" href="https://themeselection.com/support" target="_blank">Support</a></li>
                </ul>--%>
            </div>
        </footer>
        <!-- END: Footer-->


        <!-- BEGIN: Vendor JS-->
        <script src="Content/demo/chameleon-admin-template/app-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
        <script src="Content/demo/chameleon-admin-template/app-assets/vendors/js/forms/toggle/switchery.min.js" type="text/javascript"></script>
        <script src="Content/demo/chameleon-admin-template/app-assets/js/scripts/forms/switch.min.js" type="text/javascript"></script>
        <!-- BEGIN Vendor JS-->


        <!-- END: Page Vendor JS-->
        <script src="Content/demo/chameleon-admin-template/app-assets/js/core/app-menu.min.js" type="text/javascript"></script>
        <script src="Content/demo/chameleon-admin-template/app-assets/js/core/app.min.js" type="text/javascript"></script>
        <script src="Content/demo/chameleon-admin-template/app-assets/js/scripts/customizer.min.js" type="text/javascript"></script>
        <script src="Content/demo/chameleon-admin-template/app-assets/vendors/js/jquery.sharrre.js" type="text/javascript"></script>
        <!-- END: Theme JS-->



        <!-- END: Body-->

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />


    </form>
</body>
</html>
