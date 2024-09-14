<%@page import="java.net.URI"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
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

  <title>Register</title>

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
          <a class="navbar-brand" href="/">
            <img src="images/logo.png" alt="" />
            <span>
              ABC Community
            </span>
          </a>
          <div class="call_btn">
            <a href="/">
              Back
            </a>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->


  <!-- contact section -->

  <section class="contact_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
          <h2 class="custom_heading">Register Here</h2>
          <h3>${ExistEmail}</h3>
          <sf:form  name="formRegister" method="post" action="register" autocomplete="on" modelAttribute="data" > 
			    <p> 
			        <label for="username" class="uname" data-icon="u">Your Username</label>
			        <sf:input path="username" id="username" name="username" required="required" type="text" placeholder="AlphabecNumeric" />
			    </p>
			    <p> 
			        <label for="email" class="youmail" data-icon="e" > Your Email</label>
			        <sf:input path="email" id="email" name="email" required="required" type="email" placeholder="name@mail.com"/>  
			    </p>
			    <p> 
			        <label for="fName" class="youfname" data-icon="f" > Your First Name</label>
			        <sf:input path="firstName" id="firstName" name="fName" required="required" type="text" placeholder="First Name"/> 
			    </p>
			    <p> 
			        <label for="lName" class="youlname" data-icon="l" > Your Last Name</label>
			        <sf:input path="lastName" id="lastName" name="lName" required="required" type="text" placeholder="Last Name"/> 
			    </p>
			    <p> 
			        <label for="password" class="youpasswd" data-icon="p">Your Password </label>
			        <sf:input path="password" id="password" name="password" required="required" minlength="8" type="password" placeholder="Minimal 8 Character"/>                               
			    </p>
			    <p> 
			        <label for="address" class="youaddress" data-icon="a">Your Address </label>
			        <sf:input path="address" id="address" name="address" required="required" type="text" placeholder="Address"/>  
			    </p>
			    <p> 
			        <label for="contact" class="youcontact" data-icon="c">Your Contact</label>
			        <sf:input path="contact" id="contact" name="contact" required="required" type="text" pattern="^[0-9]+$" title="Input number only" placeholder="Contact Number"/>
			    </p>
			    <p class="signin button"> 
			        <button>Register</button> 
			    </p>
			    <p class="change_link">  
			        Already a member?
			        <a href="login" class="to_register"> Login Here </a>
			    </p>
			</sf:form>
        </div>
       
      </div>
    </div>
  </section>

  <!-- end contact section -->

  

  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>
      &copy; 2019
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