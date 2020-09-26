using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flowershop
{
    public partial class wenjuan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            Session["AdminName"] = Request.QueryString["AdminName"];

            Session["UserName"] = Request.QueryString["UserName"];
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("allthings.aspx?serch=" + TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
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

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>alert('提交成功');</script>");
            Response.Write("<script>window.location.href='index.aspx';</script> ");
        }
    }
}