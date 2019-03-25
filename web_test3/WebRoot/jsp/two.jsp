<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  </head>
  <body>
  <a href="${pageContext.request.contextPath}/jsp/one.jsp" style="font-size:22px">保留三位小数</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="${pageContext.request.contextPath}/jsp/two.jsp" style="font-size:22px">保留六位小数</a>
    <form action="" method=get name=form>
    	<table>
    		<tr>
    			<td>输入数值a:</td>
    			<td><input type="text" name="a"/></td>
    		</tr>
    		<tr>
    			<td>输入数值b:</td>
    			<td><input type="text" name="b"/></td>
    		</tr>
    		<tr>
    			<td>输入数值c:</td>
    			<td><input type="text" name="c"/></td>
    		</tr>
    	</table>
    	<input type="submit" style="width:60px" value="提交" />
    </form>
    <%
     	DecimalFormat df=new DecimalFormat("#0.000000");
    	String a=request.getParameter("a");
    	String b=request.getParameter("b");
    	String c=request.getParameter("c");
    	if(a==null||b==null||c==null){
    		a="0";
    		b="0";
    		c="0";
    	}
    	if(a.length()>0&&b.length()>0&&c.length()>0){ 
     %>		<computer:GetArea numberA="<%=a%>" numberB="<%=b%>" numberC="<%=c%>"/>
     <br><%=df.format(area)%>
     
    <%}
 %>
  </body>
</html>
