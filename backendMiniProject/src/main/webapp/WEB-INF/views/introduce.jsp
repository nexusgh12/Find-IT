<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
	.findit-box-bottom .wrap .container {
		min-height: 500px;
	}
	h1{
		text-align: left; 
		
	}
	
	
	#logo-div{
		width:100%;
	}
	
	#content-logo{
		
		margin-top:30px;
		margin-bottom:30px;
		height:60px;
		float: left;
		
	}
	
	#content{
		font-size:1.5em;
		text-align: left; 
		color:#4b4b4b;
		font-family: "hanna";
		font-weight: bold;
		
	}
</style>

<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<!-- 헤더 -->
			<div class="header">
				<h1>사이트 소개</h1>
			</div>
			<div id="logo-div">
				<a href="/myapp/"><img
					src="${url}/images/logo_full.png" alt="logo" id="content-logo"></a>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div id="content">
				파인드 잇(Find'it)은 특가 및 제품 정보 제공 서비스 입니다.<br/>
				합리적인 소비를 위해 다양한 세일 정보가 필요합니다.<br/>
				이러한 정보를 찾는 과정에서 어려움을 겪지 않게<br/>
				특가/제품 정보 제공 및 후기를 공유하는 커뮤니티 입니다.<br/>
			</div>
			
		</div>
	</div>
</div>