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
            <script src="https://code.jquery.com/jquery-3.6.1.js">

            </script>
        </head>
        <style>
            .marquee {
                  overflow: hidden;
            }

            .marquee-content {
                display: flex;
                animation: scrolling 100s linear infinite;
            }

            .marquee-item {
                flex: 0 0 16vw;
                margin: 0 1vw;
                /*   flex: 0 0 20vw; */
                /*   margin: 0 2vw; */
            }

            .marquee-item img {
                display: block;
                width: 400px;
                /*   padding: 0 20px; */
            }

            @keyframes scrolling {
                0% {
                    transform: translateX(0);
                }

                100% {
                    transform: translatex(-144vw);
                }
            }
        </style>

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
                                        <li class="nav-item"><a class="nav-link" href="/list.tips?cpage=1">Tips</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/list.market?cpage=1">Market</a>
                                        </li>
                                        <li class="nav-item"><a class="nav-link" href="/list.qna?cpage=1">Q&A</a></li>


                                        <!-- dropdown -->
                                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
                                                style="color: white" href="#" role="button" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                                ${loginID }??? </a>
                                            <ul class="dropdown-menu dropdown-menu-dark">
                                                <li class="dropdown-item"><a href="/mypage.mem"
                                                        style="color: white; text-decoration: none;">Mypage</a></li>
                                                <li><a class="dropdown-item" style="color: white;" href="/list.wish?cpage=1">????????????</a></li>
                                                </li>
