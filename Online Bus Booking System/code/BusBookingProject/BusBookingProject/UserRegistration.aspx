<%@ Page Title="" Language="C#" MasterPageFile="BusBookingMaster.Master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="BusBookingProject.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            justify-content: center;
            align-items: center;
            
        }

        .registration-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            padding: 2.5rem;
            border: 1px solid rgba(255, 255, 255, 0.2);
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .registration-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .registration-header h3 {
            color: #fff;
            font-size: 2rem;
            margin: 0;
            font-weight: 600;
        }

        .registration-header p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 0.9rem;
            margin-top: 0.5rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .form-group label {
            display: block;
            color: #fff;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .form-group input {
            width: 100%;
            padding: 0.75rem 1rem;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            color: #fff;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            background: rgba(255, 255, 255, 0.2);
            border-color: rgba(255, 255, 255, 0.5);
            outline: none;
        }

        .form-group input::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        .btn-register {
            width: 100%;
            padding: 0.75rem;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .btn-register:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        .btn-register:active {
            transform: translateY(0);
        }

        .login-link {
            text-align: center;
            margin-top: 1.5rem;
        }

        .login-link a {
            color: #fff;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .login-link a:hover {
            text-decoration: underline;
            color: rgba(255, 255, 255, 0.8);
        }

        .validation-summary {
            color: #ff6b6b;
            margin-bottom: 1rem;
            text-align: center;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .col-xs-6 {
            flex: 1 1 calc(50% - 0.5rem);
        }

        .col-xs-12 {
            flex: 1 1 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="registration-container">
        <div class="registration-header">
            <h3>New User Registration</h3>
            <p>Create your account to get started.</p>
        </div>
        <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="validation-summary" ShowSummary="true" ValidationGroup="vgRegister" />
        <div id="divMessage" runat="server" />
        <div class="row">
            <div class="col-xs-6">
                <div class="form-group">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server" class="form-control input-sm floatlabel" placeholder="Enter First Name" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="First Name is required." />
                </div>
            </div>
        
                <div class="col-xs-6">
                    <div class="form-group">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name" Font-Bold="true"></asp:Label>
                        <asp:TextBox ID="txtLastName" runat="server" class="form-control input-sm floatlabel" placeholder="Enter Last Name" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                            CssClass="text-danger" ErrorMessage="Last Name is required." />
                    </div>
                </div>
         
            <div class="col-xs-6">            
                <div class="form-group">
                    <asp:Label ID="lblUserName" runat="server" Text="Mobile No/User Name" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="txtMobileNo" runat="server" class="form-control input-sm floatlabel" placeholder="Enter Mobile No" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNo" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="Mobile No is required." />
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email ID" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="txtEmailID" runat="server" class="form-control input-sm floatlabel" placeholder="Enter Email ID" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailID" Display="None" ID="rfVEmail" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="Email Id is required." />
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group">
                    <asp:Label ID="lblPinCode" runat="server" Text="Pincode" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="txtPincode" runat="server" class="form-control input-sm floatlabel" placeholder="Enter Pincode" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPincode" Display="None" ID="rfvPinCode" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="Pin code is required." />
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group">
                    <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                    <asp:TextBox runat="server" ID="txtAddress" class="form-control input-sm" placeholder="Enter Address" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" Display="None" ID="rfVAddress" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="Address is required." />
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group">
                    <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                    <asp:TextBox runat="server" ID="txtCity" class="form-control input-sm" placeholder="Enter City" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" Display="None" ID="rfVCity" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="City Name is required." />
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control input-sm floatlabel" TextMode="Password" placeholder="Enter Password" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                        CssClass="text-danger" ErrorMessage="Password is required." />
                </div>
            </div>
            <div class="col-xs-12 text-center">
                <div class="form-group">
                    <asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click"
                        class="btn-register" ValidationGroup="vgRegister" CausesValidation="True" ViewStateMode="Inherit" />
                    <br /><br />
                    <div class="login-link">
                        <a href="Login.aspx">Already a user? Click to Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

