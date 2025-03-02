﻿<%@ Page Title="" Language="C#" MasterPageFile="BusBookingMaster.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="BusBookingProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
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
    </style>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#<%= txtDate.ClientID %>").datepicker({ dateFormat: 'dd/mm/yy' });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:8%">
        <div class="row">
            <div class="col-lg-4 col-sm-4 col-md-2 col-sm-offset-2 col-md-offset-2" style="margin-left:30%">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Search For Available Buses</h3>
                    </div>
                    <div class="panel-body">
                        <div id="divMessage" runat="server" />
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <asp:Label ID="lblAccType" runat="server" Text="From" Font-Bold="true"></asp:Label>
                                <asp:DropDownList ID="ddlOrigin" class="form-control input-sm floatlabel" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvOrigin" runat="server" ControlToValidate="ddlOrigin" InitialValue="" ErrorMessage="Please select a departure location." CssClass="text-danger" Display="Dynamic" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="To" Font-Bold="true"></asp:Label>
                                <asp:DropDownList ID="ddlDestination" class="form-control input-sm floatlabel" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvDestination" runat="server" ControlToValidate="ddlDestination" InitialValue="" ErrorMessage="Please select a destination." CssClass="text-danger" Display="Dynamic" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <asp:Label ID="lblDate" runat="server" Text="Travel Date" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY Format" class="form-control input-sm floatlabel"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Please enter a travel date." CssClass="text-danger" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revDate" runat="server" ControlToValidate="txtDate" ValidationExpression="^\d{2}/\d{2}/\d{4}$" ErrorMessage="Invalid date format. Use DD/MM/YYYY." CssClass="text-danger" Display="Dynamic" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <asp:Button ID="btnSearch" runat="server" Text="Search Buses" class="btn btn-info btn-block" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </div>
</asp:Content>
