<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<style>
#subject {
	width: 98%;
}

#boardFrm li {
	padding: 10px 5px;
}
</style>
<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<link href="${url}/css/boardwrite.css" rel="stylesheet" type="text/css">
<script>
	$(function() {
		CKEDITOR.replace("content");

		$("#boardFrm").submit(function() {
			if ($("#subject").val() == '') {
				alert("글 제목을 입력하세요");
				return false;
			}
			if (CKEDITOR.instances.content.getData() == '') {
				alert("글내용을 입력하세요");
				return false;
			}
		});
	});
</script>

<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<h1>글 작성</h1>
			<form method="post" action="/myapp/board/boardWriteOk" id="boardFrm">
				<ul>
					<li><input type="text" class="form-control" name="subject" id="subject" placeholder="제목을 입력해 주세요."/></li>
					<li><textarea name="content" id="content"></textarea></li>
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="등록" /></li>
				</ul>
			</form>
		</div>
	</div>
</div>
