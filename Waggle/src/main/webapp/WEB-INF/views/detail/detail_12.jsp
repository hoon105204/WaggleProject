<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Waggle 요청글</title>
<link rel="icon" href="/images/importToJsp/favicon.png">
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">

.middle {
   margin: 0;
   padding: 0;
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
	font-size: 15px;
}

.ongoing21-user-name {
	display: flex;
    font-weight:bold;
    font-size:20pt;
    margin-right:auto;
}


 #ongoing-detail {
	text-align: center;
}


.ongoing21-content {
	display:flex;
  	align-items: center;
  	justify-content: center;
    padding: 25px;
    border-spacing: 50px;
    font-size: 16px;
}

/* #yellow {
	color: #f48c06;
} */

#incontent {
	outline: none;
    resize: none;
    border-radius: 5px;
	box-shadow: rgba(67, 71, 85, 0.27) 0px 0px 0.25em, rgba(90, 125, 188, 0.05) 0px 0.25em 1em;
}

#userrealname {
	font-weight: bold;
}

#userrealname:hover{
	cursor:pointer;
	color:#898989;
}

#w-date {
	display: flex;
    font-weight: bold;
    margin:0;
    color:#868e96;
}

button {
 font-weight: 600;
 color: #fff;
 background-color: #222;
 border-radius: 12px;
 border: none;
 font-size: 13px;
 font-family: inherit;
 letter-spacing: .14px;
 line-height: normal;
 padding: 11px 11px;
 cursor: pointer;
}

button:active {
 outline: none;
 border: none;
 background-color: #353535;
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

.ongoing21-top {
	display: flex;
    justify-content: center;
    align-items: center;
    padding: 35px 0px 50px 0px;
}

#ongoing21-img img {
	width: 400px;
    height: 400px;
	object-fit: cover;
	border-radius: 8px;
}

.imp {
	border: 1px solid rgb(221, 221, 221);
    border-radius: 12px;
    padding: 24px;
    box-shadow: rgb(0 0 0 / 12%) 0px 6px 16px;
    width: 345px;
    height: 315px;
    /* margin: 0px 30px 0px 30px; */
   	position: relative;
   	top: 40px;
}

.imp-line {
	border: 1px solid rgb(221, 221, 221);
    border-radius: 8px;
}

.imp-box {
	display: flex;
}

#title1 {
	flex: 1 1 0%;
	font-size: 14px;
	padding: 15px;
	border-right: 1px solid rgb(221, 221, 221);	
}

#title2  {
	flex: 1 1 0%;
	font-size: 14px;
	padding: 15px;
}

.imp-title {
	font-size: 13px;
}

.imp-title-content {
	font-size: 15px;
	white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}

#imp-text-center1 {
	text-align: center;
	border-top: 1px solid rgb(221, 221, 221);
	border-bottom: 1px solid rgb(221, 221, 221);
	padding: 15px;
}

#imp-text-center2 {
	text-align: center;
	padding: 15px;
}

.b-line {
	border-top-width: 1px;
    border-top-style: solid;
    border-top-color: rgb(245, 245, 245);
}

.ongoing21-middle {
	max-width: 1120px;
    text-align: center;
    display: flex;
    flex-direction: column;
    margin: 0 auto;
    letter-spacing: .25px;
    -webkit-box-flex: 1;
    flex-grow: 1;
    padding-top: 40px;
}

.imp-flex {
	flex: 0 0 auto;
    width: 400px;
    position: relative;
}

.ongoing21-flex {
    padding: 0px 80px 0px 30px;
    width:50%;
}

#flex-please {
	height: auto;
}

#flex-please {
	width: 1200px;
    height: 100%;
    margin: 0px auto;
    padding: 0px 10px;
    display: flex;
    justify-content:center;
}


.fix {
	position:fixed;
	z-index:100;
}

#user-profile-reply {
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding: 16px 0px;
}

.middle-content {
	display: flex;
	padding: 30px 0px;
	align-items: center;
}

.middle-tcontent {
	padding-left: 20px;
	color: #000000;
	text-decoration: none;
	word-break: break-all;
}

.middle-tcontent:visited {
	padding-left: 20px;
	color: #000000;
	text-decoration: none;
}

.middle-title {
	width: 160px;
    font-size: 16px;
    line-height: 26px;
    font-weight: 700;
}

.imp-bold-title {
	font-weight: bold;
}

.detail-point {
	padding: 30px 0px;
	text-align: right; 
	width: 750px; 
	font-size: 16pt;
}

.detail-end {
	display: flex;
    flex-direction: column;
    align-items: center;
    padding: 16px 0px;
}


.h3-font {
	font-size: 20px;
	margin: 0px 0px 25px 0px;
}


