<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Movie</title>
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
                <a class="navbar-brand" href="Home">
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
                            <img class="avatar-img rounded-2" src="Views/img/LogoWozeric.png" width="50px" alt="avatar">
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
									       <li><a class="dropdown-item" href="#"><i class="bi bi-heart fa-fw me-2"></i>Phim Của Tôi</a>
                            </li>
									</c:if>
								

                            <li><a class="dropdown-item" href="Manager"><i class="bi bi-gear fa-fw me-2"></i>Quản Trị</a></li>

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
    

	  <div class="container">
        <div style="color: rgb(255, 255, 255); font-size: 35px;">Diễn Viên: ${actor.firstName} ${actor.lastName}</div>
        <hr style="width: 100px; color: #ffcd07; opacity: 1;">     
        <div class="row">
        <!--  vong lap o day --> 
		<c:forEach var="mymovie" items="${mymovie}">
				<div class="col-6 col-sm-6 sp col-lg-2 col-md-4 mt-3"
					data-aos="fade-left" data-aos-duration="1000">
					<div class="card text-start" style="background-color: black;">
						<img class="image card-img-top"
							src="Views/img/${mymovie.poster}" alt="Title" />
						<div class="middle">
										<a href="moviede?namemovie=${mymovie.title}" class="btn btn-warning text-white">
											<i class="fa-solid fa-play"></i> Xem
										</a>												
										<br>
										<a href="moviesave?namemovie=${movieVN.title}" class="btn btn-warning text-white mt-3">
											<i class="fa-solid fa-bookmark"></i> Lưu
										</a>
						</div>
					</div>
					<div class="text-white mt-2">
						<p class="card-title">${mymovie.title}</p>
						<div class="card-text">
							<span>Giá: <fmt:formatNumber
									value="${mymovie.price}" pattern="#,##0" />đ
							</span> <span><i class="fa-solid fa-eye"></i>
								${mymovie.views}</span>
						</div>

					</div>
				</div>
				</c:forEach>
		<!-- end vong lap o day --> 

        </div>
    </div>
		<%@include file="Footer.jsp" %>

<script src="Views/js/app.js"></script>
<script src="Views/js/test3.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
</body>
</html>