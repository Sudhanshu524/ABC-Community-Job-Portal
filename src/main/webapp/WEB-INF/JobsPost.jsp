<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="pj" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JobsPost</title>
  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.4.6/tailwind.min.css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css" rel="stylesheet" />

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
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
</head>
<body>
 <header class="header">
    <nav class="flex items-center justify-between px-6" style="height: 65px;">
      <div class="nav-item">
        <a class="navbar-brand" href="home">
            <img src="/images/logo.png" alt="" />
            <span>
              ABC Community
            </span>
          </a>
      </div>
        <div class="flex items-center h-full">
          <a href="jobsadmin" class="bg-teal-500 hover:bg-teal-600 text-white py-2 px-4 rounded-full mr-3">
            Back
          </a>
        </div>
    </nav>
  </header>
<h1>JOB POST</h1>
  <section class="contact_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
      <pj:form action="jobsposted" method="post" modelAttribute="postJobs">
        <h1 class="text-2xl mb-2">Post New Job</h1>
        
        <div class="job-info border-b-2 py-2 mb-5">
          <!--    Title      -->
          <div class="mb-4">
            <label class="block text-gray-700 text-sm mb-2" for="job-title">Job Title</label>
            <pj:input path="jobsTitle" required="required" class="appearance-none block w-full bg-white text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:border-gray-500" type="text" id="job-title" name="job-title" placeholder="Insert Job Title"/>
          </div>
          
           <!--     Link to apply     -->
	          <div class="mb-4">
	            <label class="block text-gray-700 text-sm mb-2" for="apply-link">Apply Link</label>
	            <pj:input path="linkApply" required="required" class="appearance-none block w-full bg-white text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:border-gray-500" type="text" id="apply-link" name="apply-link" placeholder="https://www.lithanEduclaas.com/apply"/>
	            <p class="block text-gray-700 text-sm mb-2">*Please refer to your own link to apply for the job* </p>
	          </div>

            <!--     Location       -->
            <div class="w-full md:w-8/12 mb-4 md:mb-0">
              <label for="location" class="block text-gray-700 text-sm mb-2">Location</label>
              <pj:input path="location" type="text" class="appearance-none block w-full bg-white text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:border-gray-500" id="location" name="location" placeholder="Country"/>
            </div>

          <div class="flex flex-wrap -mx-3">
            <!--     Company       -->
            <div class="w-full md:w-1/2 px-3 mb-4 md:mb-0">
              <label for="company" class="block text-gray-700 text-sm mb-2">CompanyName</label>
              <pj:input path="company" type="text" class="appearance-none block w-full bg-white text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:border-gray-500" id="company" name="company" placeholder="Company Name"/>
            </div>

            <!--      Company Website      -->
            <div class="w-full md:w-1/2 px-3 mb-4 md:mb-0">
              <label for="company" class="block text-gray-700 text-sm mb-2">Company Website</label>
              <pj:input path="companyWebsite" type="text" class="appearance-none block w-full bg-white text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:border-gray-500" id="company" name="company-website" placeholder="https://www.lithan.com/"/>
            </div>
          </div> <!-- end group -->
          
          <!--    Description      -->
          <div>
            <label for="description" class="block text-gray-700 text-sm mb-2">Job Description</label>
            <pj:textarea path="description" name="description" id="description" cols="" rows="" />
          </div>
        </div> <!-- end job-info -->
        
        <!--     Submit     -->
        <div>
        <pj:input path="userJ" type="hidden" value="${id_user}"/>
          <button class="bg-teal-500 hover:bg-teal-600 text-white py-2 px-3 rounded" type="submit">Post job</button>
        </div>
      </pj:form>
   </div>
    </div>
  </section>
  <script>
  let simpleMde = new SimpleMDE({
	  element: document.getElementById("description")
	})
  </script>
</body>
</html>