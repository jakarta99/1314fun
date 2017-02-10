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
		<meta name="keywords" content="校園馬拉松, 台大, 台大EMBA, 1314fun, 1314 fun, 1314 fun 開跑">
	
		<title>2017 台大EMBA 校園馬拉松 - 1314 Fun 開跑 - 報名資訊</title>
	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
		<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/awesome-bootstrap-checkbox.css'>
		<link rel="stylesheet" href='https://cdn.jsdelivr.net/sweetalert2/6.3.8/sweetalert2.min.css'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/sweetalert2/6.3.8/sweetalert2.min.js"></script>
		<style>
			@import url(http://fonts.googleapis.com/earlyaccess/notosanstc.css);
			* {
				font-size:18px;
				line-height: 1.5;
				font-family:'Noto Sans TC', sans-serif;
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
              <li><a href="${pageContext.request.contextPath}/marathon/">活動首頁</a></li>
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
			<img src='${pageContext.request.contextPath}/resources/images/1314-fun-sub.jpg' class="img-responsive">
			<h1>報名網頁</h1>
			<h2><font color='red'>Not released now</font></h2>
			<form id='registerForm' class="form-horizontal">
			
				<div class="form-group">
					
					<div class='col-md-12 bg-danger'>
						<div class='col-md-2'>&nbsp;</div>
						<div class='col-md-10'>
						<h3 class='text-danger'>請先匯款再填寫報名表</h3>
						報名費轉帳帳號：(除來賓隊外，其他每隊報名費新台幣2000元) <br/> 
						帳戶：<b>第一銀行 新竹分行</b>（ATM轉帳時，請輸入銀行代碼： <b>007</b>）<br/>
						帳號：<b>301-68-168168</b>  <br/>
						戶名：<b>林佩怡</b>
						<br/><br/>
						</div>
					</div>
						
					<label for='email' class='control-label col-md-2 '>轉帳/匯款資訊</label>
					<div class="col-md-10">
						<div class='col-md-4'>
							<label for="payAmount">轉帳金額</label>
							<input type='text' class='form-control' id='payAmount' name='payAmount' placeholder='請輸入轉帳金額'>
						</div>
						<div class='col-md-4 inline'>
							<label for="payName">轉帳戶名</label>
							<input type='text' class='form-control' id='payName' name='payName' placeholder='請輸入轉帳戶名'>
						</div>	
						<div class='col-md-4 inline'>
							<label for="payAccount">帳號末五碼</label>
							<input type='text' class='form-control' id='payAccount' name='payAccount' placeholder='請輸入帳號末五碼'>
						</div>
					</div>
				</div>
				<hr/>
				
				<div class="form-group">
					<label for='teamName' class='control-label col-sm-2 '>1. 隊名</label>
					<div class="col-md-10">
						<input type='text' class='form-control' id='teamName' name='teamName' placeholder='請輸入隊伍名稱'>
					</div>
				</div>
				<div class="form-group">
					<label for='leaderName' class='control-label col-md-2 '>2. 隊長</label>
					<div class="col-md-10">
						<input type='text' class='form-control' id='leaderName' name='leaderName' placeholder='請輸入隊長姓名'>
					</div>
				</div>
				<div class="form-group">
					<label for='address' class='control-label col-md-2 '>3. 聯絡地址</label>
					<div class="col-md-10">
						<input type='text' class='form-control' id='address' name='address' placeholder='請輸入聯絡地址'>
					</div>
				</div>
				<div class="form-group">
					<label for='phone' class='control-label col-md-2 '>4. 聯絡電話</label>
					<div class="col-md-10">
						<input type='text' class='form-control' id='phone' name='phone' placeholder='請輸入聯絡電話'>
					</div>
				</div>
				<div class="form-group">
					<label for='email' class='control-label col-md-2 '>5. 聯絡Email</label>
					<div class="col-md-10">
						<input type='text' class='form-control' id='email' name='email' placeholder='請輸入聯絡 Email'>
					</div>
				</div>
				<div class="form-group">
					<label for='category' class='control-label col-md-2 '>6. 參賽項目</label>
					<div class="col-md-10">
					
						<div class="radio radio-primary radio-inline">
							<input type="radio" id='categoryPRO' name="category" value='PRO'><label for='categoryPRO'>競賽組</label>
						</div>
						<div class="radio radio-primary radio-inline">
							<input type="radio" id='categoryHAPPY' name="category" value='HAPPY'><label for='categoryHAPPY'>歡樂組</label>
						</div>
					
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label for='type' class='control-label col-md-2'>7. 參加組別</label>
					<div class="col-md-10">
						<div class="radio radio-primary radio-inline">
							<input type="radio" id='typeTEACHER' name="type" value='TEACHER'><label for='typeTEACHER'>教職員工組</label>
						</div>
						<div class="radio radio-primary radio-inline">
							<input type="radio" id='typeSTUDENT' name="type" value='STUDENT'><label for='typeSTUDENT'>學生組</label>
						</div>
						<div class="radio radio-primary radio-inline">						
							<input type="radio" id='typeALUMNI' name="type" value='ALUMNI'><label for='typeALUMNI'>校友組</label>
						</div>
						<div class="radio radio-primary radio-inline">	
							<input type="radio" id='typeGUEST' name="type" value='GUEST'><label for='typeGUEST'>來賓組</label>
						</div>
					</div>
						
				</div>
				
				<div class="form-group">
					
					
					<label for='type' class='control-label col-md-2 '>8. 隊員名單</label>
					
					<div class="col-md-10">
						<div class='text-danger col-md-12'>
						競賽組每隊可報名女 3 名與男 6 名，出賽女 2 名與男 5 名共 7 名選手。<br/>
						歡樂組每隊報名男女不拘，每隊可報名 9 名，實際出賽 7 名選手。
						<br/>
						</div>
						<table class='table'>
						
							<tr style="background-color:#FFC0CB" >
								<td rowspan='10' style="background-color:#FFC0CB">女隊員</td>
								<td>編號</td>
								<td>姓名</td>
								<td>系級(職稱)</td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>1</td>
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>2</td>
								<td><input class='form-control' id='memberNameW2' name='memberNameW2'/></td>
								<td><input class='form-control' id='memberClassW2' name='memberClassW2'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>3</td>
								<td><input class='form-control' id='memberNameW3' name='memberNameW3'/></td>
								<td><input class='form-control' id='memberClassW3' name='memberClassW3'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>4</td>
								<td><input class='form-control' id='memberNameW4' name='memberNameW4'/></td>
								<td><input class='form-control' id='memberClassW4' name='memberClassW4'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>5</td>
								<td><input class='form-control' id='memberNameW5' name='memberNameW5'/></td>
								<td><input class='form-control' id='memberClassW5' name='memberClassW5'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>6</td>
								<td><input class='form-control' id='memberNameW6' name='memberNameW6'/></td>
								<td><input class='form-control' id='memberClassW6' name='memberClassW6'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>7</td>
								<td><input class='form-control' id='memberNameW7' name='memberNameW7'/></td>
								<td><input class='form-control' id='memberClassW7' name='memberClassW7'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>8</td>
								<td><input class='form-control' id='memberNameW8' name='memberNameW8'/></td>
								<td><input class='form-control' id='memberClassW8' name='memberClassW8'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>9</td>
								<td><input class='form-control' id='memberNameW9' name='memberNameW9'/></td>
								<td><input class='form-control' id='memberClassW9' name='memberClassW9'/></td>
							</tr>
							
							<tr  style='background-color:#87CEFA'>
								<td rowspan='10' style='background-color:#87CEFA'>男隊員</td>
								<td>編號</td>
								<td>姓名</td>
								<td>系級(職稱)</td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>1</td>
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>2</td>
								<td><input class='form-control' id='memberNameM2' name='memberNameM2'/></td>
								<td><input class='form-control' id='memberClassM2' name='memberClassM2'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>3</td>
								<td><input class='form-control' id='memberNameM3' name='memberNameM3'/></td>
								<td><input class='form-control' id='memberClassM3' name='memberClassM3'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>4</td>
								<td><input class='form-control' id='memberNameM4' name='memberNameM4'/></td>
								<td><input class='form-control' id='memberClassM4' name='memberClassM4'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>5</td>
								<td><input class='form-control' id='memberNameM5' name='memberNameM5'/></td>
								<td><input class='form-control' id='memberClassM5' name='memberClassM5'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>6</td>
								<td><input class='form-control' id='memberNameM6' name='memberNameM6'/></td>
								<td><input class='form-control' id='memberClassM6' name='memberClassM6'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>7</td>
								<td><input class='form-control' id='memberNameM7' name='memberNameM7'/></td>
								<td><input class='form-control' id='memberClassM7' name='memberClassM7'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>8</td>
								<td><input class='form-control' id='memberNameM8' name='memberNameM8'/></td>
								<td><input class='form-control' id='memberClassM8' name='memberClassM8'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>9</td>
								<td><input class='form-control' id='memberNameM9' name='memberNameM9'/></td>
								<td><input class='form-control' id='memberClassM9' name='memberClassM9'/></td>
							</tr>
						
						</table>
					</div>
				</div>
				
				<hr/>
				
				 
				
				<div class='col-md-12' style='text-align: center'>
					<button id="registerBtn" type='button' class='btn btn-lg btn-primary'>報名</button>
				</div>
			</form>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
	</body>
<script>

$.fn.serializeObject = function() {
	var o = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (o[this.name]) {
			if (!o[this.name].push) {
				o[this.name] = [o[this.name]];
			}
			o[this.name].push(this.value || '');
		} else {
			o[this.name] = this.value || '';
		}
	});
	return o;
};

$("#registerBtn").bind("click",function(){
	$.ajax({
		url:"${pageContext.request.contextPath}/marathon/register",
		type:'post',
		data:JSON.stringify( $("#registerForm").serializeObject() ),
		dataType:'json',
		contentType:"application/json; charset=utf-8",
		success:function(result) {
			if(result.id > 0) {
				swal({
					title: 'Good job!',
					type: 'success',
					html: '已經完成註冊程序，<br/>請等待校園馬工作人員完成最終對帳作業',
					showCloseButton: true,
				    allowOutsideClick: false,
				    allowEscapeKey: false,
				    onClose: function() {
				    	document.location.href='${pageContext.request.contextPath}/marathon/';
				    }
				})
			}
		},
		error:function(xhr, response, text) {
			swal(
					  'Error',
					  '發生異常，如果持續無法註冊，請聯繫校園馬拉松大會工作人員',
					  'danger'
				);
		}
	});
});

</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-91647074-1', 'auto');
  ga('send', 'pageview');

</script>
</html>
