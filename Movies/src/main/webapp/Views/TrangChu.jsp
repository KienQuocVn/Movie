<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<fmt:setLocale value="${sessionScope.lang}" scope="request" />
<fmt:setBundle basename="global" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wozeric Việt Nam - Xem Chương Trình Miễn Phí</title>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<link rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

<link href="Views/css/trangchu.css" rel="stylesheet" />


</head>
<body>

	<main>
		<div class="header"
			style="width: 100%; height: 100vh; background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('Views/img/header-image.png'); background-size: cover; background-position: center; padding: 10px 8%; position: relative;">
			<nav class="navbar navbar-expand-sm navbar-dark ">
				<div class="container">
					<a class="navbar-brand" href="javascript:void(0)"> <img alt=""
						src="Views/img/LogoWozeric.png" width="200px" height="120px">
					</a>

					<form action="" method="post" class="d-flex">

						<div class="me-2  d-none d-lg-inline-flex"
							aria-label="Default select example">
							<ul class="navbar-nav reserver">
								<li class="nav-item"><a class="nav-link " href="?lang=vi">Tiếng
										Việt</a></li>
								<li class="nav-item"><a class="nav-link active "
									href="?lang=en">Tiếng Anh</a></li>
							</ul>
						</div>

						<button class="btn text-white"
							style="font-weight: 500; background-color: rgba(252, 212, 16, 255);"
							formaction="Sign-in">
							<fmt:message key="menu.btnlogin" />
						</button>
					</form>
				</div>
			</nav>

			<div class="header-content text-center text-white mt-1"
				style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="text-title fw-bold fs-1">
							<fmt:message key="menu.title1" />
						</h1>
					</div>
					<div class="col-lg-12">
						<h4 class="text-title2 m-4">
							<fmt:message key="menu.title2" />
							.
						</h4>
					</div>
				</div>


				<p class="d-none d-lg-inline-flex"
					style="width: 100%; font-size: 20px; font-weight: 600;">
					<fmt:message key="menu.title3" />
					.
				</p>
				<form action="" method="post"
					class="d-flex justify-content-center mt-2">
					<div class="container ">
						<div class="row g-3 align-items-center">
							<div class="col-lg-7">
								<input type="email" name="email"
									placeholder="<fmt:message key="menu.inputemail"/>" id="email"
									class="form-control" aria-describedby="email"
									style="background: none; color: white; border: 2px solid white;"
									required>
							</div>
							<div class="col-lg-5">
								<a href="Sign-up" class="btn text-white fs-5"
									style="font-weight: 700; background-color: rgba(252, 212, 16, 255);"><fmt:message
										key="menu.btnstart" /> <i class="fa-solid fa-arrow-right m-1"></i></a>
							</div>

						</div>
					</div>
				</form>
			</div>
		</div>

		<div class="container-fluid"
			style="background-color: rgba(0, 0, 0, 255)">
			<section class="features">
				<div class="row">
					<div class="col-lg-6 text-center text-white "
						style="margin-top: 100px">
						<div class="mb-4 ">
							<!-- Caption -->
							<h4 class="fw-bold mb-3 ls-sm   ">
								<span class="" style="color: rgba(252, 212, 16, 255);">Wozeric</span>,
								<fmt:message key="menu.title4" />
								.
							</h4>
							<p class="mb-6 lead pe-lg-6">
								<fmt:message key="menu.title5" />
							</p>
						</div>
					</div>
					<div class="col-lg-6 d-flex justify-content-center">
						<img alt="" style="width: 70%" src="Views/img/feature-1.png">
					</div>
				</div>
			</section>

			<section class="pb-8 mt-4">
				<div class="container mb-lg-8">
					<div>
						<h4 class="text-white fw-bold">
							<fmt:message key="menu.title6" />
						</h4>
					</div>
					<!-- row -->
					<div class="row mt-4">
						<div class="col-md-6 col-lg-3 border-top-md  mb-3">
							<!-- text -->
							<div class="py-7 ">
								<div class="lh-1">
									<div class="card"
										style="background-color: rgba(29, 23, 45, 255); border-radius: 15px; height: 280px">
										<div class="card-body">
											<p class="text-white fs-4 fw-bold">
												<fmt:message key="menu.title61" />
											</p>
											<span class=""
												style="color: gray; font-weight: 500; font-size: 16px;"><fmt:message
													key="menu.title61c" />.</span>
											<div class="d-flex justify-content-end mt-4 ">
												<i class="fa-solid fa-computer mt-5 mb-2"
													style="font-size: 60px; color: #d051de;"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-3 border-top-md  mb-3">
							<!-- icon -->

							<div class="py-7 ">
								<div class="lh-1">
									<div class="card"
										style="background-color: rgba(29, 23, 45, 255); border-radius: 15px; height: 280px">
										<div class="card-body">
											<p class="text-white fs-4 fw-bold">
												<fmt:message key="menu.title62" />
											</p>
											<span class=""
												style="color: gray; font-weight: 500; font-size: 16px;"><fmt:message
													key="menu.title62c" />.</span>
											<div class="d-flex justify-content-end mt-4 ">
												<i class="fa-solid fa-download mt-5 mb-2"
													style="font-size: 60px; color: #df9fc4;"></i>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-md-6 col-lg-3 border-top-md  mb-3">
							<!-- icon -->

							<div class="py-7 ">
								<div class="lh-1">
									<div class="card"
										style="background-color: rgba(29, 23, 45, 255); border-radius: 15px; height: 280px">
										<div class="card-body">
											<p class="text-white fs-4 fw-bold">
												<fmt:message key="menu.title63" />
											</p>
											<span class=""
												style="color: gray; font-weight: 500; font-size: 16px;"><fmt:message
													key="menu.title63c" />...</span>
											<div class="d-flex justify-content-end mt-4 ">
												<i class="fa-solid fa-binoculars mt-5 mb-2"
													style="font-size: 60px; color: #d051de;"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-lg-3 border-top-md  mb-3">
							<!-- icon -->

							<div class="py-7 ">
								<div class="lh-1">
									<div class="card"
										style="background-color: rgba(29, 23, 45, 255); border-radius: 15px; height: 280px">
										<div class="card-body">
											<p class="text-white fs-4 fw-bold">
												<fmt:message key="menu.title64" />
											</p>
											<span class=""
												style="color: gray; font-weight: 500; font-size: 16px;"><fmt:message
													key="menu.title64c" />.</span>
											<div class="d-flex justify-content-end mt-4 ">
												<i class="fa-solid fa-face-smile mt-5 mb-2"
													style="font-size: 60px; color: #f89fc7;"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section>


			<section class="pb-8 mt-4">
				<div class="container mb-lg-8">
					<div>
						<h4 class="text-white fw-bold">
							<fmt:message key="menu.title7" />
						</h4>
					</div>
					<!-- row -->
					<div class="row mt-4">
						<div class="col-md-6 col-lg-9 border-top-md   mb-3">
							<!-- text -->
							<div class="py-7 ">
								<div class="lh-1 ">
									<button type="button"
										class="btn btn-primary w-100 fs-4 fw-bold "
										data-bs-toggle="collapse" data-bs-target="#demo"
										style="height: 60px; text-align: left; background-color: #302c2c; border: #302c2c; position: relative;">
										<fmt:message key="menu.title71" />
										<i class="fa-solid fa-plus text-white mt-2 "
											style="position: absolute; right: 22px;"></i>
									</button>
									<div id="demo" class="collapse mt-3 text-white fw-4"
										style="line-height: 20px; boder: 1px solid;">
										<fmt:message key="menu.title71c" />
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-lg-9 border-top-md   mb-3">
							<!-- text -->
							<div class="py-7 ">
								<div class="lh-1 ">
									<button type="button"
										class="btn btn-primary w-100 fs-4 fw-bold "
										data-bs-toggle="collapse" data-bs-target="#demo2"
										style="height: 60px; text-align: left; background-color: #302c2c; border: #302c2c; position: relative;">
										<fmt:message key="menu.title72" />
										<i class="fa-solid fa-plus text-white mt-2 "
											style="position: absolute; right: 22px;"></i>
									</button>
									<div id="demo2" class="collapse mt-3 text-white fw-4"
										style="line-height: 20px; boder: 1px solid;">
										<fmt:message key="menu.title72c" />
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-lg-9 border-top-md   mb-3">
							<!-- text -->
							<div class="py-7 ">
								<div class="lh-1 ">
									<button type="button"
										class="btn btn-primary w-100 fs-4 fw-bold "
										data-bs-toggle="collapse" data-bs-target="#demo7"
										style="height: 60px; text-align: left; background-color: #302c2c; border: #302c2c; position: relative;">
										<fmt:message key="menu.title73" />
										<i class="fa-solid fa-plus text-white mt-2 "
											style="position: absolute; right: 22px;"></i>
									</button>
									<div id="demo7" class="collapse mt-3 text-white fw-4"
										style="line-height: 20px; boder: 1px solid;">
										<fmt:message key="menu.title73c" />
									</div>
								</div>
							</div>
						</div>




					</div>
				</div>
			</section>

			<%@include file="Footer.jsp"%>

		</div>

	</main>




</body>
</html>