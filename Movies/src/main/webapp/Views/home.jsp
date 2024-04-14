<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

    <!-- style -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="Views/css/slideTrangchu.css">
    <link rel="stylesheet" href="Views/css/SPtrangchu.css">
    <link rel="stylesheet" href="Views/css/fooder.css">
    	 <link rel="stylesheet" href="Views/css/test3.css">
    	     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- carousel -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.green.min.css" />
    <!-- bootrap5.3 -->
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <!-- AOS -->
    <!-- <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"> -->
</head>
<style>
    .nav-pills .nav-link.active {
        background-color: #ffcd07;
        /* Màu vàng đậm hơn */

    }

    .nav-link {
        color: #ffffff;
    }

    .nav-link:hover {
        color: #ffcd07;
    }
    .card-title {
	font-size: 13px;
	font-weight: 500;
}

.card-text span {
	font-size: 11px;
	color: #a3a3a3;
	margin-right: 8px;
	padding-right: 10px;
}

.image {
    opacity: 1;
    display: block;
    max-width: 100%;
    height: 300px;
    object-fit:cover;
    transition: all .3s ease-in-out;
    backface-visibility: hidden;
    
  }

</style>
<body style="background-color: rgb(0, 0, 0);">

 <div style="position: relative;z-index: 100;">
        <nav class="navbar navbar-expand-xl bg-dark">
            <div class="container">
                <a class="navbar-brand" href="">
                    <img class="light-mode-item navbar-brand-item" src="Views/img/LogoWozeric.png" width="120px" alt="logo">
                </a>
                <button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-animation">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <span class="d-none d-sm-inline-block small">Menu</span>
                </button>

                <button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarCategoryCollapse"
                    aria-controls="navbarCategoryCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span
                        class="d-none d-sm-inline-block small">Category</span>
                </button>

                <div class="navbar-collapse collapse" id="navbarCollapse">
                    <ul class="navbar-nav navbar-nav-scroll me-auto">
                        <li class="nav-item">
                            <a class="nav-link active text-light" aria-current="page" href="#"><i
                                    class="bi bi-house-door-fill"></i> Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="#"><i class="bi bi-tv"></i> Truyền hình</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="#"><i class="bi bi-badge-8k"></i> HBO GO</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="#"><i class="bi bi-badge-hd"></i> Thể thao</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="#"><i class="bi bi-badge-3d"></i> Thiếu Nhi</a>
                        </li>
                    </ul>
                </div>

                <div class="navbar-collapse collapse" id="navbarCategoryCollapse">
                    <ul class="navbar-nav navbar-nav-scroll nav-pills-primary-soft text-center ms-auto p-2 p-xl-0">
                        <li class="nav-item">
                            <a class="nav-link active text-light" href="#">Đăng ký gói</a>
                        </li>

                        <li class="nav-item">
                            <form class="position-relative text-light ">
                                <input class="form-control bg-transparent border border-secondary" type="search"
                                    aria-label="Search">
                                <button
                                    class="bg-transparent p-2 position-absolute top-50 end-0 translate-middle-y border-0"
                                    type="submit">
                                    <i class="bi bi-search"></i>
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
                <ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">
                    <li class="nav-item ms-0 ms-md-3">
                        <a href="#"><i class="bi bi-bell text-light"></i></a>
                    </li>
                    <li class="nav-item ms-3 dropdown">
                        <a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button"
                            data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown"
                            aria-expanded="false">
                             <img  class="avatar-img rounded-2" src="Views/img/LogoWozeric.png" width="50px" alt="avatar">
                        </a>
                        <ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
                            aria-labelledby="profileDropdown">
                            <li class="px-3 mb-3">
                                <div class="d-flex align-items-center">
                                    <div class="avatar me-3">
                                        <img class="avatar-img rounded-circle shadow" src="Views/img/logoWozeic.jpg" width="50px"
                                            alt="avatar">
                                    </div>
                                    <div>
                                        <a class="h6 mt-2 mt-sm-0" href="#">${user.userName}</a>
                                        <p class="small m-0">${user.email}</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
								
									<c:if test="${!sessionScope.user.admin}">
									       <li><a class="dropdown-item" href="My_movie"><i class="bi bi-heart fa-fw me-2"></i>Phim Của Tôi</a>
                            </li>
									</c:if>
								

                            <li><a class="dropdown-item" name="btnlist" href="Manager"><i class="bi bi-gear fa-fw me-2"></i>Quản Trị</a></li>

                            <li><a class="dropdown-item bg-danger-soft-hover" href="Log_in"><i
                                        class="bi bi-power fa-fw me-2"></i>Đăng Xuất</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li>

                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <!-- carousel -->
    <div class="carousel">
        <!-- list item -->
        <div class="list">
            <div class="item">
                <img src="Views/img/anh1.png">
                <div class="content">
                    <div class="author">LUNDEV</div>
                    <div class="title">DESIGN SLIDER</div>
                    <div class="topic">ANIMAL</div>

                    <div class="buttons">
                        <a href="#" class="btn btn-warning">Xem</a>
                        <a href="#" class="btn btn-warning">Lưu</a>

                    </div>
                </div>
            </div>
            <div class="item">
                <img src="Views/img/anh2.png">
                <div class="content">
                    <div class="author">LUNDEV</div>
                    <div class="title">DESIGN SLIDER</div>
                    <div class="topic">ANIMAL</div>

                    <div class="buttons">
                        <a href="#" class="btn btn-warning">Xem</a>
                        <a href="#" class="btn btn-warning">Lưu</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="Views/img/anh3.png">
                <div class="content">
                    <div class="author">LUNDEV</div>
                    <div class="title">DESIGN SLIDER</div>
                    <div class="topic">ANIMAL</div>

                    <div class="buttons">
                        <a href="#" class="btn btn-warning">Xem</a>
                        <a href="#" class="btn btn-warning">Lưu</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="Views/img/anh4.png">
                <div class="content">
                    <div class="author">LUNDEV</div>
                    <div class="title">DESIGN SLIDER</div>
                    <div class="topic">ANIMAL</div>

                    <div class="buttons">
                        <a href="#" class="btn btn-warning">Xem</a>
                        <a href="#" class="btn btn-warning">Lưu</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- list thumnail -->
        <div class="thumbnail">
            <div class="item">
                <img src="Views/img/anh1.png">
                <div class="content">
                    <div class="title">
                        Name Slider
                    </div>
                    <div class="description">
                        Description
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="Views/img/anh2.png">
                <div class="content">
                    <div class="title">
                        Name Slider
                    </div>
                    <div class="description">
                        Description
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="Views/img/anh3.png">
                <div class="content">
                    <div class="title">
                        Name Slider
                    </div>
                    <div class="description">
                        Description
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="Views/img/anh4.png">
                <div class="content">
                    <div class="title">
                        Name Slider
                    </div>
                    <div class="description">
                        Description
                    </div>
                </div>
            </div>

        </div>
        <!-- next prev -->

        <div class="arrows">
            <button id="prev">
                < </button>
                    <button id="next">></button>
        </div>
        <!-- time running -->
        <div class="time"></div>
    </div>
    <div style="height: 60px;"></div>
    <div class="mt-4">

        <div class="container mt-4">
            <div class="mt-4">
                <ul class="nav nav-pills mb-3 " id="pills-tab" role="tablist">
					<li class="nav-item" role="presentation"><a
						class="nav-link active " id="pills-home-tab" data-bs-toggle="pill"
						 data-bs-target="#pills-home" type="button"
						role="tab" aria-controls="pills-home" aria-selected="true">Việt
							Nam</a></li>
					<li class="nav-item " role="presentation">
						<button class="nav-link " id="pills-profile-tab"
							data-bs-toggle="pill" data-bs-target="#pills-profile"
							type="button" role="tab" aria-controls="pills-profile"
							aria-selected="false">Hàn Quốc</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="pills-contact-tab"
							data-bs-toggle="pill" data-bs-target="#pills-contact"
							type="button" role="tab" aria-controls="pills-contact"
							aria-selected="false">Trung Quốc</button>
					</li>

                </ul>

                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                        aria-labelledby="pills-home-tab" tabindex="0">
                        <div class="row">
                         <!--  vong lap o day -->                       
 							<c:forEach var="movieVN" items="${movieVN}">
								<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
									data-aos="fade-left" data-aos-duration="1000">
									<div class="card text-start" style="background-color: black;">
										<img class="image card-img-top" 
											src="Views/img/${movieVN.poster}" alt="Title" />
										<div class="middle">
										<a href="moviede?namemovie=${movieVN.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieVN.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>											
										</div>
									</div>
									<div class="text-white mt-2">
										<p class="card-title">${movieVN.title}</p>
										<div class="card-text">
											<span>Giá: <fmt:formatNumber value="${movieVN.price}"
													pattern="#,##0" />đ
											</span> <span><i class="fa-solid fa-eye"></i>
												${movieVN.views}</span>
										</div>

									</div>
								</div>
							</c:forEach>
                              <!-- end vong lap o day -->                                                      
                        </div>                                                                     
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab"
                        tabindex="0">
                        <div class="row">
                         <!--  vong lap o day -->    
						<c:forEach var="movieHQ" items="${movieHQ}">
								<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
									data-aos="fade-left" data-aos-duration="1000">
									<div class="card text-start" style="background-color: black;">
										<img class="image card-img-top" 
											src="Views/img/${movieHQ.poster}" alt="Title" />
										<div class="middle">
										<a href="moviede?namemovie=${movieHQ.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieHQ.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
										</div>
									</div>
									<div class="text-white mt-2">
										<p class="card-title">${movieHQ.title}</p>
										<div class="card-text">
											<span>Giá: <fmt:formatNumber value="${movieHQ.price}"
													pattern="#,##0" />đ
											</span> <span><i class="fa-solid fa-eye"></i>
												${movieHQ.views}</span>
										</div>

									</div>
								</div>
							</c:forEach>
                          <!-- end vong lap o day -->       
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab"
                        tabindex="0">
                        <div class="row">
                         <!--  vong lap o day -->    
							<c:forEach var="movieTQ" items="${movieTQ}">
									<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3">
										<div class="card text-start" style="background-color: black;">
											<img class="image card-img-top"
												src="Views/img/${movieTQ.poster}" alt="Title" />
											<div class="middle">
										<a href="moviede?namemovie=${movieTQ.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieTQ.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
											</div>
										</div>
										<div class="text-white mt-2">
											<p class="card-title">${movieTQ.title}</p>
											<div class="card-text">
												<span>Giá: <fmt:formatNumber value="${movieTQ.price}"
														pattern="#,##0" />đ
												</span> <span><i class="fa-solid fa-eye"></i>
													${movieTQ.views}</span>
											</div>
	
										</div>
									</div>
								</c:forEach>							
 						<!-- end vong lap o day --> 
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div style="height: 40px;"></div>
<div class="container">
        <div style="color: rgb(255, 255, 255); font-size: 35px;">Movies</div>
        <hr style="width: 100px; color: #ffcd07; opacity: 1;">
        <div class="row">
           <!--  vong lap o day -->  
           			<c:forEach var="movieTOP6" items="${movieMy}">
				<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
					data-aos="fade-left" data-aos-duration="1000">
					<div class="card text-start" style="background-color: black;">
						<img class="image card-img-top"
							src="Views/img/${movieTOP6.poster}" alt="Title" />
						<div class="middle">
										<a href="moviede?namemovie=${movieTOP6.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieTOP6.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
						</div>
					</div>
					<div class="text-white mt-2">
						<p class="card-title">${movieTOP6.title}</p>
						<div class="card-text">
							<span>Giá: <fmt:formatNumber value="${movieTOP6.price}"
									pattern="#,##0" />đ
							</span> <span><i class="fa-solid fa-eye"></i> ${movieTOP6.views}</span>
						</div>

					</div>
				</div>
			</c:forEach>
            <!-- end vong lap o day -->          
        </div>
    </div>
    <div style="height: 100px;"></div>
    <div class="container">
        <div style="color: rgb(255, 255, 255); font-size: 35px;">TOP 5</div>
        <hr style="width: 100px; color: #ffcd07; opacity: 1;">
        <div class="gallery">
            <div class="gallery-container">
                <div class="gallery-item gallery-item-1" data-index="1">
                    <div class="sp card" style="background-color: black;">
                        <img src="Views/img/anh5.png"  class=" card-img-top" alt="...">
                        <div class="middle">
                            <div style="color: #ffffff;">Phim hay</div><br>
										<a class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="#" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
                        </div>
                    </div>
                </div>
                <div class="gallery-item gallery-item-2" data-index="2">
                    <div class="sp card" style="background-color: black;">
                        <img src="Views/img/anh4.png"  class=" card-img-top" alt="...">
                        <div class="middle">
                            <div style="color: #ffffff;">Phim hay</div><br>
										<a class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="#" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
                        </div>
                    </div>
                </div>
                <div class="gallery-item gallery-item-3" data-index="3">
                    <div class="sp card" style="background-color: black;">
                        <img src="Views/img/anh3.png"  class=" card-img-top" alt="...">
                        <div class="middle">
                            <div style="color: #ffffff;">Phim hay</div><br>
										<a class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="#" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
                        </div>
                    </div>
                </div>
                <div class="gallery-item gallery-item-4" data-index="4">
                    <div class="sp card" style="background-color: black;">
                        <img src="Views/img/anh2.png"  class=" card-img-top" alt="...">
                        <div class="middle">
                            <div style="color: #ffffff;">Phim hay</div><br>
										<a class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="#" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
                        </div>
                    </div>
                </div>
                <div class="gallery-item gallery-item-5" data-index="5">
                    <div class="sp card" style="background-color: black;">
                        <img src="Views/img/anh1.png" class=" card-img-top" alt="...">
                        <div class="middle">
                            <div style="color: #ffffff;">Phim hay</div><br>
										<a class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="#" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-controls"></div>
        </div>
    </div>


    <div class="container">
        <div style="color: rgb(255, 255, 255); font-size: 35px;">Trending</div>
        <hr style="width: 100px; color: #ffcd07; opacity: 1;">
        <div class="row">
           <!--  vong lap o day -->  
           			<c:forEach var="movieTOP6" items="${movieTOP6}">
				<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
					data-aos="fade-left" data-aos-duration="1000">
					<div class="card text-start" style="background-color: black;">
						<img class="image card-img-top"
							src="Views/img/${movieTOP6.poster}" alt="Title" />
						<div class="middle">
										<a href="moviede?namemovie=${movieTOP6.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieTOP6.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
						</div>
					</div>
					<div class="text-white mt-2">
						<p class="card-title">${movieTOP6.title}</p>
						<div class="card-text">
							<span>Giá: <fmt:formatNumber value="${movieTOP6.price}"
									pattern="#,##0" />đ
							</span> <span><i class="fa-solid fa-eye"></i> ${movieTOP6.views}</span>
						</div>

					</div>
				</div>
			</c:forEach>
            <!-- end vong lap o day -->          
        </div>
    </div>
    <div style="height: 100px"></div>
    <div class="container">
        <div style="color: rgb(255, 255, 255); font-size: 35px;" class="text-center">Best Series</div>
        <hr style="width: 100px; color: #ffcd07; opacity: 1; margin: auto; margin-bottom: 2rem; margin-top: 1rem;">
        <ul class="nav nav-pills justify-content-center mb-4" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="pills-aa-tab" data-bs-toggle="pill" data-bs-target="#pills-aa"
                    type="button" role="tab" aria-controls="pills-aa" aria-selected="true">Tình cảm</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-bb-tab" data-bs-toggle="pill" data-bs-target="#pills-bb"
                    type="button" role="tab" aria-controls="pills-bb" aria-selected="false">Hành động</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-cc-tab" data-bs-toggle="pill" data-bs-target="#pills-cc"
                    type="button" role="tab" aria-controls="pills-cc" aria-selected="false">Khoa học viễn tưởng</button>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-aa" role="tabpanel" aria-labelledby="pills-aa-tab">
                <div class="row">
                <!--  vong lap o day --> 
