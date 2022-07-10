<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" 
	rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap"
	rel="stylesheet" />
<style type="text/css">

html, body {
	margin: 0;
	padding: 0;
}

.container {
	max-width: 1000px;
	margin: 0 auto;
}

.navigation {
	height: 70px;
	background: #ffffff;
	margin: 40px;
	margin-bottom: 70px;
	border-bottom: solid;
	border-width: 1px;
}

.brand-container {
	position: absolute;
	padding-left: 20px;
	float: left;
	line-height: 70px;
	text-transform: uppercase;
	font-size: 1.4em;
}

.brand-container a, .brand-container a:visited, .login a, .login a:visited, .login span{
	color: #000000;
	text-decoration: none;
}

.img01, .img02 {
	            position:relative;
}

.img01 > a> svg, .img02 > a > svg {
            position:absolute;
            margin:auto;
            top:0; bottom:0; right:0;
}



.nav-container {
	position: relative;
	float: right;
	width: 750px;
	margin: 0 auto;
}

nav {
	float: left;
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

nav ul li {
	float: left;
	position: relative;
}

nav ul li a, nav ul li a:visited {
	display: block;
	padding: 0 20px;
	line-height: 70px;
	background: #ffffff;
	color: #000000;
	text-decoration: none;
}

nav ul li a:hover, nav ul li a:visited:hover {
	background: #2581DC;
	color: #ffffff;
}

.login {
	position: relative;
	padding-right: 20px;
	float: right;
	line-height: 70px;
	font-size: 1em;
}

#wrap {
    min-height: 100vh;
    height: 100%;
    padding-bottom: 50px;
}

footer {
  height: 200px;
  border-top: 1px solid #151515;
  margin: 40px;
  position: relative;
  font-size: 14px;
}

footer .footer-left {
  	width: 60%;
  	position: absolute;
  	left: 100px;
}

footer .footer-left .footer-title {
  	font-size: 18px;
  	margin-top: 20px;
  	font-weight: 700;
}

footer .footer-left .info {
  	margin: 20px 0 20px 0;
}

footer .footer-left .menu {
  	display: inline;
}

footer .footer-left .menu li {
  	padding-right: 20px;
  	display: inline;
}

footer .footer-left .menu li a {
  	color: rgb(135, 135, 135)
}

footer .footer-left .copyright {
  	display: inline-block;
  	color: rgb(135, 135, 135)
}

footer .footer-right {
  display: inline-block;
  position: absolute;
  right: 100px;
  margin-top: 0px;
}

footer .footer-right i {
  font-size: 20px;
}

footer .footer-right h4 {
  font-size: 16px;
  text-align: center;
}

footer .footer-right .follow-us  {
  display: inline-block;
  padding-right: 30px;
  vertical-align: top;
}

footer .footer-right .follow-us li {
  display: inline-block;
  padding: 8px;
}

footer .footer-right .service-center {
  	display: inline-block;
}

footer .footer-right .service-center li {
  	display: inline-block;
  	text-align: center;
  	padding: 8px;
}

footer .footer-right .service-center li p {
  	padding-top: 8px;
  	font-size: 12px;
}

a {
	color: #878787;
	text-decoration: none;
}

.home-image {
	display: flex;
	justify-content: center;
}

.home-image img {
	display: block;
	width: 80%;
}



