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
    

		<script src="js/mui.min.js"></script>
 
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
 
		<script type="text/javascript">
			mui.init();
		</script>
		<!--头部-->
		<header class="mui-bar mui-bar-nav">

			
			<a class="mui-icon mui-icon-reply mui-pull-right"></a>
			<h1 class="mui-title"><b>注册帐号</b></h1>
		</header>

		 
         <div class="mui-content"  style="  top:50%">
			<div class="mui-content-padded" style="margin: 5px; ">
	 
		  
				<form name="form2" id="form2" class="mui-input-group"   style=" padding-top: 100px;padding-bottom:  100px;" action="add.asp">
					<div class="mui-input-row">
						<label>帐号:</label>
						<input type="text"  id="acc" name="acc" placeholder="请输入十一位手机号"  >
					</div>
					<div class="mui-input-row">
						<label>密码:</label>
							 
					<input id="pw1" type="password" name="pw1" class="mui-input-password"  >
		 
					</div>
	<div class="mui-input-row">
						<label>确认密码:</label>
							 
					<input id="pw2" type="password"   class="mui-input-password"    >
		
					</div>
			 
					<div class="mui-button-row">
                    <input name="tijiao" type="hidden" value="tj">
                     <input id="qid" name="qid"    type="hidden"  value="<%=request("qid") %>">
						<button type="button" class="mui-btn mui-btn-primary" onclick="return false;">提交注册</button>&nbsp;&nbsp;
						<!--<button type="button" class="mui-btn mui-btn-danger" onclick="return false;">取消</button>-->
					</div>
				</form>
				 
			</div>
		</div>
         <script>
		 
 mui(".mui-button-row").on('tap','.mui-btn-primary',function(){

if(isMobel($("#acc").val())==false)
		{
		 alert ('请输入正确手机号');
		 $("#acc").trigger("focus");
		 return false;
		}



		if($("#pw1").val()=="")
		{
		 alert ('密码必须填写');
		 $("#pw1").trigger("focus");
		 return false;
		}
		
		if($("#pw2").val()=="")
		{
		 alert ('重复密码必须填写');
		  $("#pw2").trigger("focus")
		 return false;
		}
		
		if(($("#pw1").val())!==($("#pw2").val())){
		 alert ('两次填写的密码不一样，请重新填写!');
		  $("#pw2").trigger("focus")
		 return false;
		}
 $("#form2").submit();
}) 
		 
		function regcheck()
{
		var emailReg = /^[_a-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/;
		var pwdReg = /[a-z0-9]$/; 
				 
		if((document.form2.pwd.value)=="")
		{
		 alert ('密码必须填写');
		 document.form2.pwd.focus();
		 return false;
		}
		
		if((document.form2.pwd2.value)=="")
		{
		 alert ('重复密码必须填写');
		 document.form2.pwd2.focus();
		 return false;
		}
		
		if((document.form2.pwd.value)!==(document.form2.pwd2.value)){
		 alert ('两次填写的密码不一样，请重新填写!');
		 document.form2.pwd2.focus();
		 return false;
		}
 
}


function isMobel(value) {
	// 2019
            var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
            if (!myreg.test(value)) {
                return false;
            } else {
                return true;
            }
        }


//去掉字符串两端的空格

function trim(str)

{

return str.replace(/(^\s*)|(\s*$)/g, "");

}

//去除字符串中间空格

function CTim(str)

{

return str.replace(/\s/g,'');

}



</script>

  
	</body>

</html>