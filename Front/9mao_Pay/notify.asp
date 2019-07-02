<!--#include file="conn.asp"-->
<%

platform_trade_no = request("platform_trade_no")
orderid = request("orderid")
price = request("price")
realprice = request("realprice")
orderuid = request("orderuid")
uid = orderuid
keymd5 = request("key")
token = ukey

 


if keymd5=MD5(orderid & orderuid & platform_trade_no & price & realprice & token) then ' 验签
	' TODO 这里做您的业务
	'商户业务数据成功处理	
	
	price = INT(price) '去掉 分 避免 比例计算出现小数
	
	'money=price/100

	checkOrder orderid,price,orderuid
	response.Write "ok"
else
	response.Write "error"
end if

Function MD5(text)
    With CreateObject("MSXML.DOMDocument").createElement("a")
        .dataType = "bin.hex"
        .nodeTypedvalue = CreateObject("System.Security.Cryptography.MD5CryptoServiceProvider").ComputeHash_2(CreateObject("System.Text.UTF8Encoding").GetBytes_4(text))
        MD5 = .text
    End With
End Function 



%>