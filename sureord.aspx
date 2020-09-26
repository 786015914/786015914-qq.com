<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sureord.aspx.cs" Inherits="flowershop.sureord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/pay_order.css"/>
    <link rel="stylesheet" href="css/cart.css">
    <style>
        #box {
            height:50px;
            width:500px;
            margin-left:100px;
        }
        #box1 {
            height:40px;
            width:310px;
            margin-left:300px;
        }
         #box2 {
            height:40px;
            width:310px;
            margin-left:600px;
        }
        .auto-style1 {
            height: 50px;
        }
    </style>
</head>
<body> <form id="form1" runat="server">
    <header class="header">
    <div class="header1">
        <span>在线时间08：30-21:30</span>
        <span>欢迎访问花语在线商城 !</span>
        <div id="header1_1" data-toggle="header_5">
            <span class="seachtxt">
            <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="210px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/1.png" OnClick="ImageButton3_Click" />
&nbsp;<ul class="hide"></ul>
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/order.png" OnClick="ImageButton4_Click" style="height: 20px" />
            </span>
            <span class="show_session">
             &nbsp;|&nbsp
                 <a href="cart.aspx"><img title="我的购物车" style="cursor: pointer
" src="img/shop_car.png" alt=""/></a>&nbsp |&nbsp
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></span></a>
          <b>|</b>
          <span>    <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">注销</asp:LinkButton>
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
        <span> <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">问答反馈</asp:LinkButton></span> 
&nbsp;</div>
    </div>
</header>
   
       <section>
        <!--支付的导航条-->
        <div class="pay_nav_1">
            <ul>
                <div id="box1">
                     <li class="color_1" style="text-align:center">确定订单信息</li>
                </div>
              
               
            </ul>
        </div>
    <br>
        <div class="mes"><p>收货人&nbsp:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
            <p>电话&nbsp:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </p>
            <p>收货地址&nbsp:</p>
            <div id="box">
                 
            <p>
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="1" />
                <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
            </p>
            <p>
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="1" />
                <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
            </p>
            <p>
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="1" />
                <asp:TextBox ID="TextBox3" runat="server" Width="400px"></asp:TextBox>
            </p>
                </div>
            <p></p>
            </br></br></br></br>
            <p>支付金额&nbsp:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                ￥</p>
            <p>网上银行支付</p>
        </div>
    <div class="pay_nav_2" id="pay_nav_2">
        <ul>
            <li>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="2" />
                <img src="img/pay_img1.jpg" alt=""></li>
            <li>
                </li>
            <li class="auto-style1">
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="2" />
                <img src="img/pay_img3.jpg" alt=""></li>
            <li>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="2" />
                <img src="img/pay_img4.jpg" alt=""></li>
            <li>
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="2" />
                <img src="img/pay_img5.jpg" alt=""></li>
        </ul>
    </div>
    </br>
   
        <span><a href=""><input id="sure_pay" hidden type="button" value="确认支付"></a></span>
    </div>

             </br>  </br>  </br>  </br>  </br>
           <div class="col-xs-12" style="text-align:center"> <div id="box2"><asp:Button ID="Button1" runat="server" Text="结算" Height="33px" Width="120px"  BackColor="#009933" OnClick="Button1_Click" /></div>  </div>
                
       
</section>
         <div class="footer">
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
    </form>
</body>
</html>
