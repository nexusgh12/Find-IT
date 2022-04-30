<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#subject {
	width: 100%;
}

#boardFrm li {
	padding: 10px 5px;
}
</style>
<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<link href="${url}/css/boardedit.css" rel="stylesheet" type="text/css">
<script>
   $(function(){
      CKEDITOR.replace("content");
      $("#boardFrm").submit(function(){
         if($("#subject").val()==''){
            alert("글 제목을 입력하세요");
            return false;
         }
         if(CKEDITOR.instance.content.getData() == ''){
            alert("글내용을 입력하세요");
            return false;
            
         }
      });
   });
</script>


<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<h1>글 수정</h1>
			<form method="post" action="/myapp/board/boardEditOk" id="boardFrm">
				<input type="hidden" name="no" value="${vo.no }" />
				<ul>
					<li><input type="text" class="form-control" name="subject" id="subject" placeholder="제목을 입력해 주세요." value="${vo.subject }"/></li>
					<li><textarea name="content" id="content">${vo.content }</textarea></li>
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="글수정" /></li>
				</ul>
			</form>
		</div>
	</div>
</div>


