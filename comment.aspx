<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comment.aspx.cs" Inherits="flowershop.comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/offline-shore.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <style type="text/css">
        .auto-style6 {
            width: 1000px;
            text-align: center;
            height: 86px;
            margin-top: 40px;
            position: relative;
            left: 5px;
            top: -17px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 0;
            background-color:lightblue
        }
    </style>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
<div id="contain">
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
        <span>      <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">注销</asp:LinkButton>
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



<!--主体-->
<section>
            <div class="auto-style6" >
           <p style="font-size:xx-large; color:white;text-align:center;padding-top:25px;font-weight:500";> 鲜花商城问题反馈</p>
        </div>
    <div class="body1" style="margin-left:350px">
    <div class="body1_1">
        <p>地址：福州市仓山区首山路112号</p>
        <p>电话：0591-83511759</p>
    </div>
    <div class="body1_2">
        <p>您也可以通过表单联系我们：</p>
        </div>
            <p>
                姓名:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;电话:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;</p>
            <p>
                邮箱:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Height="160px" Width="360px"></asp:TextBox>
        </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#ffcc99" ForeColor="White" Height="32px" Text="发送" Width="60px" OnClick="Button1_Click" />
        </p>
       
    </div>
    </div>
    <div class="right_map" style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="用户"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="问题"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="解答"></asp:Label>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("uname") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("qet") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ans") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
        </div>
</section>
    <footer>
    <div class="footer1" style="margin-top:1000px">
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
       
    </div>

</footer>
    </form>
</body>
</html>