<c:forEach var="movieTC" items="${movieTC}">
						<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
							data-aos="fade-left" data-aos-duration="1000">
							<div class="card text-start" style="background-color: black;">
								<img class="image card-img-top"
									src="Views/img/${movieTC.poster}" alt="Title" />
								<div class="middle">
										<a href="moviede?namemovie=${movieTC.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieTC.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
								</div>
							</div>
							<div class="text-white mt-2">
								<p class="card-title">${movieTC.title}</p>
								<div class="card-text">
									<span>Giá: <fmt:formatNumber value="${movieTC.price}"
											pattern="#,##0" />đ
									</span> <span><i class="fa-solid fa-eye"></i> ${movieTC.views}</span>
								</div>

							</div>
						</div>
					</c:forEach>
                    <!-- end vong lap o day -->                   
                </div>
            </div>
            <div class="tab-pane fade" id="pills-bb" role="tabpanel" aria-labelledby="pills-bb-tab">
                <div class="row">
                <!--  vong lap o day --> 
		<c:forEach var="movieTL" items="${movieTL}">
						<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
							data-aos="fade-left" data-aos-duration="1000">
							<div class="card text-start" style="background-color: black;">
								<img class="image card-img-top"
									src="Views/img/${movieTL.poster}" alt="Title" />
								<div class="middle">
										<a href="moviede?namemovie=${movieTL.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieTL.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
								</div>
							</div>
							<div class="text-white mt-2">
								<p class="card-title">${movieTL.title}</p>
								<div class="card-text">
									<span>Giá: <fmt:formatNumber value="${movieTL.price}"
											pattern="#,##0" />đ
									</span> <span><i class="fa-solid fa-eye"></i> ${movieTL.views}</span>
								</div>

							</div>
						</div>
					</c:forEach>
                    <!-- end vong lap o day -->                   
                </div>
            </div>
            <div class="tab-pane fade" id="pills-cc" role="tabpanel" aria-labelledby="pills-cc-tab">
                <div class="row">
                <!--  vong lap o day --> 
					<c:forEach var="movieHH" items="${movieHH}">
						<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
							data-aos="fade-left" data-aos-duration="1000">
							<div class="card text-start" style="background-color: black;">
								<img class="image card-img-top"
									src="Views/img/${movieHH.poster}" alt="Title" />
								<div class="middle">
										<a href="moviede?namemovie=${movieHH.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieHH.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
								</div>
							</div>
							<div class="text-white mt-2">
								<p class="card-title">${movieHH.title}</p>
								<div class="card-text">
									<span>Giá: <fmt:formatNumber value="${movieHH.price}"
											pattern="#,##0" />đ
									</span> <span><i class="fa-solid fa-eye"></i> ${movieHH.views}</span>
								</div>

							</div>
						</div>
					</c:forEach>
                    <!-- end vong lap o day -->                   
                </div>
            </div>
        </div>
    </div>
    <div style="height: 100px;"></div>
    <div class="container">
        <div style="color: rgb(255, 255, 255); font-size: 35px;">SUGGESTED FOR YOU</div>
        <hr style="width: 100px; color: #ffcd07; opacity: 1;">
        <div class="row">
        <!--  vong lap o day --> 
	<c:forEach var="movieTOPRand" items="${movieTOPRand}">
				<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
					data-aos="fade-left" data-aos-duration="1000">
					<div class="card text-start" style="background-color: black;">
						<img class="image card-img-top"
							src="Views/img/${movieTOPRand.poster}" alt="Title" />
						<div class="middle">
										<a href="moviede?namemovie=${movieTOPRand.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieTOPRand.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
						</div>
					</div>
					<div class="text-white mt-2">
						<p class="card-title">${movieTOPRand.title}</p>
						<div class="card-text">
							<span>Giá: <fmt:formatNumber
									value="${movieTOPRand.price}" pattern="#,##0" />đ
							</span> <span><i class="fa-solid fa-eye"></i>
								${movieTOPRand.views}</span>
						</div>

					</div>
				</div>
			</c:forEach>
		<!-- end vong lap o day --> 

        </div>
    </div>
    <div style="height: 100px;"></div>
	<%@include file="Footer.jsp" %>

</body>
<script src="Views/js/app.js"></script>
<script src="Views/js/test3.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
	function alertSucces() {
		Swal.fire({
			  icon: "success",
			  title: ${titlesucces},
			  text: ${textsucces},

			});
	}
	
	function alertError() {
		Swal.fire({
			  icon: "error",
			  title: ${titlerror},
			  text:  ${texterror},

			});
	}

	
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items: 4,
        loop: true,
        margin: 30,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });

</script>
<!-- <script>
    AOS.init();
</script> -->

</html>