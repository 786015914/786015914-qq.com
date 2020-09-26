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
    public partial class comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            Session["UserName"] = Request.QueryString["UserName"];
            SqlConnection sqlCon = new SqlConnection();
            //实例化SqlConnection对象连接数据库的字符串
            sqlCon.ConnectionString = "server=.;database=flowershop;Integrated Security=True;";
            //定义SQL语句
            string SqlStr = "select * from comment";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
            //实例化数据集DataSet
            DataSet ds = new DataSet();
            da.Fill(ds, "flower");
            //绑定DataList控件
           DataList1.DataSource = ds;//设置数据源，用于填充控件中的项的值列表
           DataList1.DataBind();//将控件及其所有子控件绑定到指定的数据源
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string uname = "";
            string phone = "";
            string email = "";
            string qet = "";
            string ans = "";
            uname = TextBox2.Text;
            phone = TextBox3.Text;
            email = TextBox4.Text;
            qet = TextBox5.Text;
           
            string sql = "insert into comment(uname,phone,E_mail,qet,ans) values('"+uname+"','"+phone+"','"+email+"','"+qet+"','"+ans+"')";
            flowerShop.Execsql(sql);
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ucenter.aspx?UserName=" + Session["UserName"]);
            Response.Redirect("ucenter.aspx");
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