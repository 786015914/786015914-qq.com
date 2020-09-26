using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flowershop
{
    public partial class fm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("allthings.aspx?serch=" + TextBox5.Text);
            TextBox5.Text = "";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
          

                Response.Redirect("adcenter.aspx");
            
           
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("comment2.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("comment2.aspx");
        }
    }
}