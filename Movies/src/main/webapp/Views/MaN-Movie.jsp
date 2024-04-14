<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Movie Manager</title>
 <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">


        <link
            rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
<div class="row flex-lg-nowrap">
  <div class="col">
    <div class="row">
      <div class="col mb-3">
        <div class="card">
          <div class="card-body">
            <div class="e-profile">
              <div class="row">
                <div class="col-12 col-sm-auto mb-3">
                  <div class="mx-auto" style="width: 160px;">
                    <div class="d-flex justify-content-center align-items-center rounded" style="height: 200px;background-color: rgb(233, 236, 239);">
                      <img style="height: 220px;width: 160px;"  alt="" src="Views/img/${movieform.poster}">
                    </div>
                  </div>
                </div>
                <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                  <div class="text-center text-sm-left mb-2 mb-sm-0">
                    <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">${movieform.title}</h4>
                    <div class="mt-2">
                      <button class="btn btn-primary" type="button">
                        <i class="fa fa-fw fa-camera"></i>
                        <span>Change Photo</span>
                      </button>
                    </div>
                  </div>

                </div>
              </div>
              <ul class="nav nav-tabs">
                <li class="nav-item"><a href="" class="active nav-link">Settings</a></li>
              </ul>
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" novalidate="">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>MovieId</label>
                              <input class="form-control" type="text" name="movieId" value="${movieform.movieId}">
                            </div>
                          </div>
                          <div class="col">
                            <div class="form-group">
                              <label>Title</label>
                              <input class="form-control" type="text" name="title" value="${movieform.title}"  >
                            </div>
                          </div>
                        </div>
                         <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>views</label>
                              <input class="form-control" type="text" name="views" value="${movieform.views}">
                            </div>
                          </div>
                          <div class="col">
                            <div class="form-group">
                              <label>Nat</label>
                              <input class="form-control" type="text" name="nat" value="${movieform.nat}">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>Poster</label>
                              <input class="form-control" name="poster" type="text" value="${movieform.poster}" >
                            </div>
                          </div>
                       <div class="col">
                            <div class="form-group">
                              <label>Active</label>
                              <input class="form-control" type="text" name="active" value="${movieform.active}">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col mb-3">
                            <div class="form-group">
                              <label>Description</label>
                              <textarea class="form-control" name="description" rows="5" >${movieform.description}</textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 col-sm-6 mb-3">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>Price</label>
                              <input class="form-control" type="text" name="price" value="${movieform.price}">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>Release</label>
                              <input class="form-control" type="text" name="release" value="${movieform.release}">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>MovieLength</label>
                              <input class="form-control" type="text" name="movieLength" value="${movieform.movieLength}"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-5 offset-sm-1 mb-3">
                        <div class="mb-2"><b>Genres</b></div>
                        <div class="row">
                          <div class="col">
                            <div class="custom-controls-stacked px-2">
                              <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="notifications-blog" checked="">
                                <label class="custom-control-label" for="notifications-blog">Tinh Cam</label>
                              </div>
                              <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="notifications-news" checked="">
                                <label class="custom-control-label" for="notifications-news">Hai Huoc</label>
                              </div>
                              <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="notifications-offers" checked="">
                                <label class="custom-control-label" for="notifications-offers">Hanh Dong</label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col d-flex justify-content-end">
                      <button formaction="CreateMovie"   class="btn btn-success m-2" type="submit" >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Create
			          </button>
			           <button formaction="UpdateMovie"  class="btn btn-info m-2" >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Update
			          </button>
			            <button formaction="DeleteMovie"  class="btn btn-danger m-2" >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Delete
			          </button>
			          <button formaction="ResetUMovie"  class="btn btn-light m-2"  >
			            <i class="fa-solid fa-floppy-disk"></i>
			            Reset
			          </button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>   
    </div>

  </div>
</div>
</div>

	<div class="table-responsive mt-2">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
           	<th scope="col">MovieId</th>
	        <th scope="col">Title</th>
	        <th scope="col">Poster</th>
	        <th scope="col">Price</th>
	        <th scope="col">Release</th>
	        <th scope="col">Rating</th>
	        <th scope="col">MovieLength</th>
	        <th scope="col">Description</th>
	        <th scope="col">Active</th>
	        <th scope="col">Views</th>
	        <th scope="col">Nation</th>
            </tr>
          </thead>
          <tbody>
          
		<c:forEach var="movie" items="${movie}">
            <tr>
	        <td>${movie.movieId}</td>
	        <td>${movie.title}</td>
	        <td>${movie.poster}</td>
	        <td>${movie.price}</td>
	        <td>${movie.release}</td>
	        <td>${movie.rating}</td>
	        <td>${movie.movieLength}</td>
	        <td>${movie.description}</td>
	        <td>${movie.active}</td>
	        <td>${movie.views}</td>
	        <td>${movie.nat}</td>
	        <td> <a  href="EditMovie?iduser3=${movie.movieId}"  class="btn btn-light text-danger">
            Edit
          </a></td>
            </tr>	
		  </c:forEach>
	     

          </tbody>
        </table>
      </div>

</body>
</html>



