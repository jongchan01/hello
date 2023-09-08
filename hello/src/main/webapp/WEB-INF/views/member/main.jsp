<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="en">

<head>

   <!-- basic -->
	<meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
   <title>main</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
   <!-- Responsive-->
   <link rel="stylesheet" href="/resources/css/responsive.css">
   <!-- fevicon -->
   <link rel="icon" href="/resources/images/fevicon.png" type="image/gif" />
   <!-- Scrollbar Custom CSS -->
   <link rel="stylesheet" href="/resources/css/jquery.mCustomScrollbar.min.css">
   <!-- Tweaks for older IEs-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <!-- owl stylesheets -->
   <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
   <link rel="stylesoeet" href="/resources/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
      
      <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>

<body>
   <!-- header section start -->
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="/member/main">HOME</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<a class="nav-link text-dark" href="/board/paging">게시판</a>
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle text-dark" role="button" data-bs-toggle="dropdown" aria-expanded="false"> [${sessionScope.memberName}] </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/member/update" onclick="update()">내정보</a></li>
						</ul>
					</li>
						
					<li class="nav-item"><a class="nav-link active"
						onclick="logout()" style="cursor: pointer;">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
      <!-- banner section end -->
      <div class="banner_section layout_padding">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-6">
                           <h1 class="banner_taital">Test of <span style="color: #f3801f;">Tea</span></h1>
                        </div>
                        <div class="col-md-6">
                           <div><img src="/resources/images/img-1.png" class="image_1"></div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-6">
                           <h1 class="banner_taital">Test of <span style="color: #f3801f;">Tea</span></h1>
                        </div>
                        <div class="col-md-6">
                           <div><img src="/resources/images/img-1.png" class="image_1"></div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-6">
                           <h1 class="banner_taital">Test of <span style="color: #f3801f;">Tea</span></h1>
                        </div>
                        <div class="col-md-6">
                           <div><img src="/resources/images/img-1.png" class="image_1"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-angle-right"></i>
            </a>
         </div>
      </div>
      <div class="container">
         <div class="play_icon"><a href="#"><img src="/resources/images/play-icon.png"></a></div>
      </div>
      <!-- banner section end -->
   </div>
   <!-- header section end -->
   <!-- about section start -->
   <div class="about_section layout_padding">
      <div id="my_main_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="about_main">
                           <h1 class="about_taital">About Our</h1>
                           <p class="about_text">It is a long established fact that a reader will be It is a long
                              established fact that a reader will be It is a long established fact that a reader will be
                           </p>
                           <div class="readmore_bt"><a href="#">Read More</a></div>
                        </div>
                     </div>
                     <div class="col-md-6 ">
                        <div class="image_2"><img src="/resources/images/img-2.png"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="about_main">
                           <h1 class="about_taital">About Our</h1>
                           <p class="about_text">It is a long established fact that a reader will be It is a long
                              established fact that a reader will be It is a long established fact that a reader will be
                           </p>
                           <div class="readmore_bt"><a href="#">Read More</a></div>
                        </div>
                     </div>
                     <div class="col-md-6 ">
                        <div class="image_2"><img src="/resources/images/img-2.png"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="about_main">
                           <h1 class="about_taital">About Our</h1>
                           <p class="about_text">It is a long established fact that a reader will be It is a long
                              established fact that a reader will be It is a long established fact that a reader will be
                           </p>
                           <div class="readmore_bt"><a href="#">Read More</a></div>
                        </div>
                     </div>
                     <div class="col-md-6 ">
                        <div class="image_2"><img src="/resources/images/img-2.png"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <a class="carousel-control-prev" href="#my_main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-left"></i>
         </a>
         <a class="carousel-control-next" href="#my_main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
         </a>
      </div>
   </div>
   <!-- about section end -->
   <!-- booking section start -->
   <div class="booking_section">
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <h1 class="booking_taital">Book Now Table</h1>
               <p class="booking_text">It is a long established fact that a reader will be </p>
            </div>
            <div class="col-md-6">
               <div class="booking_bt"><a href="#">Book Table For Tea</a></div>
            </div>
         </div>
      </div>
   </div>
   <!-- booking section end -->
   <!-- services section start -->
   <div class="services_section layout_padding">
      <div class="container">
         <h1 class="services_taital">Our Tea Services</h1>
         <p class="services_text">It is a long established fact that a reader will be </p>
         <div class="services_section_2 layout_padding">
            <div class="row">
               <div class="col-md-6">
                  <div class="box_main active">
                     <div class="left_main">
                        <div class="cup_img_1"><img src="/resources/images/cup-img-1.png"></div>
                     </div>
                     <div class="middle_main">
                        <div class="border_10 active"></div>
                     </div>
                     <div class="right_main">
                        <h6 class="milk_text">Milk Tea</h6>
                        <h1 class="price_text">$10</h1>
                     </div>
                  </div>
                  <div class="box_main">
                     <div class="left_main">
                        <div class="cup_img_1"><img src="/resources/images/cup-img-2.png"></div>
                     </div>
                     <div class="middle_main">
                        <div class="border_10"></div>
                     </div>
                     <div class="right_main">
                        <h6 class="milk_text">Yellow Tea</h6>
                        <h1 class="price_text">$20</h1>
                     </div>
                  </div>
                  <div class="box_main">
                     <div class="left_main">
                        <div class="cup_img_1"><img src="/resources/images/cup-img-3.png"></div>
                     </div>
                     <div class="middle_main">
                        <div class="border_10"></div>
                     </div>
                     <div class="right_main">
                        <h6 class="milk_text">Green Tea</h6>
                        <h1 class="price_text">$20</h1>
                     </div>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="box_main">
                     <div class="left_main">
                        <div class="cup_img_1"><img src="/resources/images/cup-img-4.png"></div>
                     </div>
                     <div class="middle_main">
                        <div class="border_10"></div>
                     </div>
                     <div class="right_main">
                        <h6 class="milk_text">Red Tea</h6>
                        <h1 class="price_text">$10</h1>
                     </div>
                  </div>
                  <div class="box_main">
                     <div class="left_main">
                        <div class="cup_img_1"><img src="/resources/images/cup-img-5.png"></div>
                     </div>
                     <div class="middle_main">
                        <div class="border_10"></div>
                     </div>
                     <div class="right_main">
                        <h6 class="milk_text">Red Tea</h6>
                        <h1 class="price_text">$10</h1>
                     </div>
                  </div>
                  <div class="box_main">
                     <div class="left_main">
                        <div class="cup_img_1"><img src="/resources/images/cup-img-5.png"></div>
                     </div>
                     <div class="middle_main">
                        <div class="border_10"></div>
                     </div>
                     <div class="right_main">
                        <h6 class="milk_text">Red Tea</h6>
                        <h1 class="price_text">$10</h1>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="see_bt"><a href="#">See More</a></div>
      </div>
   </div>
   <!-- services section end -->
   <!-- choose section start -->
   <div class="choose_section">
      <div class="container">
         <h1 class="choose_taital">Why Choose Us</h1>
         <p class="choose_text">It is a long established fact that a reader will beIt is a long established fact that a
            reader will be</p>
         <div class="choose_section_2">
            <div class="choose_left">
               <div class="choose_left_main">
                  <div class="icon_1"><img src="/resources/images/icon-1.png"></div>
               </div>
               <div class="choose_right_main">
                  <h1 class="satisfied_text">99%<br><span class="satisfied_text_1">SATISFIED Customer</span></h1>
               </div>
            </div>
            <div class="choose_middle">
               <div class="choose_left_main">
                  <div class="icon_1"><img src="images/icon-2.png"></div>
               </div>
               <div class="choose_right_main">
                  <h1 class="satisfied_text">40+<br><span class="satisfied_text_1">AWESOME TEA</span></h1>
               </div>
            </div>
            <div class="choose_middle_1">
               <div class="choose_left_main">
                  <div class="icon_1"><img src="/resources/images/icon-3.png"></div>
               </div>
               <div class="choose_right_main">
                  <h1 class="satisfied_text">4500+<br><span class="satisfied_text_1">Customer</span></h1>
               </div>
            </div>
            <div class="choose_right">
               <div class="choose_left_main">
                  <div class="icon_1"><img src="/resources/images/icon-4.png"></div>
               </div>
               <div class="choose_right_main">
                  <h1 class="satisfied_text">190+<br><span class="satisfied_text_1">DAILY VISITORS</span></h1>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- choose section end -->
   <!-- shop section start -->
   <div class="shop_section layout_padding">
      <div id="my_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <h1 class="shop_taital">Our Tea Shop</h1>
                  <p class="shop_text">It is a long established fact that a reader will beIt is a long established fact
                     that a reader will be</p>
                  <div><img src="/resources/images/img-3.png" class="image_3"></div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <h1 class="shop_taital">Our Tea Shop</h1>
                  <p class="shop_text">It is a long established fact that a reader will beIt is a long established fact
                     that a reader will be</p>
                  <div><img src="/resources/images/img-3.png" class="image_3"></div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <h1 class="shop_taital">Our Tea Shop</h1>
                  <p class="shop_text">It is a long established fact that a reader will beIt is a long established fact
                     that a reader will be</p>
                  <div><img src="/resources/images/img-3.png" class="image_3"></div>
               </div>
            </div>
         </div>
         <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="next">
            <i class="fa fa-arrow-left"></i>
         </a>
         <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
            <i class="fa fa-arrow-right" style="text-align: left;"></i>
         </a>
      </div>
   </div>
   <!-- shop section end -->
   <!-- frequently section start -->
   <div class="frequently_section layout_padding">
      <div class="container">
         <h1 class="frequently_taital">Frequently Asked Questions</h1>
         <p class="frequently_text">It is a long established fact that a reader will beIt is a long established fact
            that a reader will be </p>
         <div class="frequently_section_2 layout_padding">
            <div class="bs-example">
               <div class="accordion" id="accordionExample">
                  <div class="card">
                     <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                           <button type="button" class="btn btn-link w-100" data-toggle="collapse"
                              data-target="#collapseOne"><i class="fa fa-plus"></i>Where can I get some?</button>
                        </h2>
                     </div>
                     <div id="collapseOne" class="collapse" aria-labelledby="headingOne"
                        data-parent="#accordionExample">
                        <div class="card-body">
                           <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for
                              describing the structure of web pages. <a
                                 href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="card">
                     <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                           <button type="button" class="btn btn-link collapsed w-100" data-toggle="collapse"
                              data-target="#collapseTwo"><i class="fa fa-plus"></i> Why do we use it?</button>
                        </h2>
                     </div>
                     <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo"
                        data-parent="#accordionExample">
                        <div class="card-body">
                           <p>It is a long established fact that a reader will be distracted by the readable content of
                              a page when looking at its layout. The point of using Lorem Ipsum is that it <a
                                 href="https://www.tutorialrepublic.com/twitter-bootstrap-tutorial/"
                                 target="_blank">Learn more.</a></p>
                        </div>
                     </div>
                  </div>
                  <div class="card">
                     <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                           <button type="button" class="btn btn-link collapsed w-100" data-toggle="collapse"
                              data-target="#collapseThree"><i class="fa fa-plus"></i>Where does it come from?</button>
                        </h2>
                     </div>
                     <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                        data-parent="#accordionExample">
                        <div class="card-body">
                           <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties
                              for a given HTML element such as colors, backgrounds, fonts etc. <a
                                 href="https://www.tutorialrepublic.com/css-tutorial/" target="_blank">Learn more.</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="card">
                     <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                           <button type="button" class="btn btn-link collapsed w-100" data-toggle="collapse"
                              data-target="#collapseThree"><i class="fa fa-plus"></i>What is Lorem Ipsum?</button>
                        </h2>
                     </div>
                     <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                        data-parent="#accordionExample">
                        <div class="card-body">
                           <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties
                              for a given HTML element such as colors, backgrounds, fonts etc. <a
                                 href="https://www.tutorialrepublic.com/css-tutorial/" target="_blank">Learn more.</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="card">
                     <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                           <button type="button" class="btn btn-link collapsed w-100" data-toggle="collapse"
                              data-target="#collapseThree"><i class="fa fa-plus"></i>Why do we use it?</button>
                        </h2>
                     </div>
                     <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                        data-parent="#accordionExample">
                        <div class="card-body">
                           <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties
                              for a given HTML element such as colors, backgrounds, fonts etc. <a
                                 href="https://www.tutorialrepublic.com/css-tutorial/" target="_blank">Learn more.</a>
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- frequently section end -->
   <!-- clients section start -->
   <div class="clients_section layout_padding">
      <div id="custum_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <h1 class="clients_taital">Client's Testimonial</h1>
                  <p class="clients_text">Potential Clients are pouring our website on a daily basis after we use
                     Organic Visit, really recommended their great job!</p>
                  <div class="client_img"><img src="/resources/images/client-img.png"></div>
                  <h1 class="louis_text">Louis Gilyard</h1>
                  <h1 class="smyth_text">SMYTH</h1>
                  <div class="border"></div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <h1 class="clients_taital">Client's Testimonial</h1>
                  <p class="clients_text">Potential Clients are pouring our website on a daily basis after we use
                     Organic Visit, really recommended their great job!</p>
                  <div class="client_img"><img src="/resources/images/client-img.png"></div>
                  <h1 class="louis_text">Louis Gilyard</h1>
                  <h1 class="smyth_text">SMYTH</h1>
                  <div class="border"></div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <h1 class="clients_taital">Client's Testimonial</h1>
                  <p class="clients_text">Potential Clients are pouring our website on a daily basis after we use
                     Organic Visit, really recommended their great job!</p>
                  <div class="client_img"><img src="/resources/images/client-img.png"></div>
                  <h1 class="louis_text">Louis Gilyard</h1>
                  <h1 class="smyth_text">SMYTH</h1>
                  <div class="border"></div>
               </div>
            </div>
         </div>
         <a class="carousel-control-prev" href="#custum_slider" role="button" data-slide="next">
            <i class="fa fa-angle-left"></i>
         </a>
         <a class="carousel-control-next" href="#custum_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
         </a>
      </div>
   </div>
   <!-- clients section end -->
   <!-- contact section start -->
   <div class="contact_section layout_padding">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-6">
               <div class="mail_main">
                  <h1 class="contact_taital">Contact us</h1>
                  <form action="/action_page.php">
                     <div class="form-group">
                        <input type="text" class="email-bt" placeholder="Name" name="Name">
                     </div>
                     <div class="form-group">
                        <input type="text" class="email-bt" placeholder="Email" name="Email">
                     </div>
                     <div class="form-group">
                        <input type="text" class="email-bt" placeholder="Subject" name="Email">
                     </div>
                     <div class="form-group">
                        <textarea class="massage-bt" placeholder="Massage" rows="5" id="comment" name="text"></textarea>
                     </div>
                  </form>
                  <div class="send_btn">
                     <div class="main_bt"><a href="#">Send</a></div>
                  </div>
               </div>
            </div>
            <div class="col-md-6">
               <div class="map_main">
                  <div class="map-responsive">
                     <iframe
                        src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France"
                        width="600" height="600" frameborder="0" style="border:0; width: 100%;"
                        allowfullscreen=""></iframe>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- contact section end -->
   <!-- footer section start -->
   <div class="footer_section layout_padding">
      <div class="container">
         <div class="newsletter_section">
            <div class="newsletter_left">
               <div class="footer_logo"><img src="/resources/images/footer-logo.png"></div>
            </div>
            <div class="newsletter_right">
               <h5 class="newsletter_taital">Subscribe Newsletter</h5>
               <div class="subscribe_main">
                  <input type="text" class="mail_text" placeholder="Enter your email" name="text">
                  <div class="subscribe_bt"><a href="#">Subscribe</a></div>
               </div>
            </div>
         </div>
         <div class="footer_taital_main">
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <h2 class="useful_text">About</h2>
                  <p class="ipsum_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                     dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation u</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h2 class="useful_text">Menus</h2>
                  <div class="footer_links">
                     <ul>
                        <li><a href="/about">About</a></li>
                        <li><a href="/services">Services</a></li>
                        <li><a href="/pricing">Pricing</a></li>
                        <li><a href="/contact">Contact us</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h2 class="useful_text">Useful Link</h2>
                  <div class="footer_links">
                     <ul>
                        <li><a href="#">Adipiscing</a></li>
                        <li><a href="#">Elit, sed do</a></li>
                        <li><a href="#">Eiusmod </a></li>
                        <li><a href="#">Tempor </a></li>
                        <li><a href="#">incididunt</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h2 class="useful_text">Contact us</h2>
                  <div class="addres_link">
                     <ul>
                        <li><a href="#"><img src="/resources/images/map-icon.png"><span class="padding_left_10">No.123 Chalingt
                                 Gates</span></a></li>
                        <li><a href="#"><img src="/resources/images/call-icon.png"><span class="padding_left_10">+01
                                 1234567890</span></a></li>
                        <li><a href="#"><img src="/resources/images/mail-icon.png"><span
                                 class="padding_left_10">demo@gmail.com</span></a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <h1 class="follow_text">Follow Us</h1>
            <div class="social_icon">
               <ul>
                  <li><a href="#"><img src="/resources/images/fb-icon.png"></a></li>
                  <li><a href="#"><img src="/resources/images/twitter-icon.png"></a></li>
                  <li><a href="#"><img src="/resources/images/linkedin-icon.png"></a></li>
                  <li><a href="#"><img src="/resources/images/instagram-icon.png"></a></li>
               </ul>
            </div>
         </div>
      </div>
   </div>
   <!-- footer section end -->
   <!-- copyright section start -->
   <div class="copyright_section">
      <div class="container">
         <p class="copyright_text">Copyright 2019 All Right Reserved By.<a href="https://html.design"> Free html
               Templates</a> Distributed by. <a href="https://themewagon.com">ThemeWagon</a> </p>
         </p>
      </div>
   </div>
   <!-- copyright section end -->
   <!-- Javascript files-->
   <script src="/resources/js/jquery.min.js"></script>
   <script src="/resources/js/popper.min.js"></script>
   <script src="/resources/js/bootstrap.bundle.min.js"></script>
   <script src="/resources/js/jquery-3.0.0.min.js"></script>
   <script src="/resources/js/plugin.js"></script>
   <!-- sidebar -->
   <script src="/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="/resources/js/custom.js"></script>
   <!-- javascript -->
   <script src="/resources/js/owl.carousel.js"></script>
   <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   <script>
      $(document).ready(function () {
         $(".fancybox").fancybox({
            openEffect: "none",
            closeEffect: "none"
         });

   </script>
   <script>
            $(document).ready(function () {
               // Add minus icon for collapse element which is open by default
               $(".collapse.show").each(function () {
                  $(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
               });

               // Toggle plus minus icon on show hide of collapse element
               $(".collapse").on('show.bs.collapse', function () {
                  $(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
               }).on('hide.bs.collapse', function () {
                  $(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
               });
            });
   </script>
   
   	<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
			crossorigin="anonymous"></script>
</body>
<script>
const update = () => {
	location.href = "/member/update";
}

const logout = () => {
    fetch('/member/logout', {
        method: 'POST',
        credentials: 'same-origin'
    })
    .then(response => {
        if (response.ok) {
            // 세션 종료 후 "/" 주소로 이동
            location.href = "/";
           	
        } else {
            console.error('로그아웃 실패');
        }
    })
    .catch(error => {
        console.error('로그아웃 오류:', error);
    });
}
</script>
</html>