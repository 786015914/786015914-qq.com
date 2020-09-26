using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flowershop
{
    public partial class comment2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
            Session["UserName"] = Request.QueryString["UserName"];
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
           

                Response.Redirect("adcenter.aspx");
            
         
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
           

                Response.Redirect("comment2.aspx");
           
           
        }
    }
}