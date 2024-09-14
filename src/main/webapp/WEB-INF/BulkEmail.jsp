<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sae" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  
    <link href="css/style2.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="${Header}"/>

<!-- Content -->
<div class="container">
<div class="row">
    <div class="col-xl-12">
    	<div class="text-center mt-2 col-md-3">
			<a href="/sendemail">
		   		<button class="bg-info" style="height:50px;">
	   				<i class="fa fa-plus"></i>
	   				<span>Send Email</span>
		   		</button>
	   		</a>
   		</div>
   		<sae:forEach var="showEm" items="${showE}">
        <div class="media g-mb-30 media-comment">
            <img class="d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15" src="images/profile.png" alt="Image Description">
            <div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
              <div class="g-mb-15">
              	<h5 class="h5 g-color-gray-dark-v1 mb-0">From: ${showEm.user.getEmail()} </h5>
                <h5 class="h5 g-color-gray-dark-v1 mb-0">To: ${showEm.sendTo} </h5>
                <h6 class="h5 g-color-gray-dark-v1 mb-0">Subject: ${showEm.subject}</h6>
                <span class="g-color-gray-dark-v4 g-font-size-12">${showEm.time}</span>
              </div> <br/>       
              <p>
              	${showEm.message}
              </p>
        
            </div>
        </div>
        </sae:forEach>
    </div>
</div>
</div>
</body>
</html>