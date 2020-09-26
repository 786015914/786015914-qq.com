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
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            //实例化SqlConnection对象
            string fid = "";
            if (Request.QueryString["fid"] == null)
            {
                fid = "1";
            }
            else
            { 
              fid= Request.QueryString["fid"];
            }
           
            SqlConnection sqlCon = new SqlConnection();
            //实例化SqlConnection对象连接数据库的字符串
            sqlCon.ConnectionString = "server=.;database=flowershop;Integrated Security=True;";
            //定义SQL语句
            string SqlStr = "select * from flower where fid='" + fid + "'";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
            //实例化数据集DataSet
            DataSet ds = new DataSet();
            da.Fill(ds, "flower");
            //绑定DataList控件
            DataList1.DataSource = ds;//设置数据源，用于填充控件中的项的值列表
            DataList1.DataBind();//将控件及其所有子控件绑定到指定的数据源

            string SqlStr1 = "select top(4)* from flower ";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da1 = new SqlDataAdapter(SqlStr1, sqlCon);
            //实例化数据集DataSet
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "flower");
            //绑定DataList控件
            DataList2.DataSource = ds1;//设置数据源，用于填充控件中的项的值列表
            DataList2.DataBind();//将控件及其所有子控件绑定到指定的数据源

            string SqlStr2 = "select * from flower where fid='" + fid + "' ";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da2 = new SqlDataAdapter(SqlStr2, sqlCon);
            //实例化数据集DataSet
            DataSet ds2 = new DataSet();
            da2.Fill(ds2, "flower");
            //绑定DataList控件
            DataList3.DataSource = ds2;//设置数据源，用于填充控件中的项的值列表
            DataList3.DataBind();//将控件及其所有子控件绑定到指定的数据源

            string SqlStr3 = "select top(7)* from flower  WHERE SORT='婚庆系列' or SORT='情侣系列'";
            //实例化SqlDataAdapter对象
            SqlDataAdapter da3 = new SqlDataAdapter(SqlStr3, sqlCon);
            //实例化数据集DataSet
            DataSet ds3 = new DataSet();
            da3.Fill(ds3, "flower");
            //绑定DataList控件
            DataList4.DataSource = ds3;//设置数据源，用于填充控件中的项的值列表
            DataList4.DataBind();//将控件及其所有子控件绑定到指定的数据源

           


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(Console.ReadLine());
            string num =@"^[0 - 9] *$";
            if (TextBox1.Text != num)
            {
                Response.Write("<script language='javascript'>alert('请输入数字');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            int a = int.Parse(TextBox2.Text.Trim().ToString());
            a = a + 1;
            
            TextBox2.Text = a.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox2.Text.Trim().ToString());
            a = a - 1;
            TextBox2.Text = a.ToString();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string resumeId = ((Button)sender).CommandArgument.ToString();
            //PostBackUrl = "~/cart.aspx?id=<%# Eval("fid") %>"
            Session["cot"] = TextBox2.Text;
            Response.Redirect("~/cart.aspx?id=" + resumeId);
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