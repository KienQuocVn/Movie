<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager User</title>


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
<body>
	<h1>${message}</h1>

	<div class="mt-2">
		<form class="row g-3" method="post">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">UserName: </label>
                  <input
                type="text"
                class="form-control id"
                id="id"
                placeholder="Username..."
                name="userName"   
                required
                value="${Userform.userName}"
                
              />
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
                  <input
                type="password"
                class="form-control password"
                id="password"            
                name="password"
                required
				value= "${Userform.password}"
              />
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">FullName: </label>
                  <input
                type="text"
                class="form-control fullname"
                id="fullname"
                placeholder="Username..."
                name="fullName"   
                required
                value= "${Userform.fullName}"
              />
  </div>
  
    <div class="col-12">
    <label for="inputAddress" class="form-label">Email: </label>
              <input
                type="email"
                class="form-control email"
                id="email"
                placeholder="minhtrungchau123@gmail.com"
                name="email"  
                required 
                value= "${Userform.email}"
              />
  </div>

  <div class="col-12">
   
              <label for="admin" class="form-label mt-2">Role:</label>
              <br>
              <div class="form-check form-check-inline">
			  <input class="form-check-input" ${Userform.admin?"checked":""}  type="radio" name="admin" id="inlineRadio1" value="true"  required >
			  <label class="form-check-label" for="inlineRadio1">Admin</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" ${Userform.admin?"":"checked"}  type="radio" name="admin" id="inlineRadio2" value="false"  required >
			  <label class="form-check-label" for="inlineRadio2">User</label>
			</div>            
  
  </div>
  <div class="col-12">
          <button formaction="CreateUser"    class="btn btn-success" type="submit" >
            <i class="fa-solid fa-floppy-disk"></i>
            Create
          </button>
           <button formaction="UpdateUser"  class="btn btn-info" >
            <i class="fa-solid fa-floppy-disk"></i>
            Update
          </button>
            <button formaction="DeleteUser"  class="btn btn-danger" >
            <i class="fa-solid fa-floppy-disk"></i>
            Delete
          </button>
          <button formaction="ResetUser"  class="btn btn-light"  >
            <i class="fa-solid fa-floppy-disk"></i>
            Reset
          </button>
  </div>
</form>
	</div>
	
	<hr>
	<div class="table-responsive mt-2">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
           	<th scope="col">Id</th>
	        <th scope="col">Password</th>
	        <th scope="col">Fullname</th>
	        <th scope="col">Email</th>
	        <th scope="col">Role</th>
	        <th scope="col">Edit</th>
            </tr>
          </thead>
          <tbody>
          
		<c:forEach var="user" items="${user}">
            <tr>
	         <td>${user.userName}</td>
	        <td>${user.password}</td>
	        <td>${user.fullName}</td>
	        <td>${user.email}</td>
	        <td>${user.admin}</td>
	        <td> <a  href="EditUser?iduser=${user.userName}"  class="btn btn-light text-danger">
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