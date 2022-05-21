﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PSBI_Lab2012.login" %>

<%--<link href="/../maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>--%>
<%--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
            $('#MainContent_txtUserID').focus();
        });


        //$(document).on("click", "#cmdLogin", function (e) {


        //    $("#lblerr").html("");

        //    $
        //        .ajax({
        //            url: "login/Login",
        //            type: "POST",
        //            contentType: "application/json; charset=utf-8",
        //            dataType: "json",
        //            data: "{ userid: '" + $('#MainContent_txtUserID').val() + "', passwd: '" + $("#MainContent_txtpasswd").val() + "'}",

        //            success: function (
        //                data) {

        //                if (data.d == "") {
        //                    alert("Invalid user id or password");
        //                }
        //                else {
        //                    window.location.href = "default.aspx";
        //                }

        //            },
        //            error: function (
        //                xhr,
        //                ajaxOptions,
        //                thrownError) {

        //                alert('Error: ');

        //            }
        //        });


        //});

        $(document).on("click", "#cmdCancel", function (e) {
            $('#MainContent_txtUserID').val('');
            $('#MainContent_txtpasswd').val('');
            $('#MainContent_txtUserID').focus();
        });

    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="updatepanel1" runat="server">
        <ContentTemplate>
            <div class="card border-grey border-lighten-3 px-1 py-1 m-0">
                <div class="card-header border-0">
                    <div class="text-center mb-1">
                        <%--<img src="../../../app-assets/images/logo/logo.png" alt="branding logo">--%>
                    </div>
                    <div class="font-large-1 text-center">
                        PSBI Lab Management System
                    </div>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <fieldset class="form-group position-relative has-icon-left">
                            <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control round" placeholder="User Name" Text=""></asp:TextBox>
                            <div class="form-control-position">
                                <i class="ft-user"></i>
                            </div>
                        </fieldset>
                        <fieldset class="form-group position-relative has-icon-left">
                            <asp:TextBox ID="txtpasswd" name="txtpasswd" runat="server" TextMode="Password" CssClass="form-control round" placeholder="Password" Text=""></asp:TextBox>
                            <div class="form-control-position">
                                <i class="ft-lock"></i>
                            </div>
                        </fieldset>
                        <fieldset class="form-group position-relative has-icon-left">
                            <div id="lblerr" runat="server" style="color: #FF0000"></div>
                        </fieldset>
                        <%--<div class="form-group row">
                            <div class="col-md-6 col-12 text-center text-sm-left">
                            </div>
                            <div class="col-md-6 col-12 float-sm-left text-center text-sm-right"><a href="recover-password.html" class="card-link">Forgot Password?</a></div>
                        </div>--%>
                        <div class="form-group text-center">
                            <%--<button type="submit" class="btn round btn-block btn-glow btn-bg-gradient-x-blue-green col-12 mr-1 mb-1">Login</button>--%>

                            <asp:Button ID="cmdLogin" runat="server" class="btn btn-danger mr-1" Text="  Login  "
                                OnClick="Login" />

                            <asp:Button ID="cmdCancel" runat="server" class="btn btn-primary" Text=" Cancel  "
                                OnClick="Cancel" />

                            <%--<button id="cmdLogin" name="cmdLogin" class="btn mybtn">
                                <i class="ft-log-in"></i>Login
                            </button>
                            <button id="cmdCancel" name="cmdCancel" class="btn mybtn-cancel">
                                <i class="ft-x"></i>Cancel
                            </button>--%>
                        </div>
                    </div>
                    <%--<p class="card-subtitle line-on-side text-muted text-center font-small-3 mx-2 my-2 "><span>OR Sign Up Using</span></p>--%>
                    <%--<div class="text-center">
                        <a href="#" class="btn btn-social-icon round mr-1 mb-1 btn-facebook"><span class="ft-facebook"></span></a>
                        <a href="#" class="btn btn-social-icon round mr-1 mb-1 btn-twitter"><span class="ft-twitter"></span></a>
                        <a href="#" class="btn btn-social-icon round mr-1 mb-1 btn-instagram"><span class="ft-instagram"></span></a>
                    </div>--%>

                    <%--<p class="card-subtitle text-muted text-right font-small-3 mx-2 my-1"><span>Don't have an account ? <a href="register.html" class="card-link">Sign Up</a></span></p>--%>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
