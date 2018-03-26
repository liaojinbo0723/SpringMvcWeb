<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增规则</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-3.2.1.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js">
	
</script>
</head>
<body>
	<div class="add"
		style="display: none; position:absolute; left: 500px; top: 200px; width: 480px;">
		<div class="container"
			style="background-color: #ffffff; width: 500px; border-radius: 8px; border-style: solid; border-width: 1px; border-color: #009393">

			<!-- 标题 -->
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<h3>新增规则</h3>
					<a href="#" class="add-guanbi"> <img
						src="${APP_PATH }/static/img/popup_guanbi.png"
						style="position: relative; left: 280px; top: -50px;">
					</a>
				</div>
			</div>

			<div class="row" style="width: 480px; height: 300px;">
				<form action="${APP_PATH }/addRule" class="form-horizontal" method="post">
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">应用名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								name="appName" placeholder="AppName" required="required">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">表名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								name="tableName" placeholder="TableName" required="required">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">责任人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								name="owner" placeholder="owner" required="required">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">联系方式</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputPassword3"
								name="mobile" placeholder="mobile" required="required">
						</div>
					</div>
					<div style="position: relative; top: 30px">
						<button type="reset" class="btn btn-info"
							style="position: relative; left: 40px">清空</button>
						<button type="submit" class="btn btn-info"
							style="position: relative; left: 350px">新增</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>