<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample_results_20220104.aspx.cs" Inherits="PSBI_Lab2012.sample_results_20220104" %>

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

        $(document).on("blur", "#la_sno", function (e) {

            $
                .ajax({
                    url: "sample_results.aspx/CheckScreeningID",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: "{ screeningid: '" + $('#la_sno').val() + "'}",

                    success: function (
                        data) {

                        if (data.d == "") {
                            alert("Screening id not found");

                            $("#la_fsite").val("");
                            $("#la_rand").val("");
                            $("#la_spec").val("");
                            $("#la_name").val("");
                            $("#la_gen").val("");
                            $("#la_age").val("");
                            $("#la_obj").val("");

                            $("#cmdSave").hide();
                        }
                        else {
                            $("#la_fsite").val(data.d[0]["AS1_fsite"]);
                            $("#la_rand").val(data.d[0]["AS1_rand_id"]);
                            $("#la_spec").val(data.d[0]["AS1_barcode"]);
                            $("#la_name").val(data.d[0]["AS1_name"]);
                            $("#la_gen").val(data.d[0]["AS1_sex"]);
                            $("#la_age").val(data.d[0]["AS1_age"]);
                            $("#la_obj").val(data.d[0]["AS1_Q1_1"]);

                            $("#cmdSave").show();
                        }

                    },
                    error: function (
                        xhr,
                        ajaxOptions,
                        thrownError) {

                        alert('Error: ');

                    }
                });

        });

    </script>


    <script>

        $(document).on("change", "#LA_03_v", function () {
            ShowHide_TextBox($("input[name=LA_03]:checked").val(), $("#LA_03_a"), "LA_03_v", $("#lbl_LA_03_a"));
        });


        $(document).on("change", "#LA_03_b", function () {
            ShowHide_TextBox($("input[name=LA_03]:checked").val(), $("#LA_03_a"), "LA_03_v", $("#lbl_LA_03_a"));
        });


        $(document).on("change", "#LA_03_c", function () {
            ShowHide_TextBox($("input[name=LA_03]:checked").val(), $("#LA_03_a"), "LA_03_v", $("#lbl_LA_03_a"));
        });




        $(document).on("change", "#LA_04_v", function () {
            ShowHide_TextBox($("input[name=LA_04]:checked").val(), $("#LA_04_a"), "LA_04_v", $("#lbl_LA_04_a"));
        });


        $(document).on("change", "#LA_04_b", function () {
            ShowHide_TextBox($("input[name=LA_04]:checked").val(), $("#LA_04_a"), "LA_04_v", $("#lbl_LA_04_a"));
        });


        $(document).on("change", "#LA_04_c", function () {
            ShowHide_TextBox($("input[name=LA_04]:checked").val(), $("#LA_04_a"), "LA_04_v", $("#lbl_LA_04_a"));
        });




        $(document).on("change", "#LA_05_v", function () {
            ShowHide_TextBox($("input[name=LA_05]:checked").val(), $("#LA_05_a"), "LA_05_v", $("#lbl_LA_05_a"));
        });


        $(document).on("change", "#LA_05_b", function () {
            ShowHide_TextBox($("input[name=LA_05]:checked").val(), $("#LA_05_a"), "LA_05_v", $("#lbl_LA_05_a"));
        });


        $(document).on("change", "#LA_05_c", function () {
            ShowHide_TextBox($("input[name=LA_05]:checked").val(), $("#LA_05_a"), "LA_05_v", $("#lbl_LA_05_a"));
        });





        $(document).on("change", "#LA_06_v", function () {
            ShowHide_TextBox($("input[name=LA_06]:checked").val(), $("#LA_06_a"), "LA_06_v", $("#lbl_LA_06_a"));
        });


        $(document).on("change", "#LA_06_b", function () {
            ShowHide_TextBox($("input[name=LA_06]:checked").val(), $("#LA_06_a"), "LA_06_v", $("#lbl_LA_06_a"));
        });


        $(document).on("change", "#LA_06_c", function () {
            ShowHide_TextBox($("input[name=LA_06]:checked").val(), $("#LA_06_a"), "LA_06_v", $("#lbl_LA_06_a"));
        });





        $(document).on("change", "#LA_07_v", function () {
            ShowHide_TextBox($("input[name=LA_07]:checked").val(), $("#LA_07_a"), "LA_07_v", $("#lbl_LA_07_a"));
        });


        $(document).on("change", "#LA_07_b", function () {
            ShowHide_TextBox($("input[name=LA_07]:checked").val(), $("#LA_07_a"), "LA_07_v", $("#lbl_LA_07_a"));
        });


        $(document).on("change", "#LA_07_c", function () {
            ShowHide_TextBox($("input[name=LA_07]:checked").val(), $("#LA_07_a"), "LA_07_v", $("#lbl_LA_07_a"));
        });





        $(document).on("change", "#LA_08_v", function () {
            ShowHide_TextBox($("input[name=LA_08]:checked").val(), $("#LA_08_a"), "LA_08_v", $("#lbl_LA_08_a"));
        });


        $(document).on("change", "#LA_08_b", function () {
            ShowHide_TextBox($("input[name=LA_08]:checked").val(), $("#LA_08_a"), "LA_08_v", $("#lbl_LA_08_a"));
        });


        $(document).on("change", "#LA_08_c", function () {
            ShowHide_TextBox($("input[name=LA_08]:checked").val(), $("#LA_08_a"), "LA_08_v", $("#lbl_LA_08_a"));
        });




        $(document).on("change", "#LA_09_v", function () {
            ShowHide_TextBox($("input[name=LA_09]:checked").val(), $("#LA_09_a"), "LA_09_v", $("#lbl_LA_09_a"));
        });


        $(document).on("change", "#LA_09_b", function () {
            ShowHide_TextBox($("input[name=LA_09]:checked").val(), $("#LA_09_a"), "LA_09_v", $("#lbl_LA_09_a"));
        });


        $(document).on("change", "#LA_09_c", function () {
            ShowHide_TextBox($("input[name=LA_09]:checked").val(), $("#LA_09_a"), "LA_09_v", $("#lbl_LA_09_a"));
        });





        $(document).on("change", "#LA_10_v", function () {
            ShowHide_TextBox($("input[name=LA_10]:checked").val(), $("#LA_10_a"), "LA_10_v", $("#lbl_LA_10_a"));
        });


        $(document).on("change", "#LA_10_b", function () {
            ShowHide_TextBox($("input[name=LA_10]:checked").val(), $("#LA_10_a"), "LA_10_v", $("#lbl_LA_10_a"));
        });


        $(document).on("change", "#LA_10_c", function () {
            ShowHide_TextBox($("input[name=LA_10]:checked").val(), $("#LA_10_a"), "LA_10_v", $("#lbl_LA_10_a"));
        });





        $(document).on("change", "#LA_11_v", function () {
            ShowHide_TextBox($("input[name=LA_11]:checked").val(), $("#LA_11_a"), "LA_11_v", $("#lbl_LA_11_a"));
        });


        $(document).on("change", "#LA_11_b", function () {
            ShowHide_TextBox($("input[name=LA_11]:checked").val(), $("#LA_11_a"), "LA_11_v", $("#lbl_LA_11_a"));
        });


        $(document).on("change", "#LA_11_c", function () {
            ShowHide_TextBox($("input[name=LA_11]:checked").val(), $("#LA_11_a"), "LA_11_v", $("#lbl_LA_11_a"));
        });





        $(document).on("change", "#LA_12_v", function () {
            ShowHide_TextBox($("input[name=LA_12]:checked").val(), $("#LA_12_a"), "LA_12_v", $("#lbl_LA_12_a"));
        });


        $(document).on("change", "#LA_12_b", function () {
            ShowHide_TextBox($("input[name=LA_12]:checked").val(), $("#LA_12_a"), "LA_12_v", $("#lbl_LA_12_a"));
        });


        $(document).on("change", "#LA_12_c", function () {
            ShowHide_TextBox($("input[name=LA_12]:checked").val(), $("#LA_12_a"), "LA_12_v", $("#lbl_LA_12_a"));
        });





        $(document).on("change", "#LA_13_v", function () {
            ShowHide_TextBox($("input[name=LA_13]:checked").val(), $("#LA_13_a"), "LA_13_v", $("#lbl_LA_13_a"));
        });


        $(document).on("change", "#LA_13_b", function () {
            ShowHide_TextBox($("input[name=LA_13]:checked").val(), $("#LA_13_a"), "LA_13_v", $("#lbl_LA_13_a"));
        });


        $(document).on("change", "#LA_13_c", function () {
            ShowHide_TextBox($("input[name=LA_13]:checked").val(), $("#LA_13_a"), "LA_13_v", $("#lbl_LA_13_a"));
        });





        $(document).on("change", "#LA_14_v", function () {
            ShowHide_TextBox($("input[name=LA_14]:checked").val(), $("#LA_14_a"), "LA_14_v", $("#lbl_LA_14_a"));
        });


        $(document).on("change", "#LA_14_b", function () {
            ShowHide_TextBox($("input[name=LA_14]:checked").val(), $("#LA_14_a"), "LA_14_v", $("#lbl_LA_14_a"));
        });


        $(document).on("change", "#LA_14_c", function () {
            ShowHide_TextBox($("input[name=LA_14]:checked").val(), $("#LA_14_a"), "LA_14_v", $("#lbl_LA_14_a"));
        });





        $(document).on("change", "#LA_15_v", function () {
            ShowHide_TextBox($("input[name=LA_15]:checked").val(), $("#LA_15_a"), "LA_15_v", $("#lbl_LA_15_a"));
        });


        $(document).on("change", "#LA_15_b", function () {
            ShowHide_TextBox($("input[name=LA_15]:checked").val(), $("#LA_15_a"), "LA_15_v", $("#lbl_LA_15_a"));
        });


        $(document).on("change", "#LA_15_c", function () {
            ShowHide_TextBox($("input[name=LA_15]:checked").val(), $("#LA_15_a"), "LA_15_v", $("#lbl_LA_15_a"));
        });




        $(document).on("change", "#LA_16_v", function () {
            ShowHide_TextBox($("input[name=LA_16]:checked").val(), $("#LA_16_a"), "LA_16_v", $("#lbl_LA_16_a"));
        });


        $(document).on("change", "#LA_16_b", function () {
            ShowHide_TextBox($("input[name=LA_16]:checked").val(), $("#LA_16_a"), "LA_16_v", $("#lbl_LA_16_a"));
        });


        $(document).on("change", "#LA_16_c", function () {
            ShowHide_TextBox($("input[name=LA_16]:checked").val(), $("#LA_16_a"), "LA_16_v", $("#lbl_LA_16_a"));
        });




        $(document).on("change", "#LA_20a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_20a]:checked").val(), $("#LA_20a_a"), "LA_20a_v", $("#lbl_LA_20a_a"), $("input[name=LA_20b]"), $("#lbl_LA_20b"), $("#lbl_LA_20b_s"), $("#lbl_LA_20b_r"), $("#lbl_LA_20b_i"));
        });


        $(document).on("change", "#LA_20a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_20a]:checked").val(), $("#LA_20a_a"), "LA_20a_v", $("#lbl_LA_20a_a"), $("input[name=LA_20b]"), $("#lbl_LA_20b"), $("#lbl_LA_20b_s"), $("#lbl_LA_20b_r"), $("#lbl_LA_20b_i"));
        });


        $(document).on("change", "#LA_20a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_20a]:checked").val(), $("#LA_20a_a"), "LA_20a_v", $("#lbl_LA_20a_a"), $("input[name=LA_20b]"), $("#lbl_LA_20b"), $("#lbl_LA_20b_s"), $("#lbl_LA_20b_r"), $("#lbl_LA_20b_i"));
        });





        $(document).on("change", "#LA_21a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_21a]:checked").val(), $("#LA_21a_a"), "LA_21a_v", $("#lbl_LA_21a_a"), $("input[name=LA_21b]"), $("#lbl_LA_21b"), $("#lbl_LA_21b_s"), $("#lbl_LA_21b_r"), $("#lbl_LA_21b_i"));
        });


        $(document).on("change", "#LA_21a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_21a]:checked").val(), $("#LA_21a_a"), "LA_21a_v", $("#lbl_LA_21a_a"), $("input[name=LA_21b]"), $("#lbl_LA_21b"), $("#lbl_LA_21b_s"), $("#lbl_LA_21b_r"), $("#lbl_LA_21b_i"));
        });


        $(document).on("change", "#LA_21a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_21a]:checked").val(), $("#LA_21a_a"), "LA_21a_v", $("#lbl_LA_21a_a"), $("input[name=LA_21b]"), $("#lbl_LA_21b"), $("#lbl_LA_21b_s"), $("#lbl_LA_21b_r"), $("#lbl_LA_21b_i"));
        });







        $(document).on("change", "#LA_22a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_22a]:checked").val(), $("#LA_22a_a"), "LA_22a_v", $("#lbl_LA_22a_a"), $("input[name=LA_22b]"), $("#lbl_LA_22b"), $("#lbl_LA_22b_s"), $("#lbl_LA_22b_r"), $("#lbl_LA_22b_i"));
        });


        $(document).on("change", "#LA_22a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_22a]:checked").val(), $("#LA_22a_a"), "LA_22a_v", $("#lbl_LA_22a_a"), $("input[name=LA_22b]"), $("#lbl_LA_22b"), $("#lbl_LA_22b_s"), $("#lbl_LA_22b_r"), $("#lbl_LA_22b_i"));
        });


        $(document).on("change", "#LA_22a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_22a]:checked").val(), $("#LA_22a_a"), "LA_22a_v", $("#lbl_LA_22a_a"), $("input[name=LA_22b]"), $("#lbl_LA_22b"), $("#lbl_LA_22b_s"), $("#lbl_LA_22b_r"), $("#lbl_LA_22b_i"));
        });






        $(document).on("change", "#LA_23a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_23a]:checked").val(), $("#LA_23a_a"), "LA_23a_v", $("#lbl_LA_23a_a"), $("input[name=LA_23b]"), $("#lbl_LA_23b"), $("#lbl_LA_23b_s"), $("#lbl_LA_23b_r"), $("#lbl_LA_23b_i"));
        });


        $(document).on("change", "#LA_23a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_23a]:checked").val(), $("#LA_23a_a"), "LA_23a_v", $("#lbl_LA_23a_a"), $("input[name=LA_23b]"), $("#lbl_LA_23b"), $("#lbl_LA_23b_s"), $("#lbl_LA_23b_r"), $("#lbl_LA_23b_i"));
        });


        $(document).on("change", "#LA_23a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_23a]:checked").val(), $("#LA_23a_a"), "LA_23a_v", $("#lbl_LA_23a_a"), $("input[name=LA_23b]"), $("#lbl_LA_23b"), $("#lbl_LA_23b_s"), $("#lbl_LA_23b_r"), $("#lbl_LA_23b_i"));
        });




        $(document).on("change", "#LA_24a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_24a]:checked").val(), $("#LA_24a_a"), "LA_24a_v", $("#lbl_LA_24a_a"), $("input[name=LA_24b]"), $("#lbl_LA_24b"), $("#lbl_LA_24b_s"), $("#lbl_LA_24b_r"), $("#lbl_LA_24b_i"));
        });


        $(document).on("change", "#LA_24a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_24a]:checked").val(), $("#LA_24a_a"), "LA_24a_v", $("#lbl_LA_24a_a"), $("input[name=LA_24b]"), $("#lbl_LA_24b"), $("#lbl_LA_24b_s"), $("#lbl_LA_24b_r"), $("#lbl_LA_24b_i"));
        });


        $(document).on("change", "#LA_24a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_24a]:checked").val(), $("#LA_24a_a"), "LA_24a_v", $("#lbl_LA_24a_a"), $("input[name=LA_24b]"), $("#lbl_LA_24b"), $("#lbl_LA_24b_s"), $("#lbl_LA_24b_r"), $("#lbl_LA_24b_i"));
        });



        $(document).on("change", "#LA_25a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_25a]:checked").val(), $("#LA_25a_a"), "LA_25a_v", $("#lbl_LA_25a_a"), $("input[name=LA_25b]"), $("#lbl_LA_25b"), $("#lbl_LA_25b_s"), $("#lbl_LA_25b_r"), $("#lbl_LA_25b_i"));
        });


        $(document).on("change", "#LA_25a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_25a]:checked").val(), $("#LA_25a_a"), "LA_25a_v", $("#lbl_LA_25a_a"), $("input[name=LA_25b]"), $("#lbl_LA_25b"), $("#lbl_LA_25b_s"), $("#lbl_LA_25b_r"), $("#lbl_LA_25b_i"));
        });


        $(document).on("change", "#LA_25a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_25a]:checked").val(), $("#LA_25a_a"), "LA_25a_v", $("#lbl_LA_25a_a"), $("input[name=LA_25b]"), $("#lbl_LA_25b"), $("#lbl_LA_25b_s"), $("#lbl_LA_25b_r"), $("#lbl_LA_25b_i"));
        });



        $(document).on("change", "#LA_26a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_26a]:checked").val(), $("#LA_26a_a"), "LA_26a_v", $("#lbl_LA_26a_a"), $("input[name=LA_26b]"), $("#lbl_LA_26b"), $("#lbl_LA_26b_s"), $("#lbl_LA_26b_r"), $("#lbl_LA_26b_i"));
        });


        $(document).on("change", "#LA_26a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_26a]:checked").val(), $("#LA_26a_a"), "LA_26a_v", $("#lbl_LA_26a_a"), $("input[name=LA_26b]"), $("#lbl_LA_26b"), $("#lbl_LA_26b_s"), $("#lbl_LA_26b_r"), $("#lbl_LA_26b_i"));
        });


        $(document).on("change", "#LA_26a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_26a]:checked").val(), $("#LA_26a_a"), "LA_26a_v", $("#lbl_LA_26a_a"), $("input[name=LA_26b]"), $("#lbl_LA_26b"), $("#lbl_LA_26b_s"), $("#lbl_LA_26b_r"), $("#lbl_LA_26b_i"));
        });



        $(document).on("change", "#LA_27a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_27a]:checked").val(), $("#LA_27a_a"), "LA_27a_v", $("#lbl_LA_27a_a"), $("input[name=LA_27b]"), $("#lbl_LA_27b"), $("#lbl_LA_27b_s"), $("#lbl_LA_27b_r"), $("#lbl_LA_27b_i"));
        });


        $(document).on("change", "#LA_27a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_27a]:checked").val(), $("#LA_27a_a"), "LA_27a_v", $("#lbl_LA_27a_a"), $("input[name=LA_27b]"), $("#lbl_LA_27b"), $("#lbl_LA_27b_s"), $("#lbl_LA_27b_r"), $("#lbl_LA_27b_i"));
        });


        $(document).on("change", "#LA_27a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_27a]:checked").val(), $("#LA_27a_a"), "LA_27a_v", $("#lbl_LA_27a_a"), $("input[name=LA_27b]"), $("#lbl_LA_27b"), $("#lbl_LA_27b_s"), $("#lbl_LA_27b_r"), $("#lbl_LA_27b_i"));
        });



        $(document).on("change", "#LA_28a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_28a]:checked").val(), $("#LA_28a_a"), "LA_28a_v", $("#lbl_LA_28a_a"), $("input[name=LA_28b]"), $("#lbl_LA_28b"), $("#lbl_LA_28b_s"), $("#lbl_LA_28b_r"), $("#lbl_LA_28b_i"));
        });


        $(document).on("change", "#LA_28a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_28a]:checked").val(), $("#LA_28a_a"), "LA_28a_v", $("#lbl_LA_28a_a"), $("input[name=LA_28b]"), $("#lbl_LA_28b"), $("#lbl_LA_28b_s"), $("#lbl_LA_28b_r"), $("#lbl_LA_28b_i"));
        });


        $(document).on("change", "#LA_28a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_28a]:checked").val(), $("#LA_28a_a"), "LA_28a_v", $("#lbl_LA_28a_a"), $("input[name=LA_28b]"), $("#lbl_LA_28b"), $("#lbl_LA_28b_s"), $("#lbl_LA_28b_r"), $("#lbl_LA_28b_i"));
        });



        $(document).on("change", "#LA_29a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_29a]:checked").val(), $("#LA_29a_a"), "LA_29a_v", $("#lbl_LA_29a_a"), $("input[name=LA_29b]"), $("#lbl_LA_29b"), $("#lbl_LA_29b_s"), $("#lbl_LA_29b_r"), $("#lbl_LA_29b_i"));
        });


        $(document).on("change", "#LA_29a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_29a]:checked").val(), $("#LA_29a_a"), "LA_29a_v", $("#lbl_LA_29a_a"), $("input[name=LA_29b]"), $("#lbl_LA_29b"), $("#lbl_LA_29b_s"), $("#lbl_LA_29b_r"), $("#lbl_LA_29b_i"));
        });


        $(document).on("change", "#LA_29a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_29a]:checked").val(), $("#LA_29a_a"), "LA_29a_v", $("#lbl_LA_29a_a"), $("input[name=LA_29b]"), $("#lbl_LA_29b"), $("#lbl_LA_29b_s"), $("#lbl_LA_29b_r"), $("#lbl_LA_29b_i"));
        });


        $(document).on("change", "#LA_30a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_30a]:checked").val(), $("#LA_30a_a"), "LA_30a_v", $("#lbl_LA_30a_a"), $("input[name=LA_30b]"), $("#lbl_LA_30b"), $("#lbl_LA_30b_s"), $("#lbl_LA_30b_r"), $("#lbl_LA_30b_i"));
        });


        $(document).on("change", "#LA_30a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_30a]:checked").val(), $("#LA_30a_a"), "LA_30a_v", $("#lbl_LA_30a_a"), $("input[name=LA_30b]"), $("#lbl_LA_30b"), $("#lbl_LA_30b_s"), $("#lbl_LA_30b_r"), $("#lbl_LA_30b_i"));
        });


        $(document).on("change", "#LA_30a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_30a]:checked").val(), $("#LA_30a_a"), "LA_30a_v", $("#lbl_LA_30a_a"), $("input[name=LA_30b]"), $("#lbl_LA_30b"), $("#lbl_LA_30b_s"), $("#lbl_LA_30b_r"), $("#lbl_LA_30b_i"));
        });



        $(document).on("change", "#LA_31a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_31a]:checked").val(), $("#LA_31a_a"), "LA_31a_v", $("#lbl_LA_31a_a"), $("input[name=LA_31b]"), $("#lbl_LA_31b"), $("#lbl_LA_31b_s"), $("#lbl_LA_31b_r"), $("#lbl_LA_31b_i"));
        });


        $(document).on("change", "#LA_31a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_31a]:checked").val(), $("#LA_31a_a"), "LA_31a_v", $("#lbl_LA_31a_a"), $("input[name=LA_31b]"), $("#lbl_LA_31b"), $("#lbl_LA_31b_s"), $("#lbl_LA_31b_r"), $("#lbl_LA_31b_i"));
        });


        $(document).on("change", "#LA_31a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_31a]:checked").val(), $("#LA_31a_a"), "LA_31a_v", $("#lbl_LA_31a_a"), $("input[name=LA_31b]"), $("#lbl_LA_31b"), $("#lbl_LA_31b_s"), $("#lbl_LA_31b_r"), $("#lbl_LA_31b_i"));
        });



        $(document).on("change", "#LA_32a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_32a]:checked").val(), $("#LA_32a_a"), "LA_32a_v", $("#lbl_LA_32a_a"), $("input[name=LA_32b]"), $("#lbl_LA_32b"), $("#lbl_LA_32b_s"), $("#lbl_LA_32b_r"), $("#lbl_LA_32b_i"));
        });


        $(document).on("change", "#LA_32a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_32a]:checked").val(), $("#LA_32a_a"), "LA_32a_v", $("#lbl_LA_32a_a"), $("input[name=LA_32b]"), $("#lbl_LA_32b"), $("#lbl_LA_32b_s"), $("#lbl_LA_32b_r"), $("#lbl_LA_32b_i"));
        });


        $(document).on("change", "#LA_32a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_32a]:checked").val(), $("#LA_32a_a"), "LA_32a_v", $("#lbl_LA_32a_a"), $("input[name=LA_32b]"), $("#lbl_LA_32b"), $("#lbl_LA_32b_s"), $("#lbl_LA_32b_r"), $("#lbl_LA_32b_i"));
        });



        $(document).on("change", "#LA_33a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_33a]:checked").val(), $("#LA_33a_a"), "LA_33a_v", $("#lbl_LA_33a_a"), $("input[name=LA_33b]"), $("#lbl_LA_33b"), $("#lbl_LA_33b_s"), $("#lbl_LA_33b_r"), $("#lbl_LA_33b_i"));
        });


        $(document).on("change", "#LA_33a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_33a]:checked").val(), $("#LA_33a_a"), "LA_33a_v", $("#lbl_LA_33a_a"), $("input[name=LA_33b]"), $("#lbl_LA_33b"), $("#lbl_LA_33b_s"), $("#lbl_LA_33b_r"), $("#lbl_LA_33b_i"));
        });


        $(document).on("change", "#LA_33a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_33a]:checked").val(), $("#LA_33a_a"), "LA_33a_v", $("#lbl_LA_33a_a"), $("input[name=LA_33b]"), $("#lbl_LA_33b"), $("#lbl_LA_33b_s"), $("#lbl_LA_33b_r"), $("#lbl_LA_33b_i"));
        });



        $(document).on("change", "#LA_34a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_34a]:checked").val(), $("#LA_34a_a"), "LA_34a_v", $("#lbl_LA_34a_a"), $("input[name=LA_34b]"), $("#lbl_LA_34b"), $("#lbl_LA_34b_s"), $("#lbl_LA_34b_r"), $("#lbl_LA_34b_i"));
        });


        $(document).on("change", "#LA_34a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_34a]:checked").val(), $("#LA_34a_a"), "LA_34a_v", $("#lbl_LA_34a_a"), $("input[name=LA_34b]"), $("#lbl_LA_34b"), $("#lbl_LA_34b_s"), $("#lbl_LA_34b_r"), $("#lbl_LA_34b_i"));
        });


        $(document).on("change", "#LA_34a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_34a]:checked").val(), $("#LA_34a_a"), "LA_34a_v", $("#lbl_LA_34a_a"), $("input[name=LA_34b]"), $("#lbl_LA_34b"), $("#lbl_LA_34b_s"), $("#lbl_LA_34b_r"), $("#lbl_LA_34b_i"));
        });



        $(document).on("change", "#LA_35a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_35a]:checked").val(), $("#LA_35a_a"), "LA_35a_v", $("#lbl_LA_35a_a"), $("input[name=LA_35b]"), $("#lbl_LA_35b"), $("#lbl_LA_35b_s"), $("#lbl_LA_35b_r"), $("#lbl_LA_35b_i"));
        });


        $(document).on("change", "#LA_35a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_35a]:checked").val(), $("#LA_35a_a"), "LA_35a_v", $("#lbl_LA_35a_a"), $("input[name=LA_35b]"), $("#lbl_LA_35b"), $("#lbl_LA_35b_s"), $("#lbl_LA_35b_r"), $("#lbl_LA_35b_i"));
        });


        $(document).on("change", "#LA_35a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_35a]:checked").val(), $("#LA_35a_a"), "LA_35a_v", $("#lbl_LA_35a_a"), $("input[name=LA_35b]"), $("#lbl_LA_35b"), $("#lbl_LA_35b_s"), $("#lbl_LA_35b_r"), $("#lbl_LA_35b_i"));
        });



        $(document).on("change", "#LA_36a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_36a]:checked").val(), $("#LA_36a_a"), "LA_36a_v", $("#lbl_LA_36a_a"), $("input[name=LA_36b]"), $("#lbl_LA_36b"), $("#lbl_LA_36b_s"), $("#lbl_LA_36b_r"), $("#lbl_LA_36b_i"));
        });


        $(document).on("change", "#LA_36a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_36a]:checked").val(), $("#LA_36a_a"), "LA_36a_v", $("#lbl_LA_36a_a"), $("input[name=LA_36b]"), $("#lbl_LA_36b"), $("#lbl_LA_36b_s"), $("#lbl_LA_36b_r"), $("#lbl_LA_36b_i"));
        });


        $(document).on("change", "#LA_36a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_36a]:checked").val(), $("#LA_36a_a"), "LA_36a_v", $("#lbl_LA_36a_a"), $("input[name=LA_36b]"), $("#lbl_LA_36b"), $("#lbl_LA_36b_s"), $("#lbl_LA_36b_r"), $("#lbl_LA_36b_i"));
        });



        $(document).on("change", "#LA_37a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_37a]:checked").val(), $("#LA_37a_a"), "LA_37a_v", $("#lbl_LA_37a_a"), $("input[name=LA_37b]"), $("#lbl_LA_37b"), $("#lbl_LA_37b_s"), $("#lbl_LA_37b_r"), $("#lbl_LA_37b_i"));
        });


        $(document).on("change", "#LA_37a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_37a]:checked").val(), $("#LA_37a_a"), "LA_37a_v", $("#lbl_LA_37a_a"), $("input[name=LA_37b]"), $("#lbl_LA_37b"), $("#lbl_LA_37b_s"), $("#lbl_LA_37b_r"), $("#lbl_LA_37b_i"));
        });


        $(document).on("change", "#LA_37a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_37a]:checked").val(), $("#LA_37a_a"), "LA_37a_v", $("#lbl_LA_37a_a"), $("input[name=LA_37b]"), $("#lbl_LA_37b"), $("#lbl_LA_37b_s"), $("#lbl_LA_37b_r"), $("#lbl_LA_37b_i"));
        });



        $(document).on("change", "#LA_38a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_38a]:checked").val(), $("#LA_38a_a"), "LA_38a_v", $("#lbl_LA_38a_a"), $("input[name=LA_38b]"), $("#lbl_LA_38b"), $("#lbl_LA_38b_s"), $("#lbl_LA_38b_r"), $("#lbl_LA_38b_i"));
        });


        $(document).on("change", "#LA_38a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_38a]:checked").val(), $("#LA_38a_a"), "LA_38a_v", $("#lbl_LA_38a_a"), $("input[name=LA_38b]"), $("#lbl_LA_38b"), $("#lbl_LA_38b_s"), $("#lbl_LA_38b_r"), $("#lbl_LA_38b_i"));
        });


        $(document).on("change", "#LA_38a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_38a]:checked").val(), $("#LA_38a_a"), "LA_38a_v", $("#lbl_LA_38a_a"), $("input[name=LA_38b]"), $("#lbl_LA_38b"), $("#lbl_LA_38b_s"), $("#lbl_LA_38b_r"), $("#lbl_LA_38b_i"));
        });




        $(document).on("change", "#LA_39a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_39a]:checked").val(), $("#LA_39a_a"), "LA_39a_v", $("#lbl_LA_39a_a"), $("input[name=LA_39b]"), $("#lbl_LA_39b"), $("#lbl_LA_39b_s"), $("#lbl_LA_39b_r"), $("#lbl_LA_39b_i"));
        });


        $(document).on("change", "#LA_39a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_39a]:checked").val(), $("#LA_39a_a"), "LA_39a_v", $("#lbl_LA_39a_a"), $("input[name=LA_39b]"), $("#lbl_LA_39b"), $("#lbl_LA_39b_s"), $("#lbl_LA_39b_r"), $("#lbl_LA_39b_i"));
        });


        $(document).on("change", "#LA_39a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_39a]:checked").val(), $("#LA_39a_a"), "LA_39a_v", $("#lbl_LA_39a_a"), $("input[name=LA_39b]"), $("#lbl_LA_39b"), $("#lbl_LA_39b_s"), $("#lbl_LA_39b_r"), $("#lbl_LA_39b_i"));
        });



        $(document).on("change", "#LA_40a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_40a]:checked").val(), $("#LA_40a_a"), "LA_40a_v", $("#lbl_LA_40a_a"), $("input[name=LA_40b]"), $("#lbl_LA_40b"), $("#lbl_LA_40b_s"), $("#lbl_LA_40b_r"), $("#lbl_LA_40b_i"));
        });


        $(document).on("change", "#LA_40a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_40a]:checked").val(), $("#LA_40a_a"), "LA_40a_v", $("#lbl_LA_40a_a"), $("input[name=LA_40b]"), $("#lbl_LA_40b"), $("#lbl_LA_40b_s"), $("#lbl_LA_40b_r"), $("#lbl_LA_40b_i"));
        });


        $(document).on("change", "#LA_40a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_40a]:checked").val(), $("#LA_40a_a"), "LA_40a_v", $("#lbl_LA_40a_a"), $("input[name=LA_40b]"), $("#lbl_LA_40b"), $("#lbl_LA_40b_s"), $("#lbl_LA_40b_r"), $("#lbl_LA_40b_i"));
        });




        $(document).on("change", "#LA_41a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_41a]:checked").val(), $("#LA_41a_a"), "LA_41a_v", $("#lbl_LA_41a_a"), $("input[name=LA_41b]"), $("#lbl_LA_41b"), $("#lbl_LA_41b_s"), $("#lbl_LA_41b_r"), $("#lbl_LA_41b_i"));
        });


        $(document).on("change", "#LA_41a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_41a]:checked").val(), $("#LA_41a_a"), "LA_41a_v", $("#lbl_LA_41a_a"), $("input[name=LA_41b]"), $("#lbl_LA_41b"), $("#lbl_LA_41b_s"), $("#lbl_LA_41b_r"), $("#lbl_LA_41b_i"));
        });


        $(document).on("change", "#LA_41a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_41a]:checked").val(), $("#LA_41a_a"), "LA_41a_v", $("#lbl_LA_41a_a"), $("input[name=LA_41b]"), $("#lbl_LA_41b"), $("#lbl_LA_41b_s"), $("#lbl_LA_41b_r"), $("#lbl_LA_41b_i"));
        });




        $(document).on("change", "#LA_42a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_42a]:checked").val(), $("#LA_42a_a"), "LA_42a_v", $("#lbl_LA_42a_a"), $("input[name=LA_42b]"), $("#lbl_LA_42b"), $("#lbl_LA_42b_s"), $("#lbl_LA_42b_r"), $("#lbl_LA_42b_i"));
        });


        $(document).on("change", "#LA_42a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_42a]:checked").val(), $("#LA_42a_a"), "LA_42a_v", $("#lbl_LA_42a_a"), $("input[name=LA_42b]"), $("#lbl_LA_42b"), $("#lbl_LA_42b_s"), $("#lbl_LA_42b_r"), $("#lbl_LA_42b_i"));
        });


        $(document).on("change", "#LA_42a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_42a]:checked").val(), $("#LA_42a_a"), "LA_42a_v", $("#lbl_LA_42a_a"), $("input[name=LA_42b]"), $("#lbl_LA_42b"), $("#lbl_LA_42b_s"), $("#lbl_LA_42b_r"), $("#lbl_LA_42b_i"));
        });



        $(document).on("change", "#LA_43a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_43a]:checked").val(), $("#LA_43a_a"), "LA_43a_v", $("#lbl_LA_43a_a"), $("input[name=LA_43b]"), $("#lbl_LA_43b"), $("#lbl_LA_43b_s"), $("#lbl_LA_43b_r"), $("#lbl_LA_43b_i"));
        });


        $(document).on("change", "#LA_43a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_43a]:checked").val(), $("#LA_43a_a"), "LA_43a_v", $("#lbl_LA_43a_a"), $("input[name=LA_43b]"), $("#lbl_LA_43b"), $("#lbl_LA_43b_s"), $("#lbl_LA_43b_r"), $("#lbl_LA_43b_i"));
        });


        $(document).on("change", "#LA_43a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_43a]:checked").val(), $("#LA_43a_a"), "LA_43a_v", $("#lbl_LA_43a_a"), $("input[name=LA_43b]"), $("#lbl_LA_43b"), $("#lbl_LA_43b_s"), $("#lbl_LA_43b_r"), $("#lbl_LA_43b_i"));
        });




        $(document).on("change", "#LA_44a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_44a]:checked").val(), $("#LA_44a_a"), "LA_44a_v", $("#lbl_LA_44a_a"), $("input[name=LA_44b]"), $("#lbl_LA_44b"), $("#lbl_LA_44b_s"), $("#lbl_LA_44b_r"), $("#lbl_LA_44b_i"));
        });


        $(document).on("change", "#LA_44a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_44a]:checked").val(), $("#LA_44a_a"), "LA_44a_v", $("#lbl_LA_44a_a"), $("input[name=LA_44b]"), $("#lbl_LA_44b"), $("#lbl_LA_44b_s"), $("#lbl_LA_44b_r"), $("#lbl_LA_44b_i"));
        });


        $(document).on("change", "#LA_44a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_44a]:checked").val(), $("#LA_44a_a"), "LA_44a_v", $("#lbl_LA_44a_a"), $("input[name=LA_44b]"), $("#lbl_LA_44b"), $("#lbl_LA_44b_s"), $("#lbl_LA_44b_r"), $("#lbl_LA_44b_i"));
        });



        $(document).on("change", "#LA_45a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_45a]:checked").val(), $("#LA_45a_a"), "LA_45a_v", $("#lbl_LA_45a_a"), $("input[name=LA_45b]"), $("#lbl_LA_45b"), $("#lbl_LA_45b_s"), $("#lbl_LA_45b_r"), $("#lbl_LA_45b_i"));
        });


        $(document).on("change", "#LA_45a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_45a]:checked").val(), $("#LA_45a_a"), "LA_45a_v", $("#lbl_LA_45a_a"), $("input[name=LA_45b]"), $("#lbl_LA_45b"), $("#lbl_LA_45b_s"), $("#lbl_LA_45b_r"), $("#lbl_LA_45b_i"));
        });


        $(document).on("change", "#LA_45a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_45a]:checked").val(), $("#LA_45a_a"), "LA_45a_v", $("#lbl_LA_45a_a"), $("input[name=LA_45b]"), $("#lbl_LA_45b"), $("#lbl_LA_45b_s"), $("#lbl_LA_45b_r"), $("#lbl_LA_45b_i"));
        });




        $(document).on("change", "#LA_46a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_46a]:checked").val(), $("#LA_46a_a"), "LA_46a_v", $("#lbl_LA_46a_a"), $("input[name=LA_46b]"), $("#lbl_LA_46b"), $("#lbl_LA_46b_s"), $("#lbl_LA_46b_r"), $("#lbl_LA_46b_i"));
        });


        $(document).on("change", "#LA_46a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_46a]:checked").val(), $("#LA_46a_a"), "LA_46a_v", $("#lbl_LA_46a_a"), $("input[name=LA_46b]"), $("#lbl_LA_46b"), $("#lbl_LA_46b_s"), $("#lbl_LA_46b_r"), $("#lbl_LA_46b_i"));
        });


        $(document).on("change", "#LA_46a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_46a]:checked").val(), $("#LA_46a_a"), "LA_46a_v", $("#lbl_LA_46a_a"), $("input[name=LA_46b]"), $("#lbl_LA_46b"), $("#lbl_LA_46b_s"), $("#lbl_LA_46b_r"), $("#lbl_LA_46b_i"));
        });



        $(document).on("change", "#LA_47a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_47a]:checked").val(), $("#LA_47a_a"), "LA_47a_v", $("#lbl_LA_47a_a"), $("input[name=LA_47b]"), $("#lbl_LA_47b"), $("#lbl_LA_47b_s"), $("#lbl_LA_47b_r"), $("#lbl_LA_47b_i"));
        });


        $(document).on("change", "#LA_47a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_47a]:checked").val(), $("#LA_47a_a"), "LA_47a_v", $("#lbl_LA_47a_a"), $("input[name=LA_47b]"), $("#lbl_LA_47b"), $("#lbl_LA_47b_s"), $("#lbl_LA_47b_r"), $("#lbl_LA_47b_i"));
        });


        $(document).on("change", "#LA_47a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_47a]:checked").val(), $("#LA_47a_a"), "LA_47a_v", $("#lbl_LA_47a_a"), $("input[name=LA_47b]"), $("#lbl_LA_47b"), $("#lbl_LA_47b_s"), $("#lbl_LA_47b_r"), $("#lbl_LA_47b_i"));
        });



        $(document).on("change", "#LA_48a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_48a]:checked").val(), $("#LA_48a_a"), "LA_48a_v", $("#lbl_LA_48a_a"), $("input[name=LA_48b]"), $("#lbl_LA_48b"), $("#lbl_LA_48b_s"), $("#lbl_LA_48b_r"), $("#lbl_LA_48b_i"));
        });


        $(document).on("change", "#LA_48a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_48a]:checked").val(), $("#LA_48a_a"), "LA_48a_v", $("#lbl_LA_48a_a"), $("input[name=LA_48b]"), $("#lbl_LA_48b"), $("#lbl_LA_48b_s"), $("#lbl_LA_48b_r"), $("#lbl_LA_48b_i"));
        });


        $(document).on("change", "#LA_48a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_48a]:checked").val(), $("#LA_48a_a"), "LA_48a_v", $("#lbl_LA_48a_a"), $("input[name=LA_48b]"), $("#lbl_LA_48b"), $("#lbl_LA_48b_s"), $("#lbl_LA_48b_r"), $("#lbl_LA_48b_i"));
        });




        $(document).on("change", "#LA_49a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_49a]:checked").val(), $("#LA_49a_a"), "LA_49a_v", $("#lbl_LA_49a_a"), $("input[name=LA_49b]"), $("#lbl_LA_49b"), $("#lbl_LA_49b_s"), $("#lbl_LA_49b_r"), $("#lbl_LA_49b_i"));
        });


        $(document).on("change", "#LA_49a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_49a]:checked").val(), $("#LA_49a_a"), "LA_49a_v", $("#lbl_LA_49a_a"), $("input[name=LA_49b]"), $("#lbl_LA_49b"), $("#lbl_LA_49b_s"), $("#lbl_LA_49b_r"), $("#lbl_LA_49b_i"));
        });


        $(document).on("change", "#LA_49a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_49a]:checked").val(), $("#LA_49a_a"), "LA_49a_v", $("#lbl_LA_49a_a"), $("input[name=LA_49b]"), $("#lbl_LA_49b"), $("#lbl_LA_49b_s"), $("#lbl_LA_49b_r"), $("#lbl_LA_49b_i"));
        });



        $(document).on("change", "#LA_50a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_50a]:checked").val(), $("#LA_50a_a"), "LA_50a_v", $("#lbl_LA_50a_a"), $("input[name=LA_50b]"), $("#lbl_LA_50b"), $("#lbl_LA_50b_s"), $("#lbl_LA_50b_r"), $("#lbl_LA_50b_i"));
        });


        $(document).on("change", "#LA_50a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_50a]:checked").val(), $("#LA_50a_a"), "LA_50a_v", $("#lbl_LA_50a_a"), $("input[name=LA_50b]"), $("#lbl_LA_50b"), $("#lbl_LA_50b_s"), $("#lbl_LA_50b_r"), $("#lbl_LA_50b_i"));
        });


        $(document).on("change", "#LA_50a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_50a]:checked").val(), $("#LA_50a_a"), "LA_50a_v", $("#lbl_LA_50a_a"), $("input[name=LA_50b]"), $("#lbl_LA_50b"), $("#lbl_LA_50b_s"), $("#lbl_LA_50b_r"), $("#lbl_LA_50b_i"));
        });




        $(document).on("change", "#LA_51a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_51a]:checked").val(), $("#LA_51a_a"), "LA_51a_v", $("#lbl_LA_51a_a"), $("input[name=LA_51b]"), $("#lbl_LA_51b"), $("#lbl_LA_51b_s"), $("#lbl_LA_51b_r"), $("#lbl_LA_51b_i"));
        });


        $(document).on("change", "#LA_51a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_51a]:checked").val(), $("#LA_51a_a"), "LA_51a_v", $("#lbl_LA_51a_a"), $("input[name=LA_51b]"), $("#lbl_LA_51b"), $("#lbl_LA_51b_s"), $("#lbl_LA_51b_r"), $("#lbl_LA_51b_i"));
        });


        $(document).on("change", "#LA_51a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_51a]:checked").val(), $("#LA_51a_a"), "LA_51a_v", $("#lbl_LA_51a_a"), $("input[name=LA_51b]"), $("#lbl_LA_51b"), $("#lbl_LA_51b_s"), $("#lbl_LA_51b_r"), $("#lbl_LA_51b_i"));
        });



        $(document).on("change", "#LA_52a_v", function () {
            ShowHide_TextBox_New($("input[name=LA_52a]:checked").val(), $("#LA_52a_a"), "LA_52a_v", $("#lbl_LA_52a_a"), $("input[name=LA_52b]"), $("#lbl_LA_52b"), $("#lbl_LA_52b_s"), $("#lbl_LA_52b_r"), $("#lbl_LA_52b_i"));
        });


        $(document).on("change", "#LA_52a_b", function () {
            ShowHide_TextBox_New($("input[name=LA_52a]:checked").val(), $("#LA_52a_a"), "LA_52a_v", $("#lbl_LA_52a_a"), $("input[name=LA_52b]"), $("#lbl_LA_52b"), $("#lbl_LA_52b_s"), $("#lbl_LA_52b_r"), $("#lbl_LA_52b_i"));
        });


        $(document).on("change", "#LA_52a_c", function () {
            ShowHide_TextBox_New($("input[name=LA_52a]:checked").val(), $("#LA_52a_a"), "LA_52a_v", $("#lbl_LA_52a_a"), $("input[name=LA_52b]"), $("#lbl_LA_52b"), $("#lbl_LA_52b_s"), $("#lbl_LA_52b_r"), $("#lbl_LA_52b_i"));
        });





        function ShowHide_TextBox(rdovalue, txtbox, showval, questlabel) {
            if (rdovalue == showval) {
                txtbox.show();
                questlabel.show();
            }
            else {
                txtbox.hide();
                txtbox.val("");
                questlabel.hide();
            }

        }


        function ShowHide_TextBox_New(rdovalue, txtbox, showval, questlabel, rdointrepretation, rdolabel, rdolabels, rdolabelr, rdolabeli) {

            if (rdovalue == showval) {
                txtbox.show();
                questlabel.show();
                rdointrepretation.show();
                rdolabel.show();
                rdolabels.show();
                rdolabelr.show();
                rdolabeli.show();
            }
            else {
                txtbox.hide();
                txtbox.val("");
                questlabel.hide();
                rdointrepretation.hide();
                rdointrepretation.attr("checked", false);
                rdolabel.hide();
                rdolabels.hide();
                rdolabelr.hide();
                rdolabeli.hide();
            }

        }


    </script>

    <script>

        function ValidateForm() {

            if ($("#la_sno").val() == "__-_-____") {
                alert("Please enter screening id");
                $("#la_sno").focus();
                return false;
            }
            else if ($("#la_sno").val().indexOf("_") != -1) {
                alert("Please enter full screening id");
                $("#la_sno").focus();
                return false;
            }
            else if ($("#LA_01").val() == "") {
                alert("Please enter result reporting time NRL ");
                $("#LA_01").focus();
                return false;
            }
            else if ($("#LA_02").val() == "") {
                alert("Please enter CRP result (mg/dL) ");
                $("#LA_02").focus();
                return false;
            }
            else if ($("#LA_02").val() == "" && $("#LA_02").is(":visible") == true) {
                alert("Please enter CRP result (mg/dL) ");
                $("#LA_02").focus();
                return false;
            }
            else if ($('input[name=LA_03]:checked').length <= 0 && ($("#LA_03_v").is(":visible") == true
                || $("#LA_03_b").is(":visible") == true
                || $("#LA_03_c").is(":visible") == true
            )) {
                alert("Please select Haemoglobin ");
                $("#LA_03_v").focus();
                return false;
            }
            else if ($("#LA_03_a").val() == "" && $("#LA_03_a").is(":visible") == true) {
                alert("Please enter Haemoglobin value ");
                $("#LA_03_a").focus();
                return false;
            }
            else if ($('input[name=LA_04]:checked').length <= 0 && ($("#LA_04_v").is(":visible") == true
                || $("#LA_04_b").is(":visible") == true
                || $("#LA_04_c").is(":visible") == true
            )) {
                alert("Please select Haematocrit ");
                $("#LA_04_v").focus();
                return false;
            }
            else if ($("#LA_04_a").val() == "" && $("#LA_04_a").is(":visible") == true) {
                alert("Please enter Haematocrit value ");
                $("#LA_04_a").focus();
                return false;
            }
            else if ($('input[name=LA_05]:checked').length <= 0 && ($("#LA_05_v").is(":visible") == true
                || $("#LA_05_b").is(":visible") == true
                || $("#LA_05_c").is(":visible") == true
            )) {
                alert("Please select R.B.C ");
                $("#LA_05_v").focus();
                return false;
            }
            else if ($("#LA_05_a").val() == "" && $("#LA_05_a").is(":visible") == true) {
                alert("Please enter R.B.C value ");
                $("#LA_05_a").focus();
                return false;
            }
            else if ($('input[name=LA_06]:checked').length <= 0 && ($("#LA_06_v").is(":visible") == true
                || $("#LA_06_b").is(":visible") == true
                || $("#LA_06_c").is(":visible") == true
            )) {
                alert("Please select R.B.C ");
                $("#LA_06_v").focus();
                return false;
            }
            else if ($("#LA_06_a").val() == "" && $("#LA_06_a").is(":visible") == true) {
                alert("Please enter R.B.C. value ");
                $("#LA_06_a").focus();
                return false;
            }
            else if ($('input[name=LA_07]:checked').length <= 0 && ($("#LA_07_v").is(":visible") == true
                || $("#LA_07_b").is(":visible") == true
                || $("#LA_07_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_07_v").focus();
                return false;
            }
            else if ($("#LA_07_a").val() == "" && $("#LA_07_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_07_a").focus();
                return false;
            }
            else if ($('input[name=LA_08]:checked').length <= 0 && ($("#LA_08_v").is(":visible") == true
                || $("#LA_08_b").is(":visible") == true
                || $("#LA_08_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_08_v").focus();
                return false;
            }
            else if ($("#LA_08_a").val() == "" && $("#LA_08_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_08_a").focus();
                return false;
            }
            else if ($('input[name=LA_09]:checked').length <= 0 && ($("#LA_09_v").is(":visible") == true
                || $("#LA_09_b").is(":visible") == true
                || $("#LA_09_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_09_v").focus();
                return false;
            }
            else if ($("#LA_09_a").val() == "" && $("#LA_09_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_09_a").focus();
                return false;
            }
            else if ($('input[name=LA_10]:checked').length <= 0 && ($("#LA_10_v").is(":visible") == true
                || $("#LA_10_b").is(":visible") == true
                || $("#LA_10_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_10_v").focus();
                return false;
            }
            else if ($("#LA_10_a").val() == "" && $("#LA_10_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_10_a").focus();
                return false;
            }
            else if ($('input[name=LA_11]:checked').length <= 0 && ($("#LA_11_v").is(":visible") == true
                || $("#LA_11_b").is(":visible") == true
                || $("#LA_11_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_11_v").focus();
                return false;
            }
            else if ($("#LA_11_a").val() == "" && $("#LA_11_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_11_a").focus();
                return false;
            }
            else if ($('input[name=LA_12]:checked').length <= 0 && ($("#LA_12_v").is(":visible") == true
                || $("#LA_12_b").is(":visible") == true
                || $("#LA_12_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_12_v").focus();
                return false;
            }
            else if ($("#LA_12_a").val() == "" && $("#LA_12_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_12_a").focus();
                return false;
            }
            else if ($('input[name=LA_13]:checked').length <= 0 && ($("#LA_13_v").is(":visible") == true
                || $("#LA_13_b").is(":visible") == true
                || $("#LA_13_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_13_v").focus();
                return false;
            }
            else if ($("#LA_13_a").val() == "" && $("#LA_13_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_13_a").focus();
                return false;
            }
            else if ($('input[name=LA_14]:checked').length <= 0 && ($("#LA_14_v").is(":visible") == true
                || $("#LA_14_b").is(":visible") == true
                || $("#LA_14_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_14_v").focus();
                return false;
            }
            else if ($("#LA_14_a").val() == "" && $("#LA_14_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_14_a").focus();
                return false;
            }
            else if ($('input[name=LA_15]:checked').length <= 0 && ($("#LA_15_v").is(":visible") == true
                || $("#LA_15_b").is(":visible") == true
                || $("#LA_15_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_15_v").focus();
                return false;
            }
            else if ($("#LA_15_a").val() == "" && $("#LA_15_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_15_a").focus();
                return false;
            }
            else if ($('input[name=LA_16]:checked').length <= 0 && ($("#LA_16_v").is(":visible") == true
                || $("#LA_16_b").is(":visible") == true
                || $("#LA_16_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_16_v").focus();
                return false;
            }
            else if ($("#LA_16_a").val() == "" && $("#LA_16_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_16_a").focus();
                return false;
            }
            else if ($('input[name=LA_20a]:checked').length <= 0 && ($("#LA_20a_v").is(":visible") == true
                || $("#LA_20a_b").is(":visible") == true
                || $("#LA_20a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_20a_v").focus();
                return false;
            }
            else if ($("#LA_20a_a").val() == "" && $("#LA_20a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_20a_a").focus();
                return false;
            }
            else if ($('input[name=LA_20b]:checked').length <= 0 && ($("#LA_20b_a").is(":visible") == true
                || $("#LA_20b_b").is(":visible") == true
                || $("#LA_20b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_20b_a").focus();
                return false;
            }
            else if ($('input[name=LA_21a]:checked').length <= 0 && ($("#LA_21a_v").is(":visible") == true
                || $("#LA_21a_b").is(":visible") == true
                || $("#LA_21a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_21a_v").focus();
                return false;
            }
            else if ($("#LA_21a_a").val() == "" && $("#LA_21a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_21a_a").focus();
                return false;
            }
            else if ($('input[name=LA_21b]:checked').length <= 0 && ($("#LA_21b_a").is(":visible") == true
                || $("#LA_21b_b").is(":visible") == true
                || $("#LA_21b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_21b_a").focus();
                return false;
            }
            else if ($('input[name=LA_22a]:checked').length <= 0 && ($("#LA_22a_v").is(":visible") == true
                || $("#LA_22a_b").is(":visible") == true
                || $("#LA_22a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_22a_v").focus();
                return false;
            }
            else if ($("#LA_22a_a").val() == "" && $("#LA_22a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_22a_a").focus();
                return false;
            }
            else if ($('input[name=LA_22b]:checked').length <= 0 && ($("#LA_22b_a").is(":visible") == true
                || $("#LA_22b_b").is(":visible") == true
                || $("#LA_22b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_22b_a").focus();
                return false;
            }
            else if ($('input[name=LA_23a]:checked').length <= 0 && ($("#LA_23a_v").is(":visible") == true
                || $("#LA_23a_b").is(":visible") == true
                || $("#LA_23a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_23a_v").focus();
                return false;
            }
            else if ($("#LA_23a_a").val() == "" && $("#LA_23a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_23a_a").focus();
                return false;
            }
            else if ($('input[name=LA_23b]:checked').length <= 0 && ($("#LA_23b_a").is(":visible") == true
                || $("#LA_23b_b").is(":visible") == true
                || $("#LA_23b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_23b_a").focus();
                return false;
            }
            else if ($('input[name=LA_24a]:checked').length <= 0 && ($("#LA_24a_v").is(":visible") == true
                || $("#LA_24a_b").is(":visible") == true
                || $("#LA_24a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_24a_v").focus();
                return false;
            }
            else if ($("#LA_24a_a").val() == "" && $("#LA_24a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_24a_a").focus();
                return false;
            }
            else if ($('input[name=LA_24b]:checked').length <= 0 && ($("#LA_24b_a").is(":visible") == true
                || $("#LA_24b_b").is(":visible") == true
                || $("#LA_24b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_24b_a").focus();
                return false;
            }
            else if ($('input[name=LA_25a]:checked').length <= 0 && ($("#LA_25a_v").is(":visible") == true
                || $("#LA_25a_b").is(":visible") == true
                || $("#LA_25a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_25a_v").focus();
                return false;
            }
            else if ($("#LA_25a_a").val() == "" && $("#LA_25a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_25a_a").focus();
                return false;
            }
            else if ($('input[name=LA_25b]:checked').length <= 0 && ($("#LA_25b_a").is(":visible") == true
                || $("#LA_25b_b").is(":visible") == true
                || $("#LA_25b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_25b_a").focus();
                return false;
            }
            else if ($('input[name=LA_26a]:checked').length <= 0 && ($("#LA_26a_v").is(":visible") == true
                || $("#LA_26a_b").is(":visible") == true
                || $("#LA_26a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_26a_v").focus();
                return false;
            }
            else if ($("#LA_26a_a").val() == "" && $("#LA_26a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_26a_a").focus();
                return false;
            }
            else if ($('input[name=LA_26b]:checked').length <= 0 && ($("#LA_26b_a").is(":visible") == true
                || $("#LA_26b_b").is(":visible") == true
                || $("#LA_26b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_26b_a").focus();
                return false;
            }
            else if ($('input[name=LA_27a]:checked').length <= 0 && ($("#LA_27a_v").is(":visible") == true
                || $("#LA_27a_b").is(":visible") == true
                || $("#LA_27a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_27a_v").focus();
                return false;
            }
            else if ($("#LA_27a_a").val() == "" && $("#LA_27a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_27a_a").focus();
                return false;
            }
            else if ($('input[name=LA_27b]:checked').length <= 0 && ($("#LA_27b_a").is(":visible") == true
                || $("#LA_27b_b").is(":visible") == true
                || $("#LA_27b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_27b_a").focus();
                return false;
            }
            else if ($('input[name=LA_28a]:checked').length <= 0 && ($("#LA_28a_v").is(":visible") == true
                || $("#LA_28a_b").is(":visible") == true
                || $("#LA_28a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_28a_v").focus();
                return false;
            }
            else if ($("#LA_28a_a").val() == "" && $("#LA_28a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_28a_a").focus();
                return false;
            }
            else if ($('input[name=LA_28b]:checked').length <= 0 && ($("#LA_28b_a").is(":visible") == true
                || $("#LA_28b_b").is(":visible") == true
                || $("#LA_28b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_28b_a").focus();
                return false;
            }
            else if ($('input[name=LA_29a]:checked').length <= 0 && ($("#LA_29a_v").is(":visible") == true
                || $("#LA_29a_b").is(":visible") == true
                || $("#LA_29a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_29a_v").focus();
                return false;
            }
            else if ($("#LA_29a_a").val() == "" && $("#LA_29a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_29a_a").focus();
                return false;
            }
            else if ($('input[name=LA_29b]:checked').length <= 0 && ($("#LA_29b_a").is(":visible") == true
                || $("#LA_29b_b").is(":visible") == true
                || $("#LA_29b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_29b_a").focus();
                return false;
            }
            else if ($('input[name=LA_30a]:checked').length <= 0 && ($("#LA_30a_v").is(":visible") == true
                || $("#LA_30a_b").is(":visible") == true
                || $("#LA_30a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_30a_v").focus();
                return false;
            }
            else if ($("#LA_30a_a").val() == "" && $("#LA_30a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_30a_a").focus();
                return false;
            }
            else if ($('input[name=LA_30b]:checked').length <= 0 && ($("#LA_30b_a").is(":visible") == true
                || $("#LA_30b_b").is(":visible") == true
                || $("#LA_30b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_30b_a").focus();
                return false;
            }
            else if ($('input[name=LA_31a]:checked').length <= 0 && ($("#LA_31a_v").is(":visible") == true
                || $("#LA_31a_b").is(":visible") == true
                || $("#LA_31a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_31a_v").focus();
                return false;
            }
            else if ($("#LA_31a_a").val() == "" && $("#LA_31a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_31a_a").focus();
                return false;
            }
            else if ($('input[name=LA_31b]:checked').length <= 0 && ($("#LA_31b_a").is(":visible") == true
                || $("#LA_31b_b").is(":visible") == true
                || $("#LA_31b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_31b_a").focus();
                return false;
            }
            else if ($('input[name=LA_32a]:checked').length <= 0 && ($("#LA_32a_v").is(":visible") == true
                || $("#LA_32a_b").is(":visible") == true
                || $("#LA_32a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_32a_v").focus();
                return false;
            }
            else if ($("#LA_32a_a").val() == "" && $("#LA_32a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_32a_a").focus();
                return false;
            }
            else if ($('input[name=LA_32b]:checked').length <= 0 && ($("#LA_32b_a").is(":visible") == true
                || $("#LA_32b_b").is(":visible") == true
                || $("#LA_32b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_32b_a").focus();
                return false;
            }
            else if ($('input[name=LA_33a]:checked').length <= 0 && ($("#LA_33a_v").is(":visible") == true
                || $("#LA_33a_b").is(":visible") == true
                || $("#LA_33a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_33a_v").focus();
                return false;
            }
            else if ($("#LA_33a_a").val() == "" && $("#LA_33a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_33a_a").focus();
                return false;
            }
            else if ($('input[name=LA_33b]:checked').length <= 0 && ($("#LA_33b_a").is(":visible") == true
                || $("#LA_33b_b").is(":visible") == true
                || $("#LA_33b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_33b_a").focus();
                return false;
            }
            else if ($('input[name=LA_34a]:checked').length <= 0 && ($("#LA_34a_v").is(":visible") == true
                || $("#LA_34a_b").is(":visible") == true
                || $("#LA_34a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_34a_v").focus();
                return false;
            }
            else if ($("#LA_34a_a").val() == "" && $("#LA_34a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_34a_a").focus();
                return false;
            }
            else if ($('input[name=LA_34b]:checked').length <= 0 && ($("#LA_34b_a").is(":visible") == true
                || $("#LA_34b_b").is(":visible") == true
                || $("#LA_34b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_34b_a").focus();
                return false;
            }
            else if ($('input[name=LA_35a]:checked').length <= 0 && ($("#LA_35a_v").is(":visible") == true
                || $("#LA_35a_b").is(":visible") == true
                || $("#LA_35a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_35a_v").focus();
                return false;
            }
            else if ($("#LA_35a_a").val() == "" && $("#LA_35a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_35a_a").focus();
                return false;
            }
            else if ($('input[name=LA_35b]:checked').length <= 0 && ($("#LA_35b_a").is(":visible") == true
                || $("#LA_35b_b").is(":visible") == true
                || $("#LA_35b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_35b_a").focus();
                return false;
            }
            else if ($('input[name=LA_36a]:checked').length <= 0 && ($("#LA_36a_v").is(":visible") == true
                || $("#LA_36a_b").is(":visible") == true
                || $("#LA_36a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_36a_v").focus();
                return false;
            }
            else if ($("#LA_36a_a").val() == "" && $("#LA_36a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_36a_a").focus();
                return false;
            }
            else if ($('input[name=LA_36b]:checked').length <= 0 && ($("#LA_36b_a").is(":visible") == true
                || $("#LA_36b_b").is(":visible") == true
                || $("#LA_36b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_36b_a").focus();
                return false;
            }
            else if ($('input[name=LA_37a]:checked').length <= 0 && ($("#LA_37a_v").is(":visible") == true
                || $("#LA_37a_b").is(":visible") == true
                || $("#LA_37a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_37a_v").focus();
                return false;
            }
            else if ($("#LA_37a_a").val() == "" && $("#LA_37a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_37a_a").focus();
                return false;
            }
            else if ($('input[name=LA_37b]:checked').length <= 0 && ($("#LA_37b_a").is(":visible") == true
                || $("#LA_37b_b").is(":visible") == true
                || $("#LA_37b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_37b_a").focus();
                return false;
            }
            else if ($('input[name=LA_38a]:checked').length <= 0 && ($("#LA_38a_v").is(":visible") == true
                || $("#LA_38a_b").is(":visible") == true
                || $("#LA_38a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_38a_v").focus();
                return false;
            }
            else if ($("#LA_38a_a").val() == "" && $("#LA_38a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_38a_a").focus();
                return false;
            }
            else if ($('input[name=LA_38b]:checked').length <= 0 && ($("#LA_38b_a").is(":visible") == true
                || $("#LA_38b_b").is(":visible") == true
                || $("#LA_38b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_38b_a").focus();
                return false;
            }
            else if ($('input[name=LA_39a]:checked').length <= 0 && ($("#LA_39a_v").is(":visible") == true
                || $("#LA_39a_b").is(":visible") == true
                || $("#LA_39a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_39a_v").focus();
                return false;
            }
            else if ($("#LA_39a_a").val() == "" && $("#LA_39a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_39a_a").focus();
                return false;
            }
            else if ($('input[name=LA_39b]:checked').length <= 0 && ($("#LA_39b_a").is(":visible") == true
                || $("#LA_39b_b").is(":visible") == true
                || $("#LA_39b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_39b_a").focus();
                return false;
            }
            else if ($('input[name=LA_40a]:checked').length <= 0 && ($("#LA_40a_v").is(":visible") == true
                || $("#LA_40a_b").is(":visible") == true
                || $("#LA_40a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_40a_v").focus();
                return false;
            }
            else if ($("#LA_40a_a").val() == "" && $("#LA_40a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_40a_a").focus();
                return false;
            }
            else if ($('input[name=LA_40b]:checked').length <= 0 && ($("#LA_40b_a").is(":visible") == true
                || $("#LA_40b_b").is(":visible") == true
                || $("#LA_40b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_40b_a").focus();
                return false;
            }
            else if ($('input[name=LA_41a]:checked').length <= 0 && ($("#LA_41a_v").is(":visible") == true
                || $("#LA_41a_b").is(":visible") == true
                || $("#LA_41a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_41a_v").focus();
                return false;
            }
            else if ($("#LA_41a_a").val() == "" && $("#LA_41a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_41a_a").focus();
                return false;
            }
            else if ($('input[name=LA_41b]:checked').length <= 0 && ($("#LA_41b_a").is(":visible") == true
                || $("#LA_41b_b").is(":visible") == true
                || $("#LA_41b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_41b_a").focus();
                return false;
            }
            else if ($('input[name=LA_42a]:checked').length <= 0 && ($("#LA_42a_v").is(":visible") == true
                || $("#LA_42a_b").is(":visible") == true
                || $("#LA_42a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_42a_v").focus();
                return false;
            }
            else if ($("#LA_42a_a").val() == "" && $("#LA_42a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_42a_a").focus();
                return false;
            }
            else if ($('input[name=LA_42b]:checked').length <= 0 && ($("#LA_42b_a").is(":visible") == true
                || $("#LA_42b_b").is(":visible") == true
                || $("#LA_42b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_42b_a").focus();
                return false;
            }
            else if ($('input[name=LA_43a]:checked').length <= 0 && ($("#LA_43a_v").is(":visible") == true
                || $("#LA_43a_b").is(":visible") == true
                || $("#LA_43a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_43a_v").focus();
                return false;
            }
            else if ($("#LA_43a_a").val() == "" && $("#LA_43a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_43a_a").focus();
                return false;
            }
            else if ($('input[name=LA_43b]:checked').length <= 0 && ($("#LA_43b_a").is(":visible") == true
                || $("#LA_43b_b").is(":visible") == true
                || $("#LA_43b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_43b_a").focus();
                return false;
            }
            else if ($('input[name=LA_44a]:checked').length <= 0 && ($("#LA_44a_v").is(":visible") == true
                || $("#LA_44a_b").is(":visible") == true
                || $("#LA_44a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_44a_v").focus();
                return false;
            }
            else if ($("#LA_44a_a").val() == "" && $("#LA_44a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_44a_a").focus();
                return false;
            }
            else if ($('input[name=LA_44b]:checked').length <= 0 && ($("#LA_44b_a").is(":visible") == true
                || $("#LA_44b_b").is(":visible") == true
                || $("#LA_44b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_44b_a").focus();
                return false;
            }
            else if ($('input[name=LA_45a]:checked').length <= 0 && ($("#LA_45a_v").is(":visible") == true
                || $("#LA_45a_b").is(":visible") == true
                || $("#LA_45a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_45a_v").focus();
                return false;
            }
            else if ($("#LA_45a_a").val() == "" && $("#LA_45a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_45a_a").focus();
                return false;
            }
            else if ($('input[name=LA_45b]:checked').length <= 0 && ($("#LA_45b_a").is(":visible") == true
                || $("#LA_45b_b").is(":visible") == true
                || $("#LA_45b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_45b_a").focus();
                return false;
            }
            else if ($('input[name=LA_46a]:checked').length <= 0 && ($("#LA_46a_v").is(":visible") == true
                || $("#LA_46a_b").is(":visible") == true
                || $("#LA_46a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_46a_v").focus();
                return false;
            }
            else if ($("#LA_46a_a").val() == "" && $("#LA_46a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_46a_a").focus();
                return false;
            }
            else if ($('input[name=LA_46b]:checked').length <= 0 && ($("#LA_46b_a").is(":visible") == true
                || $("#LA_46b_b").is(":visible") == true
                || $("#LA_46b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_46b_a").focus();
                return false;
            }
            else if ($('input[name=LA_47a]:checked').length <= 0 && ($("#LA_47a_v").is(":visible") == true
                || $("#LA_47a_b").is(":visible") == true
                || $("#LA_47a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_47a_v").focus();
                return false;
            }
            else if ($("#LA_47a_a").val() == "" && $("#LA_47a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_47a_a").focus();
                return false;
            }
            else if ($('input[name=LA_47b]:checked').length <= 0 && ($("#LA_47b_a").is(":visible") == true
                || $("#LA_47b_b").is(":visible") == true
                || $("#LA_47b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_47b_a").focus();
                return false;
            }
            else if ($('input[name=LA_48a]:checked').length <= 0 && ($("#LA_48a_v").is(":visible") == true
                || $("#LA_48a_b").is(":visible") == true
                || $("#LA_48a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_48a_v").focus();
                return false;
            }
            else if ($("#LA_48a_a").val() == "" && $("#LA_48a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_48a_a").focus();
                return false;
            }
            else if ($('input[name=LA_48b]:checked').length <= 0 && ($("#LA_48b_a").is(":visible") == true
                || $("#LA_48b_b").is(":visible") == true
                || $("#LA_48b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_48b_a").focus();
                return false;
            }
            else if ($('input[name=LA_49a]:checked').length <= 0 && ($("#LA_49a_v").is(":visible") == true
                || $("#LA_49a_b").is(":visible") == true
                || $("#LA_49a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_49a_v").focus();
                return false;
            }
            else if ($("#LA_49a_a").val() == "" && $("#LA_49a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_49a_a").focus();
                return false;
            }
            else if ($('input[name=LA_49b]:checked').length <= 0 && ($("#LA_49b_a").is(":visible") == true
                || $("#LA_49b_b").is(":visible") == true
                || $("#LA_49b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_49b_a").focus();
                return false;
            }
            else if ($('input[name=LA_50a]:checked').length <= 0 && ($("#LA_50a_v").is(":visible") == true
                || $("#LA_50a_b").is(":visible") == true
                || $("#LA_50a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_50a_v").focus();
                return false;
            }
            else if ($("#LA_50a_a").val() == "" && $("#LA_50a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_50a_a").focus();
                return false;
            }
            else if ($('input[name=LA_50b]:checked').length <= 0 && ($("#LA_50b_a").is(":visible") == true
                || $("#LA_50b_b").is(":visible") == true
                || $("#LA_50b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_50b_a").focus();
                return false;
            }
            else if ($('input[name=LA_51a]:checked').length <= 0 && ($("#LA_51a_v").is(":visible") == true
                || $("#LA_51a_b").is(":visible") == true
                || $("#LA_51a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_51a_v").focus();
                return false;
            }
            else if ($("#LA_51a_a").val() == "" && $("#LA_51a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_51a_a").focus();
                return false;
            }
            else if ($('input[name=LA_51b]:checked').length <= 0 && ($("#LA_51b_a").is(":visible") == true
                || $("#LA_51b_b").is(":visible") == true
                || $("#LA_51b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_51b_a").focus();
                return false;
            }
            else if ($('input[name=LA_52a]:checked').length <= 0 && ($("#LA_52a_v").is(":visible") == true
                || $("#LA_52a_b").is(":visible") == true
                || $("#LA_52a_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_52a_v").focus();
                return false;
            }
            else if ($("#LA_52a_a").val() == "" && $("#LA_52a_a").is(":visible") == true) {
                alert("Please enter    value ");
                $("#LA_52a_a").focus();
                return false;
            }
            else if ($('input[name=LA_52b]:checked').length <= 0 && ($("#LA_52b_a").is(":visible") == true
                || $("#LA_52b_b").is(":visible") == true
                || $("#LA_52b_c").is(":visible") == true
            )) {
                alert("Please select   ");
                $("#LA_52b_a").focus();
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
                    <li class="nav-item"><a href="sample_results.aspx"><span style="font-family: Verdana">Lab Results</span></a>
                    <li class="nav-item">
                        <asp:LinkButton runat="server" Style="font-family: Verdana" OnClick="Unnamed_Click">Logout</asp:LinkButton>
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

                                                    <h4 class="form-section"><i class="ft-clipboard"></i>Lab Results</h4>

                                                    <br />

                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Screening Number</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_sno" class="form-control" name="la_sno" onkeypress="return numeralsOnly(event);"></asp:TextBox>
                                                            <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="la_sno" MaskType="Number" AutoComplete="false" ClearMaskOnLostFocus="false" Mask="99-9-9999"></cc1:MaskedEditExtender>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Name of field site</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_fsite" class="form-control" name="la_fsite" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Randomization Number</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_rand" class="form-control" name="la_rand" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Specimen ID</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_spec" class="form-control" name="la_spec" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Name Of Child</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_name" class="form-control" name="la_name" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Gender</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_gen" class="form-control" name="la_gen" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Age</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_age" class="form-control" name="la_age" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Sample Collect for</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="la_obj" class="form-control" name="la_obj" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Result reporting time NRL</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_01" class="form-control" name="LA_01"></asp:TextBox>
                                                            <script src="Scripts/timepicker/timepicki.js"></script>
                                                            <script>
                                                                $('#<%=LA_01.ClientID%>').timepicki();
                                                            </script>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">CRP result (mg/dL)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_02" class="form-control" name="LA_02" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">CBC Result</label>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Haemoglobin</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls1" GroupName="LA_03" name="LA_03_v" ID="LA_03_v" />
                                                                <label for="input-radio-11">Haemoglobin Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls1" GroupName="LA_03" name="LA_03_b" ID="LA_03_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls1" GroupName="LA_03" name="LA_03_c" ID="LA_03_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_03_a">Haemoglobin g/dl</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_03_a" class="form-control" name="LA_03_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Haematocrit</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_04" name="LA_04_v" ID="LA_04_v" />
                                                                <label for="input-radio-11">Haematocrit Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_04" name="LA_04_b" ID="LA_04_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_04" name="LA_04_c" ID="LA_04_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_04_a">Haematocrit %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_04_a" class="form-control" name="LA_04_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">R.B.C</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_05" name="LA_05_v" ID="LA_05_v" />
                                                                <label for="input-radio-11">R.B.C Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_05" name="LA_05_b" ID="LA_05_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_05" name="LA_05_c" ID="LA_05_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_05_a">R.B.C. x10E12/L</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_05_a" class="form-control" name="LA_05_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">M.C.V</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_06" name="LA_06_v" ID="LA_06_v" />
                                                                <label for="input-radio-11">M.C.V Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_06" name="LA_06_b" ID="LA_06_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_06" name="LA_06_b" ID="LA_06_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_06_a">M.C.V. fL</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_06_a" class="form-control" name="LA_06_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">M.C.H</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_07" name="LA_07_v" ID="LA_07_v" />
                                                                <label for="input-radio-11">M.C.H Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_07" name="LA_07_b" ID="LA_07_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_07" name="LA_07_c" ID="LA_07_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_07_a">M.C.H. pg</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_07_a" class="form-control" name="LA_07_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">M.C.H.C</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_08" name="LA_08_v" ID="LA_08_v" />
                                                                <label for="input-radio-11">M.C.H.C Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_08" name="LA_08_b" ID="LA_08_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_08" name="LA_08_c" ID="LA_08_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_08_a">M.C.H.C g/dL</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_08_a" class="form-control" name="LA_08_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">R.D.W</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_09" name="LA_09_v" ID="LA_09_v" />
                                                                <label for="input-radio-11">R.D.W Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_09" name="LA_09_b" ID="LA_09_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_09" name="LA_09_c" ID="LA_09_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_09_a">R.D.W %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_09_a" class="form-control" name="LA_09_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">W.B.C</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_10" name="LA_10_v" ID="LA_10_v" />
                                                                <label for="input-radio-11">W.B.C Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_10" name="LA_10_b" ID="LA_10_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_10" name="LA_10_c" ID="LA_10_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_10_a">W.B.C x10E9/L</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_10_a" class="form-control" name="LA_10_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Neutrophils</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_11" name="LA_11_v" ID="LA_11_v" />
                                                                <label for="input-radio-11">Neutrophils Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_11" name="LA_11_b" ID="LA_11_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_11" name="LA_11_c" ID="LA_11_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_11_a">Neutrophils %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_11_a" class="form-control" name="LA_11_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Lymphocytes</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_12" name="LA_12_v" ID="LA_12_v" />
                                                                <label for="input-radio-11">Lymphocytes Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_12" name="LA_12_b" ID="LA_12_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_12" name="LA_12_c" ID="LA_12_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_12_a">Lymphocytes %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_12_a" class="form-control" name="LA_12_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Eosinophils</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_13" name="LA_13_v" ID="LA_13_v" />
                                                                <label for="input-radio-11">Eosinophils Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_13" name="LA_13_b" ID="LA_13_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_13" name="LA_13_c" ID="LA_13_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_13_a">Eosinophils %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_13_a" class="form-control" name="LA_13_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Monocytes</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_14" name="LA_14_v" ID="LA_14_v" />
                                                                <label for="input-radio-11">Monocytes Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_14" name="LA_14_b" ID="LA_14_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_14" name="LA_14_c" ID="LA_14_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_14_a">Monocytes %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_14_a" class="form-control" name="LA_14_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Basophils</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_15" name="LA_15_v" ID="LA_15_v" />
                                                                <label for="input-radio-11">Basophils Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_15" name="LA_15_b" ID="LA_15_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_15" name="LA_15_c" ID="LA_15_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_15_a">Basophils %</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_15_a" class="form-control" name="LA_15_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Platelets</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_16" name="LA_16_v" ID="LA_16_v" />
                                                                <label for="input-radio-11">Platelets Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_16" name="LA_16_b" ID="LA_16_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_16" name="LA_16_c" ID="LA_16_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_16_a">Platelets x10E9/L</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_16_a" class="form-control" name="LA_16_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Peripheral Film</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_17" class="form-control" name="LA_17" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Blood Culture Result / Antibiotic Susceptibility</label>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Blood Culture Gram Stain Result</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_18" class="form-control" name="LA_18" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Blood Culture Result</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_19" class="form-control" name="LA_19" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Amoxicillin/ Clavulanic Acid 2:1 (AMC) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_20a" name="LA_20a_v" ID="LA_20a_v" />
                                                                <label for="input-radio-11">Amoxicillin/ Clavulanic Acid 2:1 (AMC) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_20a" name="LA_20a_b" ID="LA_20a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_20a" name="LA_20a_c" ID="LA_20a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_20a_a">Zone Diameter (mm) Amoxicillin/ Clavulanic Acid 2:1 (AMC) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_20a_a" class="form-control" name="LA_20a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_20b">Amoxicillin/Clavulanic Acid 2:1 (AMC) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_20b" name="LA_20b_a" ID="LA_20b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_20b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_20b" name="LA_20b_b" ID="LA_20b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_20b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_20b" name="LA_20b_c" ID="LA_20b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_20b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Ampicillin (AMP) 10ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_21a" name="LA_21a_v" ID="LA_21a_v" />
                                                                <label for="input-radio-11">Ampicillin (AMP) 10ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_21a" name="LA_21a_b" ID="LA_21a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_21a" name="LA_21a_c" ID="LA_21a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_21a_a">Zone Diameter (mm) Ampicillin (AMP) 10ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_21a_a" class="form-control" name="LA_21a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_21b">Ampicillin (AMP) 10ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_21b" name="LA_21b_a" ID="LA_21b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_21b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_21b" name="LA_21b_b" ID="LA_21b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_21b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_21b" name="LA_21b_c" ID="LA_21b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_21b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Amikacin  (AK) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_22a" name="LA_22a_v" ID="LA_22a_v" />
                                                                <label for="input-radio-11">Amikacin  (AK) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_22a" name="LA_22a_b" ID="LA_22a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_22a" name="LA_22a_c" ID="LA_22a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_22a_a">Zone Diameter (mm) Amikacin  (AK) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_22a_a" class="form-control" name="LA_22a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_22b">Amikacin  (AK) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_22b" name="LA_22b_a" ID="LA_22b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_22b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_22b" name="LA_22b_b" ID="LA_22b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_22b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_22b" name="LA_22b_c" ID="LA_22b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_22b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Aztreonam (ATM) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_23a" name="LA_23a_v" ID="LA_23a_v" />
                                                                <label for="input-radio-11">Aztreonam (ATM) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_23a" name="LA_23a_b" ID="LA_23a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_23a" name="LA_23a_c" ID="LA_23a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_23a_a">Zone Diameter (mm) Aztreonam (ATM) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_23a_a" class="form-control" name="LA_23a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_23b">Aztreonam (ATM) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_23b" name="LA_23b_a" ID="LA_23b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_23b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_23b" name="LA_23b_b" ID="LA_23b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_23b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_23b" name="LA_23b_c" ID="LA_23b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_23b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Azithromycin (AZM) 15ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_24a" name="LA_24a_v" ID="LA_24a_v" />
                                                                <label for="input-radio-11">Azithromycin (AZM) 15ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_24a" name="LA_24a_b" ID="LA_24a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_24a" name="LA_24a_c" ID="LA_24a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_24a_a">Zone Diameter (mm) Azithromycin (AZM) 15ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_24a_a" class="form-control" name="LA_24a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_24b">Azithromycin (AZM) 15ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_24b" name="LA_24b_a" ID="LA_24b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_24b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_24b" name="LA_24b_b" ID="LA_24b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_24b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_24b" name="LA_24b_c" ID="LA_24b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_24b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Chloramphenicol (C)</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_25a" name="LA_25a_v" ID="LA_25a_v" />
                                                                <label for="input-radio-11">Chloramphenicol (C) Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_25a" name="LA_25a_b" ID="LA_25a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_25a" name="LA_25a_c" ID="LA_25a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_25a_a">Zone Diameter (mm) Chloramphenicol (C)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_25a_a" class="form-control" name="LA_25a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_25b">Chloramphenicol (C) Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_25b" name="LA_25b_a" ID="LA_25b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_25b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_25b" name="LA_25b_b" ID="LA_25b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_25b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_25b" name="LA_25b_c" ID="LA_25b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_25b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Ceftazidime (CAZ) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_26a" name="LA_26a_v" ID="LA_26a_v" />
                                                                <label for="input-radio-11">Ceftazidime (CAZ) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_26a" name="LA_26a_b" ID="LA_26a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_26a" name="LA_26a_c" ID="LA_26a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_26a_a">Zone Diameter (mm) Ceftazidime (CAZ) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_26a_a" class="form-control" name="LA_26a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_26b">Ceftazidime (CAZ) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_26b" name="LA_26b_a" ID="LA_26b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_26b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_26b" name="LA_26b_b" ID="LA_26b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_26b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_26b" name="LA_26b_c" ID="LA_26b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_26b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Cefixime (CFM) 5ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_27a" name="LA_27a_v" ID="LA_27a_v" />
                                                                <label for="input-radio-11">Cefixime (CFM) 5ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_27a" name="LA_27a_b" ID="LA_27a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_27a" name="LA_27a_c" ID="LA_27a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_27a_a">Zone Diameter (mm) Cefixime (CFM) 5ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_27a_a" class="form-control" name="LA_27a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_27b">Cefixime (CFM) 5ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_27b" name="LA_27b_a" ID="LA_27b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_27b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_27b" name="LA_27b_b" ID="LA_27b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_27b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_27b" name="LA_27b_c" ID="LA_27b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_27b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Ciprofloxacin (CIP) 5ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_28a" name="LA_28a_v" ID="LA_28a_v" />
                                                                <label for="input-radio-11">Ciprofloxacin (CIP) 5ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_28a" name="LA_28a_b" ID="LA_28a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_28a" name="LA_28a_c" ID="LA_28a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_28a_a">Zone Diameter (mm) Ciprofloxacin (CIP) 5ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_28a_a" class="form-control" name="LA_28a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_28b">Ciprofloxacin (CIP) 5ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_28b" name="LA_28b_a" ID="LA_28b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_28b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_28b" name="LA_28b_b" ID="LA_28b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_28b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_28b" name="LA_28b_c" ID="LA_28b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_28b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>




                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Gentamicin (CN) 10ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_29a" name="LA_29a_v" ID="LA_29a_v" />
                                                                <label for="input-radio-11">Gentamicin (CN) 10ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_29a" name="LA_29a_b" ID="LA_29a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_29a" name="LA_29a_c" ID="LA_29a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_29a_a">Zone Diameter (mm) Gentamicin (CN) 10ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_29a_a" class="form-control" name="LA_29a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_29b">Gentamicin (CN) 10ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_29b" name="LA_29b_a" ID="LA_29b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_29b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_29b" name="LA_29b_b" ID="LA_29b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_29b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_29b" name="LA_29b_c" ID="LA_29b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_29b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Gentamicin (CN120) 120ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_30a" name="LA_30a_v" ID="LA_30a_v" />
                                                                <label for="input-radio-11">Gentamicin (CN120) 120ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_30a" name="LA_30a_b" ID="LA_30a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_30a" name="LA_30a_c" ID="LA_30a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_30a_a">Zone Diameter (mm) Gentamicin (CN120) 120ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_30a_a" class="form-control" name="LA_30a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_30b">Gentamicin (CN120) 120ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_30b" name="LA_30b_a" ID="LA_30b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_30b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_30b" name="LA_30b_b" ID="LA_30b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_30b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_30b" name="LA_30b_c" ID="LA_30b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_30b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Ceftriaxone (CRO) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_31a" name="LA_31a_v" ID="LA_31a_v" />
                                                                <label for="input-radio-11">Ceftriaxone (CRO) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_31a" name="LA_31a_b" ID="LA_31a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_31a" name="LA_31a_c" ID="LA_31a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_31a_a">Zone Diameter (mm) Ceftriaxone (CRO) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_31a_a" class="form-control" name="LA_31a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_31b">Ceftriaxone (CRO) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_31b" name="LA_31b_a" ID="LA_31b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_31b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_31b" name="LA_31b_b" ID="LA_31b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_31b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_31b" name="LA_31b_c" ID="LA_31b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_31b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>





                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Cefuroxime (CXM) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_32a" name="LA_32a_v" ID="LA_32a_v" />
                                                                <label for="input-radio-11">Cefuroxime (CXM) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_32a" name="LA_32a_b" ID="LA_32a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_32a" name="LA_32a_c" ID="LA_32a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_32a_a">Zone Diameter (mm) Cefuroxime (CXM) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_32a_a" class="form-control" name="LA_32a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_32b">Cefuroxime (CXM) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_32b" name="LA_32b_a" ID="LA_32b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_32b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_32b" name="LA_32b_b" ID="LA_32b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_32b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_32b" name="LA_32b_c" ID="LA_32b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_32b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Clindamycin (DA) 2ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_33a" name="LA_33a_v" ID="LA_33a_v" />
                                                                <label for="input-radio-11">Clindamycin (DA) 2ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_33a" name="LA_33a_b" ID="LA_33a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_33a" name="LA_33a_c" ID="LA_33a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_33a_a">Zone Diameter (mm) Clindamycin (DA) 2ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_33a_a" class="form-control" name="LA_33a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_33b">Clindamycin (DA) 2ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_33b" name="LA_33b_a" ID="LA_33b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_33b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_33b" name="LA_33b_b" ID="LA_33b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_33b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_33b" name="LA_33b_c" ID="LA_33b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_33b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Erythromycin (E)</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_34a" name="LA_34a_v" ID="LA_34a_v" />
                                                                <label for="input-radio-11">Erythromycin (E) Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_34a" name="LA_34a_b" ID="LA_34a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_34a" name="LA_34a_c" ID="LA_34a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_34a_a">Zone Diameter (mm) Erythromycin (E)</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_34a_a" class="form-control" name="LA_34a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_34b">Erythromycin (E) Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_34b" name="LA_34b_a" ID="LA_34b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_34b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_34b" name="LA_34b_b" ID="LA_34b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_34b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_34b" name="LA_34b_c" ID="LA_34b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_34b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Cefipime (FEP) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_35a" name="LA_35a_v" ID="LA_35a_v" />
                                                                <label for="input-radio-11">Cefipime (FEP) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_35a" name="LA_35a_b" ID="LA_35a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_35a" name="LA_35a_c" ID="LA_35a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_35a_a">Zone Diameter (mm) Cefipime (FEP) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_35a_a" class="form-control" name="LA_35a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_35b">Cefipime (FEP) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_35b" name="LA_35b_a" ID="LA_35b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_35b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_35b" name="LA_35b_b" ID="LA_35b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_35b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_35b" name="LA_35b_c" ID="LA_35b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_35b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Cefoxitin (FOX) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_36a" name="LA_36a_v" ID="LA_36a_v" />
                                                                <label for="input-radio-11">Cefoxitin (FOX) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_36a" name="LA_36a_b" ID="LA_36a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_36a" name="LA_36a_c" ID="LA_36a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_36a_a">Zone Diameter (mm) Cefoxitin (FOX) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_36a_a" class="form-control" name="LA_36a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_36b">Cefoxitin (FOX) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_36b" name="LA_36b_a" ID="LA_36b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_36b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_36b" name="LA_36b_b" ID="LA_36b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_36b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_36b" name="LA_36b_c" ID="LA_36b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_36b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Fusidic Acid (FD) 10ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_37a" name="LA_37a_v" ID="LA_37a_v" />
                                                                <label for="input-radio-11">Fusidic Acid (FD) 10ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_37a" name="LA_37a_b" ID="LA_37a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_37a" name="LA_37a_c" ID="LA_37a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_37a_a">Zone Diameter (mm) Fusidic Acid (FD) 10ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_37a_a" class="form-control" name="LA_37a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_37b">Fusidic Acid (FD) 10ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_37b" name="LA_37b_a" ID="LA_37b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_37b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_37b" name="LA_37b_b" ID="LA_37b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_37b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_37b" name="LA_37b_c" ID="LA_37b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_37b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>








                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Imipenem (IPM) 10ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_38a" name="LA_38a_v" ID="LA_38a_v" />
                                                                <label for="input-radio-11">Imipenem (IPM) 10ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_38a" name="LA_38a_b" ID="LA_38a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_38a" name="LA_38a_c" ID="LA_38a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_38a_a">Zone Diameter (mm) Imipenem (IPM) 10ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_38a_a" class="form-control" name="LA_38a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_38b">Imipenem (IPM) 10ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_38b" name="LA_38b_a" ID="LA_38b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_38b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_38b" name="LA_38b_b" ID="LA_38b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_38b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_38b" name="LA_38b_c" ID="LA_38b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_38b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>








                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Levofloxacin (LEV) 5ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_39a" name="LA_39a_v" ID="LA_39a_v" />
                                                                <label for="input-radio-11">Levofloxacin (LEV) 5ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_39a" name="LA_39a_b" ID="LA_39a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_39a" name="LA_39a_c" ID="LA_39a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_39a_a">Zone Diameter (mm) Levofloxacin (LEV) 5ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_39a_a" class="form-control" name="LA_39a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_39b">Levofloxacin (LEV) 5ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_39b" name="LA_39b_a" ID="LA_39b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_39b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_39b" name="LA_39b_b" ID="LA_39b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_39b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_39b" name="LA_39b_c" ID="LA_39b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_39b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Linezolid (LZD) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_40a" name="LA_40a_v" ID="LA_40a_v" />
                                                                <label for="input-radio-11">Linezolid (LZD) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_40a" name="LA_40a_b" ID="LA_40a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_40a" name="LA_40a_c" ID="LA_40a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_40a_a">Zone Diameter (mm) Linezolid (LZD) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_40a_a" class="form-control" name="LA_40a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_40b">Linezolid (LZD) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_40b" name="LA_40b_a" ID="LA_40b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_40b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_40b" name="LA_40b_b" ID="LA_40b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_40b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_40b" name="LA_40b_c" ID="LA_40b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_40b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>








                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Meropenem (MEM) 10ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_41a" name="LA_41a_v" ID="LA_41a_v" />
                                                                <label for="input-radio-11">Meropenem (MEM) 10ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_41a" name="LA_41a_b" ID="LA_41a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_41a" name="LA_41a_c" ID="LA_41a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_41a_a">Zone Diameter (mm) Meropenem (MEM) 10ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_41a_a" class="form-control" name="LA_41a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_41b">Meropenem (MEM) 10ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_41b" name="LA_41b_a" ID="LA_41b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_41b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_41b" name="LA_41b_b" ID="LA_41b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_41b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_41b" name="LA_41b_c" ID="LA_41b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_41b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Metronidazole (MTZ) 5ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_42a" name="LA_42a_v" ID="LA_42a_v" />
                                                                <label for="input-radio-11">Metronidazole (MTZ) 5ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_42a" name="LA_42a_b" ID="LA_42a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_42a" name="LA_42a_c" ID="LA_42a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_42a_a">Zone Diameter (mm) Metronidazole (MTZ) 5ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_42a_a" class="form-control" name="LA_42a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_42b">Metronidazole (MTZ) 5ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_42b" name="LA_42b_a" ID="LA_42b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_42b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_42b" name="LA_42b_b" ID="LA_42b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_42b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_42b" name="LA_42b_c" ID="LA_42b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_42b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>








                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Nalidixic Acid (NA) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_43a" name="LA_43a_v" ID="LA_43a_v" />
                                                                <label for="input-radio-11">Nalidixic Acid (NA) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_43a" name="LA_43a_b" ID="LA_43a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_43a" name="LA_43a_c" ID="LA_43a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_43a_a">Zone Diameter (mm) Nalidixic Acid (NA) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_43a_a" class="form-control" name="LA_43a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_43b">Nalidixic Acid (NA) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_43b" name="LA_43b_a" ID="LA_43b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_43b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_43b" name="LA_43b_b" ID="LA_43b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_43b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_43b" name="LA_43b_c" ID="LA_43b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_43b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Ofloxacin(OFX) 5ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_44a" name="LA_44a_v" ID="LA_44a_v" />
                                                                <label for="input-radio-11">Ofloxacin(OFX) 5ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_44a" name="LA_44a_b" ID="LA_44a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_44a" name="LA_44a_c" ID="LA_44a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_44a_a">Zone Diameter (mm) Ofloxacin(OFX) 5ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_44a_a" class="form-control" name="LA_44a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_44b">Ofloxacin(OFX) 5ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_44b" name="LA_44b_a" ID="LA_44b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_44b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_44b" name="LA_44b_b" ID="LA_44b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_44b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_44b" name="LA_44b_c" ID="LA_44b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_44b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Oxacillin (OX) 1ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_45a" name="LA_45a_v" ID="LA_45a_v" />
                                                                <label for="input-radio-11">Oxacillin (OX) 1ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_45a" name="LA_45a_b" ID="LA_45a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_45a" name="LA_45a_c" ID="LA_45a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_45a_a">Zone Diameter (mm) Oxacillin (OX) 1ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_45a_a" class="form-control" name="LA_45a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_45b">Oxacillin (OX) 1ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_45b" name="LA_45b_a" ID="LA_45b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_45b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_45b" name="LA_45b_b" ID="LA_45b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_45b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_45b" name="LA_45b_c" ID="LA_45b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_45b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Penicillin (P) 10units</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_46a" name="LA_46a_v" ID="LA_46a_v" />
                                                                <label for="input-radio-11">Penicillin (P) 10units Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_46a" name="LA_46a_b" ID="LA_46a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_46a" name="LA_46a_c" ID="LA_46a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_46a_a">Zone Diameter (mm) Penicillin (P) 10units</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_46a_a" class="form-control" name="LA_46a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_46b">Penicillin (P) 10units Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_46b" name="LA_46b_a" ID="LA_46b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_46b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_46b" name="LA_46b_b" ID="LA_46b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_46b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_46b" name="LA_46b_c" ID="LA_46b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_46b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Polymixin B (PB) 300 units</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_47a" name="LA_47a_v" ID="LA_47a_v" />
                                                                <label for="input-radio-11">Polymixin B (PB) 300 units Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_47a" name="LA_47a_b" ID="LA_47a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_47a" name="LA_47a_c" ID="LA_47a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_47a_a">Zone Diameter (mm) Polymixin B (PB) 300 units</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_47a_a" class="form-control" name="LA_47a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_47b">Polymixin B (PB) 300 units Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_47b" name="LA_47b_a" ID="LA_47b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_47b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_47b" name="LA_47b_b" ID="LA_47b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_47b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_47b" name="LA_47b_c" ID="LA_47b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_47b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Cotrimoxazole(SXT) 25ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_48a" name="LA_48a_v" ID="LA_48a_v" />
                                                                <label for="input-radio-11">Cotrimoxazole(SXT) 25ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_48a" name="LA_48a_b" ID="LA_48a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_48a" name="LA_48a_c" ID="LA_48a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_48a_a">Zone Diameter (mm) Cotrimoxazole(SXT) 25ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_48a_a" class="form-control" name="LA_48a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_48b">Cotrimoxazole(SXT) 25ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_48b" name="LA_48b_a" ID="LA_48b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_48b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_48b" name="LA_48b_b" ID="LA_48b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_48b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_48b" name="LA_48b_c" ID="LA_48b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_48b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Tetracyclin (TE) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_49a" name="LA_49a_v" ID="LA_49a_v" />
                                                                <label for="input-radio-11">Tetracyclin (TE) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_49a" name="LA_49a_b" ID="LA_49a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_49a" name="LA_49a_c" ID="LA_49a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_49a_a">Zone Diameter (mm) Tetracyclin (TE) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_49a_a" class="form-control" name="LA_49a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_49b">Tetracyclin (TE) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_49b" name="LA_49b_a" ID="LA_49b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_49b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_49b" name="LA_49b_b" ID="LA_49b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_49b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_49b" name="LA_49b_c" ID="LA_49b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_49b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>







                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Tobramycin (TOB) 10ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_50a" name="LA_50a_v" ID="LA_50a_v" />
                                                                <label for="input-radio-11">Tobramycin (TOB) 10ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_50a" name="LA_50a_b" ID="LA_50a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_50a" name="LA_50a_c" ID="LA_50a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_50a_a">Zone Diameter (mm) Tobramycin (TOB) 10ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_50a_a" class="form-control" name="LA_50a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_50b">Tobramycin (TOB) 10ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_50b" name="LA_50b_a" ID="LA_50b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_50b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_50b" name="LA_50b_b" ID="LA_50b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_50b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_50b" name="LA_50b_c" ID="LA_50b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_50b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Piperacillin/Tazobactam (TZP) 110ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_51a" name="LA_51a_v" ID="LA_51a_v" />
                                                                <label for="input-radio-11">Piperacillin/Tazobactam (TZP) 110ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_51a" name="LA_51a_b" ID="LA_51a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_51a" name="LA_51a_c" ID="LA_51a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_51a_a">Zone Diameter (mm) Piperacillin/Tazobactam (TZP) 110ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_51a_a" class="form-control" name="LA_51a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_51b">Piperacillin/Tazobactam (TZP) 110ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_51b" name="LA_51b_a" ID="LA_51b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_51b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_51b" name="LA_51b_b" ID="LA_51b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_51b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_51b" name="LA_51b_c" ID="LA_51b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_51b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>






                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5">Vancomycin(VA) 30ug</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_52a" name="LA_52a_v" ID="LA_52a_v" />
                                                                <label for="input-radio-11">Vancomycin(VA) 30ug Value</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_52a" name="LA_52a_b" ID="LA_52a_b" />
                                                                <label for="input-radio-11">NA</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_52a" name="LA_52a_c" ID="LA_52a_c" />
                                                                <label for="input-radio-12">NR</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_52a_a">Zone Diameter (mm) Vancomycin(VA) 30ug</label>
                                                        <div class="col-md-9">
                                                            <asp:TextBox runat="server" MaxLength="15" ID="LA_52a_a" class="form-control" name="LA_52a_a" onkeypress="return numeralsOnly_decimal(event);"></asp:TextBox>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-md-3 label-control" for="projectinput5" id="lbl_LA_52b">Vancomycin(VA) 30ug Interpretation</label>
                                                        <div class="col-md-6 col-sm-12">
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_52b" name="LA_52b_a" ID="LA_52b_a" />
                                                                <label for="input-radio-11" id="lbl_LA_52b_s">S</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_52b" name="LA_52b_b" ID="LA_52b_b" />
                                                                <label for="input-radio-11" id="lbl_LA_52b_r">R</label>
                                                            </fieldset>
                                                            <fieldset>
                                                                <asp:RadioButton runat="server" class=".radiocls2" GroupName="LA_52b" name="LA_52b_c" ID="LA_52b_c" />
                                                                <label for="input-radio-12" id="lbl_LA_52b_i">I</label>
                                                            </fieldset>
                                                        </div>
                                                    </div>


                                                </div>


                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>

                                                        <div class="form-actions left">
                                                            <asp:Button runat="server" ID="cmdSave" class="btn btn-danger mr-1" Text=" Save " OnClick="cmdSave_Click"></asp:Button>
                                                            <asp:Button ID="cmdCancel" runat="server" class="btn btn-primary" Text="Cancel"></asp:Button>
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
