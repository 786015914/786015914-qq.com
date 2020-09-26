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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            Session["AdminName"] = Request.QueryString["AdminName"];
           
            Session["UserName"] = Request.QueryString["UserName"];
            //实例化SqlConnection对象
            SqlConnection sqlCon = new SqlConnection();
            //实例化SqlConnection对象连接数据库的字符串
            sqlCon.ConnectionString = "server=.;database=flowershop;Integrated Security=True;";
            //定义SQL语句
            string SqlStr = "select top(5)*  from flower";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
            //实例化数据集DataSet
            DataSet ds = new DataSet();
            da.Fill(ds, "flower");
            //绑定DataList控件
            DataList1.DataSource = ds;//设置数据源，用于填充控件中的项的值列表
            DataList1.DataBind();//将控件及其所有子控件绑定到指定的数据源

            //SqlConnection sqlCon1 = new SqlConnection();
            ////实例化SqlConnection对象连接数据库的字符串
            //sqlCon1.ConnectionString = "server=.;database=flowershop;Integrated Security=True;";
            string SqlStr1 = "select top(5)*  from flower WHERE SORT='婚庆系列' or SORT='情侣系列'";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da1 = new SqlDataAdapter(SqlStr1, sqlCon);
            //实例化数据集DataSet
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "flower");
            
            //绑定DataList控件
            DataList2.DataSource = ds1;//设置数据源，用于填充控件中的项的值列表
            DataList2.DataBind();//将控件及其所有子控件绑定到指定的数据源
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
           
            Response.Redirect("allthings.aspx?serch="+TextBox1.Text);
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

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx?AdminName=" + Session["AdminName"]);
            Response.Redirect("index.aspx?UserName=" + Session["UserName"]);
            Response.Redirect("index.aspx");
        }
    }
}