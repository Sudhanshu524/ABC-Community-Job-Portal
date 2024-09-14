<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="se" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bulk Email</title>
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
 
  <link href="css2/bulkemail.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="${Header}"/>
<!-- /.modal compose message -->
        <div class="modal-content">
          <div class="modal-header modal-header-info">
            <h4 class="modal-title"><span class="glyphicon glyphicon-envelope"></span> Send Email</h4>
          </div>
           <section class="contact_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
            <se:form action="/sendbulkemail" method="post" role="form" modelAttribute="sendEmail">
                <div class="">
                  <label class="col-sm-2" for="inputTo"><span class="glyphicon glyphicon-user"></span>To</label>
                  <div class="col-sm-10"><se:input path="sendTo" type="text" class="form-control" id="inputTo" placeholder="...@gmail.com"/></div>
                </div>
                <div class="">
                  <label class="col-sm-2" for="inputSubject"><span class="glyphicon glyphicon-list-alt"></span>Subject</label>
                  <div class="col-sm-10"><se:input path="subject" type="text" class="form-control" id="inputSubject" placeholder="subject"/></div>
                </div>
                <div class="">
                  <label class="col-sm-12" for="inputBody"><span class="glyphicon glyphicon-list"></span>Message</label>
                  <div class="col-sm-12"><se:textarea path="message" class="form-control" id="inputBody" rows="8" placeholder="Write your message"></se:textarea></div>
                </div>
          	<div class="modal-footer">
          		<se:input path="user" type="hidden" class="form-control" id="inputTo" value="${id_user}"/>
          	
           	 	<button class="btn btn-primary ">Send </button>
            	<a href="/bulkemail" type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</a> 
         	 </div>
            </se:form>
          </div>
        </div>
         </div><!-- /.modal-content -->
</body>
</html>