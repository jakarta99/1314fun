<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" charset="utf-8">
		
		<meta name="robots" content="index, follow" />
		<meta name="revisit-after" content="1 days">
		<meta name="description" content="2017 台大EMBA 校園馬拉松">
		<meta name="keywords" content="2017 台大EMBA 校園馬拉松, 校園馬拉松, 台大, 台大EMBA, 1314fun, 1314 fun, 1314 fun 開跑">
		
		<meta property="og:url"                content="http://1314fun.tw/marathon/register" />
		<meta property="og:type"               content="article" />
		<meta property="og:title"              content="2017 台大EMBA 校園馬拉松 - 1314 Fun 開跑 - 報名資訊" />
		<meta property="og:description"        content="報名資訊" />
		<meta property="og:image"              content="http://1314fun.tw/resources/images/1314-fun.jpg" />
	
		<title>2017 台大EMBA 校園馬拉松 - 1314 Fun 開跑 - 報名資訊</title>
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
		<link rel='stylesheet' href='${pageContext.request.contextPath}/vendors/font-awesome-4.7.0/css/font-awesome.min.css'>
		<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/awesome-bootstrap-checkbox.css'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<link rel="stylesheet" href='https://cdn.jsdelivr.net/sweetalert2/6.3.8/sweetalert2.min.css'>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/vendors/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="https://cdn.jsdelivr.net/sweetalert2/6.3.8/sweetalert2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation2.min.js"></script>
		<style>
			@import url(http://fonts.googleapis.com/earlyaccess/notosanstc.css);
			* {
				font-size:18px;
				line-height: 1.5;
				font-family:'Noto Sans TC', sans-serif;
			}
			.help-block li {
				font-size:12px;
			}
		</style>
	</head>
	<body>
	
		<nav class="navbar navbar-default transparent navbar-static-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#"><!-- >img src='/resources/images/marathon-small.png' border='0'/ --></a>
	        </div>
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav">
              <li><a href="${pageContext.request.contextPath}/marathon/">最新消息</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/rule">賽事規章</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/map">路線說明</a></li>
              <li class="active"><a href="${pageContext.request.contextPath}/marathon/register">報名資訊</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/sponsor">贊助廠商</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/record">活動錦集</a></li>        
            </ul>
	        </div><!--/.navbar-collapse -->
	      </div>
	    </nav>	
	
		<div class="container">
			<table class="table table-striped">
			<tr>
				<th>隊名</th>
				<th>隊長</th>
				<th>參賽項目</th>
				<th>參加組別</th>
				<th>男生隊員</th>
				<th>女生隊員</th>
			</tr> 
			<c:forEach items="${teams}" var="team" varStatus="status">
				<tr>
					<td>${team.teamName }</td>
					<td>${team.leaderName }</td>
					<td>
					<c:if test="${team.category == 'PRO'}">競賽組</c:if>
					<c:if test="${team.category == 'HAPPY'}">歡樂組</c:if>
					</td>
					<td>
					<c:if test="${team.type == 'ALUMNI'}">校友組</c:if>
					<c:if test="${team.type == 'TEACHER'}">教師學生組</c:if>
					<c:if test="${team.type == 'GUEST'}">來賓組</c:if>
					</td>
					<td>
					<c:if test="${not empty team.memberNameM1}">${team.memberNameM1} - ${team.memberClassM1} </c:if>
					<c:if test="${not empty team.memberNameM2}">${team.memberNameM2} - ${team.memberClassM2} </c:if>
					<c:if test="${not empty team.memberNameM3}">${team.memberNameM3} - ${team.memberClassM3} </c:if>
					<c:if test="${not empty team.memberNameM4}">${team.memberNameM4} - ${team.memberClassM4} </c:if>
					<c:if test="${not empty team.memberNameM5}">${team.memberNameM5} - ${team.memberClassM5} </c:if>
					<c:if test="${not empty team.memberNameM6}">${team.memberNameM6} - ${team.memberClassM6} </c:if>
					<c:if test="${not empty team.memberNameM7}">${team.memberNameM7} - ${team.memberClassM7} </c:if>
					</td>
					<td>
					<c:if test="${not empty team.memberNameW1}">${team.memberNameW1} - ${team.memberClassW1} </c:if>
					<c:if test="${not empty team.memberNameW2}">${team.memberNameW2} - ${team.memberClassW2} </c:if>
					<c:if test="${not empty team.memberNameW3}">${team.memberNameW3} - ${team.memberClassW3} </c:if>
					<c:if test="${not empty team.memberNameW4}">${team.memberNameW4} - ${team.memberClassW4} </c:if>
					<c:if test="${not empty team.memberNameW5}">${team.memberNameW5} - ${team.memberClassW5} </c:if>
					<c:if test="${not empty team.memberNameW6}">${team.memberNameW6} - ${team.memberClassW6} </c:if>
					<c:if test="${not empty team.memberNameW7}">${team.memberNameW7} - ${team.memberClassW7} </c:if>
					</td>
				</tr>
			</c:forEach>
			
			</table>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
	</body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-91647074-1', 'auto');
  ga('send', 'pageview');

</script>
</html>
