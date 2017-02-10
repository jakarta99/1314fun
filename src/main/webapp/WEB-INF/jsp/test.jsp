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
		<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script> --%>
		<script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation2.min.js"></script>
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
        
				<form class="form-horizontal" novalidate>
                        <div class="form-group">
                            <label class="control-label" for="email">Email address</label>
                            <div class="controls">
                                <input type="email" name="email" id="email" required>
                                <p class="help-block">Email address we can contact you on</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="emailAgain">Email again</label>
                            <div class="controls">
                                <input type="email" data-validation-matches-match="email" data-validation-matches-message="Must match email address entered above" id="emailAgain" name="emailAgain">
                                <p class="help-block">And again, to check for speeling miskates</p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="terms-and-conditions">Legal</label>
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" id="terms-and-conditions" name="terms-and-conditions" required data-validation-required-message="You must agree to the terms and conditions">
                                    I agree to the <a href="#">terms and conditions</a>
                                </label>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Quality Control</label>
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" name="qualityControl[]" value="fast" data-validation-minchecked-minchecked="2" data-validation-minchecked-message="Choose two" data-validation-maxchecked-maxchecked="2" data-validation-maxchecked-message="You can't have it all ways" >
                                    Fast
                                </label>
                                <label class="checkbox">
                                    <input type="checkbox" name="qualityControl[]" value="cheap">
                                    Cheap
                                </label>
                                <label class="checkbox">
                                    <input type="checkbox" name="qualityControl[]" value="good">
                                    Good
                                </label>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Test Validation <i class="icon-ok icon-white"></i></button><br />
                            (go ahead, nothing is sent anywhere)
                        </div>
                    </form>        
			<form class="form-horizontal" novalidate>
                        <div class='col-md-4 form-group'>
							<label for="payAmount">轉帳金額</label>
							<input type='text' class='form-control' id='payAmount' name='payAmount' placeholder='請輸入轉帳金額' required >
						</div>
						<div class='col-md-4 form-group'>
							<label for="payName">轉帳戶名</label>
							<input type='text' class='form-control' id='payName' name='payName' placeholder='請輸入轉帳戶名' required>
						</div>	
						<div class='col-md-4 form-group'>
							<label for="payAccount">帳號末五碼</label>
							<input type='text' class='form-control' id='payAccount' name='payAccount' placeholder='請輸入帳號末五碼' required>
						</div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Test Validation <i class="icon-ok icon-white"></i></button><br />
                            (go ahead, nothing is sent anywhere)
                        </div>
          </form>
            

        </div>
    </body>
<script>
$(function () {
	  $("input,textarea,select").jqBootstrapValidation(
            {
                preventSubmit: true,
                submitError: function($form, event, errors) {
                	swal({
            			title: 'Oooooooooops!',
            			type: 'error',
            			html: '資料輸入有誤',
            			showCloseButton: true,
            		    allowOutsideClick: false,
            		    allowEscapeKey: false
            		});
                },
                submitSuccess: function($form, event) {
                    alert("OK");
                    //event.preventDefault();
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
                					html: '已經完成註冊程序，<br/>請等待校園馬工作人員完成最終對帳作業<br/><font color="red">** 別忘了交回切結書哦，沒有填切結書是不能參加比賽的 **</font>',
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
                			swal({
                				title: 'Oooooooooops!',
                				type: 'error',
                				html: '發生異常，如果持續無法註冊，請聯繫校園馬拉松大會工作人員',
                				showCloseButton: true,
                			    allowOutsideClick: false,
                			    allowEscapeKey: false
                			});
                		}
                	});
                    
                    
                    
                },
                filter: function() {
                    return $(this).is(":visible");
                }
            }
        );	  
});
</script>  
</html>
