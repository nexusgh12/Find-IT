<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="${url}/css/dataview.css" rel="stylesheet" type="text/css">
<script>
	function dataDelCheck() {
		if (confirm("삭제하시겠습니까?")) {
			location.href = "/myapp/data/dataDel?no=${dataVO.no}";
		}
	}
</script>

<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<!-- 헤더 -->
			<div class="header">
				<h1>제품 정보</h1>
			</div>

			<div class="div-content">
				<div class="div-left">
					<div class="card">
						<div class="card-header">
							<img class="card-img-top" src="/myapp/upload/${dataVO.filename1}"
								alt="아이템1">
						</div>
						<div class="card-body">
							<h6 class="card-title">${dataVO.product}</h6>
							<p class="card-text">${dataVO.price}</p>
						</div>
					</div>
				</div>

				<div class="div-right">
					<ul>
						<li>제품명</li>
						<li>${dataVO.product}</li>
						<li>가격</li>
						<li>${dataVO.price}</li>
						<li>카테고리</li>
						<li>${dataVO.category }</li>
						<li>제품 특징 1</li>
						<li>${dataVO.option1 }</li>
						<li>제품 특징 2</li>
						<li>${dataVO.option2 }</li>
					</ul>
					<div id="div-edit">
						<c:if test="${dataVO.userid==logId }">
							<a href="/myapp/data/dataEdit?no=${dataVO.no}">수정</a>
							<a href="javascript:dataDelCheck()">삭제</a>
						</c:if>
					</div>
				</div>
			</div>


			<h3 id="reviewHeader">리뷰</h3>
			<hr />

<!-- 리뷰 -->
			<div class="product-review">

				<!-- 리뷰 헤더 -->
				<div class="review-header"></div>


				<!-- 리뷰 바디 -->
				<div class="review-body">
					<div class="review-description">
						<div class="review-profile">
							<div class="profile-img">
								<img src="${url}/images/logo.png" width="30px">
							</div>

							<div class="profile-name">
								<p>홍길동</p>
							</div>
						</div>

						<div class="review-date">
							<p>2022.02.27</p>
						</div>
					</div>


					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>한줄 후기</p>
						</div>

						<div class="review-content">
							<p>베젤도 얇고 응답속도도 빨라서 좋아요. 나노 ips가 이렇게 좋은 패널인지 이제 알았네요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>좋았던 점</p>
						</div>

						<div class="review-content">
							<p>색역이 넓어서 화질이 너무 좋아요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>아쉬운 점</p>
						</div>

						<div class="review-content">
							<p>본체에서 소리가나는 점이 아쉬워요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>제품 사진</p>
						</div>
						<div class="review-content">
							<img src="${url}/images/review_img_07.jpg" width="200px">
						</div>
					</div>
				</div>


			</div>
			
			
			<hr />
			<!-- 리뷰 -->
			<div class="product-review">

				<!-- 리뷰 헤더 -->
				<div class="review-header"></div>


				<!-- 리뷰 바디 -->
				<div class="review-body">
					<div class="review-description">
						<div class="review-profile">
							<div class="profile-img">
								<img src="${url}/images/logo.png" width="30px">
							</div>

							<div class="profile-name">
								<p>핑핑이</p>
							</div>
						</div>

						<div class="review-date">
							<p>2022.02.27</p>
						</div>
					</div>


					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>한줄 후기</p>
						</div>

						<div class="review-content">
							<p>키감도 좋고 무선이라 편해요.</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>좋았던 점</p>
						</div>

						<div class="review-content">
							<p>내가 원하는 스위치를 끼울 수 있어서 좋았어요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>아쉬운 점</p>
						</div>

						<div class="review-content">
							<p>플라스틱 하우징인 점이 아쉬웠어요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>제품 사진</p>
						</div>
						<div class="review-content">
							<img src="${url}/images/review_img_02.jpg" width="200px">
						</div>
					</div>
				</div>
			</div>

			<hr />

			<!-- 리뷰 -->
			<div class="product-review">

				<!-- 리뷰 헤더 -->
				<div class="review-header"></div>


				<!-- 리뷰 바디 -->
				<div class="review-body">
					<div class="review-description">
						<div class="review-profile">
							<div class="profile-img">
								<img src="${url}/images/logo.png" width="30px">
							</div>

							<div class="profile-name">
								<p>고길동</p>
							</div>
						</div>

						<div class="review-date">
							<p>2022.02.27</p>
						</div>
					</div>


					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>한줄 후기</p>
						</div>

						<div class="review-content">
							<p>가볍고 튼튼하고 좋아요. 개인적으로 매우 추천드립니다.</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>좋았던 점</p>
						</div>

						<div class="review-content">
							<p>손에 딱 맞는 그립감과 완벽한 마감이 좋았어요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>아쉬운 점</p>
						</div>

						<div class="review-content">
							<p>더블클릭이 자주 나서 as를 받아야 하는 점이 아쉬워요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>제품 사진</p>
						</div>
						<div class="review-content">
							<img src="${url}/images/review_img_06.jpg" width="200px">
						</div>
					</div>
				</div>


			</div>
			
			
			<hr />
			
			<!-- 리뷰 -->
			<div class="product-review">

				<!-- 리뷰 헤더 -->
				<div class="review-header"></div>


				<!-- 리뷰 바디 -->
				<div class="review-body">
					<div class="review-description">
						<div class="review-profile">
							<div class="profile-img">
								<img src="${url}/images/logo.png" width="30px">
							</div>

							<div class="profile-name">
								<p>홍길동</p>
							</div>
						</div>

						<div class="review-date">
							<p>2022.02.27</p>
						</div>
					</div>


					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>한줄 후기</p>
						</div>

						<div class="review-content">
							<p>이쁘고 좋아요. 배열도 특이해서 이뻐요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>좋았던 점</p>
						</div>

						<div class="review-content">
							<p>선 분리형과 다양한 조명모드가 있어서 좋았어요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>아쉬운 점</p>
						</div>

						<div class="review-content">
							<p>타건감이 그렇게 좋지는 않아요</p>
						</div>
					</div>

					<!-- 리뷰 항목 -->
					<div class="review-description">
						<div class="review-title">
							<p>제품 사진</p>
						</div>
						<div class="review-content">
							<img src="${url}/images/review_img_04.jpg" width="200px">
						</div>
					</div>
				</div>


			</div>
			
			
			<hr />
		</div>
	</div>
</div>
