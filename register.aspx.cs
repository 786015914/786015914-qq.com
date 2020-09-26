using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flowershop
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string sql1 = "select count(*) from UserInfo where uid='" + TextBox1.Text.ToString() + "'";
            int i = int.Parse(flowerShop.SelOne(sql1));
            if (i == 0)
            {
                string uid = TextBox1.Text.ToString();
                string upwd = TextBox2.Text.ToString();
                string name = TextBox4.Text.ToString();
                string address = TextBox5.Text.ToString();
                string phone = TextBox6.Text.ToString();
                string email = TextBox7.Text.ToString();
                string pwdqst = TextBox8.Text.ToString();
                string pwdans = TextBox9.Text.ToString();
                string id = TextBox10.Text.ToString();
                

                string sql = "insert into UserInfo(uid,upwd,name,address,phone,E_mail,pwdqst,pwdans,ID) values('" + uid + "','" + upwd + "','" + name + "','" + address + "','" + phone + "','" + email + "','" + pwdqst+ "','" +pwdans+ "','" + id + "')";
                flowerShop.Execsql(sql);

                Response.Write("<script language='javascript'>alert('注册成功');</script>");
                Response.Write("<script>window.location.href='login.aspx';</script> ");

            }
            else
            {
                Response.Write("<script language='javascript'>alert('用户名不可用');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select count(*)  from UserInfo where uid='" + TextBox1.Text.ToString() + "'";
            int i = int.Parse(flowerShop.SelOne(sql));
            if (i == 0)
            {
                Response.Write("<script language='javascript'>alert('用户名可用');</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('用户名不可用');</script>");
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["AdminName"] != null)
            {

                Response.Redirect("adcenter.aspx");
            }
            else
            {
                if (Session["UserName"] == null)
                {
                    Response.Write("<script language='javascript'>alert('未登录');</script>");
                }
                else
                {
                    Response.Redirect("ucenter.aspx?UserName=" + Session["UserName"]);
                    Response.Redirect("ucenter.aspx");
                }

            }
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

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx");
        }
    }
}