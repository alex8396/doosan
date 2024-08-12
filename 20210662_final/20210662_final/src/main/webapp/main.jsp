<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">두산베어스</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="aboutdoosan.jsp">구단소개</a></li>
				<li><a href="aboutplayer.jsp">선수단소개</a></li>
				<li><a href="plan.jsp">일정</a></li>
				<li><a href="record.jsp">순위</a></li>
				<li><a href="bbs.jsp">곰들의 대화</a></li>
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
		</nav>
		<div class="container">
			<div class="jumbotron">
				<div class="container">
					<h1>두산베어스</h1>
					<p>두산이 운영하는 KBO 리그의 프로 야구단. <br> 연고지는 서울특별시이며 홈구장은 서울종합운동장 야구장을 LG 트윈스와 공동으로 사용하고 있다. <br>
					서울을 연고지로 삼는 3개의 프로 야구단 중 한 곳이다. <br>
					원년 6개 구단 가운데 가장 먼저 프로야구단으로서 창단식을 가진 원년 최초 구단이다.<br>
KBO 리그 원년에 창단한 프로 야구단 중 하나로 두산프로야구단 OB 베어스가 1982년 창단 당시의 구단명이었다.
창단 당시의 연고지는 충청도 였으나, 이미 창단 3년 후 서울로 연고지를 변경한다는 조건이 있었기 때문에 3년 후 서울로 연고지를 이전했으며 이전 직후인 1985년엔 서울 동대문야구장을 주로 홈구장으로 사용하다가 1986년부터 서울종합운동장 야구장을 홈구장으로 사용하고 있다.
<br>마스코트는 구단 이름에서 보듯 곰이다.<br>

KBO 리그의 원년 우승 구단으로, 역대 우승 연도는 1982년, 1995년, 2001년, 2015년, 2016년, 2019년으로 총 6회이며, 준우승은 2000년, 2005년, 2007년, 2008년, 2013년, 2017년, 2018년, 2020년, 2021년으로 총 9회이다.</p>
					<p><a class="btn btn-primary btn-pull" href="aboutdoosan.jsp" role="button">자세히 알아보기</a></p>
				</div>
			</div>
		</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>