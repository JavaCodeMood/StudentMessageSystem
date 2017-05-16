<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.lhf.domain.StudentInfo,com.lhf.dao.Student" %>
<%
request.setCharacterEncoding("utf-8");   //处理编码
StudentInfo info = new StudentInfo();   //创建对象
Student student = new Student();
//如果获得参数action的值为add ，则表示，操作者已经点击了“提交”按钮，那么将执行下面代码实现数据保存
if("add".equals(request.getParameter("action"))){
	info.setNumber(request.getParameter("number"));
	info.setName(request.getParameter("name"));
	info.setSex(request.getParameter("sex"));
	info.setAddress(request.getParameter("address"));
	info.setPhone(request.getParameter("phone"));
	info.setEmail(request.getParameter("email"));
	student.insert(info);   //通过student对象调用insert方法，实现数据保存
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生信息</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="insert.jsp?action=add">
<table width="400" height="289" border="1">
<tr>
<td>学号</td>
<td><input type="text" name="number" id="number"/></td>
</tr>
<tr>
<td>姓名</td>
<td><input type="text" name="name" id="name"/></td>
</tr>
<tr>
<td>性别</td>
<td>
 <input type="radio" name="sex" id="sex" value="男" checked/> 男
 <input type="radio" name="sex" id="sex" value="女" /> 女
</td>
</tr>
<tr>
<td>住址</td>
<td><input type="text" name="address" id="address"/></td>
</tr>
<tr>
<td>电话</td>
<td><input type="text" name="phone" id="phone"/></td>
</tr>
<tr>
<td>邮箱</td>
<td><input type="text" name="email" id="email"/></td>
</tr>
<tr>
<td colspan="2">
  <input type="submit" name="button" id="button" value="提交"/>
  <input type="reset" name="button2" id="button2" value="重置"/>
  <a href="index.jsp">返回</a>
</td>
</tr>
</table>
</form>
</body>
</html>