<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规则信息展示</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<link
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js">

</script>
</head>
<body>
	<div class="list_content">
		<div class="container" style="align-items:center">
			<!-- 标题 -->
			<div class="row">
				<div class="col-md-6">
					<h1>Test</h1>
				</div>
			</div>
			<!-- 按钮 -->
			<div>
				<div class="col-md-2 col-md-offset-7">
					<button type="button" class="btn btn-success" id="p-add"
						style="width: 100px; position:absolute ; left: 205px; top: -35px">新增</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-11">
					<table class="table .table-hover">
						<tr>
							<th>ID</th>
							<th>应用名</th>
							<th>表名</th>
							<th>责任人</th>
							<th>联系方式</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${lists}" var="rule">
							<tr>
								<td>${rule.getId()}</td>
								<td>${rule.getAppName()}</td>
								<td>${rule.getTableName()}</td>
                                <td>${rule.getOwner()}</td>
                                <td>${rule.getMobile()}</td>
								<td>
									<form action="#" class="col-md-5" id="formDemo"
										style="position: relative; left: -15px">
										
										<input type="hidden" name="id" value="${rule.getId()}">
										<input type="hidden" name="appname" value="${rule.getAppName()}">
										<input type="hidden" name="tablename" value="${rule.getTableName()}">
                                        <input type="hidden" name="owner" value="${rule.getOwner()}">
                                        <input type="hidden" name="mobile" value="${rule.getMobile()}">
										<input type="submit" value="编辑" class="btn btn-primary btn-sm"> </input>
									</form>

									<form action="${APP_PATH }/deleteRule/${rule.getId()}">
										<input type="submit" value="删除" class="btn btn-danger btn-sm"
											onclick="return deleteUser();">
										</input>
									</form>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="col-md-11" style="text-align:right">
					<label>第${page.curCnt}/${page.pageCnt}页 共${page.totalCnt}条</label>
					<a href="?start=0">首 页</a>
					<a href="?start=${page.start-page.count}" onclick="return checkFirst()">上一页</a>
					<a href="?start=${page.start+page.count}" onclick="return checkNext()">下一页</a>
					<a href="?start=${page.last}">末 页</a>
				</div>
			</div>
		</div>
		<a ></a>
	</div>
</body>

<script type="text/javascript">

    function checkFirst(){
        if(${page.start>=10}){

            return true;

        }
        alert("已到页首,无法加载更多");
        return false;
    }

    function checkNext(){
        if(${page.start  < page.last}){
            return true;
        }
        alert("已到页尾，无法加载更多页");
        return false;
    }

	function deleteUser() {
		if (confirm("确认删除吗？")) {
			return true;
		}
		return false;
	}
	
	
</script>

<!--------------------- 新增用户--------------------->
<jsp:include page="/add.jsp"></jsp:include>
<script type="text/javascript" src="${APP_PATH }/static/js/show.js"></script>
<!--------------------- 新增用户-end --------------------->

<!--------------------- 修改用户--------------------->
<jsp:include page="/update.jsp"></jsp:include>
<script type="text/javascript" src="${APP_PATH }/static/js/show.js"></script>
<!--------------------- 修改用户-end --------------------->
</html>