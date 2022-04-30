<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${url}/css/datalist.css" rel="stylesheet" type="text/css">
<style>
#dataList>li {
	float: left;
	width: 10%;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px solid gray;
}

#dataList>li:nth-child(5n+2) {
	width: 60%;
}
</style>

<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<!-- 헤더 -->
			<div class="header">
				<h1>제품 정보</h1>
			</div>
			<div class="card-columns">
				<c:forEach var="vo" items="${lst}">
					<div class="card">
						
							<div class="card-header">
								 <a href="/myapp/data/view?no=${vo.no}" class="btn stretched-link">
								<img class="card-img-top" src="/myapp/upload/${vo.filename1}"
									alt="아이템1">
								</a>
							</div>
							<div class="card-body">
								<h6 class="card-title">${vo.product}</h6>
								<p class="card-text">${vo.price}원</p>
							</div>
					</div>
				</c:forEach>
			</div>
			<!-- 제품등록 버튼 -->
			<div id="div-datawrite">
				<button class="btn btn-default" id="btn-datawrite"
				onclick="location.href='<%=request.getContextPath()%>/data/write'">
				제품 등록 하기</button>
			</div>
		
		</div>
		
	</div>
</div>

