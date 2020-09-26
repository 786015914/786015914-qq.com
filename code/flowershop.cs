using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Class1 的摘要说明
/// </summary>
public class flowerShop
{
    public static SqlConnection flowerShopconnection()
    {
        return new SqlConnection("server=.;database=flowershop;Integrated Security=True;");

    }
    public static DataTable ExecSel(string sql)
    {
        SqlConnection con = flowerShop.flowerShopconnection();
        con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        SqlDataAdapter oda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        oda.SelectCommand = com;
        oda.Fill(ds);
        con.Close();
        return ds.Tables[0];

    }

    public static void Execsql(string sql)
    {
        try
        {
            SqlConnection con = flowerShop.flowerShopconnection();
            con.Open();
            SqlCommand com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();
        }
        catch
        {
            throw;
        }
            
        
        

    }
    public static string SelOne(string sql)
    {
        
            SqlConnection con = flowerShop.flowerShopconnection();
            con.Open();
            SqlCommand com = new SqlCommand(sql, con);
            string result = com.ExecuteScalar().ToString();
            con.Close();
            return result;
        
       
       

    }
    public flowerShop()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static DataSet ReDs(string v)
    {
        try
        {
            string s = @"server=.;database=flowershop;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(s);
            SqlDataAdapter da = new SqlDataAdapter(v, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        catch (Exception)
        {
            throw;
        }
    }
    public int ExCmd(string str)
    {
        SqlConnection con = flowerShop.flowerShopconnection();
        con.Open();
        SqlCommand com = new SqlCommand(str, con);
        int sdt = com.ExecuteNonQuery();
        con.Close();
        return sdt;
    }

    internal int ExCmd(object p)
    {
        throw new NotImplementedException();
    }
}