<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>tipsWrite</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/css/styles.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>
<style>
.board-border {
	border: 1px solid #212529;
	padding: 0%;
	margin-top: 3%;
	margin-bottom: 3%;
	border-radius: 0.5rem;
	background: #fff;
}

.form-control-plaintext {
	display: block;
	width: 100%;
	padding: 0.75rem 0;;
	margin-bottom: 0;
	line-height: 1.5;
	color: black;
	background-color: transparent;
	border: solid transparent;
	border-width: 1px 0;
}
</style>
<body class="d-flex flex-column h-100">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-dark position: fixed; top: 0px;">
			<div class="container px-5 " id="sticky-wrapper"
				class="sticky-wrapper">
				<a class="navbar-brand" href="/index.jsp"><img
					src="/image/khealth logo.png" height="100px"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<c:choose>
					<c:when test="${loginID != null}">
						<!-- ???????????? ??? ????????? -->
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link" href="/index.jsp">Home</a></li>
								<li class="nav-item"><a class="nav-link"href="/contact/contact.jsp">About us</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/list.tips?cpage=1">Tips</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/list.market?cpage=1">Market</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/list.qna?cpage=1">Q&A</a></li>


								<!-- dropdown -->
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" style="color: white" href="#"
									role="button" data-bs-toggle="dropdown" aria-expanded="false">
										${loginID }??? </a>
									<ul class="dropdown-menu dropdown-menu-dark">
										<li class="dropdown-item"><a href="/mypage.mem"
											style="color: white; text-decoration: none;">Mypage</a></li>
										<li><a class="dropdown-item" style="color: white;" href="/list.wish?cpage=1">????????????</a></li>
<!-- 										<li><a class="dropdown-item" style="color: white;" -->
<!-- 											href="#">??? ??????</a></li> -->
										<li>
											<hr class="dropdown-divider">
										</li>
										<li><input type="button" class="btn btn-link" id="logout"
											style="color: white; text-decoration: none;" value="????????????"></li>
									</ul></li>
							</ul>
						</div>

					</c:when>
					<c:when test="${loginID == null}">
						<!-- ???????????? ?????? ????????? -->
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link" href="/index.jsp">Home</a></li>
								<li class="nav-item"><a class="nav-link"href="/contact/contact.jsp">About us</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/list.tips?cpage=1">Tips</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/list.market?cpage=1">Market</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/list.qna?cpage=1">Q&A</a></li>
								<li class="nav-item"><a class="nav-link"
									href="login/LoginDummy.jsp">Login</a></li>
								<li class="nav-item"><a class="nav-link"
									href="login/SigninDummy.jsp">Signin</a></li>
								<li></li>
							</ul>
						</div>
					</c:when>
				</c:choose>
			</div>
		</nav>





		<!--write  -->
		<form action="/insert.tips" method="post" enctype="multipart/form-data">
			<div class="container board-border px-3">
				<div class="row">
					<div class="mt-4 mb-5">
						<h1>????????? ?????????</h1>
						<hr class="mb-4">
					</div>
				</div>

				<div class="bulletdiv row px-3 ">
					<select class="form-select" aria-label="Default select example"
						name="tips_bullet" id="tips_bullet">
						<option selected>Open this select menu</option>
						<option value="??????">??????</option>
						<option value="???">???</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
					</select>
				</div>

				<div class="form-group row py-3">
					<div class="col-sm">
						<input name="tips_title" id="tips_title"
							class="form-control-plaintext" type="text"
							placeholder="   ????????? ???????????????."
							style="border: solid 1px; border-color: gray; border-radius: 0.5rem;">
					</div>
				</div>
				<textarea class="form-control" name="tips_contents"
					id="tips_contents" id="exampleFormControlTextarea1" rows="10"
					placeholder="????????? ???????????????.">
               </textarea>
				<div class="row mt-3 ">
				
						<input type=file name="file">
				
				</div>
				<div class="form-group">
					<div class="mt-3 mb-3 d-flex justify-content-end">
						<button type="submit" class="btn btn-secondary me-2"
							id="tipsinsert">?????????</button>
						<button type="button" class="btn btn-secondary" id="tipsback">????????????</button>
					</div>
					<!-- <input type = file multiple name = "file"><br> -->
				</div>
			</div>
		</form>





		<script>
			$("#tipsback").on("click", function() {
				location.href = "/list.tips?cpage=1"
			})

			$('#tips_contents')
					.summernote(
							{
								callbacks : {
									onImageUpload : function(files, editor) {
										//????????? ????????? ????????? ??????
										console.log(files);

										var data = new FormData();
										// 
										data.append('imgFile', files[0]);
										$.ajax({
											url : 'upload.file',
											type : 'post',
											data : data,
											enctype : 'multipart/form-data',
											contentType : false, // ????
											processData : false
										// 
										}).done(
												function(resp) {

													var imgNode = $("<img>");
													imgNode.attr("src", resp);

													$(".note-editable").append(
															imgNode);
												}).fail(function(a, b, c) {
											console.log(a);
											console.log(b);
											console.log(c);
										});
									}
								},

								placeholder : '????????? ???????????????.',
								tabsize : 2,
								height : 400,
								toolbar : [
										[ 'style', [ 'style' ] ],
										[
												'font',
												[ 'bold', 'undeerline', 'clear' ] ],
										[ 'color', [ 'color' ] ],
										[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
										[ 'table', [ 'table' ] ],
										[ 'insert',
												[ 'link', 'picture', 'video' ] ],
										[
												'view',
												[ 'fullscreen', 'codeview',
														'help' ] ] ]
							});
		</script>



	</main>
	<!-- Footer-->
	<footer class="bg-dark py-4 mt-auto ">
		<div class="container px-5 ">
			<div
				class="row align-items-center justify-content-between flex-column flex-sm-row ">
				<div class="text-center">
					<div class="small m-0 text-white">????????? : ????????? | ????????? : ????????? | ?????????
						: ????????? | ????????? : ????????? | ????????? : ????????? | ????????? : ?????????</div>
					<div class="small m-0 text-white"></div>
					<div class="small m-0 text-white">???????????? ????????????
						(www.k-health.com) | ????????????????????? : 851-12-34567</div>
					<div class="small m-0 text-white">Copyright &copy; K-Health
						Corp. All rights reserved.</div>
					<div class="small m-0 text-white">??????????????? ?????? ???????????? 120 ???????????? 3???</div>

					<img src="/image/instagram.png" height="20px"> <span
						class="text-white mx-1">&middot;</span> <img
						src="/image/facebook.png" height="20px"> <span
						class="text-white mx-1">&middot;</span> <img
						src="/image/youtube.png" height="20px"> <span
						class="/image/text-white mx-1">&middot;</span> <img
						src="/image/twitter.png" height="20px">
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/js/scripts.js"></script>
	<script>
		$("#logout").on("click", function() {
			location.href = "/logout.mem";
		})
	</script>

</body>
</html>