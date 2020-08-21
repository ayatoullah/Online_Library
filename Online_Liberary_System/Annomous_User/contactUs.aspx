﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AnnonousUser.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="Online_Liberary_System.Annomous_User.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <section id="contactUs" class="contact-parlex">
  <div class="parlex-back">
    <div class="container">
      <div class="row">
        <div class="heading text-center"> 
          <!-- Heading -->
                <br />
    <br />
    <br />
    <br />
          <h2>Contact Us</h2>
          <p>You Can message Us for Any Explain</p>
        </div>
      </div>
      <div class="row mrgn30">
       	<!--NOTE: Update your email Id in "contact_me.php" file in order to receive emails from your contact form-->
		<form name="sentMessage" id="contactForm"  novalidate>
		<h3>Contact Form</h3>
		<div class="control-group">
		<div class="controls">
		<input type="text" class="form-control" 
		placeholder="Full Name" id="name" required
		data-validation-required-message="Please enter your name" />
		<p class="help-block"></p>
		</div>
		</div> 	
		<div class="control-group">
		<div class="controls">
		<input type="email" class="form-control" placeholder="Email" 
		id="email" required
		data-validation-required-message="Please enter your email" />
		</div>
		</div> 	

		<div class="control-group">
		<div class="controls">
		<textarea rows="10" cols="100" class="form-control" 
		placeholder="Message" id="message" required
		data-validation-required-message="Please enter your message" minlength="5" 
		data-validation-minlength-message="Min 5 characters" 
		maxlength="999" style="resize:none"></textarea>
		</div>
		</div> 		 
		<div id="success"> </div> <!-- For success/fail messages -->
		<button type="submit" class="btn btn-primary pull-right">Send</button><br />
		</form>
      </div>
    </div>
    <!--/.container--> 
  </div>
</section>
</asp:Content>
