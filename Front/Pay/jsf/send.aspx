<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send.aspx.cs" Inherits="Game.Web.Pay.jsf.send" %>

<!DOCTYPE html>

<html xmlns="http://gx.yzw655.com/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>正在前往充值...</title>
</head>
<body runat="server">
<form action="<%= post_Url%>" method="post" id="frmSubmit">
    <%
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        foreach (System.Collections.Generic.KeyValuePair<string, string> current in dcPostData)
        {%>
        <input type="hidden" name="<%= current.Key%>" value="<%= current.Value%>" />
        <%
            sb.Append(current.Value);
        }
        sb.Append(token);       
    %>
    <input type="hidden" name="sign" value="<%= Game.Utils.Utility.MD5(sb.ToString()).ToLower()%>" />	
	<input type="submit" name="btn" value="submit" />
</form>
<script type="text/javascript">
  document.getElementById("frmSubmit").submit();
</script>
</body>
</html>