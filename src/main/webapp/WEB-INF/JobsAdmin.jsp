<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="vj" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JobsAdmin</title>
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
			<a href="/jobspost">
		   		<button class="bg-info" style="height:50px;">
	   				<i class="fa fa-plus"></i>
	   				<span>POST NEW JOB</span>
		   		</button>
	   		</a>
   		</div>
   		<vj:forEach var="showJo" items="${showJ}">
        <div class="media g-mb-30 media-comment">
           
            <div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
              <div class="g-mb-15">
                <h3 class="h3 g-color-gray-dark-v1">${showJo.jobsTitle}</h3>
                <span class="g-color-gray-dark-v4 g-font-size-12">${showJo.time}</span>
              </div> <br/>       
              <p>
	              <pre style="font-size:20px">
    	          	${showJo.description}
	              </pre>
              </p>
              <p>
              	<i>
              	Posted by ${showJo.userJ.getFirstName()} ${showJo.userJ.getLastName()}
              	</i>
              </p>
        
               <ul class="list-inline d-sm-flex my-0">
                <li class="list-inline-item g-mr-20">
                  <a target="_blank" class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="${showJo.companyWebsite}">
                    <i class="fa fa-building g-pos-rel g-top-1 g-mr-3"></i>
                    ${showJo.company}
                  </a>
                </li>
                <li class="list-inline-item g-mr-20">
                  <a class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="#">
                    <i class="fa fa-map-marker g-pos-rel g-top-1 g-mr-3"></i>
                    Work Location: ${showJo.location}]
                  </a>
                </li>
                <li class="list-inline-item ml-auto">
                <button>
                  <a class="u-link-v5 g-color-primary--hover fa fa-trash" href="/deleteJobs/${showJo.jobsId}">
                    Delete
                  </a>
                </button>
                </li>
              </ul>
            </div>
        </div>
        </vj:forEach>
    </div>
</div>
</div>
</body>
</html>