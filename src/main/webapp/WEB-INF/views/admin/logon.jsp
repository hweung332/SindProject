<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css">
<script>
	let msg = '${msg}';
	if(msg == "failId"){
		alert("아이디를 확인하세요.");
	}else if(msg == "failPw"){
		alert("비밀번호를 확인하세요.");
	}
</script>
</head>
<body>
<h3>Admin Login</h3>
<div style="text-align:center;width:350px;" class="h-100 row align-items-center">
<div class="login-form">
    <form action="/admin/logon" method="post">
        <h2 class="text-center">Log in</h2>       
        <div class="form-group">
            <input type="text" class="form-control" id="ad_userid" name="ad_userid" placeholder="Admin ID" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="ad_userpw" name="ad_userpw" placeholder="Admin PW" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>
        <div class="clearfix">
            <label class="float-left form-check-label"><input type="checkbox"> Remember me</label>
            <a href="#" class="float-right">Forgot Password?</a>
        </div>        
    </form>
    <p class="text-center"><a href="#">Create an Account</a></p>
</div>
</div>
</body>
</html>