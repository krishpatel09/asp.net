<%@ Page Title="" Language="C#" MasterPageFile="BusBookingMaster.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BusBookingProject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/default.css" rel="stylesheet" />
 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin:0; padding:0; max-width:100%">
        <div class="row text-center" style="margin:0">
            <div class="col-lg-12" style="padding:0">
                <asp:Image ID="imgCab" ImageUrl="img/nick-fewings-MlZnEM4LUwY-unsplash.jpg" style="width:100%; height:auto; display:block;" runat="server" />
            </div>
        </div>
    </div>
   <!-- Start home-about Area -->
    <section class="home-about-area section-gap">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 about-left">
                    <img class="img-fluid" src="img/about-img.jpg" alt="About Us">
                </div>
                <div class="col-lg-6 about-right">
                    <h1>Globally Connected by Large Network</h1>
                    <h4>We are here to listen from you and deliver excellence</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                    <a class="text-uppercase primary-btn" href="#">Get Details</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End home-about Area -->
	
     <!-- Start services Area -->
    <section class="services-area pb-120">
        <div class="container">
            <div class="row section-title">
                <h1 style="color:black">What Services we offer to our clients</h1>
                <p>Who are in extremely love with eco-friendly system.</p>
            </div>
            <div class="row">
                <div class="col-lg-4 single-service">
                    <span class="lnr lnr-car"></span>
                    <a href="#"><h4>Taxi Service</h4></a>
                    <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                </div>
                <div class="col-lg-4 single-service">
                    <span class="lnr lnr-briefcase"></span>
                    <a href="#"><h4>Office Pick-ups</h4></a>
                    <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                </div>
                <div class="col-lg-4 single-service">
                    <span class="lnr lnr-bus"></span>
                    <a href="#"><h4>Event Transportation</h4></a>
                    <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- End services Area -->


</asp:Content>
