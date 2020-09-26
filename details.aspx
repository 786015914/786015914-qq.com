<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="flowershop.details" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/shopping-details-007.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <style type="text/css">
        .auto-style1 {
            width: 164%;
            height: 287px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 100%;
            margin-left: 100px;
            margin-top: 10px;
            border-bottom: 1px dotted darkgray;
            padding-bottom: 10px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            left: 0px;
            top: 0px;
        }
         .auto-style6 {
            margin-left:10%;

        }
         .auto-style8 {
            margin-left:1%;
            text-align:center;
          
        }
        #dox {
        
        height:200px;
        width:800px;
        margin-left:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="contain">
    <!--详情头部-->
    <!--页面头部-->
   <header class="header">
    <div class="header1">
        <span>在线时间08：30-21:30</span>
        <span>欢迎访问花语在线商城 !</span>
        <div id="header1_1" data-toggle="header_5">
            <span class="seachtxt">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <img id="img1" src="img/1.png" alt=""/>
            <ul class="hide"></ul>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/order.png" OnClick="ImageButton3_Click" />
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
        <span> <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">问答反馈</asp:LinkButton></span> 
&nbsp;</div>
    </div>
</header>



    <!--详情主体-->
    <section>
        <div class="fixed">
            <ul>
                <li></li>
                <li></li>
                <li><a href=""><img src="img/top.png" alt=""></a></li>
            </ul>
        </div>


        <!--左边-->
        <div class="auto-style3">首页 / 所有商品 / 植物花卉002</div>
        <div class="left">
            <div  class="auto-style4">
                
                <%--<img id="mimg" src="img/product/002.jpg" alt="" aria-orientation="horizontal"/></div>--%>
            <!--放大镜大的div large_img-->
            <div id="large_img">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </div>

            <div class="left_text">
                <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td rowspan="5">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgurl") %>' />
                        </td>
                        <td rowspan="4"></td>
                        <td class="auto-style2">
                            名称：<asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            价格：<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            编号：<asp:Label ID="Label3" runat="server" Text='<%# Eval("fid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            类别：<asp:Label ID="Label4" runat="server" Text='<%# Eval("sort") %>'></asp:Label>
                        </td>
                    </tr>
                    
                    </tr>
                   
                </table>
               <div id="box"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button" runat="server" Text="加入购物车" Height="40px" Width="100px"  CommandArgument='<%# Eval("fid") %>' CommandName="buy"  onclick="Button3_Click" /></div>
            </ItemTemplate>
        </asp:DataList>
                 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                    <ContentTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="-" Width="30px" />
                        <asp:TextBox ID="TextBox2" runat="server" EnableTheming="True" Height="35px" Width="40px">0</asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="+" Width="30px" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                        
               
                <%-- <p><h2>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </h2></p>
                <p><h1>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </h1></p>
                <p class="gray-color">商品编号 :&nbsp004002</p>
                <p class="gray-color">分类：<span style="color: darkred">所有商品</span></p>
               <p>
                    <asp:Button ID="Button3" runat="server" BackColor="Black" ForeColor="White" Height="40px" Text="加入购物车" Width="140px" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Height="40px" Text="-" Width="30px"  />
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="30px" ></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Height="40px" Text="+" Width="30px"  />
                </p>--%>
                 
            </div>
            <div class="left_img2">
            
       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            
               <asp:DataList ID="DataList3" runat="server">
                   <ItemTemplate>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("imgurl_1") %>' Height="100px" Width="100px" />
                   </ItemTemplate>

               </asp:DataList></div>
            <div class="auto-style6">
                
                用户评论(0)
                <br />   <br />
目前还没有评论 
                <br />
                <br />
 只有买过此商品的用户登录后才能发表评论 
                <br />   <br />
  相关商品:
            </div>
               
                <div class="auto-style8">
               <div id="box">  <asp:DataList ID="DataList2" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <table >
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl='<%# Eval("imgurl") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' Height="180px" Width="180px"/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("fname") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' style="TEXT-DECORATION: none" ForeColor="Black" BorderWidth="0px"></asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("price") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' style="TEXT-DECORATION: none" Font-Strikeout="False" ForeColor="Black"></asp:LinkButton>
                            ￥</td>
                        
                        
                                   
                    </tr>
                </table>
            </ItemTemplate>
           
            
             
                   
               
        </asp:DataList></div></div>
          
          
        </div>

        <!--右边-->
        </div>
        <div class="right">
            <div class="jinpai">金牌店铺，值得信赖</div>
            <div class="right_text">花语&nbspHUAYU</div>
            <div class="right_text">信誉:&nbsp★★★★★</div>
            <div class="right_text">服务:&nbsp8.9</div>
            <div class="right_text">描述:&nbsp8.9</div>
            <div class="right_text">物流:&nbsp8.9</div>
            <p class="gray-color" style="padding-left: 10px">热卖商品&nbsp HOT &nbsp SALE</p>
            <div class="img2">
                <asp:DataList ID="DataList4" runat="server" RepeatColumns="2" Height="80px" Width="80px">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("imgurl") %>' PostBackUrl='<%# "/details.aspx?fid="+Eval("fid") %>' Height="135px" Width="135px" />
                    </ItemTemplate>

                </asp:DataList>
            </div>
        </div>

    </section>

    <!--详情尾部-->



    <!--页面尾部-->
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
    <!--页面尾部-->
</div>

<%--<script src="js/jquery-3.2.0.js"></script>
<script src="js/header_jquery.js"></script>
<script src="js/footer_jquery.js"></script>
<script src="js/glass.js"></script>
<script src="js/product_details/002.js"></script>--%>
    </form>
</body>
</html>
