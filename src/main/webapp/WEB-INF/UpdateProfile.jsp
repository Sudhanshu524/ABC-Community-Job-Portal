<%@page import="java.net.URI"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
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

  <title>UpdateProfile</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700|Roboto:400,700&display=swap" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="/css/responsive.css" rel="stylesheet" />
<style>
input {
	width:100%;
}
</style>
</head>

<body>

  <!-- custom menu -->
  <div class="custom_menu-container">
    <div class="container">
      <div class="custom_menu">
        <ul class="navbar-nav ">
          <li class="nav-item">
          	<a class="navbar-brand" href="/home">
            <img src="/images/logo.png" alt="" />
            <span>
              ABC Community
            </span>
          </a>
          </li>
        </ul>
        <div class="user_option">
          <div class="login_btn-container">
            <a href="/home">
              cancel
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Update Profile section -->

  <section class="contact_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
          <h2 class="custom_heading">Update Here</h2>
          <form action="dataupdate" method="post"> 
          		<p> 
			        <input readonly id="id" name="uId" type="hidden" value="${viewProfile.id_user}" />
			    </p>
			    <p> 
			    	<label for="role" class="role" data-icon="r">Role</label>
			        <input ${editProfile} id="role" name="uRole" type="text" value="${viewProfile.role}" />
			    </p>
			    <p> 
			        <label for="username" class="uname" data-icon="u">Your Username</label>
			        <input  id="username" name="uUsername" required="required" type="text" value="${viewProfile.username}" />
			    </p>
			    <p> 
			        <label for="email" class="youmail" data-icon="e" > Your Email</label>
			        <input readonly id="email" name="uEmail" required="required" type="email" value="${viewProfile.email}"/>  
			    </p>
			    <p> 
			        <label for="fName" class="youfname" data-icon="f" > Your First Name</label>
			        <input id="firstName" name="uFirstName" required="required" type="text" value="${viewProfile.firstName}"/> 
			    </p>
			    <p> 
			        <label for="lName" class="youlname" data-icon="l" > Your Last Name</label>
			        <input id="lastName" name="uLastName" required="required" type="text" value="${viewProfile.lastName}"/> 
			    </p>
			    <p> 
			        <label for="address" class="youaddress" data-icon="a">Your Address </label>
			        <input id="address" name="uAddress" required="required" type="text" value="${viewProfile.address}"/>  
			    </p>
			    <p> 
			        <label for="contact" class="youcontact" data-icon="c">Your Contact</label>
			        <input id="contact" name="uContact" required="required" type="text" pattern="^[0-9]+$" title="Input number only" value="${viewProfile.contact}"/>
			    </p>
			    <p>
			        <input type="hidden"; id="password" name="uPassword" required="required" minlength="8" type="password" value="${viewProfile.password}"/>                               
			    </p>
			    <p class="update button"> 
			    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			        <button>Update</button> 
			    </p>
			</form>
        </div>
        <div class="col-md-6 px-0">
          <div class="img-box">
            <img src="/images/contact.jpg" alt="" class="w-100" style="height: 820px;" />
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