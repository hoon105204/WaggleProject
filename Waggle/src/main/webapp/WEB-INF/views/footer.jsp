<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" 
	rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap"
	rel="stylesheet" />
<style type="text/css">

html, body {
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Noto Sans KR', 'Helvetica Neue', Helvetica, Arial, sans-serif;
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
  font-size: 12px;
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
  font-size: 13px;
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

#modal {
	display: none;
}

.modal-wrapper {
	position: fixed;
	top: 0;
	left: 0;
	width: 100vw;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.modal-inner {
	width: calc(100%-48px);
	background-color: white;
	border-radius: 6px;
 	padding: 24px;
	box-sizing: border-box; 
}

.bottom-info .title {
	font-size: 14px;
}

.bottom-info .description {
	margin-top: 45px;
	line-height: 19px;
	font-size: 12px;
}

.bottom-info button {
	padding: 5px 10px;
	position: absolute;
	right: 0px;
	top: 0px;
}

.bottom-info {
	height: 212px;
	position: relative;
}

.overlay {
	width: 100vw;
	height: 100vh;
	position: fixed;
	top: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.7);
}

</style>
</head>
<body>

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
        
        <c:if test="${user_Code == null }">
        <li>
          <a href="javascript:void(0)" onclick="location.href='/login'">
            <i class="fa-solid fa-headset"></i>
            <p>문의</p>
          </a>
        </li>
        </c:if>
		
		<c:if test="${user_Code != null }">
        <li>
          <a href="javascript:void(0)" onclick="location.href='/inquiry/list?user_Code=${user_Code}'">
            <i class="fa-solid fa-headset"></i>
            <p>문의</p>
          </a>
        </li>
        </c:if>
		
		<c:if test="${user_Code == null }">  
        <li>
          <a href="javascript:void(0)" onclick="location.href='/login'">
            <i class="fa-solid fa-book"></i>
            <p>도움말</p>
          </a>
        </li>
        </c:if>
        
        <c:if test="${user_Code != null }">  
        <li>
          <a href="javascript:void(0)" onclick="location.href='/inquiry/list'">
            <i class="fa-solid fa-book"></i>
            <p>도움말</p>
          </a>
        </li>
        </c:if>
        
        <li>
          <a href="javascript:void(0)" onclick="showPopup();">
          	<i class="fa-brands fa-rocketchat"></i>
          	<p>챗봇</p>
          </a>
        </li>
      </ul>
    </div>
    
   <div id="modal">
    <div class="overlay"></div>
    
    <div class="modal-wrapper">
    	<div class="modal-inner">
    		<div class="thumb"></div>
    		<div class="bottom-info">
    			<div class="title">챗봇에게 질문하기</div>
    			<div class="description">
    				Lorem Ipsum is simply dummy text of the
    				printing and typesetting
    				industry. It has been the industry's
    				standard.
    			</div>
    			<button class="closeBtn">Close</button>
    		</div>
    	</div>
    </div>
   </div>
    
  </footer>
</body>

<script type="text/javascript">

	function showPopup() { window.open("/chatbot", "a", "width=600, height=500, left=800, top=100");
		
	}
	
</script>


</html>