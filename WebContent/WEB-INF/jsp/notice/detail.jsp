<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园门户网站首页</title>
		<link rel="stylesheet" type="text/css" href="${ctx}/resource/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/resource/css/popup.css"/>
			<script src="${ctx}/resource/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<body>
		<%@ include file="/common/menu.jsp" %>
		<!--inside content start-->
	<div class="inside_wrap">
			<div class="inside_con">
				<div class="adr">
					<a href="index.html">首页</a>&nbsp;>&nbsp;通知公告&nbsp;>&nbsp;
				</div>
				<div class="inside_box">
					<div class="ic_wrap fr">
						<h3 class="n_title">${obj.title}<span class="n_date"><fmt:formatDate value="${data.addTime}" type="both"/></span></h3>
						<p>${obj.content}</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<!--footer start-->
		<%@ include file="/common/footer.jsp" %>
		
			<script src="${ctx}/resource/js/jquery.SuperSlide.2.1.js" type="text/javascript"></script>
		<script src="${ctx}/resource/js/common.js"></script>
		<script src="${ctx}/resource/js/jquery.slides.min..js"></script>
	</body>
	</body>
</html>
</head>