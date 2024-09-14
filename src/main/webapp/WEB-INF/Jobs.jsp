<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="vj" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="pt" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jobs</title>
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
  
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link href="css/style2.css" rel="stylesheet" />
  <script>
// (A) ALREADY CLICKED
function doClicked () {
  alert("You have already applied!");
}
 
// (B) NORMAL FUNCTION
function doSomething () {
  // (B1) SWITCH FUNKY TO DO THE IDLE FUNCTION
  funky = doClicked;
 
  // (B2) DO YOUR PROCESSING HERE
  alert("Job Applied!");
}

// (C) FUNKY SWITCHING FUNCTION
var funky = doSomething;

</script>
</head>
<body>
<jsp:include page="${Header}"/>

<!-- Content -->
<vj:forEach var="showJo" items="${showJ}">
<div class="container">
<div class="row">
    <div class="col-xl-12">
        <div class="media g-mb-30 media-comment">
            <img class="d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15" src="images/profile.png" alt="Image Description">
            <div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
              <div class="g-mb-15">
                <h3 class="h3 g-color-gray-dark-v1 mb-0">${showJo.jobsTitle}</h5>
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
                  <a target="_blank" class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="${showJo.companyWebsite} ">
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
                <pt:form action="apply" method="post" modelAttribute="applyJobs">
							<input type="hidden" value="${showJo.jobsId}" name="jobsA"/>
				         
				            <button type="submit" onclick="funky()"
       value="Apply" >Apply </button>
                        </pt:form>
            <%--      <button>
                  <input type="button" href="${showJo.linkApply}" modelAttribute="applyJobs"
                  	 id="myButton" onclick="test(${showJo.jobsId,${id_user})"
      					 value="Apply"/>
                </button>
                
            --%>
                </li>
              </ul>
            </div>
        </div>
    </div>
</div>
</div>
</vj:forEach>

</body>
</html>