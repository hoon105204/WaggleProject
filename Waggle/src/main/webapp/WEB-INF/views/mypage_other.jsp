<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.middle {
	margin: 0;
	padding: 0;
}

.middle-profile {
	margin: 0 auto;
	width: 1125px;
}

.guideline {
	margin: 0 auto;
	width: 1125px;
}

.guideline-all i {
	display: inline-block;
	color: #151515;
}

.guideline-all li {
	display: inline-block;
}

.guideline-all p {
	display: inline-block;
}

.button {
	background: transparent;
	width: 110px;
	border-radius: 10px;
	border: 3px solid;
	margin-left: 40px;
	float: right;
}

.button p {
	font-family: "Roboto";
	text-align: center;
	text-transform: uppercase;
	color: #2e2e2e;
	user-select: none;
	font-size: 15px;
	font-weight: bold;
}

.button:hover {
	cursor: pointer;
}

.description {
	height: 70px;
	background: #ffffff;
	margin: 40px 40px 0 40px;
	border-bottom: solid;
	border-width: 1px;
}

.desc-nav {
	position: relative;
	width: 750px;
}

.desc-list {
	margin: 0;
	padding: 0;
	list-style: none;
}

.desc-list li {
	float: left;
	position: relative;
}

.desc-list li a, .desc-list a:visited {
	display: block;
	padding: 0 20px;
	line-height: 70px;
	background: transparent;
	color: #898989;
	text-decoration: none;
	font-size: 11pt;
	border-bottom: solid;
	border-width: 5px;
}

.desc-list li a:hover, .desc-list li a:visited:hover {
	color: #000000;
}

.desc-content {
	display: -webkit-inline-box;
}

.desc-intro {
	width: 900px;
	height: 300px;
	display: inline-block; background : #ffffff;
	padding: 1em;
	border: 1px solid #d4d7e1;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), 0 5px 10px
		rgba(0, 0, 0, 0.05);
	border-radius: 30px;
	overflow: hidden;
	background: #ffffff;
	margin-top:30px;
}

textarea:focus ~ label, textarea:valid ~ label {
	font-size: 0.75em;
	color: #999;
	top: -5px;
	-webkit-transition: all 0.225s ease;
	transition: all 0.225s ease;
}

textarea {
	border: 1px solid #d4d7e1;
	box-shadow: 0 1px 2px rgb(0 0 0 / 5%), 0 5px 10px rgb(0 0 0 / 5%);
	font-size: 1.5rem;
	background-color: #e9e9e9;
	border-radius: 30px;
	width: 900px;
	height: 300px;
	padding:30px;
}

.styled-input {
	width: 1000px;
	height:350px;
	display:inline-block;
	padding:1em;
	overflow: hidden;
	position: relative;
	margin-top:20px;
	
}

.styled-input label {
	color: #5e5e5e;
	padding: 1.5rem 0 0 3.4rem;
	position: absolute;
	top: 10px;
	left: 0;
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
	pointer-events: none;
}


.desc-content-button {
	float: right;
}

.desc-content-finishlist{
	margin: 0 auto;
	width: 1000px;
	height:900px;
	overflow-y:auto;
	display: none;
	text-align:left;
}

.desc-content-finishlist img{
	width:300px;
	height:300px;
}

#bar_container {
  height: 16px;
  background: #dcdbd7;
  border-radius: 20px;
  border-top: 1px solid #cfcec9;
  border-bottom: 1px solid #f7f6f4;
  box-shadow: 0 -1px 0 #bab9b4;
  margin-bottom: 24px;
  position: relative;
  margin-top: 50px;
}

#progress_bar {
  background-color: #dcf1c6;
  height: 110%;
  position: absolute;
  top: -3px;
  left: 0px;
  border-top: 1px solid #e5ebf4;
  border-radius: 20px;
  box-shadow: 0 3px 10px #717171;
  width: 0%;
  transition: all 3s 0s cubic-bezier(0.83, 0, 0.17, 1);;
}

#progress_percentage {
  position: absolute;
  top: -40px;
  right: -10px;
  width: 40px;
  height: 24px;
  padding-top: 6px;
}

