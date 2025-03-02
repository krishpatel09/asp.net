<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="code_BusBookingProject_BusBookingProject_ContactUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - Bus Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .contact-container {
            max-width: 800px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .map-container {
            width: 100%;
            height: 300px;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="contact-container">
                <h2 class="text-center mb-4">Contact Us</h2>
                
                <!-- Google Map -->
                <div class="map-container">
                    <iframe width="100%" height="100%" frameborder="0" style="border:0;"
                        src="
https://maps.googleapis.com/maps/api/js?key=AIzaSyAOVYRIgupAurZup5y1PRh8Ismb1A3lLao&libraries=places&callback=initMap"
                        allowfullscreen>
                    </iframe>
                </div>

                <!-- Contact Form -->
                <div class="mb-3">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your Email"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Your Message"></asp:TextBox>
                </div>
                <div class="text-center">
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary px-4" Text="Send Message" OnClick="btnSubmit_Click" />
                </div>

                <!-- Contact Details -->
                <div class="mt-4 text-center">
                    <p><strong>📍 Address:</strong> 123 Bus Street, Surat, Gujarat</p>
                    <p><strong>📞 Phone:</strong> +91 98765 43210</p>
                    <p><strong>📧 Email:</strong> contact@busbooking.com</p>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
