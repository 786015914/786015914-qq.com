<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wenjuan.aspx.cs" Inherits="flowershop.wenjuan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/banner1.css"/>
    <link rel="stylesheet" href="css/jquery-ui.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <style>
        #box {width:1000px;
              height:1100px;
              margin-left:150px;
        }
          #box1 {width:1000px;
              height:100px;
           text-align:center;
             margin-left:150px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="header">
    <div class="header1">
        <span>在线时间08：30-21:30</span>
        <span>欢迎访问花语在线商城 !</span>
        <div id="header1_1" data-toggle="header_5">
            <span class="seachtxt">
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="210px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/1.png" OnClick="ImageButton3_Click" />
&nbsp;<ul class="hide"></ul>
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/order.png" OnClick="ImageButton4_Click" />
            </span>
            <span class="show_session">
             &nbsp;|&nbsp
                 <a href="cart.aspx"><img title="我的购物车" style="cursor: pointer
" src="img/shop_car.png" alt=""/></a>&nbsp |&nbsp
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></span></a>
          <b>|</b>
           <span>   <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">注销</asp:LinkButton>
             </span>
            <span class="no_session">
                 <a href="login.aspx">登录</a> &nbsp|
                 <a href="register.aspx">注册</a>
            </span>


        </div>
   
    </div>
    <div id="header2_nav">
    <div class="header2">
        <img src="img/header.png" alt
    </div>
    <div class="nav">
        <span><a href="index.aspx">商品首页</a></span>
        <span><a href="allthings.aspx">所有商品</a></span>
        <span><a href="orderdet.aspx">订单查询</a></span>
        <span><a href="help.aspx">购物帮助</a></span> <span>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">问答反馈</asp:LinkButton>
        </span>
    &nbsp;</div>
    </div>
</header>
       <div class="cart_text" style="text-align:center"><h1>问卷调查</h1></div>
            <div id="box">
            1、您的性别是（  ）<br />
                <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="A" GroupName="1" />
&nbsp;男   <asp:RadioButton ID="RadioButton2" runat="server" Text="B " GroupName="1" />
            女 
             
                <br />
            <br />
            2、您所从事的职业是（  ）<br />
                <br />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="A" GroupName="2" />
&nbsp;学生 &nbsp;
            <asp:RadioButton ID="RadioButton4" runat="server" Text="B " GroupName="2" />
            公务员、事业单位工作者  <asp:RadioButton ID="RadioButton5" runat="server" Text="C" GroupName="2" />
&nbsp;个体经营户&nbsp;<asp:RadioButton ID="RadioButton6" runat="server" Text="D " GroupName="2" />
            企业职工
 
             
                <br />
 
            <br />
3、您是通过哪些渠道了解网上购物的（  ）<br />
                <br />
            <asp:RadioButton ID="RadioButton7" runat="server" Text="A " GroupName="3" />
            朋友介绍   <asp:RadioButton ID="RadioButton8" runat="server" Text="B " GroupName="3" />
            报纸、杂志  <asp:RadioButton ID="RadioButton9" runat="server" Text="C " GroupName="3" />
            看到别人进行网购  <asp:RadioButton ID="RadioButton10" runat="server" Text="D " GroupName="3" />
            电视广告
 
                <br />
                  <br />
4、您对本购物平台的各个环节清楚吗（  ）
 
             
                <br />
 
            <br />
            <asp:RadioButton ID="RadioButton11" runat="server" Text="A " GroupName="4" />
            清楚，能熟练操作  <asp:RadioButton ID="RadioButton12" runat="server" Text="B " GroupName="4" />
            一般清楚，能自己操作    
            <asp:RadioButton ID="RadioButton13" runat="server" Text="C " GroupName="4" />
            清楚一点，让别人帮着买   <asp:RadioButton ID="RadioButton14" runat="server" Text="D " GroupName="4" />
            完全不知道<br />
                <br />

5、您在网上购物的目的是（  )<br />
                <br />
            <asp:RadioButton ID="RadioButton15" runat="server" Text="A " GroupName="5" />
            买到物美价廉的商品  <asp:RadioButton ID="RadioButton16" runat="server" Text="B " GroupName="5" />
            追赶潮流    <asp:RadioButton ID="RadioButton17" runat="server" Text="C " GroupName="5" />
            想尝试一下            
            <asp:RadioButton ID="RadioButton18" runat="server" Text="D " GroupName="5" />
            方便、快捷
 
                <br />
                  <br />
