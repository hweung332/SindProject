<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="/resources/main/css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="/resources/main/css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="/resources/main/css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="/resources/main/css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="/resources/main/css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="/resources/main/css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> 010-6230-0316</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> hweung332@naver.com</a></li>
						<li><a href="https://blog.naver.com/hweung332"><i class="fa fa-map-marker"></i> blog</a></li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">All Categories</option>
										<option value="1">Category 01</option>
										<option value="1">Category 02</option>
									</select>
									<input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<div class="qty">3</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
					 <c:if test="${sessionScope.loginStatus == null }">
						<li> <a href="/">HOME</a></li>
						<li><a href="/member/login">LOGIN</a></li>
						<li><a href="/member/join">JOIN</a></li>
					 </c:if>
					 
					 	 <c:if test="${sessionScope.loginStatus != null }">
						<li> <a href="/">HOME</a></li>
						<li><a href="/member/logout">LOGOUT</a></li>
						<li><a href="/member/modify">MODIFY</a></li>
						<li><a href="/order/orderInfo">ORDER</a></li>
						<li><a href="/member/mypage">MYPAGE</a></li>
						<li><a href="/cart/cartList">CART</a></li>
					 </c:if>
					</ul>
					  
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
<div class="container">
	<ul class="nav nav-tabs">
		<!-- 
	  <li class="nav-item">
	    <a class="nav-link active" href="#">Active</a>
	  </li>
	   -->
	  <%--
	  <c:forEach items="${userCategory}" var="categoryVO">
		  <li class="nav-item dropdown">
		    <a class="nav-link" data-toggle="dropdown" href="${categoryVO.cate_code }" role="button" aria-expanded="false">${categoryVO.cate_name }</a>
		    <div class="dropdown-menu" id="subCategory_${categoryVO.cate_code }">
		    </div>
		  </li>
	  </c:forEach>
	   --%>
	   
	  <c:forEach items="${userCategory}" var="categoryVO">
		  <li class="nav-item dropdown">
		    <a class="nav-link" data-toggle="dropdown" href="${categoryVO.cate_code }" role="button">${categoryVO.cate_name }</a>
		    <div class="subCategory" id="subCategory_${categoryVO.cate_code }"></div>
		  </li>
	  </c:forEach>
	 </ul>
</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->

		<!-- /SECTION -->
		
	<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
				

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">New Products</h3>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
				<div class="container">
<!-- Top(1) -->
   <div class="row">
     <c:forEach items="${topProductList}" var="topProductVO">
     <div class="col-md-3 parentDetail">
       <div class="card mb-4 shadow-sm">
         <a href="${topProductVO.pro_num }" class="proDetail">
			<img name="proudctImage" width="100%" height="225" src="/product/displayFile?fileName=s_<c:out value="${topProductVO.pro_img }"></c:out>&uploadPath=<c:out value="${topProductVO.pro_uploadpath }"></c:out>">
		 </a>
		<input type="hidden" name="cate_code" value="${topProductVO.cate_code }">
         <div class="card-body">
              <p class="card-text">
              <h3 class="product-name">
              	<a href="${topProductVO.pro_num }" class="proDetail">
              		<c:out value="${topProductVO.pro_name }"></c:out>
              	</a></h3>
              	<br>
              	<fmt:formatNumber type="currency" value="${topProductVO.pro_price }" /> 
              	<input type="hidden" name="pro_num" value="${topProductVO.pro_num }">
              	
              
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" name="btnBuyAdd" class="btn btn-sm btn-outline-secondary">Buy</button>
                  <button type="button" name="btnCartAdd" class="btn btn-sm btn-outline-secondary">Cart</button>
                </div>
                
              </div>
            </div>
       </div>
     </div>
     </c:forEach>
    </div> 
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

	

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Hot deals</a></li>
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Cameras</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">My Account</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="/resources/main/js/jquery.min.js"></script>
		<script src="/resources/main/js/bootstrap.min.js"></script>
		<script src="/resources/main/js/slick.min.js"></script>
		<script src="/resources/main/js/nouislider.min.js"></script>
		<script src="/resources/main/js/jquery.zoom.min.js"></script>
		<script src="/resources/main/js/main.js"></script>
		
   <script>
	$(function(){
	  
	  //1??????????????? ?????????
	  $(".nav .nav-item a.nav-link").on("click", function(){
		console.log("1???????????????");

		let url = "/product/subCategory/" + $(this).attr("href");
		let curAnchor = $(this); // ajax????????? ???????????? ????????? this??? ??????????????? ????????? ??????.

	      $.getJSON(url, function(data){
			
			// 2??????????????? ????????? ?????? ????????????.(????????????)
			$(".nav .nav-item div.subCategory").each(function(){
				
				$(this).empty();
			});


	        //subCategoryBindingView(data, $("#subCategory"), $("#subCategoryTemplate"));
			let subCategoryStr = "";
			for(let i=0; i<data.length; i++) {
				//data[i].cate_code;
				//data[i].cate_name;
				let selector = "#subCategory_" + data[i].cate_prt_code;
				//selector.css("display", "inline");
				//console.log("?????????: " + selector)
				//$(selector).empty();
				subCategoryStr = "<a class='sub_cate' href='" + data[i].cate_code + "'>" + data[i].cate_name + "</a>";
				$(selector).append(subCategoryStr);
			}
			
			
			/*
			curAnchor.next().empty();
			curAnchor.next().append(subCategoryStr);
			*/

	      });
	  });

	  $("div.subCategory").on("click", "a.sub_cate", function(e){
		e.preventDefault();

		//console.log("2??????????????? ??????");
		location.href = "/product/productList?cate_code=" + $(this).attr("href");
	  });
	});
  </script>
  <script>

      $(function(){

        //???????????? ??????  
        $("button[name='btnCartAdd']").on("click", function(){
            
            let pro_num = $(this).parents("div.card-body").find("input[name='pro_num']").val();
            
           // console.log("????????????" + pro_num);

           $.ajax({
              url: '/cart/cartAdd',
              type: 'post',
              dataType: 'text',
              data: {pro_num: pro_num, cart_amount : 1},
              success: function(data) {
                if(data == "success") {
                  if(confirm("??????????????? ?????????????????????.\n ?????? ??????????????????????")){
                    location.href = "/cart/cartList";
                  }
                }
              }
           });
        });

        $("button[name='btnBuyAdd']").on("click", function(){
            
            let pro_num = $(this).parents("div.card-body").find("input[name='pro_num']").val();
            let pro_amount = 1;
            location.href = "/order/orderInfo?type=direct&pro_num="+pro_num+"&pro_amount="+ pro_amount;

           
        });
        
        
    
    //??????????????? ??????
    $("a.proDetail").on("click", function(e){
      e.preventDefault();
      /*
      let pro_num = $(this).attr("href");
      actionForm.append("<input type='hidden' name='pro_num' value='" + pro_num + "'>");
      actionForm.attr("action", "/product/productDetail");
      actionForm.submit();
      */
      let cate_code = $(this).parents(".parentDetail").find("input[name='cate_code']").val();
      console.log("????????????: " + cate_code);
      //return;
      location.href = "/product/productDetail?pro_num=" + $(this).attr("href") + "&cate_code=" + cate_code + "&type=N";

    });
  });
    </script>    

	</body>
</html>

