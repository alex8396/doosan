<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
				<li><a href="main.jsp">메인</a></li>
				<li  ><a href="aboutdoosan.jsp">구단소개</a></li>
				<li ><a href="aboutplayer.jsp">선수단소개</a></li>
				<li ><a href="plan.jsp">일정</a></li>
				<li class="active"><a href="record.jsp">순위</a></li>
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
		
			<div class="jumbotron">
				<div class="container">
					<h2>팀 순위</h2>
						<table border="1" width="100%" style="text-align: center;">
							<tr>
							<td>순위</td><td>팀</td><td>경기수</td><td>승</td><td>패</td>
							<td>무</td><td>승률</td><td>게임차</td><td>연속</td>
							</tr>
						
						<%
						Class.forName("com.mysql.jdbc.Driver");
						
						Connection conn = null;
						Statement stat = null;
						ResultSet rs = null;
						
						String jdbcURL = "jdbc:mysql://localhost:3306/BBS?" +
						"useSSL=false&serverTimezone=UTC";
						
						String dbUser = "root";
						String dbPass = "rootpw";
						
						String sql = "select * from record";
						
						conn = DriverManager.getConnection(jdbcURL,dbUser,dbPass);
						
						stat = conn.createStatement();
						
						rs = stat.executeQuery(sql);
						
						
						
						while(rs.next()){
							out.println("<tr><td>");
							out.println(rs.getString("record")+"</td><td>");
							out.println(rs.getString("name")+"</td><td>");
							out.println(rs.getString("game")+"</td><td>");
							out.println(rs.getString("win")+"</td><td>");
							out.println(rs.getString("lose")+"</td><td>");
							out.println(rs.getString("drew")+"</td><td>");
							
							out.println(rs.getString("winper")+"</td><td>");
							out.println(rs.getString("gamecha")+"</td><td>");
							out.println(rs.getString("winkeep")+"</td></tr>");
						}
						
						rs.close();
						conn.close();
						
						%>
						</table>
						</div>
					
				</div>
			
		
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
