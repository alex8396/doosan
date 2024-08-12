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
				<li  class="active"><a href="aboutdoosan.jsp">구단소개</a></li>
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
		
			<div class="jumbotron">
				<div class="container">
					<h2>엠블럼/심볼</h2>
					<table border="2">
						<tr align="center">
						<td colspan="3" bgcolor="#131230">
						<font color="white"><h3>두산베어스 역대 엠블럼</h3></font>
						</td>
						</tr>
						<tr align="center">
						<td> <img width="100" alt="" src="images/1.svg"> </td>
						<td><img width="100" alt="" src="images/2.svg"></td>
						<td><img width="100" alt="" src="images/3.svg"></td>
						</tr>
						<tr align="center">
						<td colspan="3" bgcolor="#131230">
						<font color="white"><h3>두산베어스 역대 심볼</h3></font>
						</td>
						</tr>
						<tr align="center">
						<td> <img width="100" alt="" src="images/4.svg"> </td>
						<td><img width="100" alt="" src="images/5.svg"></td>
						<td><img width="100" alt="" src="images/6.svg"></td>
						</tr>
						<tr align="center">
						<td> <p>1982 - 1998</p> </td>
						<td><p>1999 - 2009</p></td>
						<td><p>2010 - 현재</p></td>
						</tr>
					</table>
					<h2>상징색</h2>
					<p>
					팀의 메인 상징색은 남색과 흰색이며 보조 컬러로 빨간색을 사용한다.
					</p>
					<table border="2">
					<tr align="center">
						<td colspan="3">
							<h2>두산베어스 상징색</h2>
						</td>
					</tr>
					<tr align="center">
					<td>
					<h3>상징색</h3>
					</td>
					<td>
					<h3>CMYK</h3>
					</td>
					<td>
					<h3>RGB <br>
						(헥스 코드)</h3>
					</td>
					</tr>
					<tr align="center" bgcolor="#131230" >
					<td>
					
					<font color="white"><p>Navy</p></font>
					</td>
					<td>
					<font color="white"><p>C93 M90 Y48 K62</p></font>
					</td>
					<td>
					<font color="white"><p>R19 G18 B48 <br>
						(#131230)</p></font>
					</td>
					</tr>
					<tr align="center" bgcolor="#ED1C24" >
					<td>
					
					<font color="white"><p>Red</p></font>
					</td>
					<td>
					<font color="white"><p>C0 M100 Y100 K0</p></font>
					</td>
					<td>
					<font color="white"><p>R237 G28 B36 <br>
						(#ED1C24)</p></font>
					</td>
					</tr>
					<tr align="center" bgcolor="#FFFFFF" >
					<td>
					
					<font color="black"><p>White</p></font>
					</td>
					<td>
					<font color="black"><p>C0 M0 Y0 K0</p></font>
					</td>
					<td>
					<font color="black"><p>R255 G255 B255 <br>
						(#FFFFFF)</p></font>
					</td>
					</tr>
					<tr align="center" bgcolor="#C7C6C6" >
					<td  rowspan="3">
					
					<font color="black"><p>Gray</p></font>
					</td>
					<td>
					<font color="black"><p>C22 M17 Y18 K0</p></font>
					</td>
					<td>
					<font color="black"><p>R199 G198 B198 <br>
						(#C7C6C6)</p></font>
					</td>
					</tr>
					<tr align="center" bgcolor="#839484">
					<td>
					<font color="black"><p>C51 M42 Y42 K6</p></font>
					</td>
					<td>
					<font color="black"><p>R131 G148 B132 <br>
						(#839484)</p></font>
					</td>
					</tr>
					<tr align="center" bgcolor="#B2B2B2">
					<td>
					<font color="black"><p>C51 M42 Y42 K6</p></font>
					</td>
					<td>
					<font color="black"><p>R178 G178 B178 <br>
						(#B2B2B2)</p></font>
					</td>
					</tr>
					<tr align="center" bgcolor="#000000" >
					<td>
					
					<font color="white"><p>Black</p></font>
					</td>
					<td>
					<font color="white"><p>C0 M0 Y0 K100</p></font>
					</td>
					<td>
					<font color="white"><p>R0 G0 B0 <br>
						(#000000)</p></font>
					</td>
					</tr>
					</table>
					<h2>마스코트</h2>
					<table border="1">
					<tr align="center">
					<td> <p>회색곰</p> </td>
					<td><p>반달곰</p></td>
					<td><p>철웅이</p></td>
					</tr>
					<tr align="center">
					<td> <img alt="" src="images/8.webp"> </td>
					<td><img alt="" src="images/9.webp"></td>
					<td><img alt="" src="images/10.webp"></td>
					</tr>
					<tr align="center">
					<td colspan="2"> <p> 1999년 - 2009년</p></td>
					<td> <p> 2010년 - 현재</p></td>
					
					</tr>
					</table>
					<h2>유니폼</h2>
					<table border="2">
					<tr align="center">
					<td colspan="3"> <p>2023년 유니폼</p> </td>
					</tr>
					<tr align="center">
					<td> <img alt="" src="images/11.webp"> </td>
					<td> <img alt="" src="images/12.webp"> </td>
					<td> <img alt="" src="images/13.webp"> </td>
					</tr>
					<tr align="center">
						<td bgcolor="red">
						<font color="white"> <p>HOME</p> </font>
						</td>
						<td bgcolor="red">
						<font color="white"> <p>AWAY</p> </font>
						</td>
						<td bgcolor="red">
						<font color="white"> <p>OLD HOME</p> </font>
						</td>
					</tr>
					<tr align="center">
					<td> <img alt="" src="images/14.webp"> </td>
					<td> <img alt="" src="images/15.webp"> </td>
					<td> <img alt="" src="images/16.webp"> </td>
					</tr>
					<tr align="center">
						<td bgcolor="red">
						<font color="white"> <p>SPECIAL</p> </font>
						</td>
						<td bgcolor="red">
						<font color="white"> <p>MILITARY</p> </font>
						</td>
						<td bgcolor="red">
						<font color="white"> <p>SEOUL</p> </font>
						</td>
					</tr>
					<tr align="center">
					<td> <img alt="" src="images/17.webp"> </td>
					<td> <img alt="" src="images/18.webp"> </td>
					<td> <img alt="" src="images/19.webp"> </td>
					</tr>
					<tr align="center">
						<td bgcolor="red">
						<font color="white"> <p>RETRO</p> </font>
						</td>
						<td bgcolor="red">
						<font color="white"> <p>AWAY GRAY</p> </font>
						</td>
						<td bgcolor="red">
						<font color="white"> <p>FAMILY</p> </font>
						</td>
					</tr>
					<tr align="center">
					<td colspan="3"> <img alt="" src="images/20.webp"> </td>
					
					</tr>
					<tr align="center">
						<td colspan="3" bgcolor="red">
						<font color="white"> <p>HAPPY</p> </font>
						</td>
						
					</tr>
					</table>
					<h2>홈구장</h2>
					<h3>1군: 서울종합운동장 야구장</h3>
					<img alt="" src="images/21.webp">
					<h3>2군: 이천 베어스 파크</h3>
					<img alt="" src="images/22.webp">
				</div>
			</div>
		
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>