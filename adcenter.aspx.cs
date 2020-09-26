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
    public partial class adcenter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            SqlConnection connection = new SqlConnection("server =.; database = flowershop; Integrated Security = True;");
            string sql1 = string.Format("select adminname from AdminInfo where adminname='" + Session["AdminName"] + "'");
            connection.Open();
            SqlCommand command = new SqlCommand(sql1, connection);
            SqlDataReader dataReader = command.ExecuteReader();
            dataReader.Read();
            String name = (string)dataReader[0];
            TextBox1.Text = name;
            dataReader.Close();
            connection.Close();

            string sql2 = string.Format("select adminpwd from AdminInfo where adminpwd='" + Session["AdminName"] + "'");
            connection.Open();
            SqlCommand command2 = new SqlCommand(sql2, connection);
            SqlDataReader dataReader2 = command2.ExecuteReader();
            dataReader2.Read();
            String name2 = (string)dataReader2[0];
            TextBox2.Text = name;
            dataReader2.Close();
            connection.Close();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox5.Text);
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("comment2.aspx");
            
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
           
            

                Response.Redirect("comment2.aspx");
            
            
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("fm.aspx");
 
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Response.Redirect("index.aspx?UserName=" + Session["AdminName"]);
            Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql1 = "select count(*) from AdminInfo where name='" + Session["AdminName"] + "'";
            int i = int.Parse(flowerShop.SelOne(sql1));
            if (i != 0)
            {
                string sql = "update AdminInfo set adminname='" + TextBox1.Text.ToString() + "',adminpwd='" + TextBox2.Text.ToString() + "'";

                flowerShop.Execsql(sql);

                Response.Write("<script language='javascript'>alert('修改成功');</script>");


            }
            else
            {
                Response.Write("<script language='javascript'>alert('修改失败');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] ="";
            Response.Redirect("index.aspx");
        }
    }
}