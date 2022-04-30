<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>

<style>
#subject {
	width: 99%
}
</style>
<link href="${url}/css/datawrite.css" rel="stylesheet" type="text/css">
<script>
	$(function() {
		CKEDITOR.replace("content");
		// 파일갯수 처리하기위한 변수 생성
		var fileCount = $
		{
			fileCount
		}
		;

		// 새로 추가되는 첨부파일
		$("#dataFrm b").click(function() {
			$(this).parent().css("display", "none"); // 파일명 숨기기
			$(this).parent().next().attr("name", "delFile"); // 삭제파일정보 name을 delFile로 변경
			$(this).parent().next().next().attr("type", "file"); // 새로운 파일을 선택할 수 있도록
			// 파일의 갯수 줄어들어야 한다.
			fileCount--;
		});

		$("#dataFrm").submit(function() {

			if ($("#subject").val() == "") {
				alert("제목을 입력하세요..");
				return false;
			}
			if (CKEDITOR.instances.content.getData() == "") {
				alert("글내용을 입력하세요..");
				return false;
			}
			// 첨부파일 선택 갯수
			if ($("#filename1").val() != '') { // 파일을 선택했을 경우
				fileCount++;
			}
			if ($("#filename2").val() != '') {
				fileCount++;
			}
			if (fileCount < 1) {
				alert("첨부파일은 반드시 1개이상이여야 합니다.");
				return false;
			}
		});
	});
</script>
<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<h1>제품 정보 작성</h1>
			<form id="dataFrm" method="post" action="/myapp/data/editOk"
				enctype="multipart/form-data">
				<input type="hidden" name="no" value="${vo.no}" />
				<ul>
					<li>제품명</li>
					<li><input type="text" class="form-control" name="product"
						id="product" value="${vo.product}" placeholder="제품명을 입력해 주세요." /></li>
					<li>가격</li>
					<li><input type="text" class="form-control" name="price"
						id="price" value="${vo.price}" placeholder="제품가격을 입력해 주세요." /></li>
					<li>카테고리</li>
					<li><input type="text" class="form-control" name="category"
						id="category" value="${vo.category}" placeholder="카테고리를 입력해 주세요." /></li>
					<li>제품특징 1</li>
					<li><input type="text" class="form-control" name="option1"
						id="option2" value="${vo.option1}" placeholder="제품 옵션1을 입력해 주세요." /></li>
					<li>제품특징 2</li>
					<li><input type="text" class="form-control" name="option2"
						id="option2" value="${vo.option2}" placeholder="제품 옵션2를 입력해 주세요." /></li>
					<li>제품사진</li>
					<li>
						<!-- 첫번째 첨부파일 -->
						<div>${vo.filename1}
							&nbsp; <b>X</b>
						</div> <!-- X를 누르면 삭제파일명이 있는 input의 name속성값을 delFile --> <input
						type="hidden" name="" value="${vo.filename1}" /> <!-- X를 누르면 파일이 삭제되고 새로운 파일 선택이 선택가능하도록 input만들어준다. -->
						<input type="hidden" name="filename" id="filename1" />
					</li>
					<li>
						<!-- 두번째 첨부파일 --> <c:if
							test="${vo.filename2!=null && vo.filename2!=''}">
							<div>${vo.filename2}
								&nbsp; <b>X</b>
							</div>
							<input type="hidden" name="" value="${vo.filename2 }" />
							<input type="hidden" name="filename" id="filename2" />
						</c:if> <!-- 두번째 첨부파일 없을때 --> <c:if
							test="${vo.filename2==null || vo.filename2==''}">
							<input type="file" name="filename" id="filename2">
						</c:if>
					</li>

					<li><input type="submit" class="btn btn-default"
						id="boardwrite-submit" value="제품 정보 수정" /></li>
				</ul>
			</form>
		</div>
	</div>
</div>

