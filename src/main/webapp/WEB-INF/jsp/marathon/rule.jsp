<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		<meta property="og:url"                content="http://1314fun.tw/marathon/rule" />
		<meta property="og:type"               content="article" />
		<meta property="og:title"              content="2017 台大EMBA 校園馬拉松 - 1314 Fun 開跑 - 競賽規章" />
		<meta property="og:description"        content="競賽規章" />
		<meta property="og:image"              content="http://1314fun.tw/resources/images/1314-fun.jpg" />
	
		<title>2017 台大EMBA 校園馬拉松 - 1314 Fun 開跑 - 競賽規章</title>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
		<link rel='stylesheet' href='${pageContext.request.contextPath}/vendors/font-awesome-4.7.0/css/font-awesome.min.css'>
		<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/awesome-bootstrap-checkbox.css'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/vendors/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		
		<style>
			@import url(http://fonts.googleapis.com/earlyaccess/notosanstc.css);
			* {
				font-size:18px;
				line-height: 1.5;
				font-family:'Noto Sans TC', sans-serif;
			}
			.myIframe {
			position: relative;
			padding-bottom: 65.25%;
			padding-top: 30px;
			height: 0;
			overflow: auto; 
			-webkit-overflow-scrolling:touch; //<<--- THIS IS THE KEY 
			border: solid black 1px;
			} 
			.myIframe iframe {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
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
              <li class="active"><a href="${pageContext.request.contextPath}/marathon/rule">賽事規章</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/map">路線說明</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/register">報名資訊</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/sponsor">贊助廠商</a></li>
              <li><a href="${pageContext.request.contextPath}/marathon/record">活動錦集</a></li>            
            </ul>
	        </div><!--/.navbar-collapse -->
	      </div>
	    </nav>	
	
		<div class="container">
		
			<img src='${pageContext.request.contextPath}/resources/images/1314-fun-sub.jpg' class="img-responsive"/>
			<h1>2017臺灣大學EMBA第六屆校園馬拉松接力賽競賽規程</h1>
			<div class="col-md-12">
				<a href='${pageContext.request.contextPath}/resources/file/2017NTUEMBA-Marathon-Rule.pdf?v=20170217' class='btn btn-primary btn-lg' download>競賽規則 v20170217</a>
				<a href='${pageContext.request.contextPath}/resources/file/2017NTUEMBA-Marathon-Affidavit.pdf?v=20170213' class='btn btn-warning btn-lg' download>切結書 v20170213</a>
			</div>
			
			<br/>
			<br/>
			<br/>
			
			<div class="col-md-12 bg-warning">
				<ul>
					<li>2017-02-13 切結書更新補充說明，請下載新版</li>
					<li>2017-02-16 競賽規程有部分更新，請下載新版</li>
					<li>2017-02-17 競賽規程 報名網址有部分更新，請下載新版</li>
				</ul>
			</div>
			<div class="col-md-12 myIframe">
			<iframe src="https://docs.google.com/gview?url=http://1314fun.tw/resources/file/2017NTUEMBA-Marathon-Rule.pdf&embedded=true" 
				style="width:100%; height:600px;" frameborder="0"></iframe>
			</div>
			
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