6、您喜欢通过哪些方式了解网点所售商品的信息（  ）
 
             
                <br />
 
            <br />
            <asp:RadioButton ID="RadioButton19" runat="server" Text="A " GroupName="6" />
            仔细询问卖家   <asp:RadioButton ID="RadioButton52" runat="server" Text="B" GroupName="6" />
&nbsp;观察商品的图片   <asp:RadioButton ID="RadioButton22" runat="server" Text="C " GroupName="6" />
            查看销售记录和销售评价 <asp:RadioButton ID="RadioButton20" runat="server" Text="D " GroupName="6" />
            仔细阅读商品的描述&nbsp; 
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
7、您觉得网上商品的质量怎么样（  ）<br />
                <br />
            <asp:RadioButton ID="RadioButton23" runat="server" Text="A " GroupName="7" />
            差      <asp:RadioButton ID="RadioButton21" runat="server" Text="B " GroupName="7" />
            还行     <asp:RadioButton ID="RadioButton24" runat="server" Text="C" GroupName="7" />
&nbsp;一般    <asp:RadioButton ID="RadioButton25" runat="server" Text="D " GroupName="7" />
            好 
  <br />
                <br />
8、您觉得网上购物的售后服务怎么样（  ）<br />
                <br />
            <asp:RadioButton ID="RadioButton26" runat="server" Text="A " GroupName="8" />
            差      <asp:RadioButton ID="RadioButton27" runat="server" Text="B " GroupName="8" />
            行      <asp:RadioButton ID="RadioButton28" runat="server" Text="C" GroupName="8" />
            一般&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton29" runat="server" Text="D " GroupName="8" />
            好 <br />
                <br />
9、你觉得网上购物物流方面做得怎么样（ ）<br />
                <br />
            <asp:RadioButton ID="RadioButton30" runat="server" Text="A " GroupName="10" />
            差&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:RadioButton ID="RadioButton31" runat="server" Text="B " GroupName="10" />
            还行    &nbsp;
            <asp:RadioButton ID="RadioButton32" runat="server" Text="C" GroupName="10" />
&nbsp;一般&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton33" runat="server" Text="D " GroupName="10" />
            好 
  <br />
                <br />
10、你最喜欢的促销方式是（ ）<br />
                <br />
            <asp:RadioButton ID="RadioButton34" runat="server" Text="A " GroupName="9" />
            免邮费    <asp:RadioButton ID="RadioButton35" runat="server" Text="B " GroupName="9" />
            打折    &nbsp;
            <asp:RadioButton ID="RadioButton36" runat="server" Text="C " GroupName="9" />
            积分送礼物&nbsp;&nbsp;<asp:RadioButton ID="RadioButton37" runat="server" Text="D " GroupName="9" />
            赠送优惠券 
                <br />
            <br />
11、你大概多长时间需要购买一次鲜花（ ）<br />
                <br />
            <asp:RadioButton ID="RadioButton38" runat="server" Text="A " GroupName="11" />
            一周     <asp:RadioButton ID="RadioButton39" runat="server" Text="B " GroupName="11" />
            一个月   &nbsp;
            <asp:RadioButton ID="RadioButton40" runat="server" Text="C " GroupName="11" />
            半年    &nbsp;<asp:RadioButton ID="RadioButton41" runat="server" Text="D " GroupName="11" />
            一年或一年以上

 
             
                <br />

 
            <br />
            12、你觉得网上购物的宣传力度怎样（ ）<br />
                <br />
            <asp:RadioButton ID="RadioButton42" runat="server" Text="A " GroupName="12" />
            弱      <asp:RadioButton ID="RadioButton43" runat="server" Text="B " GroupName="12" />
            还行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton44" runat="server" Text="C" GroupName="12" />
