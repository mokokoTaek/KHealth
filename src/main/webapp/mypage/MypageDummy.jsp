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
<title>K-Health</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
   rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/css/styles.css" rel="stylesheet" />
<style>
/* body {
      background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    } */
.emp-profile {
   border: 2px solid #212529;
   padding: 3%;
   margin-top: 3%;
   margin-bottom: 3%;
   border-radius: 0.5rem;
   background: #fff;
}

.profile-img {
   text-align: center;
}

.profile-img img {
   width: 70%;
   height: 100%;
}

.profile-img .file {
   position: relative;
   overflow: hidden;
   margin-top: -20%;
   width: 70%;
   border: none;
   border-radius: 0;
   font-size: 15px;
   background: #212529b8;
}

.profile-img .file input {
   position: absolute;
   opacity: 0;
   right: 0;
   top: 0;
}

.profile-head h5 {
   color: #333;
}

.profile-head h6 {
   color: #0062cc;
}

.profile-edit-btn {
   border: none;
   border-radius: 1.5rem;
   width: 70%;
   padding: 2%;
    
   color: #6c757d;
   cursor: pointer;
}

.proile-rating {
   font-size: 12px;
   color: #818182;
   margin-top: 5%;
}

.proile-rating span {
   color: #495057;
   font-size: 15px;
    
}

.profile-head .nav-tabs {
   margin-bottom: 5%;
}

.profile-head .nav-tabs .nav-link {
    
   border: none;
}

.profile-head .nav-tabs .nav-link.active {
   border: none;
   border-bottom: 2px solid #0062cc;
}

.profile-work {
   padding: 14%;
   margin-top: -15%;
}

.profile-work p {
   font-size: 12px;
   color: #818182;
    
   margin-top: 10%;
}

.profile-work a {
   text-decoration: none;
   color: #495057;
    
   font-size: 14px;
}

.profile-work ul {
   list-style: none;
}

.profile-tab label {
   
}

.profile-tab p {
    
   color: #0062cc;
}

.mypageBtn {
   background-color: transparent;
   border: none;
}

#imform {
   display: none;
}

</style>

<script>
   $(function(){
      if(${member_role}){
    	 
         let adminBtn = $("#btnArea").append("<button>");
         adminBtn.attr("type", "button");
         adminBtn.text("????????? ???????????? ??????");
         
         adminBtn.on("click",function(){
            location.href="/admin/admindummy.jsp";
         })
      }
   });
