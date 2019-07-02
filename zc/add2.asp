<!--#include file="Conn.asp" -->
<!--#include file="md5.asp"-->
<!--#include file="w78_sql.asp" -->

<!doctype html>
<html>

	<head>
		<meta charset="gb2312">
		<title></title>

		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link href="css/mui.min.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="css/icons-extra.css" />
		<link rel="stylesheet" type="text/css" href="css/index.css" />
	</head>

	<body>
    
    		 <% 
		 
tijiao=trim(request("tijiao"))'表单
 
id=trim(request("qid"))'网页URL
'  Response.Write tijiao
'  Response.Write id
'   Response.Write request("acc")
'	 Response.end 
 
 if tijiao =  "tj" then 'a=提交
 
	set rs=server.createobject("adodb.recordset")
		 if id <>  "" then 
	    where="where UserID="&id
		end if		
	sql="select * from AccountsInfo "&where
	rs.open sql,conn,1,3
	
	
	
	name=request("acc")
	pw1=request("pw1")
		 if id <>  "" then 
		 	If not(rs.bof and rs.eof) then
				reg= rs("RegAccounts")
			Else
		 
		 		reg= "NULL"	
			end if
	   	else
			reg= "NULL"	
		end if	
	
	
	if name=""  then 
	response.Write("<script language=javascript>alert('名字不能为空!');history.go(-1)</script>") 
	response.end 
	end if
	if pw1=""  then 
	response.Write("<script language=javascript>alert('密码不能为空!');history.go(-1)</script>") 
	response.end 
	end if
	 
	rs.addnew
	rs("Accounts")=name
	
	rs("RegAccounts")=reg
	rs("LogonPass")=md5(pw1)
	
	rs("LastLogonIP")= "NULL"	
	rs("RegisterIP")=  "NULL"
	
	
	rs.update
	rs.close
	set rs=nothing
	conn.close
	set rs=nothing
	'Response.Write "<script>alert('注册成功！');window.location.href='index.asp';</script>" 
 
 
	 if id<>""  then 'a= 有后缀的时候
	 
	



	 
	
	else  'a=无后缀的时候
	response.write "222"
	end if 

 
 
 
 
end if 

		 
		 
		 
		 
		  %>
		<script src="js/mui.min.js"></script>
 
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
 
		<script type="text/javascript">
			mui.init();
		</script>
		<!--头部-->
		<header class="mui-bar mui-bar-nav">

			
			<a class="mui-icon mui-icon-reply mui-pull-right"></a>
			<h1 class="mui-title"><b>注册</b></h1>
		</header>

		 
         <div class="mui-content"  style="  top:50%">
			<div class="mui-content-padded" style="margin: 5px; ">
	 
		  <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner" style=" padding:80px;    text-align: center; ">
                    
						<h4 ><b>注册成功！</b></h4>
					</div>
				</div>
			</div>
		
			 
					<div class="mui-button-row">
                    <input name="tijiao" type="hidden" value="tj">
                     <input id="qid" name="qid"    type="hidden"  value="<%=request("qid") %>">
						<button type="button" class="mui-btn mui-btn-primary" onclick="return false;">前往下载</button>&nbsp;&nbsp;
						<!--<button type="button" class="mui-btn mui-btn-danger" onclick="return false;">取消</button>-->
					</div>
			
				 
			</div>
		</div>
         <script>
		 
 mui(".mui-button-row").on('tap','.mui-btn-primary',function(){
	 //前往地址
		window.location.href="http://hv5.8b5k.q-scan-58.vip:81/rl9Nd3"; 

}) 
		 
		

</script>

  
	</body>

</html>