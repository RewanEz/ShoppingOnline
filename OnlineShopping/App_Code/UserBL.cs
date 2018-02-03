using System;
using System.Collections.Generic;
using System.Data;

namespace OnlineShopping
{
    public class UserBL
    {
        public static DataTable GetAllCurrent()
        {
            string query = "select * from Users where status='unblocked'";
            return DBManager.ExecuteQuery(query);
        }

        public static DataTable GetAllNew()
        {
            string query = "select * from Users where status='blocked'";
            return DBManager.ExecuteQuery(query);
        }

        public static DataTable GetUserByEmail(string _email)
        {
            string query = $"select * from users where Email = {_email}";
            return DBManager.ExecuteQuery(query);
        }
        public static int Insert(string _fname, string _lname, string _email, string _Password, int _age, string _geneder)
        {
            string query = $"insert into users " +
                $"(userFname,userLname,Email,Password,Gender,Age,Status)" +
                $" values({_fname},{_lname},{_email},{_Password},{_geneder}," +
                $"{_age},'blocked')";

            return DBManager.ExecuteNonQuery(query);
        }

        public static int Update(int _id, string _fname, string _lname, string _email, string _Password, int _age, string _geneder)
        {
            string query = $"update Users set userFname={_fname}," +
                $"userLname={_lname},Email={_email},Password={_Password}," +
                $"Gender={_geneder},Age={_age} where userID = {_id}";

            return DBManager.ExecuteNonQuery(query);
        }

        public static int UpdateStatus(int _id)
        {
            string query = $"update Users set Status='unblocked'" +
                $" where userID = {_id}";

            return DBManager.ExecuteNonQuery(query);
        }

        public static int Delete(int _id)
        {
            string query = $"update Users set Status='blocked'" +
               $" where userID = {_id}";

            return DBManager.ExecuteNonQuery(query);
        }
    }
}