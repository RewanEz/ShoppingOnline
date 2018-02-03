using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace OnlineShopping
{
    public class ProductBL
    {
        public static DataTable GetAll()
        {
            string query = "select * from Product";
            return DBManager.ExecuteQuery(query);
        }

        public static DataTable GetByName(string _prodName)
        {
            string query = $"select * from Product " +
                $" where productName like '{_prodName}'";
            return DBManager.ExecuteQuery(query);
        }

        public static int Insert(string _prodName, int _price, string _desc, int _catID, int _quantity, int _promotion, byte[] img)
        {
            string query = $"insert into product (productName,price," +
                $"Description,categoryID,Image,Quantity,Promotion,deleted) " +
                $"values({_prodName},{_price},{_desc},{_catID},{img},{_quantity}," +
                $"{_promotion},{0})";
            return DBManager.ExecuteNonQuery(query);
        }

        public static int Update(int _id, string _prodName, int _price, string _desc, int _catID, int _quantity, int _promotion, byte[] img)
        {
            string query = $"update product set" +
                $" productName={_prodName},price={_price}," +
                $"Description={_desc},categoryID={_catID},Image={img}," +
                $"Quantity={_quantity},Promotion ={_quantity} " +
                $"where productID={_id}";
            return DBManager.ExecuteNonQuery(query);
        }

        public static int Deleted(int _id)
        {
            string query = $"update product set deleted = 1 " +
                $"where productID = { _id }";
            return DBManager.ExecuteNonQuery(query);
        }
    }
}