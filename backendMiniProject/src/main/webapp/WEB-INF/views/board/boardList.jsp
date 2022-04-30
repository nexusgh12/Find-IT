<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${url}/css/boardlist.css" rel="stylesheet" type="text/css">
<script>
	$(function() {
		$("#searchFrm").submit(function() {
			if ($("#searchWord").val() == "") {
				alert("검색어를 입력하세요");
				return false;
			}
		});

		//리스트 체크하기
		$("#allCheck").click(function() {
			$(".chk").prop("checked", $("#allCheck").prop("checked"));
		});

		$("#multiDel").click(function() {
			var cnt = 0;
			$(".chk").each(function(i, obj) {
				if (obj.checked) {
					cnt++; //checkbox가 체크상태일 때..
				}
			});
			if (cnt <= 0) {
				alert("목록을 선택후 삭제 하세요");
				return false;

			}
			$("#listFrm").submit();

		});
	});
</script>

<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<!-- 헤더 -->
			<div class="header">
				<h1>커뮤니티</h1>
			</div>

			<div class="board-body">
				<!-- 리스트 -->
				<div id="record-no">게시글 수 : ${pVO.totalRecord },
					${pVO.totalPage}/${pVO.pageNum}
					
				</div>
				
				<div class="list-div">
				
					<form method="post" action="/myapp/board/multiDel" id="listFrm">
						<hr style="border-color: #7EA1C9; border-width: 3px;">
						<ul class="boardList">
							<li><input type="checkbox" id="allCheck" /></li>
							<li>번호</li>
							<li>제목</li>
							<li>글쓴이</li>
							<li>조회수</li>
							<li>등록일</li>
							<c:forEach var="vo" items="${list}">
								<li><input type="checkbox" name="noList" value='${vo.no}'
									class="chk" /></li>
								<li>${vo.no }</li>
								<li><a href="/myapp/board/boardView?no=${vo.no }">${vo.subject }</a></li>
								<li>${vo.userid}</li>
								<li>${vo.hit}</li>
								<li>${vo.writedate}</li>
							</c:forEach>
						</ul>
						<hr style="border-color: #7EA1C9; border-width: 3px;">
					</form>
				</div>
				<hr style="border-color: #7EA1C9; border-width: 3px;">
			<div class="paging-div">
				<ul class="paging">
					<!--  이전페이지 -->
					<c:if test="${pVO.pageNum==1}">
						<li>prev</li>
					</c:if>
					<c:if test="${pVO.pageNum>1}">
						<li><a
							href="/myapp/board/boardList?pageNum=${pVO.pageNum-1}<c:if test='${pVO.searchWord != null}'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }</c:if>">prev</a></li>
					</c:if>
					<!--  페이지 번호                 1,5      6,10         11,15-->
					<c:forEach var="p" begin="${pVO.startPage}"
						end="${pVO.startPage+pVO.onePageCount-1}">
						<!--  총 페이지수보다 출력할 페이지번호가 작을때 -->
						<c:if test="${p <= pVO.totalPage}">
							<c:if test="${p == pVO.pageNum}">
								<li style="font-weight:bold; text-decoration:underline;">
							</c:if>
							<c:if test="${p != pVO.pageNum}">
								<li>
							</c:if>
							<a
								href="/myapp/board/boardList?pageNum=${p}<c:if test='${pVO.searchWord != null}'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }</c:if>">${p}
							</a>
							</li>
						</c:if>
					</c:forEach>
					<c:if test="${pVO.pageNum==pVO.totalPage}">
						<li>next</li>
					</c:if>
					<c:if test="${pVO.pageNum<pVO.totalPage}">
						<li><a
							href="/myapp/board/boardList?pageNum=${pVO.pageNum+1}<c:if test='${pVO.searchWord != null}'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }</c:if>">next</a></li>
					</c:if>
				</ul>
			</div>
				
				<div class="flex-container">
					<!-- 선택 삭제 -->
					<div class="item">
					<button class="btn btn-default" id="multiDel">선택 삭제</button>

					</div>
					<div class="item">
						<!-- 검색 -->
						<form method="get" action="/myapp/board/boardList" id="searchFrm">
							<select name="searchKey">
								<option value="subject">제목</option>
								<option value="content">글내용</option>
								<option value="userid">글쓴이</option>
							</select> <input type="text" name="searchWord" id="searchWord"> <input
							class="btn btn-default" type="submit" id="search-btn" value="검색">
						</form>
					</div>
					
					<div class="item">
						<!-- 글쓰기 버튼 -->
						<button class="btn btn-default" id="btn-boardwrite"
							onclick="location.href='<%=request.getContextPath()%>/board/boardWrite'">
							글쓰기</button>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

