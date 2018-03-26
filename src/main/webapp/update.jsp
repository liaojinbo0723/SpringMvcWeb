<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑规则信息</title>
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
	<div class="update"
		style="display: none; position:absolute; left: 500px; top: 210px; width: 480px;">
		<div class="container"
			style="background-color: #ffffff; width: 500px; border-radius: 8px; border-style: solid; border-width: 1px; border-color: #009393">

			<!-- 标题 -->
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<h3>修改规则</h3>
					<a href="#" class="update-guanbi"> <img
						src="${APP_PATH }/static/img/popup_guanbi.png"
						style="position: relative; left: 280px; top: -50px;">
					</a>
				</div>
			</div>

			<div class="row" style="width: 480px; height: 360px;">
				<form action="${APP_PATH }/updateRule" class="form-horizontal" method="post">
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">ID</label>
						<div class="col-sm-10">
							<input type="text" name="id" readonly="readonly" class="form-control" value="${param.id}">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">应用名</label>
						<div class="col-sm-10">
							<input type="text" name="appName" class="form-control" value="${param.appname}">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">表名</label>
						<div class="col-sm-10">
							<input type="text" name="tableName" class="form-control" value="${param.tablename}">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">责任人</label>
						<div class="col-sm-10">
							<input type="text" name="owner" class="form-control" value="${param.owner}">
						</div>
					</div>
					<div class="form-group" style="position: relative; top: 30px">
						<label class="col-sm-2 control-label">联系方式</label>
						<div class="col-sm-10">
							<input type="text" name="mobile" class="form-control" value="${param.mobile}">
						</div>
					</div>
					<div style="position: relative; top: 30px">
						<button type="reset" class="btn btn-info"
							style="position: relative; left: 40px">清空</button>
						<button type="submit" class="btn btn-info"
							style="position: relative; left: 350px">修改</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$(document).ready(function() {
		/* 当请求的参数中带有userid时显示“编辑模态框”，否则隐藏 */
		if(${param.id}){
			$(".update").show();
			$(".add").hide();
		}

	});
</script>

</html>