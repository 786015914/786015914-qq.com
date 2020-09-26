<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fm.aspx.cs" Inherits="flowershop.fm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        <span><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">问答反馈</asp:LinkButton></span>
&nbsp;</div>
    </div>
</header>


        <asp:ListView ID="ListView1" runat="server" DataKeyNames="fid" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2; color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurlLabel" runat="server" Text='<%# Eval("imgurl") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sortLabel" runat="server" Text='<%# Eval("sort") %>' />
                    </td>
                    <td>
                        <asp:Label ID="intorLabel" runat="server" Text='<%# Eval("intor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurl_1Label" runat="server" Text='<%# Eval("imgurl_1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurl_2Label" runat="server" Text='<%# Eval("imgurl_2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurllargeLabel" runat="server" Text='<%# Eval("imgurllarge") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #FFCC66; color: #000080;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="fidLabel1" runat="server" Text='<%# Eval("fid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurlTextBox" runat="server" Text='<%# Bind("imgurl") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sortTextBox" runat="server" Text='<%# Bind("sort") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="intorTextBox" runat="server" Text='<%# Bind("intor") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="countTextBox" runat="server" Text='<%# Bind("count") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurl_1TextBox" runat="server" Text='<%# Bind("imgurl_1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurl_2TextBox" runat="server" Text='<%# Bind("imgurl_2") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurllargeTextBox" runat="server" Text='<%# Bind("imgurllarge") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        <asp:TextBox ID="fidTextBox" runat="server" Text='<%# Bind("fid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurlTextBox" runat="server" Text='<%# Bind("imgurl") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sortTextBox" runat="server" Text='<%# Bind("sort") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="intorTextBox" runat="server" Text='<%# Bind("intor") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="countTextBox" runat="server" Text='<%# Bind("count") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurl_1TextBox" runat="server" Text='<%# Bind("imgurl_1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurl_2TextBox" runat="server" Text='<%# Bind("imgurl_2") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="imgurllargeTextBox" runat="server" Text='<%# Bind("imgurllarge") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #FFFBD6; color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurlLabel" runat="server" Text='<%# Eval("imgurl") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sortLabel" runat="server" Text='<%# Eval("sort") %>' />
                    </td>
                    <td>
                        <asp:Label ID="intorLabel" runat="server" Text='<%# Eval("intor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurl_1Label" runat="server" Text='<%# Eval("imgurl_1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurl_2Label" runat="server" Text='<%# Eval("imgurl_2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurllargeLabel" runat="server" Text='<%# Eval("imgurllarge") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">fid</th>
                                    <th runat="server">price</th>
                                    <th runat="server">fname</th>
                                    <th runat="server">imgurl</th>
                                    <th runat="server">sort</th>
                                    <th runat="server">intor</th>
                                    <th runat="server">count</th>
                                    <th runat="server">imgurl_1</th>
                                    <th runat="server">imgurl_2</th>
                                    <th runat="server">imgurllarge</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #FFCC66; font-weight: bold;color: #000080;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurlLabel" runat="server" Text='<%# Eval("imgurl") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sortLabel" runat="server" Text='<%# Eval("sort") %>' />
                    </td>
                    <td>
                        <asp:Label ID="intorLabel" runat="server" Text='<%# Eval("intor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurl_1Label" runat="server" Text='<%# Eval("imgurl_1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurl_2Label" runat="server" Text='<%# Eval("imgurl_2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imgurllargeLabel" runat="server" Text='<%# Eval("imgurllarge") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flowershopConnectionString %>" DeleteCommand="DELETE FROM [flower] WHERE [fid] = @fid" InsertCommand="INSERT INTO [flower] ([fid], [price], [fname], [imgurl], [sort], [intor], [count], [imgurl_1], [imgurl_2], [imgurllarge]) VALUES (@fid, @price, @fname, @imgurl, @sort, @intor, @count, @imgurl_1, @imgurl_2, @imgurllarge)" SelectCommand="SELECT * FROM [flower]" UpdateCommand="UPDATE [flower] SET [price] = @price, [fname] = @fname, [imgurl] = @imgurl, [sort] = @sort, [intor] = @intor, [count] = @count, [imgurl_1] = @imgurl_1, [imgurl_2] = @imgurl_2, [imgurllarge] = @imgurllarge WHERE [fid] = @fid">
            <DeleteParameters>
                <asp:Parameter Name="fid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fid" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="imgurl" Type="String" />
                <asp:Parameter Name="sort" Type="String" />
                <asp:Parameter Name="intor" Type="String" />
                <asp:Parameter Name="count" Type="Int32" />
                <asp:Parameter Name="imgurl_1" Type="String" />
                <asp:Parameter Name="imgurl_2" Type="String" />
                <asp:Parameter Name="imgurllarge" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="imgurl" Type="String" />
                <asp:Parameter Name="sort" Type="String" />
                <asp:Parameter Name="intor" Type="String" />
                <asp:Parameter Name="count" Type="Int32" />
                <asp:Parameter Name="imgurl_1" Type="String" />
                <asp:Parameter Name="imgurl_2" Type="String" />
                <asp:Parameter Name="imgurllarge" Type="String" />
                <asp:Parameter Name="fid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


<!--用户中心主体-->

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
