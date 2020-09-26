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
    public partial class sureord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];

            SqlConnection connection = new SqlConnection("server =.; database = flowershop; Integrated Security = True;");
            string sql1 = string.Format("select address1 from UserInfo where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command = new SqlCommand(sql1, connection);
            SqlDataReader dataReader = command.ExecuteReader();
            dataReader.Read();
            String name = (string)dataReader[0];
            TextBox1.Text = name;
            dataReader.Close();
            connection.Close();

            
            string sql2 = string.Format("select address2 from UserInfo where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command2 = new SqlCommand(sql2, connection);
            SqlDataReader dataReader2 = command2.ExecuteReader();
            dataReader2.Read();
            String name2 = (string)dataReader2[0];
            TextBox2.Text = name2;
            dataReader2.Close();
            connection.Close();

            string sql3 = string.Format("select address3 from UserInfo where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command3 = new SqlCommand(sql3, connection);
            SqlDataReader dataReader3 = command3.ExecuteReader();
            dataReader3.Read();
            String name3= (string)dataReader3[0];
            TextBox3.Text = name3;
            dataReader3.Close();
            connection.Close();

            string sql4 = string.Format("select name from UserInfo where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command4 = new SqlCommand(sql4, connection);
            SqlDataReader dataReader4 = command4.ExecuteReader();
            dataReader4.Read();
            String name4 = (string)dataReader4[0];
            Label1.Text = name4;
            dataReader4.Close();
            connection.Close();

            string sql5 = string.Format("select phone from UserInfo where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command5 = new SqlCommand(sql5, connection);
            SqlDataReader dataReader5 = command5.ExecuteReader();
            dataReader5.Read();
            String name5 = (string)dataReader5[0];
            Label3.Text = name5;
            dataReader5.Close();
            connection.Close();


            string sql6 = string.Format("select price from Cart1 where name='" + Session["UserName"] + "'");
            connection.Open();
            SqlCommand command6 = new SqlCommand(sql6, connection);
            SqlDataReader dataReader6 = command6.ExecuteReader();
            dataReader6.Read();
            String name6 = (string)dataReader6[0].ToString();
            Label2.Text = name6;
            dataReader6.Close();
            connection.Close();



        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox4.Text);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
         Response.Redirect("order.aspx?UserName=" + Session["UserName"]);
            Response.Redirect("order.aspx");
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