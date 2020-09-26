using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace flowershop
{
    public partial class cgpwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            Session["UserName"] = Request.QueryString["UserName"];
            SqlConnection connection = new SqlConnection("server =.; database = flowershop; Integrated Security = True;");
            string sql1 = string.Format("select qet from UserInfo where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command = new SqlCommand(sql1, connection);
            SqlDataReader dataReader = command.ExecuteReader();
            dataReader.Read();
            String name = (string)dataReader[0];
            TextBox1.Text = name;
            dataReader.Close();
            connection.Close();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("ucenter.aspx?UserName=" + Session["UserName"]);
            Response.Redirect("ucenter.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            Response.Redirect("index.aspx?UserName=" + Session["UserName"]);
            Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql1 = "select count(*) from UserInfo where name='" + Session["UserName"] + "'";
            int i = int.Parse(flowerShop.SelOne(sql1));
            if (i != 0)
            {
                string sql = "update UserInfo set upwd='" + TextBox4.Text.ToString() + "' where upwd='" + TextBox3.Text.ToString() + "'and ans='" + TextBox2.Text.ToString() + "'";

                flowerShop.Execsql(sql);

                Response.Write("<script language='javascript'>alert('修改成功');</script>");


            }
            else
            {
                Response.Write("<script language='javascript'>alert('修改失败');</script>");
            }
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx");
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