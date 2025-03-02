<%@ Page Title="" Language="C#" MasterPageFile="BusBookingMaster.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="BusBookingProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        body {
            background: -webkit-gradient(radial, center center, 0, center center, 460, from(#1a82f7), to(#2F2727));
            background: -webkit-radial-gradient(circle, #1a82f7, #2F2727);
            background: -moz-radial-gradient(circle, #1a82f7, #2F2727);
            background: -ms-radial-gradient(circle, #1a82f7, #2F2727);
            height: 600px;
        }

        .centered-form {
            margin-top: 10%;
        }

            .centered-form .panel {
                background: rgba(255, 255, 255, 0.8);
                box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
            }

        label.label-floatlabel {
            font-weight: bold;
            color: #46b8da;
            font-size: 11px;
        }
         .btn-login {
            display: block;
            font-size: 16px;
            margin-left: 40%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="padding100" style="margin-top:3%">
        <div class="container">
            <div id="loginbox" style="margin-top: 10%;" class="mainbox col-md-5 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title" style="margin-left: 45%">
                            Sign In
                        </div>
                    </div>
                    <div style="padding-top: 20px" class="panel-body">
                        <asp:Label ID="lblErrorMsg" runat="server" /><br />
                        <br />
                        <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox runat="server" placeholder="Enter Mobile No" ID="txtUserId" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin"
                                    CssClass="text-danger" ErrorMessage="The email field is required." /><br />
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password Here" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" CssClass="text-danger" ID="rfvPassword"
                                    ErrorMessage="The password field is required." ValidationGroup="vgLogin" />
                            </div>
                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox runat="server" ID="RememberMe" />
                                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me</asp:Label>
                                    </label>
                                </div>
                            </div>
                            <div  class="form-group">
                                <!-- Button -->
                                <div class="col-sm-12 controls">
                                    <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-success btn-login" style="width:auto;"   ValidationGroup="vgLogin" CausesValidation="True" OnClick="btnLogin_Click" /><br /><br />
                                    <a href="UserRegistration.aspx" style="margin-left: 30%">Register as a new user</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
