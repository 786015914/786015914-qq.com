<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allthings.aspx.cs" Inherits="flowershop.allthings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/allthing.css"/>
     <link rel="stylesheet" href="css/getProductspricerange.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            text-align:center;
        }
        #box {
        border-color:black;
        border-width:2px;
        height:200px;
        width:1000px;
        float:left;
        margin-left:100px;
      margin-top:10px;
        
        }
          #box2 {
        border-color:black;
        border-width:2px;
        height:100px;
        width:600px;
      
        
        }
            #box3 {
        border-color:black;
        border-width:2px;
        height:100px;
        width:600px;
      
        
        }
             #box4 {
       
        height:100px;
        width:2500px;
      
      
        
        }
        .auto-style2 {
            width: 633px;
            height: 96px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="contain">
<div id="contain">
<header class="header">
    <div class="header1">
        <span>在线时间08：30-21:30</span>
        <span>欢迎访问花语在线商城 !</span>
        <div id="header1_1" data-toggle="header_5">
            <span class="seachtxt">
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="210px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/1.png" OnClick="ImageButton2_Click"  />
&nbsp;<ul class="hide"></ul>
            </span>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/order.png" OnClick="ImageButton3_Click" />
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
    <div class="nav">
        <span><a href="index.aspx">商品首页</a></span>
        <span><a href="allthings.aspx">所有商品</a></span>
        <span><a href="orderdet.aspx">订单查询</a></span>
        <span> <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">问答反馈</asp:LinkButton></span> 
        &nbsp;
    </div>
<!--首页主体-->
<section>
    <div class="fixed">
        <ul>
            <li></li>
            <li></li>
            <li><a href=""><img src="img/top.png" alt=""></a></li>
        </ul>
    </div>
    <div><img class="animated fadeInRightBig"  style="width: 100%" src="img/ff.jpg" alt=""></div>
    <div id="body1">
        <p>All the goods</p>
        <p>Whether you are a regular Internet user or a professional website maker, you can use the launch page
            to design the most
        </p>
        <p>
            professional website.Take off page pr
            ovides a lot of beautiful website, website templates and finished product
            s almost cover
        </p>
        <p>
            built in various industries, today you just small changes on the temp
            late to complete their own websites, all this is free of charge.
        </p>
    </div>
     <div id="box4" ><div id="price_choice" style="margin-left:200px" >
        <div>用途分类:</div>
        <div id="first_price"><span id="second">
         <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#005AA0"  style="TEXT-DECORATION: none" OnClick="LinkButton3_Click1">情侣系列</asp:LinkButton></span></div>
        <div id="second_price"><span id="third_start">
             <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#005AA0"  style="TEXT-DECORATION: none" OnClick="LinkButton4_Click">生日系列</asp:LinkButton></span></div>
        <div id="third_price"><span id="fourth_start">
                 <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#005AA0"  style="TEXT-DECORATION: none" OnClick="LinkButton5_Click">婚庆系列</asp:LinkButton></span></div>
        <div id="eight_price"><span id="eight_start">
                     <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#005AA0"  style="TEXT-DECORATION: none" OnClick="LinkButton6_Click">生活系列</asp:LinkButton></span></div>
        <div id="eight_price"><span id="eight_start1">
                         <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="#005AA0"  style="TEXT-DECORATION: none" OnClick="LinkButton7_Click">其他</asp:LinkButton></span></div
    </div></div>
</section>
    <div id="box" class="auto-style2">
       
        <div id="box2"> <asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
            <ItemTemplate>
                <table class="showflower">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imgurl") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>'/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("fname") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' style="TEXT-DECORATION: none" ForeColor="Black"></asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("price") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' style="TEXT-DECORATION: none" Font-Strikeout="False" ForeColor="Black"></asp:LinkButton>
                            ￥</td>
                        
                        
                                   
                    </tr>
                </table>
            </ItemTemplate>
           
            
             
                   
               
        </asp:DataList></div>
      

        
    </div>
<!--首页尾部-->
<div class="footer" style="margin-top:85%">
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
<%--<script src="js/jquery-3.2.0.js"></script>
<script src="js/header_jquery.js"></script>
<script src="js/footer_jquery.js"></script>--%>

    </form>
</body>

</html>
