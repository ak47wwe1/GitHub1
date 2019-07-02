
<%
 
'on error resume next
 

bili=1000	  '充值比例 1元=18300金币
 

Account=request("username")

PayAmount=request("money")

if PayAmount="" or Account=""  then
	response.Write "缺少参数"
	response.End
end if
	



%>


<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="" />
    <title>游戏充值中心</title>
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/main_user.css" rel="stylesheet" type="text/css">
    <link href="css/wap_user.css" rel="stylesheet" type="text/css">
    <link href="css/wap_books.css" rel="stylesheet" type="text/css">
    <script>

        function Common_GetUrlValue(url, key) {
            var reg = new RegExp("(^|\\?|&)" + key + "=([^&]*)(\\s|&|$)", "i");
            return (reg.test(url)) ? RegExp.$2 : "";
        }

    </script>

</head>


<body>

    <div class="laymain">

        <!--top-->
        <div class="wp_top_index">
           <a href="javascript:void(0)javascript:history.go(-1);" class="wp_fl">返回</a>
            <span class="s1">游戏充值中心</span>
            <a href="">首页</a>



</div>
  
        <!--top-->
       <script>

        $(document).ready(function () {

            $("#UserName").val(Common_GetUrlValue(document.URL, "gameid"));
            $("#rechargeMoney").val(Common_GetUrlValue(document.URL, "amount"));

        });

    </script>
    
      <div class="au_txt1">
    	<ul>
            
        	<li>
        	  <p style="font-size:16px;">请确认充值信息</p>
        	  <p>充值游戏ID：<b style="color:red;"><%=Account%></b><br></p>
               <p style="margin-top:5px;">
        	    充 值 金 额：<b style="color:red;"><%=PayAmount%></b><br>
        	   </p>
        	</li>
            
        </ul>
    </div>
        
<!--list1-->
      <div class="u_list1 mgt10">
	<div class="u_title2">
    	<p>选择支付方式<span class="s1"></span></p>
    </div>
    <div class="u_alist">
    	<ul>
        	
            <li> <a href="post.asp?username=<%=Account%>&money=<%=PayAmount%>&paytype=2"><img src="images/u_m_weixin.png"><p><span>微信支付</span></p></a></li>
            <li><a href="post.asp?username=<%=Account%>&money=<%=PayAmount%>&paytype=1"><img src="images/u_m_alipay.png"><p><span>支付宝支付</span></p></a></li>
            
           
        </ul>
    </div>
      <div class="au_txt">
    	<ul>
            
        	<li>
        	 <span style="width:100%"> <p>温馨提示：</p>
        	  <p>1、充值成功后，一般会在1到5分钟之内到账，若长时间未到账，请咨询客服；<br>
        	    2、充值完成后，您可以进入会员中心"充值查询"页面查询充值记录；<br>
        	    3、充值成功后，若游戏大厅的金币数量有误，请点击游戏银行查询金币。</p></span>
        	</li>
            
        </ul>
    </div>
<div class="mgt10">
        <!--list1-->
        <div class="list1">
	<div class="wp_foot">
    	
        <p style="text-align:center;"><span>Copyright@2013-2016 游戏 版权所有 <br> </span></p>

    </div>
</div>
    </div>
</div>   


</body>
</html>
