<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" charset="utf-8">
	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
		<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/awesome-bootstrap-checkbox.css'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
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
		<div class="container">
			<img src='${pageContext.request.contextPath}/resources/images/1314-fun.jpg' class="img-responsive">
			<h1>報名網頁</h1>
			<h2><font color='red'>Not released now</font></h2>
			<form class="form-horizontal">
			
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
							<input type="radio" id='categoryPRO' name="category" value='TEACHER'><label for='categoryPRO'>競賽組</label>
						</div>
						<div class="radio radio-primary radio-inline">
							<input type="radio" id='categoryHAPPY' name="category" value='HAPPY'><label for='categoryHAPPY'>歡樂組(不用勾選第 7 項)</label>
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
						<table class='table'>
						
							<tr style="background-color:#FFC0CB" >
								<td rowspan='8' style="background-color:#FFC0CB">女隊員</td>
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
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>3</td>
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>4</td>
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>5</td>
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>6</td>
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							<tr style='background-color:#FFDDDD'>
								<td>7</td>
								<td><input class='form-control' id='memberNameW1' name='memberNameW1'/></td>
								<td><input class='form-control' id='memberClassW1' name='memberClassW1'/></td>
							</tr>
							
							<tr  style='background-color:#87CEFA'>
								<td rowspan='8' style='background-color:#87CEFA'>男隊員</td>
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
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>3</td>
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>4</td>
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>5</td>
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>6</td>
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
							<tr style='background-color:#AADDFF'>
								<td>7</td>
								<td><input class='form-control' id='memberNameM1' name='memberNameM1'/></td>
								<td><input class='form-control' id='memberClassM1' name='memberClassM1'/></td>
							</tr>
								
						
						</table>
					</div>
				</div>
				
				<hr/>
				
				 <div class="col-md-4">
                <fieldset>
                    <legend>
                        Disabled
                    </legend>
                    <p>
                        Disabled state also supported.
                    </p>
                    <div class="radio radio-danger">
                        <input type="radio" name="radio3" id="radio5" value="option1" disabled>
                        <label for="radio5">
                            Next
                        </label>
                    </div>
                    <div class="radio">
                        <input type="radio" name="radio3" id="radio6" value="option2" checked disabled>
                        <label for="radio6">
                            One
                        </label>
                    </div>
                </fieldset>
            </div>
				
				<div class='col-md-12' style='text-align: center'>
					<button type='button' class='btn btn-lg btn-primary'>報名</button>
				</div>
			</form>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
	</body>


</html>
