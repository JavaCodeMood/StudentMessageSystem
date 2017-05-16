<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.lhf.dao.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Student student= new Student(); //创建对象
int result = 0;
result = student.delete(request.getParameter("id"));
if (result==1)
{
   out.print("删除成功");
   out.print("<a href='index.jsp'>返回</a>");
}else
{
	out.print("删除失败");
	out.print("<a href='index.jsp'>返回</a>");
}
%>
</body>
</html>