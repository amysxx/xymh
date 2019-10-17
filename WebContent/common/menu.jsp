<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglibs.jsp"%>
   
 <!--header start-->
 <style>
</style>
		<div class="header_wrap">
			<div class="header">
				<span class="wel_word fl">欢迎访问校园门户网站！</span>
				<span class="corner fr">
					<ul>
					  <c:if test="${userId == null }">
					      <li class="login_li"><a href="javascript:void(0);" class="tc">登录</a></li>
					  </c:if>
					  <c:if test="${userId != null }">
							  <li class="user_li nLi">
									<a href="javascript:void(0);">欢迎您：${user.userName }</a>
							  </li>
							  
							   <li class="user_li nLi">
							   <a href="${ctx }/gz/add.do">我的关注</a>
							   </li>
							    <li class="user_li nLi">
							   <a href="${ctx }/login/utu.do">退出</a>
							   </li>
					  </c:if>
					</ul>
					<div class="clear"></div>
				</span>
				<div class="clear"></div>
			</div>
			<div id="gray"></div>				
			<div class="popup" id="popup">				
				<div class="top_nav" id='top_nav'>
					<div align="center">
						<i></i>
						<span>登录账号</span>
						<a class="guanbi"></a>
					</div>
				</div>					
				<div class="min">					
					<div class="tc_login">											
						<div class="login_register">
							<form method="POST" name="form_login" target="_top" action="${ctx}/login/toLogin.do">
								<div align="center">
									<span class="error">错误提示</span>
									<i class="icon-mobile-phone"></i>
									<input type="hidden" name="type" value="4">
									<input type="text" name="userName" id="name" required="required" placeholder="用户名" autocomplete="off" class="input_yh">
									<input type="password" name="passWord" id="pass" required="required" placeholder="密码" autocomplete="off" class="input_mm">
								</div>
								<dd>
									<div class="user">
										<input type="checkbox" name="user" id="user" value="记住用户" class="r_user" />记住用户
									</div>
								</dd>
								<div align="center">
									<input type="submit" class="button" title="Sign In" value="登录">
								</div>
								<dd>
								</dd>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--nav start-->
		<div class="nav_menu">
			<a href="${ctx}/login/index.do" class="logo fl"><img src="" /><span style="font-size: 50px">校园门户网站</span></a>
			<div class="nav_list fr">
				<ul id="nav" class="nav clearfix">
					<li class="nLi"></li>
					<li class="nLi">
						<h3><a href="${ctx}/news/findByObj2.do">新闻快讯</a></h3>
					</li>
					<li class="nLi">
						<h3><a href="${ctx}/notice/findByObj2.do">通知公告</a></h3>
					</li>
					<li class="nLi">
						<h3><a href="${ctx}/xl/findByObj2.do">校历</a></h3>
					</li>
					<li class="nLi">
						<h3><a href="${ctx}/schoolJob/findByObj2.do">求职招聘</a></h3>
					</li>
					<li class="nLi">
						<h3><a href="${ctx}/xkzy/findByObj2.do">学科资源</a></h3>
					</li>
			</div>
			<div class="clear"></div>
		</div>