<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="pt" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="vt" uri="http://java.sun.com/jsp/jstl/core" %>
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

  <title>Home</title>

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
 
  <link href="css2/homeStyle.css" rel="stylesheet"/>
  <link href="css/style2.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="${Header}"/>
  <!-- about section -->
  <div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="col-md-3">
            <div class="panel cover rounded shadow">
                <div class="panel-body">
                    <div class="inner-all">
                        <ul class="list-unstyled ">
                            <li class="text-center">
                                <img class="img-circle img-responsive img-bordered-primary" src="images/profile.png" alt="Marint month">
                            </li>
                            <li class="text-center">
                                <h4 class="text-capitalize">${username}</h4>
                                <p class="text-muted text-capitalize">${fname} ${lname}</p>
                            </li>
                            <li class="text-center">
                                <div class="btn-group-vertical btn-block">
                                    <a href="/viewprofile" class="btn btn-default">
                                    <button>
	                                    <i class="fa fa-cog"></i>View Profile
                                    </button>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
<!-- Post a Thread -->
        <div class="col-md-9">
            <div class="panel cover rounded shadow no-overflow">
                <div class="panel-body">
                    <div class="inner-cover">
                        <div>
                        <pt:form action="/threadposted" method="post" modelAttribute="postThread">
				            <label for="description" class="block text-gray-700 text-sm mb-2">Post Thread</label>
				            <pt:input path="userT" type="hidden" value="${id_user}"/>
				            <pt:textarea path="mainThread" rows="6" style="width:100%;" placeholder="Ask something here" required="required"/>
          					<button type="submit">Post</button>
                        </pt:form>
          				</div>
                    </div>
                </div>
            </div>
            
<!-- Threads -->
			<vt:forEach var="dataTh" items="${dataT}">
            <div class="panel cover rounded shadow no-overflow">
                <div class="panel-body">
                  <div class="media g-mb-30 media-comment">
			            <img class="d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15" src="images/profile.png" alt="Image Description">
			            <div class="media-body u-shadow-v18 g-bg-secondary g-pa-30">
			              <div class="g-mb-15">
			                <h5 class="h5 g-color-gray-dark-v1 mb-0">${dataTh.userT.getFirstName()} ${dataTh.userT.getLastName()}</h5>
			                <span class="g-color-gray-dark-v4 g-font-size-12">${dataTh.time}</span>
			              </div>   
			              <p>
			              	${dataTh.mainThread}
			              </p>
			        
			               <ul class="list-inline d-sm-flex my-0">
			                <li class="list-inline-item ml-auto">
			                <button>
			                  <a class="u-link-v5 g-color-primary--hover fa fa-reply" href="#">
			                    Comment
			                  </a>
			                </button>
			                </li>
			              </ul>
			            </div>
			        </div>
                </div>
            </div>
            </vt:forEach>
        </div>
  </div>
</div>
  <!-- end about section -->

</body>
</html>