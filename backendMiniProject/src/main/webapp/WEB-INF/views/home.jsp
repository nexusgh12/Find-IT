<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="findit-box-bottom">
	<div class="wrap">
		<form class="search-box container" method="post" action="index.html"
			id="s" onsubmit="return search_submit()">
			<div class="left">
				<!-- <select class="form-select rounded" aria-label="Default select example">
							  <option selected>Open this select menu</option>
							  <option value="1">One</option>
							  <option value="2">Two</option>
							  <option value="3">Three</option>
							</select> -->
			</div>

			<div class="center">
				<input type="text" placeholder="검색어를 입력해주세요" class="textbox"
					name="search" id="search" required>
				<div class="image"></div>
			</div>


			<div class="right">
				<input type="button" class="btn-search" value="검색"
					onclick="search_submit()">
			</div>
		</form>
	</div>

	<div class="wrap">
		<div class="content-box container" id="carousel-div">
			<div class="header">
				<a href="/myapp/data/dataList">
					<h3>이 제품은 어때요?</h3>
				</a>
			</div>

			<div id="slide1" class="carousel slide" data-ride="carousel">
				
					<!-- 캐러셀 -->
					<div class="carousel-inner" role="listbox">
					<!-- 아이템 -->
					<div class="carousel-item active">
						<div class="carousel-img">
							<img alt="아이템1" src="${url}/images/08.jpg">
						</div>
						<div class="carousel-caption">
							<h3>Elgato Streamdeck mk2</h3>
							<p>199000원</p>
						</div>
					</div>
					<c:forEach var="vo" items="${lst}">
						<!-- 아이템 -->
						<div class="carousel-item">
							<div class="carousel-img">
								<img alt="아이템1" src="/myapp/upload/${vo.filename1}" >
							</div>
							<div class="carousel-caption">
								<a href="/myapp/data/view?no=${vo.no}"><h3>${vo.product}</h3></a>
								<p>${vo.price}원</p>
							</div>
						</div>
						</c:forEach>
					</div>
				
				


				<!--좌우 버튼-->
				<a href="#slide1" class="carousel-control-prev" data-slide="prev"><span
					class="carousel-control-prev-icon"></span></a> <a href="#slide1"
					class="carousel-control-next" data-slide="next"><span
					class="carousel-control-next-icon"></span></a>
			</div>
		</div>
	</div>

	<div class="wrap">
		<div class="content-box container">
			<div class="header">
				<a href="#">
					<h3>오늘의 특가</h3>
				</a>
			</div>

			<div id="slide2" class="carousel slide" data-ride="carousel">
					<!-- 캐러셀 -->
					<div class="carousel-inner" role="listbox">
					<!-- 아이템 -->
					<div class="carousel-item active">
						<div class="carousel-img">
							<img alt="아이템1" src="${url}/images/01.jpg">
						</div>
						<div class="carousel-caption">
							<h3>Deathather v3</h3>
							<p>129000원</p>
						</div>
					</div>
					<c:forEach var="vo" items="${lst}">
						<!-- 아이템 -->
						<div class="carousel-item">
							<div class="carousel-img">
								<img alt="아이템1" src="/myapp/upload/${vo.filename1}">
							</div>
							<div class="carousel-caption">
								<a href="/myapp/data/view?no=${vo.no}"><h3>${vo.product}</h3></a>
								<p>${vo.price}원</p>
							</div>
						</div>
						</c:forEach>
					</div>
				


				<!--좌우 버튼-->
				<a href="#slide2" class="carousel-control-prev" data-slide="prev"><span
					class="carousel-control-prev-icon"></span></a> <a href="#slide2"
					class="carousel-control-next" data-slide="next"><span
					class="carousel-control-next-icon"></span></a>
			</div>
		</div>
	</div>
	<div class="wrap">
		<div class="content-box container">
			<div class="header">
				<a href="#">
					<h3>오늘의 랭킹</h3>
				</a>
			</div>

			<div id="slide3" class="carousel slide" data-ride="carousel">
				<!-- 캐러셀 -->
					<div class="carousel-inner" role="listbox">
					<!-- 아이템 -->
					<div class="carousel-item active">
						<div class="carousel-img">
							<img alt="아이템1" src="${url}/images/01.jpg">
						</div>
						<div class="carousel-caption">
							<h3>Deathather v3</h3>
							<p>129000원</p>
						</div>
					</div>
					<c:forEach var="vo" items="${lst}">
						<!-- 아이템 -->
						<div class="carousel-item">
							<div class="carousel-img">
								<img alt="아이템1" src="/myapp/upload/${vo.filename1}">
							</div>
							<div class="carousel-caption">
								<a href="/myapp/data/view?no=${vo.no}"><h3>${vo.product}</h3></a>
								<p>${vo.price}원</p>
							</div>
						</div>
						</c:forEach>
					</div>

				<!--좌우 버튼-->
				<a href="#slide3" class="carousel-control-prev" data-slide="prev"><span
					class="carousel-control-prev-icon"></span></a> <a href="#slide3"
					class="carousel-control-next" data-slide="next"><span
					class="carousel-control-next-icon"></span></a>
			</div>
		</div>
	</div>

	<div class="wrap">
		<div class="content-box container">
			<div class="header">
				<a href="#">
					<h3>IT/가전</h3>
				</a>
			</div>

			<div id="slide4" class="carousel slide" data-ride="carousel">
				<!-- 캐러셀 -->
					<div class="carousel-inner" role="listbox">
					<!-- 아이템 -->
					<div class="carousel-item active">
						<div class="carousel-img">
							<img alt="아이템1" src="${url}/images/01.jpg">
						</div>
						<div class="carousel-caption">
							<h3>Deathather v3</h3>
							<p>129000원</p>
						</div>
					</div>
					<c:forEach var="vo" items="${lst}">
						<!-- 아이템 -->
						<div class="carousel-item">
							<div class="carousel-img">
								<img alt="아이템1" src="/myapp/upload/${vo.filename1}">
							</div>
							<div class="carousel-caption">
								<a href="/myapp/data/view?no=${vo.no}"><h3>${vo.product}</h3></a>
								<p>${vo.price}원</p>
							</div>
						</div>
						</c:forEach>
					</div>

				<!--좌우 버튼-->
				<a href="#slide4" class="carousel-control-prev" data-slide="prev"><span
					class="carousel-control-prev-icon"></span></a> <a href="#slide4"
					class="carousel-control-next" data-slide="next"><span
					class="carousel-control-next-icon"></span></a>
			</div>
		</div>
	</div>
</div>
