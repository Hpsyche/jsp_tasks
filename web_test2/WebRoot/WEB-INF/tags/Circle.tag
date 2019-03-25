<%@ tag pageEncoding="gb2312" %>
<h4>这是一个Tag文件，负责计算圆形的面积。</h4>
<%@ attribute name="radius" required="true" %>
<%! 
static double PI=3.14;
public String getArea(double r){
		return("<BR>矩形的面积："+r*r*PI);
		}
%>
<% out.print("<BR>JSP传递过来的圆形半径为："+radius);
double r=Double.parseDouble(radius);
out.println(getArea(r));
%>