</style>
<body>
<<<<<<< HEAD
	<%@ include file="../header.jsp"%>
	<div id="wrap">
		<div class="middle">
			<div class="guideline">
				<ul class="guideline-all">
					<li><a href="javascript:void(0)"> <i
							class="fa-solid fa-house"></i>
					</a>
						<p>HOME > 요청 상세페이지</p></li>
				</ul>
			</div>
=======
	<%@ include file="../header.jsp" %>
	 <div id="wrap">
	  <div class="middle">
		<div class="guideline">
			<ul class="guideline-all">
        		<li><a href="javascript:void(0)">
        		<i class="fa-solid fa-house"></i>
        		</a>
        		<p>HOME > 꿀단지목록 > 요청글</p>
        		</li>	
        	</ul>
>>>>>>> 3b8de4d0ec3be9d3a3d477fcb6436b80bfdcc296
		</div>

		<div class="ongoing21-all">
			<h2 id="ongoing-detail">${req_dto.req_Title }(${req_dto.req_Stat })</h2>
			
			<div class="ongoing21-middle-bottom">
				<div class="ongoing21-top">
					<input type="hidden" name="req_dto.req_No"
						value="${req_dto.req_No }">

					<div class="ongoing21-content">
						<c:if test="${req_dto.fi_Nm == null }">
							<div id="ongoing21-img">
								<img src="/images/importToJsp/detail_default_img.png">
							</div>
						</c:if>
						<c:if test="${req_dto.fi_Nm != null}">
							<div id="ongoing21-img">
								<img src=${req_dto.fi_Nm }>
							</div>
						</c:if>
					</div>
				</div>
				
				<div class="userinfo-left"
					style="width: 80px; height: 80px; display: inline-block; margin-left: 70px; margin-right: 10px">
					<img src="/images/importToJsp/profile_default.jpg"
						style="width: 80px; height: 80px; border-radius: 50%; border: 1px solid #f7f9fa;" />
				</div>
				<div class="userinfo-right" style="display: inline-block;">
					<div class="ongoing21-user-name">
						 <span
							id="userrealname"
							onclick="window.open('/mypage/other?ucode=${user_dto.user_Code}')">${user_dto.user_Nm}</span>
					</div>
					<fmt:parseDate value="${req_dto.req_WDate }"
						pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
					<p id="w-date">
						작성일
						<fmt:formatDate value="${parsedDateTime }" pattern="yyyy-MM-dd" />
					</p>
				</div>
				
				<div style="border-bottom: 1px solid"></div>
				<div id="flex-please">
					<div class="ongoing21-flex">
						<div class="ongoing21-middle">

							<h3 class="h3-font">${user_dto.user_Nm}님이요청하신내용입니다.</h3>

							<div class="middle-content">
								<div class="middle-title">
									내가 본 집 링크 첨부<br />(ex.직방, 다방 등등..)
								</div>
								<a class="middle-tcontent" id="link" href="" target="_blank">${req_dto.req_Link }</a>
							</div>
							<div class="b-line"></div>
							<div class="middle-content">
								<div class="middle-title">방문기한</div>
								<div class="middle-tcontent">${req_dto.req_EDate }</div>
							</div>
							<div class="b-line"></div>
							<div class="middle-content">
								<div class="middle-title">내가 본 집 주소</div>
								<div class="middle-tcontent">${req_dto.home_Addr }</div>
							</div>
							<div class="b-line"></div>
							<div class="middle-content">
								<div class="middle-title">상세주소</div>
								<div class="middle-tcontent">${req_dto.home_DAddr }</div>
							</div>
							<div class="b-line"></div>
							<div class="middle-content">
								<div class="middle-title">공인중개사 연락처</div>
								<div class="middle-tcontent">${req_dto.req_Phone }</div>
							</div>
							<div class="b-line"></div>
							<div class="middle-content">
								<div class="middle-title">자세하게 봐야 될 부분</div>
								<div class="middle-tcontent">${req_dto.req_Detail }</div>
							</div>
						</div>

					</div>
					<div class="imp-flex">
						<div class="imp-all" style="position: static;">
							<div class="imp">
								<h3>요약 정보</h3>
								<div class="imp-line">
									<div class="imp-box">
										<div class="imp-title" id="title1">
											<div class="imp-bold-title">방문기한</div>
											<div class="imp-title-content">${req_dto.req_EDate }</div>
										</div>
										<div class="imp-title" id="title2">
											<div class="imp-bold-title">요청 매물과 나와의 거리</div>
											<div class="imp-title-content"></div>
										</div>
									</div>


									<div class="imp-title" id="imp-text-center1">
										<div class="imp-bold-title">포인트 비용</div>
										<div class="imp-title-content" id="imp-content-other1">${req_dto.req_Point }P</div>
									</div>

									<div class="imp-title" id="imp-text-center2">
										<div class="imp-bold-title">자세하게 봐야 될 부분</div>
										<div class="imp-title-content" id="imp-content-other2">${req_dto.req_Detail }</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="detail-end">
				<div class="detail-point">
					<b>포인트 비용 : ${req_dto.req_Point }P</b>
				</div>
				<div class="btn2" id="btn2">

					<button type="button" value="요청취소"
						onclick="location.href='/board/cancel?req_No=${req_dto.req_No}'"
						style="width: 170px; margin-right: 100px;">요청 취소하기</button>

					<button type="button" value="수정하기"
						onclick="location.href='/board/updateform?req_No=${req_dto.req_No }'"
						style="width: 170px; margin-right: 100px;">수정하기</button>

					<button type="button" value="목록"
						onclick="location.href='/board/list'" style="width: 170px;">목록으로
						돌아가기</button>
				</div>
			</div>
		</div>
	</div>

	<!--    
	   <div class="ongoing21-all">
	    <h3 id="ongoing-detail">요청 상세 페이지(${req_dto.req_Stat })</h3>
	     <p id="w-date">요청날짜 : 
	     	<fmt:parseDate value="${req_dto.req_WDate }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
	     	<fmt:formatDate value="${parsedDateTime }" pattern="yyyy-MM-dd"/>
     	</p>
	    <div class="ongoing21-user-name">
	     <p id="username">작성자</p>&nbsp;
	      <p id="userrealname" onclick="window.open('/mypage/other?ucode=${user_dto.user_Code}')">${user_dto.user_Nm}</p>
	       </div>
	    <div class="ongoing21-all">
	   <input type="hidden" name="req_dto.req_No" value="${req_dto.req_No }">
	    <table class="ongoing21-content">
	     <tbody style="border-bottom: 1px solid;">
	      <tr>
	       <th>제목</th>
	       <td>${req_dto.req_Title }</td>
	      </tr>
	      <tr>
	       <th>내가 본 집 링크 첨부<br/>(ex.직방, 다방 등등..)</th>
	       <td><a style="color: #f48c06;" id="link" href="" target="_blank">${req_dto.req_Link }</a></td>

	      </tr>
	      <tr>
	       <th>방문기한</th>
	       <td id="yellow">${req_dto.req_EDate }</td>
	      </tr>
	      <tr>
	       <th>내가 본 집 주소</th>
	       <td id="yellow">${req_dto.home_Addr }</td>
	      </tr>
	      <tr>
	       <th>상세주소</th>
	       <td>${req_dto.home_DAddr }</td>
	      </tr>
	      <tr id="phone-number">
	       <th>공인중개사 연락처</th>	
	       <td>${req_dto.req_Phone }</td>
	      </tr>
	      </tbody>
	     </table>
	     <div class="ongoing21-content-bottom" style="width: 900px; margin: 0 auto;">
	       <h4>자세하게 봐야 될 부분</h4>
	       <textarea id="incontent" rows="14" cols="80" name="content" placeholder="요구사항을 입력해주세요" readonly="readonly">${req_dto.req_Detail }</textarea>
	       <br/><br/><br/>
	       <div style="text-align: right; width: 750px; font-size: 16pt;"><b>심부름 비용: ${req_dto.req_Point }원</b> </div>
	       <br>
	     <div class="btn2" id="btn2">
	     
	     <c:if test="${user_Code == vo_UCode && vo_Block != true }">
	     <button type="button"  onclick="location.href='/vol/cancel?vo_UCode=${user_Code}&vo_No=${req_dto.req_No }'" style="width: 200px; margin-right: 100px;">지원취소</button>
	     </c:if>
	     <c:if test="${user_Code != vo_UCode  }">
	      <button type="button"  onclick="location.href='/vol/submit?vo_UCode=${user_Code}&vo_No=${req_dto.req_No }'" style="width: 200px; margin-right: 100px;">지원하기</button>
	       </c:if>
	      <button type="button" value="목록" onclick="location.href='/board/list'" style="width: 200px;">목록으로 돌아가기</button>
	     </div>
	     </div>
	    </div>
	   </div>
	 </div>
	 -->
<%@ include file="../footer.jsp"%>
<script type="text/javascript">
//내가본 집 링크 연결
let link = $("#link").text();
if (link.includes("https://")) {
	$("#link").attr('href',link);
} else {
	$("#link").attr('href',"https://"+link);			
}

 
   $(window).scroll(  function() {
	 var nVScroll = document.documentElement.scrollTop || document.body.scrollTop;
	 var currentPosition = parseInt($(".imp").css("top")); 
	 
	 if(nVScroll > 750) {
		 $(".imp").css("position", "fixed").css("top", "135" + "px")
	} 
	else {
		$(".imp").css("position", "absolute").css("top", "40" + "px")
	}
}); 
</script>
</body>
</html>