</script>
</head>

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

      
<!--       <div id=btnArea></div> -->

      <!-- ???????????? ?????? ????????? ?????? ?????? -->
      <div class="container emp-profile">
         <form acition="" method="post" id="mypageFrm">
            <div class="row">
               <div class="col-md-3">
                  <div class="profile-img"></div>
               </div>

               <!-- ?????? Tab??? -->
               <div class="col-md-7">
                  <div class="profile-head">
                     <h5>${dto.name }</h5>
                     <p class="proile-rating">
                        Member : <span>Gold</span>
                     </p>
                     <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item"><a class="nav-link active"
                           data-toggle="tab" href='#' onclick="aboutTab()" role="tab"
                           aria-controls="home" aria-selected="true">About</a></li>

                        <li class="nav-item"><a class="nav-link active"
                           id="board-tab" data-toggle="tab" href='#' onclick="boardTab()"
                           role="tab" aria-controls="home" aria-selected="true">Board</a></li>

                        <li class="nav-item"><a class="nav-link active"
                           data-toggle="tab" href='#' onclick="commentsTab()" role="tab"
                           aria-controls="home" aria-selected="true">Comments</a></li>

                     </ul>

                     <!-- Comments ????????? ??? ????????? ????????? -->
                     <div class="mypageComments">
                        <table id="mypageComments"
                           style="border: 1px solid black; display: none;">
                           <tr>
                              <td>??????</td>
                              <td>?????????</td>
                              <td>??????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                           </tr>
                        </table>
                     </div>

                     <!-- Board ????????? ??? ????????? ????????? -->
                     <div class="mypageBoard">
                        <table id="mypageBoard"
                           style="border: 1px solid black; display: none;">
                           <tr>
                              <td>??????</td>
                              <td>??????</td>
                              <td>??????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                           </tr>
                        </table>
                     </div>

                     <!-- Tab ?????? script -->
                     <script>
                        let test = true;
                        function commentsTab() {
                           if(test){
                        	  $("#leftMenu").css("display","none");
                              $("#information").css("display", "none");
                              $("#mypageBoard").css("display", "none");
                              $("#mypageComments").css("display", "block");
   
                              $.ajax({
                                 url: "/mypageComments.ajax?cpage=1",
                                 dataType: "json"
                              }).done(function (resp) {
                                 let target = JSON.parse(resp.list);
   
                                 for (let i = 0; i < target.length; i++) {
                                    let tr = $("<tr>");
   
                                    let tdSeq = $("<td>");
                                    tdSeq.append(i+1);
   
                                    let tdBoard = $("<td>");
                                    tdBoard.append("QnA");
   
                                    let tdContents = $("<td>");
                                    let Anchor = $("<a>");
                                    Anchor.html(target[i].qnaCms_contents);
                                    Anchor.attr("href","/detail.qna?qna_seq="+target[i].qnaCms_parent_seq+"");
                                    Anchor.css("text-decoration","none");
                                    Anchor.css("color","black");
                                    tdContents.append(Anchor);
   
                                    let tdWriter = $("<td>");
                                    tdWriter.append(target[i].qnaCms_writer);
   
                                    let tdDate = $("<td>");
                                    tdDate.append(target[i].qnaCms_write_date);
   
                                    tr.append(tdSeq);
                                    tr.append(tdBoard);
                                    tr.append(tdContents);
                                    tr.append(tdWriter);
                                    tr.append(tdDate);
                                    $("#mypageComments").append(tr);
                                    test = false;
                                 }
                              })
                           }
                        }
                        
                        let test2 = true;
                        function boardTab() {
                           if(test2){
                        	  $("#leftMenu").css("display","none");
                              $("#information").css("display", "none");
                              $("#mypageComments").css("display", "none");
                              $("#mypageBoard").css("display", "block");
                              $.ajax({
                                 url: "/mypageComments.ajax?cpage=1",
                                 dataType: "json"
                              }).done(function (resp) {
                                 let target = JSON.parse(resp.list2);
                                 
                                    for (let i = 0; i < target.length; i++) {
                                       let tr = $("<tr>");

                                       let tdSeq = $("<td>");
                                       tdSeq.append(i+1);

                                       let tdTitle = $("<td>");
                                       let Anchor1 = $("<a>");
                                       Anchor1.html(target[i].qna_title);
                                       Anchor1.attr("href","/detail.qna?qna_seq="+target[i].qna_seq+"")
                                       Anchor1.css("text-decoration","none").css("color","black");
                                       tdTitle.append(Anchor1);
                                       
                                       let tdContents = $("<td>");
                                       let Anchor2 = $("<a>");
                                       Anchor2.html(target[i].qna_contents);
                                       Anchor2.attr("href","/detail.qna?qna_seq="+target[i].qna_seq+"")
                                       Anchor2.css("text-decoration","none").css("color","black");
                                       tdContents.append(Anchor2);

                                       let tdWriter = $("<td>");
                                       tdWriter.append(target[i].qna_writer);

                                       let tdDate = $("<td>");
                                       tdDate.append(target[i].qna_write_date);

                                       tr.append(tdSeq);
                                       tr.append(tdTitle);
                                       tr.append(tdContents);
                                       tr.append(tdWriter);
                                       tr.append(tdDate);
                                       $("#mypageBoard").append(tr);
                                       test2 = false;
                                 }
                              })
                           }
                        }
                        
                        function aboutTab(){
                           location.href = "/mypage.mem"
                        }
                     </script>
                  </div>
               </div>
               <div class="col-md-2">
                  <!-- <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile" /> -->
               </div>
            </div>

            <!-- ????????? ?????? ????????? -->
				<div class="row" id="leftMenu">
					<div class="col-md-3">
						<div class="profile-work">
							<p>My Page</p>
							<a href="/mypage.mem" id="aboutBtn">????????? ??????</a><br />
							<a href='#' onclick="modifyTab()" id="modifyBtn">????????? ??????</a>
							<p>Order</p>
							<a href="/orderhistory.mypage?cpage=1" id="buylistBtn">?????? ??????</a>
							
						</div>
					</div>
                     
   

               <script>
                  $("#mypageInformation").on("click", function () {
                     location.href = "/mypage.mem"
                  })
                  $("#boardBtn").on("click", function () {
                     location.href = "/mypage.mem"
                  })
                  $("#commentBtn").on("click", function () {
                     location.href = "/mypage.mem"
                  })
                  <!-- ????????????! -->
                  $("#orderlistBtn").on("click", function () {
                     location.href = "/orderhistory.mypage?cpage=1"
                  })
               </script>

               <!-- ??????????????? ????????? ????????? -->
               <div class="col-md-9" id="information">
                  <div class="tab-content profile-tab" id="myTabContent">
                     <div class="tab-pane fade show active" id="home" role="tabpanel"
                        aria-labelledby="home-tab">

                        <!-- ????????? ??? ????????? input?????? -->
                        <input type=hidden id="input_modify_nickname"
                           name="modify_nickname"> <input type=hidden
                           id="input_modify_mail" name="modify_mail"> <input
                           type=hidden id="input_modify_number" name="modify_number">
                        <input type=hidden id="input_modify_address1"
                           name="modify_address1">

                        <div class="row">
                           <div class="col-md-3">
                              <label>Name</label>
                           </div>
                           <div class="col-md-9">
                              <p>${dto.name }</p>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-3">
                              <label>User NickName</label>
                           </div>
                           <div class="col-md-9">
                              <p class="modify" id="modify_nickname">${dto.nickname }</p>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-3">
                              <label>Email</label>
                           </div>
                           <div class="col-md-9">
                              <p class="modify" id="modify_mail">${dto.mail }</p>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-3">
                              <label>Phone</label>
                           </div>
                           <div class="col-md-9">
                              <p class="modify" id="modify_number">${dto.number }</p>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-3">
                              <label>Address</label>
                           </div>
                           <div class="col-md-9">
                              <p class="modify" id="modify_address1">${dto.address1 }</p>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-3">
                              <label>Join Date</label>
                           </div>
                           <div class="col-md-9">
                              <p>${dto.launch_date }</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  
               </div>
            </div>

         </form>
      </div>

<!-- ????????? ????????? ????????? ??? -->
      <div class="container mb-5" id=btnArea>
      
      </div>
      


      <!-- ???????????? -->
      <script>
         let modifyOk = $("<button>");
         modifyOk.html("????????????");

         let modifyCancel = $("<button>");
         modifyCancel.attr("type", "button");
         modifyCancel.text("??????");
         modifyCancel.addClass("btn");

         function modifyTab() {

         	$(".modify").attr("contenteditable", "true");

            $("#btnArea").after(modifyCancel);
            $("#btnArea").after(modifyOk);
            }

         	modifyOk.on("click", function () {
            $("#mypageFrm").attr("action", "/update.mem")
            $("#input_modify_nickname").val($("#modify_nickname").text());
            $("#input_modify_mail").val($("#modify_mail").text());
            $("#input_modify_number").val($("#modify_number").text());
            $("#input_modify_address1").val($("#modify_address1").text());
            console.log($("#input_modify_nickname").val())
            $("#mypageFrm").submit();
         })
         modifyCancel.on("click", function () {
            location.reload();
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
   $("#logout").on("click", function () {
       location.href = "/logout.mem";
    })
    </script>
</body>

</html>