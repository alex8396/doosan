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
				<li class="active"><a href="aboutplayer.jsp">선수단소개</a></li>
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
					<h2>코칭스태프</h2>
						<h3>감독</h3>
						<div>
						<h4>이승엽</h4>
						<img alt="" src="images/p1.png">
						</div>
						<h3>코치</h3>
						<div>
						<table>
						<tr>
							<td>
							<h4>김한수</h4>
							</td>
							<td>
							<h4>권명철</h4>
							</td>
							<td>
							<h4>박정배</h4>
							</td>
							<td>
							<h4>고토</h4>
							</td>
							
						</tr>
						<tr>
							<td>
							<img alt="" src="images/p2.png">
							</td>
							<td>
							<img alt="" src="images/p3.png">
							</td>
							<td>
							<img alt="" src="images/p4.png">
							</td>
							<td>
							<img alt="" src="images/p5.png">
							</td>
							
						</tr>
						<tr>
						<td>
							<h4>조성환</h4>
							</td>
							<td>
							<h4>세리자와</h4>
							</td>
							<td>
							<h4>천종민</h4>
							</td>
							<td>
							<h4>조광희</h4>
							</td>
							<td>
							<h4>유종수</h4>
							</td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/p6.png">
							</td>
							<td>
							<img alt="" src="images/p7.png">
							</td>
							<td>
							<img alt="" src="images/p8.png">
							</td>
							<td>
							<img alt="" src="images/p9.png">
							</td>
							<td>
							<img alt="" src="images/p10.png">
							</td>
						</tr>
						</table>
						<h2>선수단</h2>
						<h3>투수</h3>
						<table>
						<tr>
						<td> <h4>박치국</h4> </td>
						<td> <h4>김지용</h4> </td>
						<td> <h4>홍건희</h4> </td>
						<td> <h4>김민규</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc1.png">
							</td>
							<td>
							<img alt="" src="images/pc2.png">
							</td>
							<td>
							<img alt="" src="images/pc3.png">
							</td>
							<td>
							<img alt="" src="images/pc4.jpg">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>김강률</h4> </td>
						<td> <h4>장원준</h4> </td>
						<td> <h4>이병헌</h4> </td>
						<td> <h4>김정우</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc5.png">
							</td>
							<td>
							<img alt="" src="images/pc6.png">
							</td>
							<td>
							<img alt="" src="images/pc7.png">
							</td>
							<td>
							<img alt="" src="images/pc8.jpg">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>박소준</h4> </td>
						<td> <h4>김동주</h4> </td>
						<td> <h4>최지강</h4> </td>
						<td> <h4>알칸타라</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc9.png">
							</td>
							<td>
							<img alt="" src="images/pc10.png">
							</td>
							<td>
							<img alt="" src="images/pc11.png">
							</td>
							<td>
							<img alt="" src="images/pc12.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>이형범</h4> </td>
						<td> <h4>김명신</h4> </td>
						<td> <h4>곽빈</h4> </td>
						<td> <h4>브랜든 와델</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc13.png">
							</td>
							<td>
							<img alt="" src="images/pc14.png">
							</td>
							<td>
							<img alt="" src="images/pc15.png">
							</td>
							<td>
							<img alt="" src="images/pc16.jpg">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>이영하</h4> </td>
						<td> <h4>이승진</h4> </td>
						<td> <h4>김호준</h4> </td>
						<td> <h4>최호준</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc17.png">
							</td>
							<td>
							<img alt="" src="images/pc18.png">
							</td>
							<td>
							<img alt="" src="images/pc19.png">
							</td>
							<td>
							<img alt="" src="images/pc20.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>박정수</h4> </td>
						<td> <h4>최원준</h4> </td>
						<td> <h4>김유성</h4> </td>
						<td> <h4>최승용</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc21.png">
							</td>
							<td>
							<img alt="" src="images/pc22.png">
							</td>
							<td>
							<img alt="" src="images/pc23.png">
							</td>
							<td>
							<img alt="" src="images/pc24.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>정철원</h4> </td>
						<td> <h4>박신지</h4> </td>
						<td> <h4>이원재</h4> </td>
						<td> <h4>백승우</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc25.png">
							</td>
							<td>
							<img alt="" src="images/pc26.png">
							</td>
							<td>
							<img alt="" src="images/pc27.png">
							</td>
							<td>
							<img alt="" src="images/pc28.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>전형근</h4> </td>
						
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/pc29.png">
							</td>
							
							
						</tr>
						</table>
						<h3>타자</h3>
						<table>
						<tr>
						<td> <h4>허경민 <span style="color:red;">주장</span></h4> </td>
						<td> <h4>안승한</h4> </td>
						<td> <h4>장승현</h4> </td>
						<td> <h4>양의지</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h1.png">
							</td>
							<td>
							<img alt="" src="images/h2.png">
							</td>
							<td>
							<img alt="" src="images/h3.png">
							</td>
							<td>
							<img alt="" src="images/h4.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>윤준호</h4> </td>
						<td> <h4>안재석</h4> </td>
						<td> <h4>신성현</h4> </td>
						<td> <h4>이유찬</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h5.png">
							</td>
							<td>
							<img alt="" src="images/h6.png">
							</td>
							<td>
							<img alt="" src="images/h7.png">
							</td>
							<td>
							<img alt="" src="images/h8.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>박준영</h4> </td>
						<td> <h4>박지훈</h4> </td>
						<td> <h4>박계범</h4> </td>
						<td> <h4>서예일</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h9.png">
							</td>
							<td>
							<img alt="" src="images/h10.png">
							</td>
							<td>
							<img alt="" src="images/h11.png">
							</td>
							<td>
							<img alt="" src="images/h12.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>김민혁</h4> </td>
						<td> <h4>강승호</h4> </td>
						<td> <h4>권민석</h4> </td>
						<td> <h4>전민재</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h13.png">
							</td>
							<td>
							<img alt="" src="images/h14.png">
							</td>
							<td>
							<img alt="" src="images/h15.png">
							</td>
							<td>
							<img alt="" src="images/h16.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>김재호</h4> </td>
						<td> <h4>양석화</h4> </td>
						<td> <h4>임서준</h4> </td>
						<td> <h4>송승환</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h17.png">
							</td>
							<td>
							<img alt="" src="images/h18.png">
							</td>
							<td>
							<img alt="" src="images/h19.png">
							</td>
							<td>
							<img alt="" src="images/h20.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>로하스</h4> </td>
						<td> <h4>정수빈</h4> </td>
						<td> <h4>김재환</h4> </td>
						<td> <h4>김대환</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h21.png">
							</td>
							<td>
							<img alt="" src="images/h22.png">
							</td>
							<td>
							<img alt="" src="images/h23.png">
							</td>
							<td>
							<img alt="" src="images/h24.png">
							</td>
							
						</tr>
						</table>
						<table>
						<tr>
						<td> <h4>김인태</h4> </td>
						<td> <h4>홍성호</h4> </td>
						<td> <h4>조수행</h4> </td>
						<td> <h4>양찬열</h4> </td>
						</tr>
						<tr>
						
							<td>
							<img alt="" src="images/h25.png">
							</td>
							<td>
							<img alt="" src="images/h26.png">
							</td>
							<td>
							<img alt="" src="images/h27.png">
							</td>
							<td>
							<img alt="" src="images/h28.png">
							</td>
							
						</tr>
						</table>
						
						</div>
					
				</div>
			</div>
		
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>