<%@ tag pageEncoding="gb2312" %>
<h4>����һ��Tag�ļ������������ε������</h4>
<%@ attribute name="width" required="true" %>
<%@ attribute name="height" required="true" %>
<%! public String getArea(double a,double b){
		return("<BR>���ε������"+a*b);
		}
%>
<% out.print("<BR>JSP���ݹ����ľ��γ���ֱ�Ϊ��"+width+"��"+height);
double a=Double.parseDouble(width);
double b=Double.parseDouble(height);
out.println(getArea(a,b));
%>