<%@page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>ForgetPassword</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700|Roboto:400,700&display=swap" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="">
            <img src="images/logo.png" alt="" />
            <span>
              ABC Community
            </span>
          </a>
        </nav>
      </div>
    </header>
    <!-- end header section -->


  <!-- contact section -->

  <section class="contact_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
          <h2 class="custom_heading">Forgot your password?</h2>
          <form action="forgetverify">
			
			<div>
				<input type="text" placeholder="Email" required="required" name="emailForgotPass" />
			</div>
			<div>
				<button>Submit</button>
			</div>
			<p>
				Remember your password?
				<a href="login">Login</a> 
			</p>
			<p>
				Do not have an account?
				<a href="register">Register</a>
			</p>
		</form><!-- form -->
        </div>
        <div class="col-md-6 px-0">
          <div class="img-box">
            <img src="images/contact.jpg" alt="" class="w-100" />
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  

  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>
      &copy; 2019 All Rights Reserved By
      <a href="https://html.design/">ABC Community</a>
    </p>
  </footer>
  <!-- footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/circles.min.js"></script>
  <script src="js/custom.js"></script>

</body>

</html>