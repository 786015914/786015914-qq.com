
using System;
using System.Data;
using System.Web.UI;
using System.Web.SessionState;
using System.Web.UI.WebControls;

namespace flowershop
{
    public partial class cart : System.Web.UI.Page, IRequiresSessionState
    {

        public static string M_str_Count;
        protected void Page_Load(object sender, EventArgs e)
        {






            Label11.Text = "Whelcom:" + Session["UserName"] + Session["AdminName"];


            if (Session["UserName"] == null)
            {
                Response.Redirect("/login.aspx");
            }
            else
            {
                //Response.Redirect("/login.aspx");
            }
            if (!Page.IsPostBack)
            {

                string P_str_CartID = Session["UserName"].ToString();
                string P_str_fID = Request.QueryString["id"];
                if (P_str_fID == null)
                {
                    Bind(P_str_CartID);
                    return;
                }

                DataSet ds = flowerShop.ReDs("select count(*) from Cart1 where fid=" + P_str_fID + " and CartId=" + P_str_CartID);
                flowerShop db = new flowerShop();
                if (ds.Tables[0].Rows[0][0].ToString() == "0")
                {
                    DataSet ds1 = flowerShop.ReDs("select fname,price from flower where fid=" + P_str_fID);
                    DataSet ds2 = flowerShop.ReDs("select uid from UserInfo where uid=" + P_str_CartID);
                    string P_str_fName = ds1.Tables[0].Rows[0][0].ToString();
                    string P_str_Price = ds1.Tables[0].Rows[0][1].ToString();
                    string UserName = ds2.Tables[0].Rows[0][0].ToString();
                    string p_str_Num = Session["cot"].ToString();
                    string n = Session["UserName"].ToString();
                    string da = DateTime.Now.ToString("yyyy-mm-dd");
                    string str = "Insert into Cart1 (CartID,fid,fname,price,count,name,date) values('" + P_str_CartID + "','" + P_str_fID + "','" + P_str_fName + "','" + P_str_Price + "','" + p_str_Num + "','"+n+"','"+da+"')";
                    db.ExCmd(str);
               
                   
                }
                else
                {
                    db.ExCmd("update flower set sort=" + P_str_CartID + " where  fid=" + P_str_fID);
                    db.ExCmd("update Cart1 set count=count+1 where  fid=" + P_str_fID);//uid=" + P_str_CartID + " and

                }
            
                Bind(P_str_CartID);
            }


        }
        public void Bind(string P_str_fID)
        {
            DataSet ds2 = flowerShop.ReDs("select *,price*count as counts from Cart1  where CartID=" + P_str_fID);
            float P_f1_count = 0;
            foreach (DataRow dr in ds2.Tables[0].Rows)
            {
                P_f1_count += Convert.ToSingle(dr["counts"]);
            }
            M_str_Count = P_f1_count.ToString();
            DataList1.DataSource = ds2;
            DataList1.DataBind();


        }

        protected void DataList1_lnkbtnDelete(object source, DataListCommandEventArgs e)
        {
            string P_str_CartID = Session["UserName"].ToString();
            flowerShop db = new flowerShop();
            int n = db.ExCmd("delete from Cart1 where CartId='" + Session["UserID"] + "' and fid='" + e.CommandArgument.ToString() + "''");
            if (n < 0)
            {
                Response.Write("<script> 删除失败，请重试！</ script >");
            }
            else
            { Bind(P_str_CartID); }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("details.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            Response.Redirect("sureord.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string P_str_CartID = Session["UserName"].ToString();
            flowerShop db = new flowerShop();
            int n = db.ExCmd("delete from Cart1 where CartId=" + Session["UserName"]);
            if (n < 0)
                Response.Write("<soript>清空失败，请重试！</soript>");
            else
                Bind(P_str_CartID);
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            flowerShop db = new flowerShop();

            if (e.CommandName == "updateNum")
            {
                string P_str_CartID = Session["UserName"].ToString();
                string P_str_Num = ((TextBox)e.Item.FindControl("txtBookNum")).Text;
                int n = db.ExCmd("update Cart1 set count=" + P_str_Num + " where fid =" + e.CommandArgument + " and CartId=" + P_str_CartID);
                if (n > 0)
                {
                    Bind(P_str_CartID);
                }

            }
            else if (e.CommandName == "DeleteItem")
            {
                string P_str_CartID = Session["UserName"].ToString();
                string delete_string = "delete Cart1 where fid =" + e.CommandArgument + " and CartId=" + P_str_CartID;
                int n = db.ExCmd(delete_string);
                if (n > 0)
                    Bind(P_str_CartID);
            }
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script language='javascript'>alert('未登录');</script>");
            }
            else 
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
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
           
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["AdminName"] = "";
            Session["UserName"] = "";
            Response.Redirect("index.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["AdminName"] != null)
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