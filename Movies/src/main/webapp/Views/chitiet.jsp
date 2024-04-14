<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<link rel="stylesheet" href="Views/css/SPtrangchu.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.green.min.css" />
<style>
body {
	overflow-x: hidden;
}

.nav-tabs .nav-link.active {
	background-color: transparent;
	border: none;
}

.nav-tabs .nav-link {
	border: 1px transparent;
}

.swiper {
	width: 100%;
	height: 100%;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
}

.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.image {
	height: 260px;
	object-fit: cover;
}

.title {
	margin-top: 150px;
	margin-left: 50px;
}

.title-text {
	font-size: 100px;
}

.text1 {
	width: 250px;
}

.breadcrumb-item+.breadcrumb-item::before {
	color: white;
}

.img-watch {
	width: 250px;
	object-fit: cover;
}

.title-watch {
	margin-left: 20px;
}

@media ( max-width :500px) {
	.breadcrumb {
		margin-left: -60px;
	}
	.play {
		font-size: 15px;
		height: 40px;
		width: 120px;
	}
	.play1 {
		width: 42px;
	}
	.watch {
		margin-left: -60px;
	}
	.img-watch {
		width: 230px;
	}
	.title-watch {
		margin-left: 10px;
	}
	.watchs {
		margin-left: -50px;
	}
	.image {
		height: 450px;
	}
}
</style>
</head>
<body class="bg-dark">
	<div style="position: relative; z-index: 100;">
		<nav class="navbar navbar-expand-xl bg-dark">
			<div class="container">
				<a class="navbar-brand" href="Home"> <img
					class="light-mode-item navbar-brand-item"
					src="Views/img/LogoWozeric.png" width="120px" alt="logo">
				</a>
				<button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2"
					type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarCollapse" aria-controls="navbarCollapse"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-animation"> <span></span> <span></span>
						<span></span>
					</span> <span class="d-none d-sm-inline-block small">Menu</span>
				</button>

				<button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2"
					type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarCategoryCollapse"
					aria-controls="navbarCategoryCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span
						class="d-none d-sm-inline-block small">Category</span>
				</button>

				<div class="navbar-collapse collapse" id="navbarCollapse">
					<ul class="navbar-nav navbar-nav-scroll me-auto">
						<li class="nav-item"><a class="nav-link active text-light"
							aria-current="page" href="#"><i class="bi bi-house-door-fill"></i>
								Trang chủ</a></li>
						<li class="nav-item"><a class="nav-link text-light" href="#"><i
								class="bi bi-tv"></i> Truyền hình</a></li>
						<li class="nav-item"><a class="nav-link text-light" href="#"><i
								class="bi bi-badge-8k"></i> HBO GO</a></li>
						<li class="nav-item"><a class="nav-link text-light" href="#"><i
								class="bi bi-badge-hd"></i> Thể thao</a></li>
						<li class="nav-item"><a class="nav-link text-light" href="#"><i
								class="bi bi-badge-3d"></i> Thiếu Nhi</a></li>
					</ul>
				</div>

				<div class="navbar-collapse collapse" id="navbarCategoryCollapse">
					<ul
						class="navbar-nav navbar-nav-scroll nav-pills-primary-soft text-center ms-auto p-2 p-xl-0">
						<li class="nav-item"><a class="nav-link active text-light"
							href="#">Đăng ký gói</a></li>

						<li class="nav-item">
							<form class="position-relative text-light ">
								<input
									class="form-control bg-transparent border border-secondary"
									type="search" aria-label="Search">
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
					<li class="nav-item ms-0 ms-md-3"><a href="#"><i
							class="bi bi-bell text-light"></i></a></li>
					<li class="nav-item ms-3 dropdown"><a
						class="avatar avatar-sm p-0" href="#" id="profileDropdown"
						role="button" data-bs-auto-close="outside"
						data-bs-display="static" data-bs-toggle="dropdown"
						aria-expanded="false"> <img class="avatar-img rounded-2"
							src="Views/img/LogoWozeric.png" width="50px" alt="avatar">
					</a>
						<ul
							class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
							aria-labelledby="profileDropdown">
							<li class="px-3 mb-3">
								<div class="d-flex align-items-center">
									<div class="avatar me-3">
										<img class="avatar-img rounded-circle shadow"
											src="Views/img/logoWozeic.jpg" width="50px" alt="avatar">
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
								<li><a class="dropdown-item" href="#"><i
										class="bi bi-heart fa-fw me-2"></i>Giỏ Hàng</a></li>
							</c:if>


							<li><a class="dropdown-item" href="Manager"><i
									class="bi bi-gear fa-fw me-2"></i>Quản Trị</a></li>

							<li><a class="dropdown-item bg-danger-soft-hover"
								href="Log_in"><i class="bi bi-power fa-fw me-2"></i>Đăng
									Xuất</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="row">
		<article class=" col-sm-8 ">
			<div class="container row mt-3 ms-5">
				<nav aria-label="breadcrumb ">
					<ol class="breadcrumb">
						<li class="breadcrumb-item" style="color: white;"><a
							class="text-light" href="#">Trang chủ</a></li>
						<li class="breadcrumb-item"><a class="text-light" href="#">Chi
								tiết</a></li>
					</ol>
				</nav>
				<div class="watch d-flex">
					<img class="img-watch rounded " src="Views/img/${movie.poster}">
					<div class="title-watch mt-3">
						<h2 class="card-title text-light fw-bold">${movie.title}</h2>
						<p class="card-text text-light fw-bold mt-2">${movie.movieLength}
							Phút</p>
						<p class="card-text text-light fw-bold">${movie.release}</p>
						<p class="card-text text-light fw-bold">${movie.nat}</p>
						<p class="card-text text-light fw-bold">Lượt xem :
							${movie.views} views</p>
						<p class="card-text text-light fw-bold">Thể loại: Tình Cảm,Tâm
							Lý</p>
						<p class="card-text text-light fw-bold">
							Diễn viên:
							<c:forEach var="actor" items="${Actors}">
								<a href="movie_actor?actorid=${actor.actorId}">
									${actor.firstName} ${actor.lastName}</a>,</c:forEach>
						</p>
						<p class="col text-light text-light">
							4.4 <i class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-half text-warning"></i>
						</p>
						<div class="d-flex">
							<a href="#" class="play btn btn-danger d-flex"> <i
								class="bi bi-play-fill"></i>XEM NGAY
							</a> <a href="moviesave?namemovie=${movie.title}"
								class="play1 btn btn-outline-light ms-2"><i
								class="bi bi-plus-lg text-light"></i>
								<p class="d-none d-md-inline">DANH SÁCH CỦA TÔI</p></a>
						</div>
					</div>
				</div>
				<section class="watchs pt-3">
					<div class="container ">
						<div class="row text-light">
							<h3 class="fw-bold">Tóm Tắt</h3>
							<p class="text-light ">${movie.description}</p>
						</div>
						<div class="row mb-3 rounded">
							<h4 class="mt-2 mb-2 text-light">
								Chia sẻ: <i class="bi bi-facebook text-light"></i> <i
									class="bi bi-twitter text-light"></i> <i
									class="bi bi-linkedin text-light"></i> <i
									class="bi bi-share text-light"></i>
							</h4>
						</div>
					</div>

					<hr>

					<h3 class="text-light ms-3 mt-3 ">MỚI NHẤT</h3>
					<div class="row">
						<c:forEach var="movieVN" items="${moinhat}">
							<div class="col-3 mt-3">
								<div class="card text-start">
									<img class="image card-img-top"
										src="Views/img/${movieVN.poster}" alt="Title" />
									<div class="middle">
										<a href="moviede?namemovie=${movieVN.title}"
											class="btn btn-warning text-white"> <i
											class="fa-solid fa-play"></i> Xem
										</a> <br> <a href="moviesave?namemovie=${movieVN.title}"
											class="btn btn-warning text-white mt-3"> <i
											class="fa-solid fa-bookmark"></i> Lưu
										</a>
									</div>
								</div>
								<div class="text-white mt-2">
									<p class="card-title">${movieVN.title}</p>
									<div class="card-text">
										<span>Giá: <fmt:formatNumber value="${movieVN.price}"
												pattern="#,##0" />đ
										</span> <span><i class="fa-solid fa-eye"></i> ${movieVN.views}</span>
									</div>

								</div>
							</div>
						</c:forEach>
					</div>
					<h3 class="text-light ms-3 mt-5 mb-4">CÓ THỂ BẠN SẼ THÍCH</h3>
					<div class="row">
						<c:forEach var="movieVN" items="${cothesethich}">
							<div class="col-3 mt-3">
								<div class="card text-start">
									<img class="image card-img-top"
										src="Views/img/${movieVN.poster}" alt="Title" />
									<div class="middle">
										<a href="moviede?namemovie=${movieVN.title}"
											class="btn btn-warning text-white"> <i
											class="fa-solid fa-play"></i> Xem
										</a> <br> <a href="moviesave?namemovie=${movieVN.title}"
											class="btn btn-warning text-white mt-3"> <i
											class="fa-solid fa-bookmark"></i> Lưu
										</a>
									</div>
								</div>
								<div class="text-white mt-2">
									<p class="card-title">${movieVN.title}</p>
									<div class="card-text">
										<span>Giá: <fmt:formatNumber value="${movieVN.price}"
												pattern="#,##0" />đ
										</span> <span><i class="fa-solid fa-eye"></i> ${movieVN.views}</span>
									</div>

								</div>
							</div>
						</c:forEach>
					</div>

				</section>

			</div>
		</article>
		<aside
			class="col-sm-4 border border-secondary rounded ms-4 d-none d-md-inline"
			style="width: 300px; height: 1600px;">
			<h3 class="text-light mt-2">THỊNH HÀNH</h3>
			<c:forEach var="item" items="${thinhanh}">
				<div class="d-flex mt-3 ">
					<img class="rounded" src="Views/img/${item.poster}"
						style="width: 100px; object-fit: cover;" alt="Title" />
					<div class="text-white mt-2 ms-3">
						<a href="moviede?namemovie=${item.title}" class="card-title"
							style="font-size: 15px">${item.title}</a>
						<div class="card-text">
							<span style="font-size: 15px">Giá: <fmt:formatNumber
									value="${item.price}" pattern="#,##0" />đ
							</span>
						</div>

					</div>
				</div>
			</c:forEach>

		</aside>
	</div>



	<%@include file="Footer.jsp"%>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
	<script>
		$('.owl-carousel').owlCarousel({
			loop : true,
			margin : 10,
			// autoplay: true,
			// autoplayTimeout: 1500,
			nav : true,
			responsive : {
				0 : {
					items : 1
				},
				600 : {
					items : 3
				},
				1000 : {
					items : 5
				}
			}
		})
	</script>

</body>
</html>