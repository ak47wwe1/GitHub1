
<% Response.CodePage=65001%>  
<% Response.Charset="UTF-8" %>
<%

'商户号
uid = "3128"
'商户密钥
ukey = "gGcaa6ZD4FadfGxdB3r30300cCjBBkkr"

'充值比例
rate = "1"
'货币名称
currencyName = "微星游戏币"

'同步通知地址
notify_url="http://gx.yzw655.com/9mao_pay/notify.asp" 
'异步通知地址
return_url="http://gx.yzw655.com/9mao_pay/return.asp"

'数据库连接
connStr="Driver={SQL Server}; server=.;uid=sa;pwd=ww138138;database=RYAccountsDB;"
set conn1=server.createobject("ADODB.CONNECTION")
conn1.open connStr

connStrs="Driver={SQL Server}; server=.;uid=sa;pwd=ww138138;database=RYTreasureDB;"
set conn2=server.createobject("ADODB.CONNECTION")
conn2.open connStrs



'业务处理部分---将订单插入数据库
sub createOrder(orderid,money,paytype,ext)
	
	'先生成本地订单
	si = "500"
	if paytype = "weixin" then si = "401"
	if paytype = "zhifubao-wap" then si = "2"
	if paytype = "zhifubao" then si = "301"
	if paytype = "weixin-wap" then si = "3"
	
	
	
	set rs=server.CreateObject("adodb.recordset")	
	sql="select UserID,GameID,Accounts from AccountsInfo where Accounts ='" &ext& "'"
	rs.Open sql,conn1,1,1
	if not rs.eof then 
		SET rs1=server.CreateObject("adodb.recordset")
		sql1="select * from OnLineOrder"
		rs1.open sql1,conn2,1,3
		rs1.addnew
		rs1("OperUserID")=1
		rs1("ShareID")=si
		rs1("UserID")=rs("UserID")
		rs1("GameID")= rs("GameID")
		rs1("Accounts")= rs("Accounts")
		rs1("OrderID")= orderid
		rs1("OrderAmount")   = money
		rs1("DiscountScale")= rate
		rs1("PayAmount")= money '代理提成金额 写0 不统计
		rs1("Rate")=rate
		rs1("Currency")=money
		rs1("OrderStatus")=0
		rs1("IPAddress")=getClientIP()
		rs1("ApplyDate")=now()
		rs1.update
		rs1.close
		set rs1=nothing
	else
		set rs=server.CreateObject("adodb.recordset")	
		sql="select UserID,GameID,Accounts from AccountsInfo where GameID ='" &ext& "'"
		rs.Open sql,conn1,1,1
		if not rs.eof then 
			SET rs1=server.CreateObject("adodb.recordset")
			sql1="select * from OnLineOrder"
			rs1.open sql1,conn2,1,3
			rs1.addnew
			rs1("OperUserID")=rs("UserID")
			rs1("ShareID")=si
			rs1("UserID")=rs("UserID")
			rs1("GameID")= rs("GameID")
			rs1("Accounts")= rs("Accounts")
			rs1("OrderID")= orderid
			rs1("OrderAmount")   = money
			rs1("DiscountScale")= rate
			rs1("PayAmount")=0
			rs1("Rate")=rate
			rs1("Currency")=money
			rs1("OrderStatus")=0
			rs1("IPAddress")=getClientIP()
			rs1("ApplyDate")=now()
			rs1.update
			rs1.close
			set rs1=nothing
		else
			response.write("输入帐号错误!")
			response.end()	
		end if
		'生成本地订单
		set rs=nothing 
	end if
	'生成本地订单
	set rs=nothing 
end sub 