<!--                                                 <li><a class="dropdown-item" style="color: white;" href="#">??? ??????</a> -->
                                                </li>
                                                <li>
                                                    <hr class="dropdown-divider">
                                                </li>
                                                <li><input type="button" class="btn btn-link" id="logout"
                                                        style="color: white; text-decoration: none;" value="????????????"></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>

                            </c:when>
                            <c:when test="${loginID == null}">
                                <!-- ???????????? ?????? ????????? -->
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                        <li class="nav-item"><a class="nav-link" href="/index.jsp">Home</a></li>
                                        <li class="nav-item"><a class="nav-link"href="/contact/contact.jsp">About us</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/list.tips?cpage=1">Tips</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/list.market?cpage=1">Market</a>
                                        </li>
                                        <li class="nav-item"><a class="nav-link" href="/list.qna?cpage=1">Q&A</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/login/LoginDummy.jsp">Login</a>
                                        </li>
                                        <li class="nav-item"><a class="nav-link" href="/login/SigninDummy.jsp">Signin</a>
                                        </li>
                                        <li></li>
                                    </ul>
                                </div>
                            </c:when>
                        </c:choose>
                    </div>
                </nav>





                <!-- ??????0-->
                <section class="py-5" style="text-align: center;">

 

                    <h2>
                        ????????? ????????????, ????????? ???????????? <br /> ???????????? ????????? ?????? ?????????.
                    </h2>
                    <br>

                    <p>
                        K-HEALTH??? ?????? ?????? ???????????? ???????????? ?????? <br /> ??? ???????????? ????????????, ??? ???????????? ????????? ?????????
                        ?????? ?????? ????????????.
                    </p>

                </section>

                <!-- ??????1-->
                <section class="py-5">
                    <div class="marquee">
                        <div class="marquee-content" >
                            <div class="marquee-item" >
                                <div class="card" >
                                    <img src="https://images.pexels.com/photos/841131/pexels-photo-841131.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                                        class="card-img-top rounded"alt="...">
                                </div>
                                <br>
                                <p>Safe Exercise</p>
                            </div>

                            <div class="marquee-item">
                                <div class="card">
                                    <img src="https://hips.hearstapps.com/hmg-prod/images/mh-trainer-2-1533576998.png"
                                        class="card-img-top rounded" alt="...">
                                </div>
                                <br>
                                <p>Best Training</p>
                            </div>

                            <div class="marquee-item">
                                <div class="card">
                                    <img src="http://www.bdcnetwork.com/sites/bdc/files/fitness.jpg"
                                        class="card-img-top rounded" alt="...">
                                </div>
                                <br>
                                <p>A Pleasant
                                    Environment</p>
                            </div>


                            <div class="marquee-item">
                                <div class="card">
                                    <img src="https://www.dallasnews.com/resizer/scDGMREtrAmlOfjrCMTbFIJorIM=/arc-anglerfish-arc2-prod-dmn/public/BTHYIRY2VFDBFEBXV6HRBJOMVA.jpg"
                                        class="card-img-top rounded" alt="...">
                                </div>
                                <br>
                                <p>Best Training</p>
                                
                            </div>

                            <div class="marquee-item">
                                <div class="card">
                                    <img src="https://i.insider.com/5b5b68ea2be4ab19008b47c1?width=600&format=jpeg&auto=webp" height="265px"
                                        class="card-img-top rounded" alt="...">
                                </div>
                                <br>
                                <p>A Perfect Product</p>
                            </div>

                            <div class="marquee-item">
                                <div class="card">
                                    <img src="https://static.thcdn.com/images/large/original//productimg/1600/1600/10530943-1224889444460882.jpg" height="265px"
                                        class="card-img-top rounded" alt="...">
                                </div>
                                <br>
                                <p>Best Balance</p>
                            </div>

                            
                        </div>
                    </div>

                </section>


                <!-- ??????2-->






                <section class="py-5">
                    <div class="container px-5 my-5">
                        <div class="row gx-5 align-items-center">
                            <div class="col-lg-6" style="text-align: center;">
                                <b class="fs-1">K-HEALTH</b>
                            </div>
                            <div class="col-lg-6">
                                <p>K-HEALTH??? 2022??? 11??? ?????? ??????????????????.</p>
                                <p>
                                    ????????? ????????????, ????????? ????????? ???????????? ??? <br>?????? ?????? ?????? ????????? KH??? ???????????? ????????? ?????????
                                    ????????? <br> ????????? ???????????? ?????? ?????????, ?????? ?????? ?????? ????????? ?????? <br> ??????????????? ???????????? ???????????????
                                    ???????????? ????????? ???????????????.
                                </p>
                                <p>
                                    ???????????? ???????????? ????????? ???????????? ?????? ?????? ???????????? ???????????????. <br />
                                </p>
                            </div>
                        </div>

                    </div>
                </section>
                <div class="container px-5">
                    <hr>
                </div>





                <!-- ??????3-->
                <section class="py-5" style="text-align: center;">
                    <div>
                        <div>
                            <b class="fs-1">????????? ?????? ????????????
                                ???????????? ????????????.</b>
                            <br>
                            <br>


                            <div class="">
                                <div class="">
                                    <div class="">
                                        <b class="fs-3">Why not?</b>
                                        <p>????????? ????????? ?????? ??????</p>
                                    </div>
                                    <div class="">
                                        <b class="fs-3">If K-HEALTH,</b>
                                        <p>KH????????? ????????? ?????? ??????</p>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <p>
                                ??????????????? ????????? ????????? ?????????,<br /> ????????? ????????? ?????? ????????? ???????????? ????????? ???????????? ????????? ???????????????
                                ???. <br /> ????????? ??? ????????? ??? ?????? ????????????, ?????? ?????? ??? ?????? ????????? ????????? ???. <br /> ?????????
                                ?????? ????????? ????????? ????????? ???????????? ???????????????.
                            </p>
                            <br />

                        </div>
                    </div>
                    </div>
                    </div>
                </section>
            </main>










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

                            <img src="/image/instagram.png" height="20px"> <span class="text-white mx-1">&middot;</span>
                            <img src="/image/facebook.png" height="20px"> <span class="text-white mx-1">&middot;</span>
                            <img src="/image/youtube.png" height="20px"> <span
                                class="/image/text-white mx-1">&middot;</span> <img src="/image/twitter.png"
                                height="20px">
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="/js/scripts.js"></script>
            <script>
                $("#logout").on("click", function () {
                    location.href = "/logout.mem";
                })
            </script>



        </body>

        </html>