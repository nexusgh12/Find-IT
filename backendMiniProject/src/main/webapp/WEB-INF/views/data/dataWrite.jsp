<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>

<style>
#subject {
	width: 99%;
}
</style>
<script>
	$(function() {
		CKEDITOR.replace("content");

		$("#dataFrm").submit(function() {

			if ($("#subject").val() == "") {
				alert("제목을 입력하세요");
				return false;
			}
			if (CKEDITOR.instances.content.getData() == "") {
				alert("글내용을 입력하세요");
				return false;
			}
			//첨부파일 선택 갯수
			let fileCount = 0;
			if ($("#filename1").val() != '') { //파일을 선택했다
				fileCount++;
			}
			if ($("#filename2").val() != '') {
				fileCount++;
			}
			if (fileCount < 1) {
				alert("첨부파일은 반드시 1개 이상이어야 합니다.");
				return false;
			}
		});
	});
</script>
<link href="${url}/css/datawrite.css" rel="stylesheet" type="text/css">
<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<h1>제품 정보 작성</h1>
			<form id="dataFrm" method="post" action="/myapp/data/writeOk" enctype="multipart/form-data">
				<ul>
					<li>제품명</li>
					<li><input type="text" class="form-control" name="product" id="product" placeholder="제품명을 입력해 주세요."/></li>
					<li>가격</li>
					<li><input type="text" class="form-control" name="price" id="price" placeholder="제품가격을 입력해 주세요."/></li>
					<li>카테고리</li>
					<li><input type="text" class="form-control" name="category" id="category" placeholder="카테고리를 입력해 주세요."/></li>
					<li>제품특징 1</li>
					<li><input type="text" class="form-control" name="option1" id="option2" placeholder="제품 옵션1을 입력해 주세요." /></li>
					<li>제품특징 2</li>
					<li><input type="text" class="form-control" name="option2" id="option2" placeholder="제품 옵션2를 입력해 주세요." /></li>
					<li>제품사진</li>
					<li><input type="file" name="filename" id="filename1" /><br /> 
					<input type="file" name="filename" id="filename2" /></li>
					
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="제품 등록" /></li>
				</ul>
			</form>
		</div>
	</div>
</div>
