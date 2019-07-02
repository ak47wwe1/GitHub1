<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayInterFace.aspx.cs" Inherits="XiaoboPay.InterFace" ResponseEncoding="utf-8"%>

<script>
	//支付宝WAP
	if(<%=Request["qudaoId"]%> == 2){
		window.location.href = "/9mao_pay/pay.asp?username=<%=Request["account"]%>&money=<%=Request["amount"]%>&paytype=zhifubao-wap";
	}
	
	//微信WAP
	if(<%=Request["qudaoId"]%> == 3){
		window.location.href = "/9mao_pay/pay.asp?username=<%=Request["account"]%>&money=<%=Request["amount"]%>&paytype=weixin-wap";
	}
	
</script>