</style>
</head>
<body>
	<div id="wrap">
		<section class="navigation">
		<div class="container">
			<div class="brand-container">
				<span class="img01">
					<a href="#!"> 
						<svg width="45" height="45"
							fill="none" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<path fill="url(#a)" d="M0 0h48v48H0z" />
							<defs>
							<pattern id="a" patternContentUnits="objectBoundingBox" width="1"
											height="1">
							<use xlink:href="#b" transform="scale(.02083)" /></pattern>
							<image id="b" width="45" height="45"
											xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAADa0lEQVRoge3YSYgdVRTG8V9rQjq0Q2LUlYJICOIQh3RU2gGSjQE1KoIBBRWzckIX6sIB3AgJZCMOICIoKMGoLSS61bhQ1I1KosZExUBspygS2ylDt4tTj65U6laq3+tXr4X3hwv1qu699Z13zz331KFPnz6zgZWY12sR7TKA3diG4R5raYtLMJm1A1jnf7YaG4T47TiUXXe8GkO4HW9jB8bxF/bgQzyNm7Ggk5eYcp9JXICR7H2t1XhCG6txDnaaWtaqth9v4apMzHQZyebZmbs3iPU4mD1bPd1Jt9YUX2yfYVWN+Y/BWoxiLBv7KZYV+i0XKzBtfmrTgFYbxSmJuQfwcmLcBB5qR3CRLwoTL83uD2EJbsMm7Ksw4ntcWDL3jRVjWu2aTg14rjDha4l+g7gerySM2WfK+BajNQzY1qkBw2I585OuE76b4nix/D8Uxv2Mb0QE26F61fLt4rpijy25N4bTcVHu3uW4TsTpP/AP5uI0nIVLRRhcivm5cUNYmPU9Wf2QuAsf1DWijBPwsc42c6eBoGMW4t0eGZA/FzpiAHfjx2m8/FDu+m9cJlxpOZ4qPE+132fKgBZzxIn4gvDNvSK9+Db7/VJm6GIRRVpCyvz4VkcGib1iw/8mTveJmTagLsfh/Zyw3cqj17MON+D5pgQWWYSHheh/lbvDDSXjFhf6fNWE2DwDuEe40dH8eQxnl4zPG/xrI6pznCpS7bob+0+RmA2Lc2Kk8Py7ZuVPsVps5E7D5qamheeZj8dFyGzXgCuaEDoXd4iQWsaZ2JwQmGoTeLSrqnPclL10O1ZU9LsaX0uLPohfsOUo88w4LxaEvCqSvjIG8ZjIQosG3N91pQk+LxEzLs6BVJZ5Bt4sjNnQdaUJNkq7xS7VX1KrTBUK1ndXZjUrxR5IGbJFnLJlzBOrtbb7MquZg/tExlhmxH48Kb7SZjWLhNBUerxHZJ7t1IsaZZlIm1NutRXn9UxdjruwJvGsVaxK1ZQO4MEGNFayRoh5D+cn+iwQFYyy1PraBjRWssThp+kzOCnR91y8k+u/uQmBdch/Lk6KT8E7lZdniPTjI+lSY+Pcq9zHP8GVPdRVmxPFv57KLDeKYtes5hbVKfI4HuiZupo84sjSSN6dikXdWckKvC5y/y/xhqifpjZ0nz59usB/rqP1v6Iiv6UAAAAASUVORK5CYII=" />
							</defs>
						</svg>
					</a>
				</span>	
				<a href="#!">Logo</a>
			</div>
			<div class="nav-container">
				<nav>
					<ul class="nav-list">
						<li><a href="#!">지도</a></li>
						<li><a href="#!">꿀단지</a></li>
						<li><a href="#!">마이페이지</a></li>
						<li><a href="#!">이용내역</a></li>
						<li><a href="#!">채팅</a></li>
					</ul>
				</nav>
				<div class="login">
					<span class="img02">
					<a href="#!">
					<svg width="34" height="34" viewBox="0 0 34 34" fill="none"	xmlns="http://www.w3.org/2000/svg">
						<path d="M27.7917 3H6.54167C4.5849 3 3 4.26792 3 5.83333V28.5C3 30.0654 4.5849 31.3333 6.54167 31.3333H27.7917C29.7484 31.3333 31.3333 30.0654 31.3333 28.5V5.83333C31.3333 4.26792 29.7484 3 27.7917 3ZM17.1667 8.66667C20.1771 8.66667 22.4792 10.5083 22.4792 12.9167C22.4792 15.325 20.1771 17.1667 17.1667 17.1667C14.1563 17.1667 11.8542 15.325 11.8542 12.9167C11.8542 10.5083 14.1563 8.66667 17.1667 8.66667ZM26.0208 25.6667H8.3125C8.3125 25.6667 8.3125 24.8379 8.3125 24.25C8.3125 22.0244 12.7608 20 17.1667 20C21.5725 20 26.0208 22.0244 26.0208 24.25C26.0208 24.8379 26.0208 25.6667 26.0208 25.6667Z" fill="black" />
					</svg>
					</a>
					</span>
					<a href="#!">로그인</a> <span>/</span> <a href="#!">회원가입</a>
				</div>
			</div>
		</div>
	</section>
		<section>
			<div class="home-image">
				<img src="https://images.unsplash.com/photo-1479839672679-a46483c0e7c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2020&q=80">
			</div>
		</section>
<!-- 		<section>
			<div class="home-image">
				<img src="https://images.unsplash.com/photo-1515263487990-61b07816b324?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80">
			</div>
		</section>
		<section>
			<div class="home-image">
				<img src="https://images.unsplash.com/photo-1465804575741-338df8554e02?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1473&q=80">
			</div>
		</section> -->
	</div>
 <footer class="footer">
    <div class="footer-left">
      <p class="footer-title">(주) ProBee</p>
      <div class="info">
        <span>(14900) 서울시 강남구 역삼동 1-111 | 통신판매업신고번호 : 2022-서울강남-2222 | 사업자정보확인<br/>
        이메일 : Probee@wingwing.co.kr | 개인정보보호책임자 : (주) Probee</span>
      </div>
      <ul class="menu">
        <li><a href="javascript:void(0)">이용약관</a></li>
        <li><a href="javascript:void(0)">개인정보처리방침</a></li>
      </ul>
      <p class="copyright">
        Copyright &copy; ProBee Company. All Rights Reseved.
      </p>
    </div>
  
    <div class="footer-right">
      <ul class="follow-us">
        <h4>Follow Us</h4>
        <li><a href="javascript:void(0)">
          <i class="fa-brands fa-facebook"></i>
        </a>
        </li>
        <li><a href="javascript:void(0)">
          <i class="fa-brands fa-youtube"></i>
        </a></li>
        <li><a href="javascript:void(0)">
          <i class="fa-brands fa-instagram"></i>
        </a></li>
      </ul>
      <ul class="service-center">
        <h4>고객센터</h4>
        <li>
          <a href="javascript:void(0)">
            <i class="fa-solid fa-headset"></i>
            <p>문의</p>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <i class="fa-solid fa-book"></i>
            <p>도움말</p>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
          	<i class="fa-brands fa-rocketchat"></i>
          	<p>챗봇</p>
          </a>
        </li>
      </ul>
    </div>
  </footer>
</body>
<script>
	(function($) { // Begin jQuery
		$(function() { // DOM ready
			// Toggle open and close nav styles on click
			$('#nav-toggle').click(function() {
				$('nav ul').slideToggle();
			});
			// Hamburger to X toggle
			$('#nav-toggle').on('click', function() {
				this.classList.toggle('active');
			});
		}); // end DOM ready
	})(jQuery); // end jQuery
</script>
</html>