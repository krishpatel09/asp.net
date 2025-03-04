<%@ Page Title="" Language="C#" MasterPageFile="BusBookingMaster.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="BusBookingProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            justify-content: center;
            align-items: center;
        }

        .login-container {
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

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .login-header h3 {
            color: #fff;
            font-size: 2rem;
            margin: 0;
            font-weight: 600;
        }

        .login-header p {
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

        .btn-login {
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

        .btn-login:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        .btn-login:active {
            transform: translateY(0);
        }

        .register-link {
            text-align: center;
            margin-top: 1.5rem;
        }

        .register-link a {
            color: #fff;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .register-link a:hover {
            text-decoration: underline;
            color: rgba(255, 255, 255, 0.8);
        }

        .validation-summary {
            color: #ff6b6b;
            margin-bottom: 1rem;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <div class="login-header">
            <h3>Login</h3>
            <p>Sign in to continue to your account.</p>
        </div>
        <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="validation-summary" ShowSummary="true" ValidationGroup="vgLogin" />
        <div id="divMessage" runat="server" />
        <div class="form-group">
            <asp:Label ID="lblUserId" runat="server" Text="Mobile No/User Name" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtUserId" runat="server" class="form-control input-sm floatlabel" placeholder="Enter Mobile No" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin"
                CssClass="text-danger" ErrorMessage="Mobile No/User Name is required." />
        </div>
        <div class="form-group">
            <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" class="form-control input-sm floatlabel" TextMode="Password" placeholder="Enter Password" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" ID="rfvPassword" ValidationGroup="vgLogin"
                CssClass="text-danger" ErrorMessage="Password is required." />
        </div>
        
        <div class="form-group">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"
                class="btn-login" ValidationGroup="vgLogin" CausesValidation="True" ViewStateMode="Inherit" />
        </div>
        <div class="register-link">
            <a href="UserRegistration.aspx">Don't have an account? Register here</a>
        </div>
    </div>
</asp:Content>