#progress_percentage::before {
  /* used for the border of the arrow */
  content: "";
  position: absolute;
  left: 14px;
  bottom: -11px;
}

#progress_percentage::after {
  /* the actual little arrow in the baloon */
  content: "";
  position: absolute;
  left: 14px;
  bottom: -10px;
}


:root {
  --clr-white: rgb(255, 255, 255);
  --clr-black: rgb(0, 0, 0);
  --clr-light: rgb(245, 248, 255);
  --clr-light-gray: rgb(196, 195, 196);
  --clr-blue: rgb(63, 134, 255);
  --clr-light-blue: rgb(171, 202, 255);
}

/* ???????????? ?????? ?????? */
@keyframes bar-fill {
  0% {
    width: 0;
  }
}
@-webkit-keyframes bar-fill {
  0% {
    width: 0;
  }
}
@-moz-keyframes bar-fill {
  0% {
    width: 0;
  }
}
@-o-keyframes bar-fill {
  0% {
    width: 0;
  }
}
.bar-graph {
  list-style: none;
  margin: 50px 0px auto;
}

.bar-wrap {
  -moz-border-radius: 10px 10px 10px 10px;
  -webkit-border-radius: 10px 10px 10px 10px;
  -ms-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background-color: rgba(149, 149, 149, 0.2);
  margin-bottom: 10px;
  height: 27px;
}

.bar-fill {
  -moz-border-radius: 10px 10px 10px 10px;
  -webkit-border-radius: 10px 10px 10px 10px;
  -ms-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  -moz-animation: bar-fill 1s;
  -webkit-animation: bar-fill 1s;
  -ms-animation: bar-fill 1s;
  animation: bar-fill 1s;
  background-color: #979797;
  display: block;
  height: 27px;
  width: 0px;
}

.bar-graph p {
  text-align:left;
  color: #000000;
  font-family: "Helvetica";
  font-size: 16px;
  font-weight: 100;
  text-transform: uppercase;
}

/* ???????????? ?????? ?????? ??? */
/*???????????? ?????? css */
#bold{
	font-weight:bold;
	color:#fc4f4f;
}

#ratio{
	text-align: center;
	font-size: 18px;
	font-weight: bold;
}

#line{
	width:100%;
	height:50px;
	border-bottom: 1px dashed #898989;
}

#ul-left{
	width:420px;
	padding:0;
	padding-left:20px;	
}

#ul-right{
	width:420px;
	padding:0;
}
/*???????????? ?????? css */


/*????????? ????????? css */

#my-res-list-img {
	display: inline-block;
    vertical-align: top;
    align-self: center;
    padding: 0px 40px 0px 0px;
}
 
#my-res-list-text {
	display:inline-block;
	width: 550px;
    height: 300px;
    padding: 40px 0px 40px 40px;
    border-left: 1px solid #ebebeb;
}
 
#my-res-list-content-all {
	display: flex;
    justify-content: center;
}

#my-res-list-point {
	display: flex;
    justify-content: center;
    align-items: center;
    width: 550px;
    height: 60px;
    border: 1px solid #d3d3d3;
    border-radius: 10px;
}
 
#my-res-list-dl {
	display: flex;
    min-height: 20px;
    padding-top: 20px;
    padding-bottom: 20px;
} 

#my-res-list-dt {
	line-height: 14px;
    font-size: 15px;
    letter-spacing: -.06px;
    letter-spacing: -.33px;
    color: rgba(34,34,34,.5);
}

#my-res-list-dd {
	margin: 4px 0px 0px 0px;
    word-break: break-word;
    line-height: 17px;
    font-size: 15px;
    
}
 
#my-res-list-ltd-box {
	padding: 0 12px;
/* 	padding-left: 0;
	padding-right: 0; */
	flex: 1;
} 

.my-res-list-ltd-detail-box {
	border-left: 1px solid #ebebeb;
}

#my-res-list-dl-dt-dd {
	border-top: 1px solid #ebebeb;
	border-bottom: 1px solid #ebebeb;
}

#my-res-list-ltd-title {
	line-height: 22px;
    padding: 21px 0 12px;
    font-size: 18px;
    letter-spacing: -.15px;
    margin: 0;
}
 
