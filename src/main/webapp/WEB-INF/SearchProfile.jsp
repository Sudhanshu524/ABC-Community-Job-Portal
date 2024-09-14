<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
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

  <title>Search</title>

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
  
  <link href="css2/search.css" rel="stylesheet"/>
<style>
	table {
		max-width:100%;
	}
	th, td {
		padding: 2px 5px;
		text-align: center;
	}
</style>
</head>
<body>
<jsp:include page="${Header}"/>
  <section class="about_section mx-1">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="detail-box">
            <div class="custom_heading-container">
              <h2>
                User Detail
              </h2>
            </div>
            <p>
            	<sf:form action="profilesearch" method="post" modelAttribute="singleProfile">
			      <sf:input path="username" name="username" required="required" type="text" placeholder="Input Username" />
			      <button>Search User</button>
			    </sf:form>
            </p>
            <div>
			<Table border=1 class="table user-list">
			<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Name</th>
				<th>Address</th>
				<th>Contact</th>
			</tr>
			</thead>
			<tbody>
			<dd:forEach var="useR" items="${testS}">
			<tr>
				<td>${useR.id_user}</td>
				<td>${useR.username}</td>
				<td>${useR.email}</td>
				<td>${useR.firstName} ${useR.lastName}</td>
				<td>${useR.address}</td>
				<td>${useR.contact}</td>
				<td>
					<a href="update/${useR.id_user}">UPDATE</a> 
					<a href="deleted/${useR.id_user}">DELETE</a>
				</td>
			</tr>
			</dd:forEach>
			</tbody>
			</Table>   
            </div>
          </div>
        </div>
      </div>
    </div>
</section>

</body>
</html>