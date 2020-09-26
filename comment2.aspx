<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comment2.aspx.cs" Inherits="flowershop.comment2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="icon" href="img/header.png"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/offline-shore.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
       

        .auto-style1 {
            height: 357px;
            margin-left:16%;
        }

    </style>
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



    <div id="box" class="auto-style1">
   
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="uid" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2; color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="E_mailLabel" runat="server" Text='<%# Eval("E_mail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qetLabel" runat="server" Text='<%# Eval("qet") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ansLabel" runat="server" Text='<%# Eval("ans") %>' />
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
                        <asp:Label ID="uidLabel1" runat="server" Text='<%# Eval("uid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="qetTextBox" runat="server" Text='<%# Bind("qet") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ansTextBox" runat="server" Text='<%# Bind("ans") %>' />
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
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="qetTextBox" runat="server" Text='<%# Bind("qet") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ansTextBox" runat="server" Text='<%# Bind("ans") %>' />
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
                        <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="E_mailLabel" runat="server" Text='<%# Eval("E_mail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qetLabel" runat="server" Text='<%# Eval("qet") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ansLabel" runat="server" Text='<%# Eval("ans") %>' />
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
                                    <th runat="server">uid</th>
                                    <th runat="server">uname</th>
                                    <th runat="server">phone</th>
                                    <th runat="server">E_mail</th>
                                    <th runat="server">qet</th>
                                    <th runat="server">ans</th>
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
                        <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="E_mailLabel" runat="server" Text='<%# Eval("E_mail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qetLabel" runat="server" Text='<%# Eval("qet") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ansLabel" runat="server" Text='<%# Eval("ans") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
   
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flowershopConnectionString %>" SelectCommand="SELECT * FROM [comment]" DeleteCommand="DELETE FROM [comment] WHERE [uid] = @original_uid" InsertCommand="INSERT INTO [comment] ([uname], [phone], [E_mail], [qet], [ans]) VALUES (@uname, @phone, @E_mail, @qet, @ans)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [comment] SET [uname] = @uname, [phone] = @phone, [E_mail] = @E_mail, [qet] = @qet, [ans] = @ans WHERE [uid] = @original_uid">
            <DeleteParameters>
                <asp:Parameter Name="original_uid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="E_mail" Type="String" />
                <asp:Parameter Name="qet" Type="String" />
                <asp:Parameter Name="ans" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="E_mail" Type="String" />
                <asp:Parameter Name="qet" Type="String" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter Name="original_uid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
</section>

</div>
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
