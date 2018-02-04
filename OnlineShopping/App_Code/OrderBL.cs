using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;

namespace OnlineShopping
{
    public class OrderBL
    {
        public static DataTable GetALLByUser(string _email)
        {
            //get user id By email
            string query = "select *,userFname+userLname as User Name from " +
                "order o,users us where us.userID=o.userID ";

            return DBManager.ExecuteQuery(query);
        }

        public static DataTable GetALL(string _email)
        {
            //get user id By email
            string query = "select *,userFname+userLname as User Name from " +
                "order o,users us " +
                "where us.userID=o.userID where status not 'delivered'";

            return DBManager.ExecuteQuery(query);
        }

        public static int Inset(string _email, DateTime _date, decimal _total, string _status, string _address)
        {
            int userID = int.Parse((UserBL.GetUserByEmail(_email)).Rows[0]["userID"].ToString());

            string query = $"insert into order (Date,totalPrice,Status,delivaryAddress,userID)" +
                $" values ({_date},{_total},{_status},{_address},{userID}) ";

            return DBManager.ExecuteNonQuery(query);
        }

        public static int UpdateStatus(int _id, string _status)
        {
            string query = $"update order set status= {_status} ";
            return DBManager.ExecuteNonQuery(query);
        }

        public static int Delete()
        {
            string query = $"update order set status='delivered' ";
            return DBManager.ExecuteNonQuery(query);
        }
    }
}