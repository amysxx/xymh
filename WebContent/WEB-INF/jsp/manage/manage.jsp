<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>demo</title>
</head>
<body>

  <div style="width: 800px;border: 1px solid red;margin: 0 auto;margin-top: 200px">
   <table width="100%" border="1" cellpadding="2" cellspacing="0">
   <tr>
     <td colspan="7" style="color: red;font-weight: bold;text-align: center;">demo测试数据</td>
   </tr>
   <tr>
    <td colspan="7"><a href="${ctx}/manage/add.do">新增</a></td>
   </tr>
	<tr>
	  <th>ID</th>
	  <th>名称</th>
	  <th>昵称</th>
	  <th>性别</th>
	  <th>头像</th>
	  <th>密码</th>
	  <th>操作</th>
	</tr>
	 <c:forEach items="${pagers.datas}" var="data" varStatus="l">
		 <tr>
		  <td align="center">${data.id }</td>
		  <td align="center">${data.name}</td>
		  <td align="center">${data.nickname}</td>
		  <td align="center">${data.sex}</td>
		  <td align="center">
		   <img alt="" src="${data.images}" width="100" height="100">
		   
		   
		  </td>
		  <td align="center">${data.password }</td>
		  <td>
		       <a class="link-update" href="${ctx}/manage/update.do?id=${data.id}">修改</a>
               <a class="link-del" href="${ctx}/manage/delete.do?id=${data.id}">删除</a>
		  </td>
		</tr>
   </c:forEach>
	    <tr>
	      <td colspan="7">
	        <!-- 分页开始 -->
        <div class="pagelist">
            <pg:pager url="${ctx}/manage/findByObj.do" maxIndexPages="5" items="${pagers.total}" maxPageItems="15" export="curPage=pageNumber">
            <pg:last>  共${pagers.total}记录,共${pageNumber}页, </pg:last>
                               当前第${curPage}页    
            <pg:first><a href="${pageUrl}">首页</a></pg:first>
            <pg:prev><a href="${pageUrl}">上一页</a></pg:prev>
            <pg:pages>
               <c:choose>
                  <c:when test="${curPage eq pageNumber}">
                      <font color="red"><span class="current">${pageNumber }</span></font>
                  </c:when>
                  <c:otherwise>
                      <a href="${pageUrl}">${pageNumber}</a>
                  </c:otherwise>
               </c:choose>
            </pg:pages>
                <pg:next><a href="${pageUrl}">下一页</a> </pg:next>
                <pg:last>
                    <c:choose>
                        <c:when test="${curPage eq pageNumber}">
                            <a href="##">尾页</a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageUrl}">尾页</a>
                        </c:otherwise>
                    </c:choose>
                </pg:last>
            </pg:pager>
        </div>
        <!-- 分页结束 -->
	      </td>
	    </tr>
   </table>
  </div>                  
</body>
</html>