sub checkOrder(orderid,money,ext)
	set rs=server.createobject("adodb.recordset")
	sql="select * from OnLineOrder where OrderID='"&orderid&"'"
	rs.open sql,conn2,1,1
	if rs.eof then
		response.write("此订单不存在！")					
		Response.End
	else
		flag=rs("OrderStatus")
		if flag=0 then
			'充值游戏币
			conn2.execute("update OnLineOrder set OrderStatus=2,PayAmount='"&money&"' where OrderID='"&orderid&"'")
			conn2.execute("insert into ShareDetailInfo(OperUserID,ShareID,UserID,GameID,Accounts,CardTypeID,OrderID,OrderAmount,DiscountScale,PayAmount,Currency,BeforeCurrency,IPAddress,Gold,BeforeGold,RoomCard,BeforeRoomCard) values('"&rs("UserID")&"','"&rs("ShareID")&"','"&rs("UserID")&"','"&rs("gameID")&"','"&rs("Accounts")&"',0,'"&rs("OrderID")&"','"&rs("OrderAmount")&"','"&rate&"','"&rs("PayAmount")&"',0,0,'"&getClientIP()&"',"&clng(money*rate)&",(select Score from GameScoreInfo where UserID="&rs("UserID")&"),0,0)")
			conn2.execute("update GameScoreInfo set Score=Score+"&clng(money*rate)&" where UserID="&rs("UserID")&"") 
		
			'充值游戏豆
			'conn2.execute("update OnLineOrder set OrderStatus=2,PayAmount='"&money&"' where OrderID='"&orderid&"'")
			'conn2.execute("insert into ShareDetailInfo(OperUserID,ShareID,UserID,GameID,Accounts,CardTypeID,OrderID,OrderAmount,DiscountScale,PayAmount,Currency,BeforeCurrency,IPAddress,Gold,BeforeGold,RoomCard,BeforeRoomCard) values('"&rs("UserID")&"','"&rs("ShareID")&"','"&rs("UserID")&"','"&rs("gameID")&"','"&rs("Accounts")&"',0,'"&rs("OrderID")&"','"&rs("OrderAmount")&"','"&rate&"','"&rs("PayAmount")&"',0,0,'"&getClientIP()&"',"&clng(money*rate)&",(select Score from GameScoreInfo where UserID="&rs("UserID")&"),0,0)")
			'set rss=server.createobject("adodb.recordset")
			'sqls="select * from UserCurrencyInfo where UserID='"&rs("UserID")&"'"
			'rss.open sqls,conn2,1,1
			'if rss.eof then
				'conn2.execute("insert into UserCurrencyInfo(UserID,Currency) values('"&rs("UserID")&"','"&clng(money*rate)&"')")
			'else
				'conn2.execute("update UserCurrencyInfo set Currency=Currency+"&clng(money*rate)&" where UserID='"&rs("UserID")&"'")
			'end if
			

			'充值游戏豆
			'conn2.execute("update OnLineOrder set OrderStatus=2,PayAmount='"&money&"' where OrderID='"&orderid&"'")
			'conn2.execute("insert into ShareDetailInfo(OperUserID,ShareID,UserID,GameID,Accounts,CardTypeID,OrderID,OrderAmount,DiscountScale,PayAmount,Currency,BeforeCurrency,IPAddress,Gold,BeforeGold,RoomCard,BeforeRoomCard) values('"&rs("UserID")&"','"&rs("ShareID")&"','"&rs("UserID")&"','"&rs("gameID")&"','"&rs("Accounts")&"',0,'"&rs("OrderID")&"','"&rs("OrderAmount")&"','"&rate&"','"&rs("PayAmount")&"',0,0,'"&getClientIP()&"',"&clng(money*rate)&",(select Score from GameScoreInfo where UserID="&rs("UserID")&"),0,0)")
			'conn2.execute("update GameScoreInfo set InsureScore=InsureScore+"&clng(money*rate)&" where UserID="&rs("UserID")&"") 			
			
			'充值游戏豆
			'conn2.execute("exec dbo.NET_PW_FilledOnLine @isvb=null, @strOrdersID='"&orderid&"',@strIPAddress='"&getClientIP()&"',@strErrorDescribe='"&orderid&"',@PayAmount='"&money&"'")
		end if 	
	end if
end sub

'生成订单号
function createOrderId
	randomize timer
	kk=int(999*rnd)
	y=Year(now)
	m=month(now)
	if m<10 then m="0"&m
	d=day(now)
	if d<10 then d="0"&d
	h=hour(now)
	if h<10 then h="0"&h
	m2=minute(now)
	if m2<10 then m2="0"&m2
	s=second(now)
	if s<10 then s="0"&s
	s2=right(timer()*100,1)
	createOrderId=y&m&d&h&m2&s&s2&kk
end function

function getClientIP()
	Dim strIPAddr 
	If Request.ServerVariables("HTTP_X_FORWARDED_FOR") = "" OR InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), "unknown") > 0 Then 
		strIPAddr = Request.ServerVariables("REMOTE_ADDR") 
	ElseIf InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ",") > 0 Then 
		strIPAddr = Mid(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), 1, InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ",")-1) 
	ElseIf InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ";") > 0 Then 
		strIPAddr = Mid(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), 1, InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ";")-1) 
	Else 
		strIPAddr = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
	End If 
	getClientIP = Trim(Mid(strIPAddr, 1, 30)) 
End Function
%>
