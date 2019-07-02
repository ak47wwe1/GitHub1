<!--#include file="conn.asp"-->
<%
username = request("username")
username2 = request("username")
money = (request("money"))
paytype = request("paytype")


if username="" or username2="" or money="" or paytype="" then
	response.Write "缺少参数"
	response.End
end if

if username<>username2 then
	response.Write "充值帐号不一致"
	response.End
end if

if paytype="" then
	response.Write "请选择充值方式"
	response.End
end if

if paytype="zhifubao-wap" then istype=1 ' 支付类型
if paytype="weixin-wap" then istype=2 ' 支付类型



if paytype="1" then istype=1 ' 支付类型
if paytype="2" then istype=2 ' 支付类型



price = money ' 价格,单位：元。精确小数点后2位
istype = istype ' 支付类型
goodsname = currencyName

orderid = createOrderId() ' 商户自定义订单号

orderuid = username ' 商户自定义客户号
ext = username
keyMD5 = MD5(goodsname & istype & notify_url & orderid & orderuid & price & return_url & ukey & uid)

 
Function MD5(text)
    With CreateObject("MSXML.DOMDocument").createElement("a")
        .dataType = "bin.hex"
        .nodeTypedvalue = CreateObject("System.Security.Cryptography.MD5CryptoServiceProvider").ComputeHash_2(CreateObject("System.Text.UTF8Encoding").GetBytes_4(text))
        MD5 = .text
    End With
End Function 


'生成本地订单
createOrder orderid,money,paytype,ext
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付</title>
</head>
<body onLoad="document.submitpay.submit();">
        <form type="hidden" name="submitpay"  action="http://pay.ebkf.net" method="post">
        <input type="hidden" name='goodsname' id='goodsname' type='text' value='<%=goodsname%>' />
        <input type="hidden" name='istype' id='istype' type='text' value='<%=istype%>' />
        <input type="hidden" name='key' id='key' type='text' value='<%=keyMD5%>'/>
        <input type="hidden" name='notify_url' id='notify_url' type='text' value='<%=notify_url%>'/>
        <input type="hidden" name='orderid' id='orderid' type='text' value='<%=orderid%>'/>
        <input type="hidden" name='orderuid' id='orderuid' type='text' value='<%=orderuid%>'/>
        <input type="hidden" name='price' id='price' type='text' value='<%=price%>'/>
        <input type="hidden" name='return_url' id='return_url' type='text' value='<%=return_url%>'/>
        <input type="hidden" name='uid' id='uid' type='text' value='<%=uid%>'/>
        </form>   
   </body>
</html>
