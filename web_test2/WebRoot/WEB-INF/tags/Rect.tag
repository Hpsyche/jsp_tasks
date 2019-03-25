<%@ tag pageEncoding="gb2312" %>
<h4>这是一个Tag文件，负责计算矩形的面积。</h4>
<%@ attribute name="width" required="true" %>
<%@ attribute name="height" required="true" %>
<%! public String getArea(double a,double b){
		return("<BR>矩形的面积："+a*b);
		}
%>
<% out.print("<BR>JSP传递过来的矩形长宽分别为："+width+"，"+height);
double a=Double.parseDouble(width);
double b=Double.parseDouble(height);
out.println(getArea(a,b));
%>