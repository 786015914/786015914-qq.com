<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ucenter.aspx.cs" Inherits="flowershop.ucenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <title>花店-用户中心-个人资料修改</title>
    <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/username-center.css"/>
    <style>
        #box {
            height:500px;
            width:200px;
            float:left;
            margin-top:110px;
       
       
        }
        #box1 {
            height:400px;
            width:500px;
            float:left;
         
        }
          #box2 {
            height:10px;
            width:700px;
            float:left;
            text-align:center;
            font-size:x-large;
            line-height:100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <!--页面头部-->
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
        <img src="img/header.png" alt=""/>
    </div>
    <div class="nav">
        <span><a href="index.aspx">商品首页</a></span>
        <span><a href="allthings.aspx">所有商品</a></span>
        <span><a href="orderdet.aspx">订单查询</a></span>
        <span><a href="help.aspx">购物帮助</a></span>
     <span>   <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">问答反馈</asp:LinkButton></span>
&nbsp;</div>
    </div>
</header>


<!--用户中心主体-->
<section>
    <div id="user_center">
        <div id="user_center_1">
            <div id="box2">用户中心</div>
            <div id="box">
            <div class="left" style="height: 200px">
                    <ul>
                        <li>▶&nbsp<asp:LinkButton ID="LinkButton1" runat="server">个人资料</asp:LinkButton>
                        </li>
                        <li>▶&nbsp<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">重置密码</asp:LinkButton>
                        </li>
                        <li>▶&nbsp<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">订单查询</asp:LinkButton>
                        </li>
                        <li>▶&nbsp<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">安全退出</asp:LinkButton>
                        </li>
                    </ul>
            </div>
                </div>
            <div id="box1">
            <div class="right">
                <p>用户名称&nbsp&nbsp; : 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>
                <p>电话号码&nbsp; &nbsp;:
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </p>
                <p>电子邮箱&nbsp&nbsp; :
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </p>
                <p>收货地址1&nbsp: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </p>
                <p>收货地址2&nbsp:
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </p>
                <p>收货地址3&nbsp:
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="32px" Text="保存修改" OnClick="Button1_Click" />
                </p>
            </div>
        </div>
            </div>
    </div>
</section>
<!--页面尾部-->
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
<!--页面尾部-->

<script src="js/jquery-3.2.0.js"></script>
<script src="js/header_jquery.js"></script>
<script src="js/footer_jquery.js"></script>
    </form>
</body>
</html>
