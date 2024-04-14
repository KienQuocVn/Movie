<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actor Manager</title>

 <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">


        <link
            rel="stylesheet">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    /> 
</head>
<style>
	
.img-account-profile {
    height: 10rem;
}
.rounded-circle {
    border-radius: 50% !important;
}
.card {
    box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
}
.card .card-header {
    font-weight: 500;
}
.card-header:first-child {
    border-radius: 0.35rem 0.35rem 0 0;
}
.card-header {
    padding: 1rem 1.35rem;
    margin-bottom: 0;
    background-color: rgba(33, 40, 50, 0.03);
    border-bottom: 1px solid rgba(33, 40, 50, 0.125);
}
.form-control, .dataTable-input {
    display: block;
    width: 100%;
    padding: 0.875rem 1.125rem;
    font-size: 0.875rem;
    font-weight: 400;
    line-height: 1;
    color: #69707a;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #c5ccd6;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0.35rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.nav-borders .nav-link.active {
    color: #0061f2;
    border-bottom-color: #0061f2;
}
.nav-borders .nav-link {
    color: #69707a;
    border-bottom-width: 0.125rem;
    border-bottom-style: solid;
    border-bottom-color: transparent;
    padding-top: 0.5rem;
    padding-bottom: 0.5rem;
    padding-left: 0;
    padding-right: 0;
    margin-left: 1rem;
    margin-right: 1rem;
}
</style>
<body>
	<div class="container-xl px-4 mt-4">
    <div class="row">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Profile Picture</div>
                <div class="card-body text-center">
                <form action="" method="post" enctype="multipart/form-data">
                	<!-- Profile picture image-->
                    <img class="img-account-profile rounded-circle mb-2" width="150px" height="130px" src="Views/img/${actorform.img}" alt="">
                    <!-- Profile picture help block-->
                    <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                    <!-- Profile picture upload button-->
                     <input type="file" class="form-control" name="photo_file">
                </form>
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Actor Details</div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Actor Id </label>
                            <input class="form-control" name="actorId" id="inputUsername" type="text" placeholder="Enter your username" value="${actorform.actorId}">
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (first name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputFirstName">First name</label>
                                <input class="form-control" name="firstName" id="inputFirstName" type="text" placeholder="Enter your first name" value="${actorform.firstName}">
                            </div>
                            <!-- Form Group (last name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLastName">Last name</label>
                                <input class="form-control" name="lastName" id="inputLastName" type="text" placeholder="Enter your last name" value="${actorform.lastName}">
                            </div>
                        </div>
                        <!-- Form Row        -->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">Nationality</label>
                                <input class="form-control" name="nationality" id="inputOrgName" type="text" placeholder="Enter your organization name" value="${actorform.nationality}">
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">Birth</label>
                                <input class="form-control" name="birth" id="inputLocation" type="text" placeholder="Enter your location" value="${actorform.birth}">
                            </div>
                        </div>
                        <!-- Form Group (email address)-->

                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (phone number)-->

                        </div>
                        <!-- Save changes button-->
                         <button formaction="CreateUActor"    class="btn btn-success" type="submit" >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Create
			          </button>
			           <button formaction="UpdateActor"  class="btn btn-info" >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Update
			          </button>
			            <button formaction="DeleteActor"  class="btn btn-danger" >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Delete
			          </button>
			          <button formaction="ResetActor"  class="btn btn-light"  >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Reset
			          </button>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

	<hr>
	<div class="table-responsive mt-2">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
           	<th scope="col">Id</th>
	        <th scope="col">FirstName</th>
	        <th scope="col">LastName</th>
	        <th scope="col">Nationlity</th>
	        <th scope="col">Birth</th>
	        <th scope="col">Edit</th>
            </tr>
          </thead>
          <tbody>
          
		<c:forEach var="actor" items="${actor}">
            <tr>
	         <td>${actor.actorId}</td>
	        <td>${actor.firstName}</td>
	        <td>${actor.lastName}</td>
	        <td>${actor.nationality}</td>
	        <td>${actor.birth}</td>
	        <td> <a  href="EditActor?iduser2=${actor.actorId}"  class="btn btn-light text-danger">
            Edit
          </a></td>
            </tr>	
		  </c:forEach>
	     

          </tbody>
        </table>
      </div>

	<script src="Views/js/dashboard.js"></script>
</body>
</html>