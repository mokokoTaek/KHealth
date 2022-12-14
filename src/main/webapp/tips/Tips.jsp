<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!DOCTYPE html>
      <html>

      <head>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
         <meta name="description" content="" />
         <meta name="author" content="" />
         <title>K-Health</title>
         <!-- Favicon-->
         <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
         <!-- Bootstrap icons-->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
         <!-- Core theme CSS (includes Bootstrap)-->
         <link href="/css/styles.css" rel="stylesheet" />

         <style>
            .board-border {
               border: 1px solid #212529;
               padding: 0%;
               margin-top: 3%;
               margin-bottom: 3%;
               /*    border-radius: 0.5rem; */
               background: #fff;
            }

            a {
               text-decoration: none;
               color: black;
            }

            /* tr { */
            /* 	border-color: transparent; */
            /* } */
            .table {
               border-radius: 0.5rem;
            }
         </style>
         <script src="https://code.jquery.com/jquery-3.6.1.js">

         </script>
      </head>

      <body class="d-flex flex-column h-100">
         <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark position: fixed; top: 0px;">
               <div class="container px-5 " id="sticky-wrapper" class="sticky-wrapper">
                  <a class="navbar-brand" href="/index.jsp"><img src="/image/khealth logo.png" height="100px"></a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                     data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                     aria-expanded="false" aria-label="Toggle navigation">
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
									href="">Tips</a></li>
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
            </nav>
            <div class="container">
               <div class="row mt-5">
                  <h1>TIPS ?????????</h1>
               </div>


               <ul class="nav nav-tabs mt-5 justify-content-center" id="myTab" role="tablist">
                  <li class="nav-item" role="presentation">
                     <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane"
                        type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">?????? ??????</button>
                  </li>
                  <li class="nav-item" role="presentation">
                     <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane"
                        type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">???
                        ??????</button>
                  </li>
                  <li class="nav-item" role="presentation">
                     <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane"
                        type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">??????
                        ??????</button>
                  </li>
                  <li class="nav-item" role="presentation">
                     <button class="nav-link" id="disabled-tab" data-bs-toggle="tab" data-bs-target="#disabled-tab-pane"
                        type="button" role="tab" aria-controls="disabled-tab-pane" aria-selected="false">??????
                        ??????</button>
                  </li>
               </ul>

		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home-tab-pane"
				role="tabpanel" aria-labelledby="home-tab" tabindex="0">
				<div class="container board-border border-start-0 border-end-0">
					<table class="table align-middle  mb-0 bg-white">
						<thead class="bg-light">
							<tr>
								<th>??? ??????</th>
								<th>??????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????? ??????</th>
								<th>?????????</th>
								<th>??????</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty list1}">
								<c:forEach var="i" items="${list1}">
									<tbody>
										<tr>
											<td>
												<div class="d-flex align-items-center">
													<div class="ms-3">
														<p class="fw-bold mb-1">${i.rn }</p>
													</div>
												</div>
											</td>
											<td>${i.tips_bullet }</td>
											<td>
												<p class="fw-normal mb-1">
													<a href="/detail.tips?tips_seq=${i.tips_seq }">${i.tips_title }</a>
												</p>
												<p class="text-muted mb-0"></p>
											</td>
											<td>${i.tips_nickname }</td>
											<td>${i.formedDate }</td>
											<td>${i.tips_view_count }</td>
											<td>${i.tips_thumbsup }</td>
										</tr>
									</tbody>
								</c:forEach>
							</c:when>
						</c:choose>


					</table>

				</div>
				<div class="row mb-3">
					<div class="col" style="text-align: center;">${navi }</div>
				</div>
			</div>
			<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">
				<div class="container board-border border-start-0 border-end-0">
					<table class="table align-middle mb-0 bg-white">
						<thead class="bg-light">
							<tr>
								<th>??? ??????</th>
								<th>??????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????? ??????</th>
								<th>?????????</th>
								<th>??????</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty list2}">
								<c:forEach var="i" items="${list2}">
									<tbody>
										<tr>
											<td>
												<div class="d-flex align-items-center">
													<div class="ms-3">
														<p class="fw-bold mb-1">${i.rn }</p>
													</div>
												</div>
											</td>
											<td>${i.tips_bullet }</td>
											<td>
												<p class="fw-normal mb-1">
													<a href="/detail.tips?tips_seq=${i.tips_seq }">${i.tips_title }</a>
												</p>
												<p class="text-muted mb-0"></p>
											</td>
											<td>${i.tips_nickname }</td>
											<td>${i.formedDate }</td>
											<td>${i.tips_view_count }</td>
											<td>${i.tips_thumbsup }</td>
										</tr>
									</tbody>
								</c:forEach>
							</c:when>
						</c:choose>
					</table>
				</div>
				<div class="row mb-3">
					<div class="col" style="text-align: center;">${navi }</div>
				</div>
			</div>
			<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel"
				aria-labelledby="contact-tab" tabindex="0">
				<div class="container board-border border-start-0 border-end-0">
					<table class="table align-middle mb-0 bg-white">
						<thead class="bg-light">
							<tr>
								<th>??? ??????</th>
								<th>??????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????? ??????</th>
								<th>?????????</th>
								<th>??????</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty list3}">
								<c:forEach var="i" items="${list3}">
									<tbody>
										<tr>
											<td>
												<div class="d-flex align-items-center">
													<div class="ms-3">
														<p class="fw-bold mb-1">${i.rn }</p>
													</div>
												</div>
											</td>
											<td>${i.tips_bullet }</td>
											<td>
												<p class="fw-normal mb-1">
													<a href="/detail.tips?tips_seq=${i.tips_seq }">${i.tips_title }</a>
												</p>
												<p class="text-muted mb-0"></p>
											</td>
											<td>${i.tips_nickname }</td>
											<td>${i.formedDate }</td>
											<td>${i.tips_view_count }</td>
											<td>${i.tips_thumbsup }</td>
										</tr>
									</tbody>
								</c:forEach>
							</c:when>
						</c:choose>


					</table>


				</div>
				<div class="row mb-3">
					<div class="col" style="text-align: center;">${navi }</div>
				</div>
			</div>
			<div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel"
				aria-labelledby="disabled-tab" tabindex="0">
				<div class="container board-border border-start-0 border-end-0">
					<table class="table align-middle mb-0 bg-white">
						<thead class="bg-light">
							<tr>
								<th>??? ??????</th>
								<th>??????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????? ??????</th>
								<th>?????????</th>
								<th>??????</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty list4}">
								<c:forEach var="i" items="${list4}">
									<tbody>
										<tr>
											<td>
												<div class="d-flex align-items-center">
													<div class="ms-3">
														<p class="fw-bold mb-1">${i.rn }</p>
													</div>
												</div>
											</td>
											<td>${i.tips_bullet }</td>
											<td>
												<p class="fw-normal mb-1">
													<a href="/detail.tips?tips_seq=${i.tips_seq }">${i.tips_title }</a>
												</p>
												<p class="text-muted mb-0"></p>
											</td>
											<td>${i.tips_nickname }</td>
											<td>${i.formedDate }</td>
											<td>${i.tips_view_count }</td>
											<td>${i.tips_thumbsup }</td>
										</tr>
									</tbody>
								</c:forEach>
							</c:when>
						</c:choose>


					</table>

				</div>
				<div class="row mb-3">
					<div class="col" style="text-align: center;">${navi }</div>
				</div>

			</div>
			<div class="container ">
				<button type="button" class="btn btn-secondary mb-2" style="float: right"
					name="tipswrite" id="tipswrite">????????????</button>
			</div>

			<script>
			$("#tipswrite").hide();
			console.log(${member_role});
			if (${member_role}) {
				$("#tipswrite").show()
			}

			$("#tipswrite").on("click", function() {
				location.href = "/tips/tipswrite.jsp?cpage=1"
			})
		</script>
	</main>

            <script>
               $("#tipswrite").hide();
               console.log(${ member_role });
               if (${ member_role }) {
                  $("#tipswrite").show()
               }

               $("#tipswrite").on("click", function () {
                  location.href = "/tips/tipswrite.jsp?cpage=1"
               })
               
               $("#logout").on("click", function () {
                           location.href = "/logout.mem";
                        })
            </script>


         <!-- Footer-->
         <footer class="bg-dark py-4 mt-auto ">
            <div class="container px-5 ">
               <div class="row align-items-center justify-content-between flex-column flex-sm-row ">
                  <div class="text-center">
                     <div class="small m-0 text-white">????????? : ????????? | ????????? : ????????? | ?????????
                        : ????????? | ????????? : ????????? | ????????? : ????????? | ????????? : ?????????</div>
                     <div class="small m-0 text-white"></div>
                     <div class="small m-0 text-white">???????????? ????????????
                        (www.k-health.com) | ????????????????????? : 851-12-34567</div>
                     <div class="small m-0 text-white">Copyright &copy; K-Health
                        Corp. All rights reserved.</div>
                     <div class="small m-0 text-white">??????????????? ?????? ???????????? 120 ???????????? 3???</div>

                     <img src="/image/instagram.png" height="20px"> <span class="text-white mx-1">&middot;</span> <img
                        src="/image/facebook.png" height="20px"> <span class="text-white mx-1">&middot;</span> <img
                        src="/image/youtube.png" height="20px"> <span class="/image/text-white mx-1">&middot;</span>
                     <img src="/image/twitter.png" height="20px">
                  </div>
               </div>
            </div>
         </footer>
         <!-- Bootstrap core JS-->
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
         <!-- Core theme JS-->
         <script src="/js/scripts.js"></script>
      </body>

      </html>