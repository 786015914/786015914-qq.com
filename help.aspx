<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="flowershop.help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/pay.css">
    <link rel="stylesheet" href="css/normalize.css">
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
            <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="210px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/1.png" OnClick="ImageButton3_Click" />
&nbsp;<ul class="hide"></ul>
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/order.png" OnClick="ImageButton4_Click" />
            </span>
            <span class="show_session">
             &nbsp;|&nbsp
                 <a href="cart.aspx"><img title="我的购物车" style="cursor: pointer
" src="img/shop_car.png" alt=""/></a>&nbsp |&nbsp
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></span>
            </a>
          &nbsp;<b>|</b>
           <span> <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">注销</asp:LinkButton>
&nbsp;</span><span class="no_session"><a href="login.aspx">登录</a> &nbsp|
                 <a href="register.aspx">注册</a>
            </span>


        </div>
   
    </div>
    <div id="header2_nav">
    <div class="header2">
        <img src="img/header.png" alt=""/>
    </div>
    <div class="nav">
        <span><a href="index.aspx">商品首页</a></span>
        <span><a href="allthings.aspx">所有商品</a></span>
        <span><a href="orderdet.aspx">订单查询</a></span>
  <span><a href="help.aspx">购物帮助</a></span>
         <span>   <span><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">问答反馈</asp:LinkButton></span></span>
     
</div>
    </div>
</header>
            <section>
    <div class="pay1">
        <h1>搜索商品</h1>
        <p>在网站首页通过点击商品，直接找到您所需要的。
</p>
        <p>
 您还可以通过分类目录找到您想要购买的商品分类，根据分类找到您的商品。

</p>
     
    </div>

    <div class="pay1">
        <h1>加入购物车</h1>
        <p>在商品详细页面中，点击商品价格下面的“加入购物车”，网站即会转向购物车页面：</p>
        <p>1、 在此页面中，您可以对您所购买的商品数量进行增加或减少；</p>
        <p>2、 您也可以点击“继续购物”按钮，返回继续购买商品；</p>
        <p>3、 同时，如果您已完成本次购买，即可以点击“结算中心”进入订单确认页面。

</p>
    </div>
                <div class="pay1">
        <h1>订单确认</h1>
        <p>1、 请填写正确完整的收货人姓名、收货人联系方式、详细的收货地址和邮编，否则将会影响您订单处理或配送；</p
        <p>2、 以上信息核实无误后，请点击“提交订单”，系统生成一个订单号，就说明您已经成功提交订单；</p>
        <p>3、 订单提交成功后，您可以在“用户中心 ”查看订单信息或。

</p>
    </div>
    <div class="pay2">
        <h1>登陆注册</h1>
        <p>如果您注册后已登陆，可已略过这一步，直接跳入下一步，进入定单确认页面；</p>
        <p>1、老顾客：请在“登陆 ”页面输入用户名、密码进行登陆；</p>
        <p>2、新顾客：请在“登入 ”页面右边按照提示完成注册。</p>


    </div>

</section>
            <div class="footer" style="margin-top:50%">
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

</footer>
        </div>
    </form>

</body>
</html>
