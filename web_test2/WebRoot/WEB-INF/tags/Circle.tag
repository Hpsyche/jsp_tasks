<%@ tag pageEncoding="gb2312" %>
<h4>����һ��Tag�ļ����������Բ�ε������</h4>
<%@ attribute name="radius" required="true" %>
<%! 
static double PI=3.14;
public String getArea(double r){
		return("<BR>���ε������"+r*r*PI);
		}
%>
<% out.print("<BR>JSP���ݹ�����Բ�ΰ뾶Ϊ��"+radius);
double r=Double.parseDouble(radius);
out.println(getArea(r));
%>