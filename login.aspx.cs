using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flowershop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Session["UserName"]= Request.QueryString["UserName"];
            Session["AdminName"] = Request.QueryString["AdminName"];
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        { if ((Session["UserName"]!=null)||(Session["AdminName"]!=null))
            {
                Response.Write("<script language='javascript'>alert('您已登录，请先注销');</script>");
            }
            else
            {
                if (TextBox1.Text == null)
                {
                    Response.Write("<script language='javascript'>alert('用户名和密码不能为空');</script>");
                }
                if (TextBox2.Text == null)
                {
                    Response.Write("<script language='javascript'>alert('用户名和密码不能为空');</script>");
                }
                if (CheckBox1.Checked == true)
                {
                    string sql1 = "select count(*)  from AdminInfo where adminname='" + TextBox1.Text.ToString() + "' and  adminpwd='" + TextBox2.Text.ToString() + "'";
                    int j = int.Parse(flowerShop.SelOne(sql1));

                    if (j == 0 && ((TextBox2.Text != null) || (TextBox1.Text != null)))
                    {
                        Response.Write("<script language='javascript'>alert('用户名或密码错误');</script>");
                    }
                    else
                    {
                        Session["AdminName"] = TextBox1.Text.ToString();
                        Session["AdminPwd"] = TextBox2.Text.ToString();
                        Response.Redirect("index.aspx?AdminName=" + TextBox1.Text);
                        Response.Redirect("index.aspx");
                    }
                }
                else
                {
                    string sql = "select count(*)  from UserInfo where uid='" + TextBox1.Text.ToString() + "' and  upwd='" + TextBox2.Text.ToString() + "'";
                    int i = int.Parse(flowerShop.SelOne(sql));

                    if (i == 0 && ((TextBox2.Text != null) || (TextBox1.Text != null)))
                    {
                        Response.Write("<script language='javascript'>alert('用户名或密码错误');</script>");
                    }
                    else
                    {
                        Session["UserName"] = TextBox1.Text.ToString();
                        Session["UserPwd"] = TextBox2.Text.ToString();
                        Response.Redirect("index.aspx?UserName=" + TextBox1.Text);
                        Response.Redirect("index.aspx");
                    }
                }
            }
           
          

           

        }









        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox1.Text);
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script language='javascript'>alert('请先登录');</script>");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("login.aspx?AdminName=" + Session["AdminName"]);
            Response.Redirect("login.aspx?UserName=" + Session["UserName"]);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            if (Session["AdminName"] != null)
            {

                Response.Redirect("comment2.aspx");
            }
            else
            {
                Response.Redirect("comment.aspx");

            }
        }
    }
    }
