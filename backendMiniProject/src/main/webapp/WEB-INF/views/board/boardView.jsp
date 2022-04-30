<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${url}/css/boardview.css" rel="stylesheet" type="text/css">
<script>
	function delCheck() {
		//사용자가 y(true), n(false) 선택할수 있는 대화 상자
		if (confirm('삭제하시겠습니까?')) {
			//확인버튼 선택시
			location.href = "/myapp/board/boardDel?no=${vo.no}";
		}
	}
	//댓글-----------------------------------------------------
	$(function() {
		//댓글목록을 가져오는 함수
		function replyListAll() { //현재글의 댓글을 모두 가져오기
			var url = "/myapp/reply/list";
			var params = "no=${vo.no}"; // 31번 글이면 no=31이 된다.
			$.ajax({
						url : url,
						data : params,
						success : function(result) {
							var $result = $(result); // vo, vo, vo, ,,,

							var tag = "<ul>";

							$result.each(function(idx, vo) {
										tag += "<li><div id='reply-userid'>"
												+ vo.userid + "</div>";
										tag += "<div id='reply-coment'>"
												+ vo.coment + "</div>";
										tag += "<div id='reply-writedate'>"
												+ " (" + vo.writedate + ") "
												+ "</div>";

										// 	 'goguma'== goguma
										if (vo.userid == '${logId}') {
											/* tag += "<input type='button' class='btn btn-default' id='btn-replyEdit' value='수정'/>"; */
											tag += "<input type='button' class='btn btn-default' id='btn-replyDel' value='삭제' title='"+vo.replyno+"' />";
										}

										//본인글일때 수정폼이 있어야 한다.
										if (vo.userid == '${logId}') {
											tag += "<div style='display:none'><form method='post'>";
											tag += "<input type='hidden' name='replyno' value='"+vo.replyno+"'/>";
											tag += "<textarea name='coment' style='width:500px; height:50px;'>"
													+ vo.coment + "</textarea>";
											tag += "<input type='submit' value='수정'/>";

											tag += "</form></div>";
										}
										tag += "</li><hr/>";

									});

							tag += "</ul>";
							$("#replyList").html(tag);
						},
						error : function(e) {
							console.log(e.responseText)
						}
					});
		}
		//댓글등록
		$("#replyFrm").submit(function() {
			event.preventDefault();//form 기본 이벤트 제거
			if ($("#coment").val() == "") {//댓글 안쓴경우
				alert("댓글을 입력후 등록하세요");
				return;
			} else {//댓글 입력한경우
				var params = $("#replyFrm").serialize();

				$.ajax({
					url : '/myapp/reply/writeOk',
					data : params,
					type : 'POST',
					success : function() {
						//폼을초기화
						$("#coment").val("");
						//댓글 목록 refresh되어야 한다.
						replyListAll();
					},
					error : function(e) {
						console.log(e.responseText);
					}
				});
			}
		});

		// 댓글 수정(Edit)버튼 선택 시 해당폼 보여주기
		$(document).on('click', '#replyList input[value=수정]', function() {
			$(this).parent().next().css("display", "block"); //숨기기
			//보여주기
			$(this).parent().next().css("display", "block");

		});

		// 댓글 수정(DB)
		$(document).on('submit', '#replyList form', function() {
			event.preventDefault();
			//데이터 준비
			var params = $(this).serialize();
			var url = '/myapp/reply/editOk';
			$.ajax({
				url : url,
				data : params,
				type : 'POST',
				success : function(result) {
					console.log(result);
					replyListAll();
				},
				error : function() {
					console.log('수정에러발생');
				}
			});
		});

		// 댓글 삭제
		$(document).on('click', '#replyList input[value=삭제]', function() {
			if (confirm('댓글을 삭제하시겠습니까?')) {
				var params = "replyno=" + $(this).attr("title");
				$.ajax({
					url : '/myapp/reply/del',
					data : params,
					success : function(result) {
						console.log(result);
						replyListAll();
					},
					error : function() {
						console.log("댓글삭제에러발생")
					}
				});
			}
		});

		// 현재글의 댓글
		replyListAll();

	});
</script>
<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<h1>게시글</h1>
			<div class="content-body">
				<h4>${vo.subject}</h4>
				<ul>
					<li>${vo.userid } | ${vo.writedate }</li>
					<li>조회 ${vo.hit }</li>
				</ul>
				<hr>
				<div class="board-content">
					<span>${vo.content }</span>
				</div>
			</div>

			<div class="reply-box">
				<h5>전체 댓글</h5>
				<hr style="border-color: #7EA1C9; border-width: 3px;">
				<!-- 댓글목록이 나올 자리 -->
				<div id="replyList"></div>

				<!-- 댓글쓰기 -->
				<div id="replyWrite">
					<c:if test="${logStatus=='Y'}">
						<form method="post" id="replyFrm">
							<input type="hidden" name="no" value="${vo.no }" />
							<div id="replyWrite-userid">댓글 작성</div>
							<textarea class="form-control" name="coment" id="coment"></textarea>
							<input type="submit" class="btn btn-default" id="coment-submit" value="댓글등록">
						</form>
					</c:if>
				</div>
			</div>
			<div id="edit-box">
				<!-- 로그인 아이디와 글쓴이가 같을 경우 수정 -->
				<c:if test="${logId == vo.userid }">
					<a href="/myapp/board/boardEdit?no=${vo.no}">수정</a>
					<a href="javascript:delCheck()">삭제</a>
				</c:if>
			</div>
		</div>
	</div>
</div>