#my-res-list-stat {
	display: inline-block;
	padding-top: 1px;
    margin-bottom: 9px;
    font-size: 18px;
}
 
#res-stat {
	font-weight: 800;
    border-bottom: 2px solid #222;
}
 
#my-res-list-title {
	margin-bottom: 6px;
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 400;
}
/* ????????? ????????? css ??? */
</style>


</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body>
	<div id="wrap" style="min-height:140vh">
		<div class="middle">
			<div class="guideline">
				<ul class="guideline-all">
					<li><a href="javascript:void(0)"> <i
							class="fa-solid fa-house"></i>
					</a></li>
					<p>${dto.user_Nm} ?????? ???????????????</p>
				</ul>
			</div>
			<div class="middle-profile">
				<div class="profile" style="text-align: center; display: flex; justify-content: center;">
					
					<div class="profile-left" style="display: inline-block">
						<c:if test = "${dto.user_Pro == 0}">
						<img src="/images/importToJsp/profile_default.jpg"
							style="width: 200px; height: 200px">
						</c:if>
						<c:if test = "${dto.user_Pro != 0 }">
						<img src="${Pro_fi_Nm }" style="width:200px; height: 200px; border-radius:100px">
						</c:if>
						<div style="font-weight: bold; font-size: 20pt">${dto.user_Point } P</div>
					</div>
					
					<div class="profile-right"
						style="display: inline-block; margin-left: 80px; text-align: left">
						<div>
							<span
								style="font-size: 20pt; margin-bottom: 20px; font-weight: bold">${dto.user_Nm}
								???</span>
						</div>
						<div style="font-size: 14pt">??????: ${dto.user_Age}</div>
						<c:if test="${dto.user_Gender == 'M'}">
						<div style="font-size: 14pt; margin-bottom: 60px">??????: ???</div>
						</c:if>
						<c:if test="${dto.user_Gender == 'F'}">
						<div style="font-size: 14pt; margin-bottom: 60px">??????: ???</div>
						</c:if>
						<div style="font-size: 14pt; font-weight: bold">${dto.user_Nm}??? ??? ?????????: ${dto.user_Grade}</div>
							<div id="bar_container">
								<div id="progress_bar">
									<div id="progress_percentage" data-percentage="10">
										<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
											width="100%" height="100%"
											viewBox="0 0 1280.000000 1416.000000"
											preserveAspectRatio="xMidYMid meet">
         								 	 <g
												transform="translate(0.000000,1216.000000) scale(0.100000,-0.100000)"
												fill="#000000" stroke="none">
             								 <path
												d="M8320 12153 c-440 -44 -844 -292 -1102 -677 -348 -520 -382 -1212
													-87 -1765 64 -119 111 -188 205 -301 40 -49 68 -87 61 -85 -40 15 -1156 307
													-1172 307 -26 0 -1866 -499 -1876 -509 -4 -4 -170 -368 -369 -808 -383 -849
													-378 -839 -611 -1251 -82 -147 -147 -270 -142 -274 8 -8 674 -163 678 -158 1
													2 295 355 654 786 358 430 658 782 666 782 24 0 469 -112 478 -120 5 -4 -12
													-101 -37 -216 -62 -289 -376 -1739 -437 -2019 -27 -126 -59 -270 -69 -320 -10
													-49 -62 -288 -115 -530 -52 -242 -95 -449 -95 -460 0 -14 -320 -322 -1045
													-1005 -575 -542 -1050 -984 -1055 -983 -5 2 -507 372 -1114 823 l-1105 819
													-316 -155 -315 -156 108 -209 107 -209 645 -843 c355 -464 822 -1075 1039
													-1359 l394 -515 176 72 c97 40 374 153 616 253 242 99 1050 430 1795 735
													l1355 555 1005 261 c553 144 1011 264 1018 266 15 6 -13 73 261 -620 864
													-2188 863 -2185 876 -2185 7 0 149 -18 316 -40 168 -22 306 -35 309 -30 3 5
													32 190 65 411 l59 402 -258 1681 c-142 924 -261 1684 -264 1687 -6 6 -883 160
													-2022 357 -179 30 -326 56 -328 58 -3 1 65 182 465 1244 63 168 207 550 320
													850 112 300 208 549 212 553 7 7 405 -149 1893 -740 274 -109 371 -143 380
													-135 7 6 416 550 908 1210 l895 1199 165 88 c91 49 166 89 168 90 5 4 120 590
													117 596 -2 3 -119 59 -259 124 -234 108 -257 117 -273 103 -10 -8 -518 -425
													-1130 -925 l-1111 -911 -702 468 -701 467 92 17 c399 73 752 309 988 661 135
													201 226 433 267 680 26 156 24 419 -4 577 -129 714 -666 1246 -1342 1328 -80
													9 -222 11 -300 3z" />
								            </g>
								        </svg>
									</div>
								</div>
							</div>
						<c:if test="${dto.co_Confirm == NULL }">
						<div>
							<span style="font-size: 11pt; color: #898989">??????????????? ????????????: X</span>
						</div>
						</c:if>
						<c:if test="${dto.co_Confirm == '?????????' }">
						<div>
							<span style="font-size: 11pt; color: #898989">??????????????? ????????????: O</span>
							<span style="font-size: 11pt; color: #2d7eac; margin-left: 5px">?????? ?????????</span>
						</div>
						</c:if>
						<c:if test="${dto.co_Confirm == '??????' }">
						<div>
							<span style="font-size: 11pt; color: #898989">${dto.user_Nm}??? ?????? ????????? ????????????????????????.</span>
						</div>
						</c:if>
						<c:if test="${dto.co_Confirm == '??????' }">
						<div>
							<span style="font-size: 11pt; color: #898989">${dto.user_Nm}?????? ????????? ????????? ???????????? ?????????????????????.</span>
						</div>
						</c:if>
						<c:if test="${dto.co_Confirm == '?????????' }">
						<div>
							<span style="font-size: 11pt; color: #898989">${dto.user_Nm}?????? ????????? ????????? ???????????? ??????????????????.</span>
						</div>
						</c:if>
					</div>
				</div>
				<div class="profile-bottom">
						<div class="button" onclick="location.href='/chat/create?room_UCode1=${user_Code}&room_UCode2=${param.ucode}'">
							<a><p style="margin:5px">????????????</p></a>
						</div>
					</div>
				<div class="description" style="text-align: center">
					<div class="desc-nav">
						<ul class="desc-list">
							<li><a href="#!" onclick="showDescMe();"
								style="color: #000000" class="desc-list1">????????????</a></li>
							<li><a href="#!" onclick="showFinishlist();"
								class="desc-list2">????????? ?????????</a></li>
							<li><a href="#!" onclick="showUsage();" class="desc-list3">?????? ??????</a></li>
						</ul>
					</div>
					<div class="desc-content-aboutme">
						<div class="desc-content">
							<c:if test="${ dto.user_Intro == null}">
								<div class="desc-intro" data-behaviour="search-on-list" style="text-align:initial">
									<span class="counter"	data-search-on-list="counter">
										${dto.user_Nm} ?????? ????????? ??????????????? ????????????.
									</span>
								</div>
							</c:if>
							<c:if test="${ dto.user_Intro != null}">
								<div class="desc-intro" data-behaviour="search-on-list" style="text-align:initial">
									<span class="counter"	data-search-on-list="counter">
										${dto.user_Intro}
									</span>
								</div>
							</c:if>
						</div>
					</div>
					<div></div>
					<div class="desc-content-finishlist">
					</div>
					<div class="desc-usage" style="margin: 0 auto; width: 900px; padding-top: 60px; display: none">
						<div class="usage-left" style="width:420px; display:inline-block; float: right; padding-top:15px">
							<ul class="bar-graph" id="ul-left">
								<li>
									<p style="font-size:20pt; font-weight:bold"><??????></p>
									<p style="font-size:16pt; font-weight:bold; color:#5a76ff">[?????? ??????] ?????? ???????????? ??????</p>
									<p>${dto.user_Nm} ?????? <span id="bold">???????????? ??????</span>??? ?????? ??? ?????? : ${resTotal } ???<p>
									<p>${dto.user_Nm} ?????? ?????? <span id="bold">?????????</span>??? ?????? ?????? : ${resTotal-resFinish } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">????????????</span>??? ?????? ?????? : ${resFinish } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">????????????</span>??? ?????? ?????? : ${resCancel } ???<p>
									<br>
									<p id="ratio">?????? ?????? ??? ${resTotal }??? ??? ???????????? ${resFinish}???</p>
									<div class="bar-wrap">
										<span class="bar-fill" style="width:${ratio2}%;">${ratio2 }%</span>
									</div>
								</li>
							</ul>
							<div id="line" style="margin-left:20px"></div>
							<ul class="bar-graph" id="ul-left">
								<li>
									<p style="font-size:16pt; font-weight:bold; color:#5a76ff">[?????? 3??????] ?????? ???????????? ??????</p>
									<p>${dto.user_Nm} ?????? <span id="bold">???????????? ??????</span>??? ?????? ??? ?????? : ${resTotal3M } ???<p>
									<p>${dto.user_Nm} ?????? ?????? <span id="bold">?????????</span>??? ?????? ?????? : ${resTotal3M-resFinish3M } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">????????????</span>??? ?????? ?????? : ${resFinish3M } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">????????????</span>??? ?????? ?????? : ${resCancel3M } ???<p>
									<br>
									<p id="ratio">?????? ?????? ??? ${resTotal3M }??? ??? ???????????? ${resFinish3M}???</p>
									<div class="bar-wrap">
										<span class="bar-fill" style="width:${ratio2_3M}%;">${ratio2_3M }%</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="usage-right" style="width: 420px; display: inline-block; border-right: 1px dashed #898989; padding-right:35px">
							<ul class="bar-graph" id="ul-right">
								<li>
									<p style="font-size:20pt; font-weight:bold"><?????????></p>
									<p style="font-size:16pt; font-weight:bold; color:#5a76ff">[?????? ??????] ?????? ?????? ???????????? ?????? ??????</p>
									<p>${dto.user_Nm} ?????? <span id="bold">???????????? ??????</span>??? ????????? ??? ?????? : ${reqTotal } ???<p>
									<p>${dto.user_Nm} ?????? ?????? <span id="bold">?????????</span>??? ????????? ?????? : ${reqTotal - reqFinish } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">?????? ?????? ??????</span>??? ????????? : ${reqFinish } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">????????????</span>??? ????????? ?????? : ${reqCancel } ???<p>
									<br>
									<p id="ratio">????????? ??? ${reqTotal }??? ??? ???????????? ${reqFinish }??? ??????</p>
									<div class="bar-wrap">
										<span class="bar-fill" style="width: ${ratio}%;">${ratio }%</span>
									</div>
								</li>
							</ul>
							<div id="line"></div>
							<ul class="bar-graph" id="ul-right">
								<li>
									<p style="font-size:16pt; font-weight:bold; color:#5a76ff">[?????? 3??????] ?????? ?????? ???????????? ?????? ??????</p>
									<p>${dto.user_Nm} ?????? <span id="bold">???????????? ??????</span>??? ????????? ??? ?????? : ${reqTotal3M } ???<p>
									<p>${dto.user_Nm} ?????? ?????? <span id="bold">?????????</span>??? ????????? ?????? : ${reqTotal3M - reqFinish3M } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">?????? ?????? ??????</span>??? ????????? : ${reqFinish3M } ???<p>
									<p>${dto.user_Nm} ?????? ???????????? <span id="bold">????????????</span>??? ????????? ?????? : ${reqCancel3M } ???<p>
									<br>
									<p id="ratio">????????? ??? ${reqTotal3M }??? ??? ???????????? ${reqFinish3M }??? ??????</p>
									<div class="bar-wrap">
										<span class="bar-fill" style="width: ${ratio3M}%;">${ratio3M }%</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	//???????????? ?????????
	function showDescMe() {
		$(".desc-content-aboutme").show();
		$(".desc-usage").hide();
		$(".desc-content-finishlist").hide();
		$(".desc-list1").css("color", "#000000");
		$(".desc-list2").css("color", "#898989");

	}

	//???????????? ?????????
	function showUsage() {
		$(".desc-content-aboutme").hide();
		$(".desc-usage").show();
		$(".desc-content-finishlist").hide();
		$(".desc-list1").css("color", "#898989");
		$(".desc-list2").css("color", "#898989");
		$(".desc-list3").css("color", "#000000");

	}
	
	//????????? ????????? ?????????
	function showFinishlist() {
		$(".desc-content-aboutme").hide();
		$(".desc-usage").hide();
		$(".desc-content-finishlist").show();
		$(".desc-list1").css("color", "#898989");
		$(".desc-list2").css("color", "#000000");
		
		let stat = "??????"
		let ucode = ${dto.user_Code};
		let data = {stat : stat, ucode : ucode};
		
		$.ajax({
			type: "post",
			url: "/mypage/reqroom",
			data : data,
			success : function(result){
				$(".desc-content-finishlist").empty();
				if(result.length == 0){
					$(".desc-content-finishlist").append('<div style="width:900px;height:300px;padding-top:130px">????????? ??????????????? ????????????.</div>');
				}else{
					for(let i=0; i<result.length; i++){
						$(".desc-content-finishlist").append('<div class="my-res-list-content-all" id="my-res-list-content-all">'
													+'<div class="my-res-list-content-inner" id="my-res-list-img" onclick="location.href=\'/board/detail?req_No='+result[i].req_No+'\'">'
													+(result[i].fi_Nm != null? "<img src='+result[i].fi_Nm+'>":'<img src="/images/importToJsp/homeimg.png">')
													+'</div>'
													+'<div id="my-res-list-text">'
													+'<div class="my-res-list-content-inner" id="my-res-list-stat" onclick="location.href=\'/board/detail?req_No='+result[i].req_No+'\'">'
													+'<label id="res-stat">'+result[i].req_Stat+'</label></div>'
													+'<div class="my-res-list-content-inner" id="my-res-list-title"	onclick="location.href=\'/board/detail?req_No='+result[i].req_No+'\'">'+result[i].req_Title+'</div>'
													+'<div class="my-res-list-content-inner" id="my-res-list-point"	onclick="location.href=\'/board/detail?req_No='+result[i].req_No+'\'">'+result[i].req_Point+'&nbsp; <i class="fa-solid fa-p"> </i></div>'
													+'<h4 class="my-res-list-content-inner" id="my-res-list-ltd-title" onclick="location.href=\'/board/detail?req_No='+result[i].req_No+'\'">?????? ??????</h4>'
													+'<div class="my-res-list-content-inner" id="my-res-list-dl-dt-dd" onclick="location.href=\'/board/detail?req_No='+result[i].req_No+'\'">'
													+'<dl id="my-res-list-dl">'
													+'<div id="my-res-list-ltd-box">'
														+'<dt id="my-res-list-dt">????????????</dt>'
														+'<dd id="my-res-list-dd">'+result[i].home_Addr+'</dd>'
														+'</div>'
														+'<div id="my-res-list-ltd-box" class="my-res-list-ltd-detail-box">'
														+'<dt id="my-res-list-dt">????????????</dt>'
														+'<dd id="my-res-list-dd">'+result[i].req_EDate+'</dd>'
														+'</div></dl></div></div></div>');
					}
				}
			},
			error: function(){
				console.log("??????????????? ajax ??????");
			}
		})

	}
	
	//??????????????? ?????? ????????? ?????? ?????????
	function showProof(){
		$(".desc-content-aboutme").hide();
		$(".desc-content-finishlist").hide();
		$(".upload-area").show();
		$(".desc-list1").css("color", "#898989");
		$(".desc-list2").css("color", "#898989");
		
	}
	//?????? ??? ??? ????????? ??????
	window.addEventListener("load", () => {
		  $("#progress_bar").css({
		    width: ${user_Grade}+"%"
		  });
		  
		  if(${user_Grade}>=0 && ${user_Grade}<=29){
			  $('#progress_bar').css('background-image','linear-gradient(to bottom, #7a3950 0%, #370617 100%)');
		  }else if(${user_Grade}>=30 && ${user_Grade}<=45){
			  $('#progress_bar').css('background-image','linear-gradient(to bottom, #e16b6f 0%, #9d0208 100%)');
		  }else if(${user_Grade}>=46 && ${user_Grade}<=60){
			  $('#progress_bar').css('background-image','linear-gradient(to bottom, #ffc57b 0%, #f48c06 100%)');
		  }else{
			  $('#progress_bar').css('background-image','linear-gradient(to bottom, #ffdd86 0%, #ffba08 100%)');
		  }
		  
		  function animateValue(obj, start, end, duration) {
		    let startTimestamp = null;
		    const step = (timestamp) => {
		      if (!startTimestamp) startTimestamp = timestamp;
		      const progress = Math.min((timestamp - startTimestamp) / duration, 1);
		      obj.innerHTML = Math.floor(progress * (end - start) + start);
		      if (progress < 1) {
		        window.requestAnimationFrame(step);
		      }
		    };
		    window.requestAnimationFrame(step);
		  }

		  const obj = document.getElementById("point_counter");
		  animateValue(obj, 0, 12345, 3000);
		});

	// ??????????????? ?????? ????????? ?????? ??????
	// Select Upload-Area
	const uploadArea = document.querySelector('#uploadArea')

	// Select Drop-Zoon Area
	const dropZoon = document.querySelector('#dropZoon');

	// Loading Text
	const loadingText = document.querySelector('#loadingText');

	// Slect File Input 
	const fileInput = document.querySelector('#fileInput');

	// Select Preview Image
	const previewImage = document.querySelector('#previewImage');

	// File-Details Area
	const fileDetails = document.querySelector('#fileDetails');

	// Uploaded File
	const uploadedFile = document.querySelector('#uploadedFile');

	// Uploaded File Info
	const uploadedFileInfo = document.querySelector('#uploadedFileInfo');

	// Uploaded File  Name
	const uploadedFileName = document.querySelector('.uploaded-file__name');

	// Uploaded File Icon
	const uploadedFileIconText = document.querySelector('.uploaded-file__icon-text');

	// Uploaded File Counter
	const uploadedFileCounter = document.querySelector('.uploaded-file__counter');

	// ToolTip Data
	const toolTipData = document.querySelector('.upload-area__tooltip-data');

	// Images Types
	const imagesTypes = [
	  "jpeg",
	  "png",
	  "svg",
	  "gif"
	];

	// Append Images Types Array Inisde Tooltip Data
	toolTipData.innerHTML = [...imagesTypes].join(', .');

	// When (drop-zoon) has (dragover) Event 
	dropZoon.addEventListener('dragover', function (event) {
	  // Prevent Default Behavior 
	  event.preventDefault();

	  // Add Class (drop-zoon--over) On (drop-zoon)
	  dropZoon.classList.add('drop-zoon--over');
	});

	// When (drop-zoon) has (dragleave) Event 
	dropZoon.addEventListener('dragleave', function (event) {
	  // Remove Class (drop-zoon--over) from (drop-zoon)
	  dropZoon.classList.remove('drop-zoon--over');
	});

	// When (drop-zoon) has (drop) Event 
	dropZoon.addEventListener('drop', function (event) {
	  // Prevent Default Behavior 
	  event.preventDefault();

	  // Remove Class (drop-zoon--over) from (drop-zoon)
	  dropZoon.classList.remove('drop-zoon--over');

	  // Select The Dropped File
	  const file = event.dataTransfer.files[0];

	  // Call Function uploadFile(), And Send To Her The Dropped File :)
	  uploadFile(file);
	});

	// When (drop-zoon) has (click) Event 
	dropZoon.addEventListener('click', function (event) {
	  // Click The (fileInput)
	  fileInput.click();
	});

	// When (fileInput) has (change) Event 
	fileInput.addEventListener('change', function (event) {
	  // Select The Chosen File
	  const file = event.target.files[0];

	  // Call Function uploadFile(), And Send To Her The Chosen File :)
	  uploadFile(file);
	});

	// Upload File Function
	function uploadFile(file) {
	  // FileReader()
	  const fileReader = new FileReader();
	  // File Type 
	  const fileType = file.type;
	  // File Size 
	  const fileSize = file.size;

	  // If File Is Passed from the (File Validation) Function
	  if (fileValidate(fileType, fileSize)) {
	    // Add Class (drop-zoon--Uploaded) on (drop-zoon)
	    dropZoon.classList.add('drop-zoon--Uploaded');

	    // Show Loading-text
	    loadingText.style.display = "block";
	    // Hide Preview Image
	    previewImage.style.display = 'none';

	    // Remove Class (uploaded-file--open) From (uploadedFile)
	    uploadedFile.classList.remove('uploaded-file--open');
	    // Remove Class (uploaded-file__info--active) from (uploadedFileInfo)
	    uploadedFileInfo.classList.remove('uploaded-file__info--active');

	    // After File Reader Loaded 
	    fileReader.addEventListener('load', function () {
	      // After Half Second 
	      setTimeout(function () {
	        // Add Class (upload-area--open) On (uploadArea)
	        uploadArea.classList.add('upload-area--open');

	        // Hide Loading-text (please-wait) Element
	        loadingText.style.display = "none";
	        // Show Preview Image
	        previewImage.style.display = 'block';

	        // Add Class (file-details--open) On (fileDetails)
	        fileDetails.classList.add('file-details--open');
	        // Add Class (uploaded-file--open) On (uploadedFile)
	        uploadedFile.classList.add('uploaded-file--open');
	        // Add Class (uploaded-file__info--active) On (uploadedFileInfo)
	        uploadedFileInfo.classList.add('uploaded-file__info--active');
	      }, 500); // 0.5s

	      // Add The (fileReader) Result Inside (previewImage) Source
	      previewImage.setAttribute('src', fileReader.result);

	      // Add File Name Inside Uploaded File Name
	      uploadedFileName.innerHTML = file.name;

	      // Call Function progressMove();
	      progressMove();
	    });

	    // Read (file) As Data Url 
	    fileReader.readAsDataURL(file);
	  } else { // Else

	    this; // (this) Represent The fileValidate(fileType, fileSize) Function

	  };
	};

	// Progress Counter Increase Function
	function progressMove() {
	  // Counter Start
	  let counter = 0;

	  // After 600ms 
	  setTimeout(() => {
	    // Every 100ms
	    let counterIncrease = setInterval(() => {
	      // If (counter) is equle 100 
	      if (counter === 100) {
	        // Stop (Counter Increase)
	        clearInterval(counterIncrease);
	      } else { // Else
	        // plus 10 on counter
	        counter = counter + 10;
	        // add (counter) vlaue inisde (uploadedFileCounter)
	        uploadedFileCounter.innerHTML = `${counter}%`
	      }
	    }, 100);
	  }, 600);
	};


	// Simple File Validate Function
	function fileValidate(fileType, fileSize) {
	  // File Type Validation
	  let isImage = imagesTypes.filter((type) => fileType.indexOf(`image/${type}`) !== -1);

	  // If The Uploaded File Type Is 'jpeg'
	  if (isImage[0] === 'jpeg') {
	    // Add Inisde (uploadedFileIconText) The (jpg) Value
	    uploadedFileIconText.innerHTML = 'jpg';
	  } else { // else
	    // Add Inisde (uploadedFileIconText) The Uploaded File Type 
	    uploadedFileIconText.innerHTML = isImage[0];
	  };

	  // If The Uploaded File Is An Image
	  if (isImage.length !== 0) {
	    // Check, If File Size Is 2MB or Less
	    if (fileSize <= 2000000) { // 2MB :)
	      return true;
	    } else { // Else File Size
	      return alert('Please Your File Should be 2 Megabytes or Less');
	    };
	  } else { // Else File Type 
	    return alert('Please make sure to upload An Image File Type');
	  };
	};
	// ??????????????? ?????? ????????? ?????? ???
	
	
	//?????????????????? ?????? ?????? ??????
	$('#desc-edit').on("click", function(){
		$('.desc-intro').hide();
		$('#desc-edit').hide();
		$('#desc-edit-input').show();
		$('#desc-edit-finish').show();
		$('#desc-edit-cancel').show();
	})
	
	$('#desc-edit-cancel').on("click", function(){
		location.reload();
	})
	
</script>

</html>