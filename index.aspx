<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="flowershop.index" %>

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
  <span><a href="help.aspx">购物帮助</a></span> <span><a href="wenjuan.aspx">参与调查</a></span>
       <span><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">问答反馈</asp:LinkButton></span>
        
    &nbsp;</div>
    </div>
</header>

<!--首页主体-->
<section>
    <div class="fixed">
        <ul>
            <li></li>
            <li></li>
            <li><a href=""><img src="img/top.png" alt=""></a></li>
        </ul>
    </div>

    <!--轮播-->
        <!--图片-->
        <%--<div id="banner">
            <img src="img/ff.jpg" class="show" alt="">
            <img src="img/y.jpg" alt="">
            <img src="img/banner7.jpg" alt="">
            <img src="img/banner8.jpg" alt="">  --%>
        </div>
        <!--图片下方的标记-->
        <!--<div id="imgs_a">-->
            <!--<a href="" class="first"></a>-->
            <!--<a href=""></a>-->
            <!--<a href=""></a>-->
            <!--<a href=""></a>-->
        <!--</div>-->

    <div class="index_div ">
        <span><img src="img/index_1.jpg" alt=""></span>
        <span><img src="img/index_2.jpg" alt=""></span>
    </div>

    <div class="index_div1">
        <p class="index_p">
            <span >今日上新</span>&nbsp;
            <span >New product</span>
        </p>
    </div>
<!--今日上新-->
    <div id="today" class="showflower">
        <!--
      <ul>
          <li>
              <p><a href="shopping-details-004.html"><img src="img/004.jpg" alt=""></a></p>
              <p>植物花卉004</p>
              <p>¥5700</p>
          </li>
          <li>
              <p><a href="shopping-details-003.html"><img src="img/p.jpg" alt=""></a></p>
              <p>植物花卉003</p>
              <p>¥5400</p>
          </li>
          <li>
              <p><a href="shopping-details-002.html"><img src="img/w.jpg" alt=""></a></p>
              <p>植物花卉002</p>
              <p>¥5600</p>
          </li>
          <li>
              <p><a href="shopping-details-001.html"><img src="img/q.jpg" alt=""></a></p>
              <p>植物花卉001</p>
              <p>¥6000</p>
          </li>
      </ul>
      -->
       <%-- <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/product/004.jpg" />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/product/006.jpg" />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/product/007.jpg" />
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/product/005.jpg" />
        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/img/product/006.jpg" />--%>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imgurl") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' />
            </ItemTemplate>
        </asp:DataList>
  </div>

  <!--计时器,限时促销-->
    <%--<div class="showflower1">
        <p class="index_p" >
            <span >限时促销</span>&nbsp;
            <span >sales promotion</span>
        </p>
    </div>
    <div class="clock">
        <span id="d4">21时</span>
        <span id="d3">1分钟</span>
        <span id="d2">59秒</span>
    </div>
    <div id="sale">
        <span><img style="width: 600px" src="img/index_3.jpg" alt=""></span>
        <span><img style="width: 600px" src="img/index_4.jpg" alt=""></span>
    </div>
    <div class="clock_1">
        <span id="d7">21时</span>
        <span id="d6">1分钟</span>
        <span id="d5">59秒</span>
    </div>--%>


   <%-- <div class="showflower1">
        <p class="index_p">
           <%-- <span >装点家园</span>&nbsp;
            <span >decorate the homes</span>--%>
        <%--</p>
        <div id="decorate"></div>--%>
        <!--装点家园-->
<!--
        <ul>
            <li>
                <p><a href="shopping-details-008.html"><img src="img/o.jpg" alt=""></a></p>
                <p>植物花卉008</p>
                <p>¥5600</p>
            </li>
            <li>
                <p><a href="shopping-details-007.html"><img src="img/l.jpg" alt=""></a></p>
                <p>植物花卉007</p>
                <p>¥5300</p>
            </li>
            <li>
                <p><a href="shopping-details-006.html"><img src="img/h.jpg" alt=""></a></p>
                <p>植物花卉006</p>
                <p>¥5700</p>
            </li>
            <li>
                <p><a href="shopping-details-005.html"><img src="img/z.jpg" alt=""></a></p>
                <p>植物花卉005</p>
                <p>¥6000</p>
            </li>
        </ul>
-->
    </div>


    <!--图片的自动轮播-->
    <div class="showbox">
        <p class="index_p" style="position: relative;left: 50px;">
            <span>推荐商品</span> &nbsp;
            <span>大家都在看</span>
        </p>
    <div  class="box" id="box" style="text-align:center">
        
        <asp:DataList ID="DataList2" runat="server"  RepeatColumns="5">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("imgurl") %>'  PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' />
            </ItemTemplate>
        </asp:DataList>
        
    </div>
    </div>

    <div class="index_5_all">
            <div class="index_5">

                <div class="index_5_1">
                    <img src="img/index_5.jpg" alt="">
                </div>
                <div class="index_5_1">
                    <p>天气干燥，花店老板推荐制氧绿植</p>
                    <p>发布日期：2019-12-30</p>
                    <p>秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物</p>
                    <p>大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物</p>
                    <p>——红豆杉。红豆杉有“植物增氧机”之称...</p>
                </div>
                <br>
                <div class="index_5_1">
                    <img src="img/index_6.jpg" alt="">
                </div>
                <div class="index_5_1">
                    <p>山中花店的活动中 稀有种子如何获得？</p>
                    <p>发布日期：2017-11-30</p>
                    <p>从一九四七年巴黎蒙田大街30号New Look的展出开始，Dior就成为高级女装的</p>
                    <p>代名词, 继承了法国高级女装的传统，始终保持华丽的设计路线，做工精细，迎</p>
                    <p>合上流社会成熟女性的审...</p>
                </div>
            </div>
        <div class="index_7">
            <img src="img/index_7.jpg" alt="">
        </div>
    </div>
    <br>
    <div class="index_8_all">
        <ul>
            <li>
                <img src="img/index_8.jpg" alt="">
                <p>满1000元全国包邮</p>
                <p>全场订单满1000元全国包邮</p>
            </li>
            <li>
                <img src="img/index_9.jpg" alt="">
                <p>下单送精美礼品</p>
                <p>本店购买任意商品赠送精美礼品</p>
            </li>
            <li>
                <img src="img/index_10.jpg" alt="">
                <p>贴心的售后服务</p>
                <p>7x24小时售后随时为您服务</p>
            </li>
            <li>
                <img src="img/index_11.jpg" alt="">
                <p>店铺优惠劵</p>
                <p>每日整点可领取限量优惠劵</p>
            </li>
        </ul>
    </div>

</section>



<!--首页尾部-->
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
</div>

<%--<script src="js/jquery-1.11.3.js"></script>
<script src="js/header_jquery.js"></script>
<script src="js/footer_jquery.js"></script>
<script src="js/common.js"></script>
<script src="js/auto_play.js"></script>
<script src="js/ajax.js"></script>
<script src="js/decorate.js"></script>
<script src="js/banner1.js"></script>
<script src="js/banner_actice.js"></script>
<script src="js/clock.js"></script>
<script src="js/today_update.js"></script>
<script src="js/search.js"></script>--%>
    </form>
</body>
</html>
