<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="flowershop.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>花店-购物车</title>
    <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cart.css">
    <style type="text/css">
        .auto-style1 {
            width: 155px;
        }
    </style>
</head>
<body> <form id="form1" runat="server">
<!--页面头部-->
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
    

<!--购物车主体-->
    <div class="cart_text"><h1>我的购物车</h1></div>
   <div class="cart_show">
   
         
       <!--<p id="p"></p>-->
       <asp:DataList ID="DataList1" runat="server" style="margin-right: 345px"  Width="777px" OnItemCommand="DataList1_ItemCommand">
                <%--<AlternatingItemTemplate>
                 
                    <table class="auto-style1">
                        <thead>
             <tr>
               <th>商品</th>
               <th>名称</th>
               <th>数量</th>
               <th>价格</th>
               <th>操作</th>
             </tr>
           </thead>
                        <tr>
                         
                            <td class="auto-style2">
                                <asp:Label ID="labBookName" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:Label ID="labBookPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>' ></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtBookNum" runat="server" Height="22px" Text='<%# Eval("count") %>' Width="39px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:LinkButton ID="lnkbtUpdateCart" CommandName="updateNum" CommandArgument='<%# Eval("fid") %>' runat="server"  >更新购物车</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="lnkbtnDelete" CommandName="DeleteItem" CommandArgument='<%# Eval("fid") %>' runat="server">删除</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </AlternatingItemTemplate>--%>
                <FooterTemplate>
                    <div class="col-xs-12">
           <h3 class="fr" data-total="total"></h3>
           <h3 class="fr"><table class="auto-style1">
                        <tr>
                            <td>合计金额：<asp:Label ID="Label1" runat="server" Text='<%#M_str_Count %>'></asp:Label></td>
                        </tr>
                    </table></h3>
                    
                </FooterTemplate>
                <ItemTemplate>
                    
                    <table class="table table-hover tcart">
                        <thead>
                            <tr>
                                <th>商品</th>
                                <th>名称</th>
                                <th>数量</th>
                                <th>价格</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                      
                             
                   
                            <td class="auto-style2">
                             
                                <asp:Label ID="labBookName0" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                            </td>
                           
                            <td class="auto-style1">
                              
                                <asp:Label ID="labBookName" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                            </td>
                            <td class="auto-style4">
                              
                                <asp:TextBox ID="txtBookNum" runat="server" Height="22px" Text='<%# Eval("count") %>' Width="39px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                              
                                <asp:Label ID="labBookPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>'></asp:Label>
                                <td>
                               
                                    <asp:LinkButton ID="lnkbtUpdateCart" runat="server" CommandArgument='<%# Eval("fid") %>' CommandName="updateNum">更新购物车</asp:LinkButton>
                             <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandArgument='<%# Eval("fid") %>' CommandName="DeleteItem">删除</asp:LinkButton>
                                </td>
                            </td>
                        </tr>
                    </table>
                  
                </ItemTemplate>
            </asp:DataList>

       <div class="col-xs-12">
           <h3 class="fr" data-total="total"></h3>
       </div>
         <div class="col-xs-12" style="text-align:center">
         <asp:Button ID="Button1" runat="server" Text="继续购买" Height="37px" Width="160px" BackColor="#ff0000" OnClick="Button1_Click" />
          <asp:Button ID="Button2" runat="server" Text="清空购物车" BackColor="#ff5050" Height="35px" Width="166px"  OnClick="Button2_Click"/>
          <asp:Button ID="Button3" runat="server" Text="去结算" Height="33px" Width="120px"  BackColor="#009933" OnClick="Button3_Click"/>
       </div>
   </div>

         </form>

<!--页面尾部-->
<div class="footer" style="margin-top:50%">
<footer>
    <div class="footer1">
        <ul>
            <li>About Change
                ">
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

<%--<script src="js/jquery-3.2.0.js"></script>
<script src="js/header_jquery.js"></script>
<script src="js/footer_jquery.js"></script>
<script src="js/cart.js"></script>--%>
</body>
</html>