&nbsp;一般&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton45" runat="server" Text="D" GroupName="12" />
&nbsp;强 
            <br />
                <br />
            13、你觉得你以后网上购物的次数会（ ）<br />
                <br />
            <asp:RadioButton ID="RadioButton46" runat="server" Text="A " GroupName="13" />
            增多     <asp:RadioButton ID="RadioButton47" runat="server" Text="B " GroupName="13" />
            不变      <asp:RadioButton ID="RadioButton48" runat="server" Text="C " GroupName="13" />
            减少&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton49" runat="server" Text="D " GroupName="13" />
            视情况而定 
             
                <br />
            <br />
            14、你认为网上购物的发展前景（ ）<br />
&nbsp;<br />
            <asp:RadioButton ID="RadioButton50" runat="server" Text="A " GroupName="14" />
            越来越被人们接受，发展空间大
 
            <asp:RadioButton ID="RadioButton51" runat="server" Text="B " GroupName="14" />
            不怎么样，毕竟还存在很多令人担心的问题
 
            <asp:RadioButton ID="RadioButton53" runat="server" Text="C" GroupName="14" />
&nbsp;短期内不会有太大的发展<asp:RadioButton ID="RadioButton54" runat="server" Text="D" GroupName="14" />
&nbsp;其它  </div>
            <div id="box1">
                <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" /></div>
            <div class="footer" style="margin-top:10%">
<footer>
    <div class="footer1">
        <ul>
            <li>About Change
                <div class="footer1_1">
                    <p>本店商品均为易碎品,非质量问题</p>
                    <p>谢绝退换,如有质量问题,本店承</p>
                    <p>担运费调换</p>
                </div>
            </li>
            <li>Service
                <div class="footer1_1">
                    <p>消费者保障服务</p>
                    <p>七天无理由退款</p>
                    <p>假一赔三</p>
                </div>
            </li>
            <li>About Color
                <div>
                    <p>本店商品均为易碎品,非质量问题</p>
                   <p>谢绝退换,如有质量问题,本店承</p>
                   <p>担运费调换</p>
                </div>
            </li>
            <li>
                <img src="img/header.png" alt=""/>
            </li>
        </ul>
    </div>

    <div class="footer1">
        <ul>
            <li>Online Payment
                <p>
                    <img src="img/unionpay.png" alt="" style="width: 40px"/>
                    <img src="img/zhifubao.png" alt="" style="width: 40px"/>
                    <img src="img/2.png" alt="" style="width: 40px"/>
                </p>
            </li>
            <li>Online Payment
                <div>
                   <p>非质量问题谢绝退换,</p>
                   <p>如有质量问题,</p>
                   <p>本店承担运费调换</p>
                </div>
            </li>
            <li>Wechat
                <div>
                    <p>非质量问题谢绝退换,如</p>
                    <p>有质量问题,本店</p>
                    <p>承担运费调换</p>

                </div>
            </li>
            <li>Social App
               <p>
                   <img src="img/weixin.png" alt="" style="width:20px"/>
                   <img src="img/zhao.png" alt="" style="width:20px"/>
                   <img src="img/weixin.png" alt="" style="width:20px"/>
                   <img src="img/zhao.png" alt="" style="width:20px"/>
                   <img src="img/weixin.png" alt="" style="width:20px"/>
               </p>
            </li>
        </ul>
    </div>

    <div class="footer1">
        <ul>
            <li>关于产品
                <p>
                    about color
                </p>
                <div>
                    <p>所有商品均为实物拍摄，各</p>
                    <p>浏览器显示有所不同，对</p>
                    <p>此要求高的买家慎拍</p>

                </div>
            </li>
            <li>关于退货
                <p>
                    about change
                </p>
                <div>
                    <p>非质量问题谢绝退换,</p>
                    <p>如有质量问题,</p>
                    <p>本店承担运费调换</p>
                </div>
            </li>
            <li>关于产品
                <p>about change</p>
                <div>
                    <p>本店商品均为易碎品,非质量问题</p>
                    <p>谢绝退换,如有质量问题,本店承</p>
                    <p>担运费调换</p>
                </div>
            </li>
            <li>扫码关注
                <p>
                    about change
                </p>
                <p><img src="img/erweima.jpg" alt="" style="width: 100px"/></p>
                <div>搜索微信号：HUANG</div>
            </li>
        </ul>
        <p class="footer3">Copyright@2010-2017花语文化传播有限公司 All rights reserved</p>
    </div>

</footer></form>
</body>
</html>
