<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AnnonousUser.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Liberary_System.Annomous_User.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
       <section id="home">
  <div class="banner-container"> 
  	<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
    <li data-target="#carousel" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item"><img src="/MasterPages/images/349.jpg" alt="banner" /></div>
       <div class="item"><img src="/MasterPages/images/7.jpg" alt="banner" /></div>
    <div class="item"><img src="/MasterPages/images/123.jpg" alt="banner" /></div>
    <div class="item"><img src="/MasterPages/images/8.jpg" alt="banner" /></div>
       <div class="item"><img src="/MasterPages/images/2.jpg" alt="banner" /></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#carousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#carousel" data-slide="next">&rsaquo;</a>
</div>
	
  </div>  
 
  <div class="container hero-text2">        
		<div class="col-md-9">
		<h2>Mactabty</h2>
			<p>
                Online Liberary System <br />
                Borrow Your Books Online  <br />


			</p>   
		</div>  
		<div class="col-md-3">
			<a class="btn btn-apply" href="#"><i class="fa fa-user"></i>For Login</a>  
		</div>
  </div>
</section>
</asp:Content>
