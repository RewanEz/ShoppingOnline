using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineShopping
{
    public class DBManager
    {
        public static DataTable ExecuteQuery(string query)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand(query, con);
            DataTable tempTable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(tempTable);
            return tempTable;
        }
        public static int ExecuteNonQuery(string query)
        {
            int affectedRows;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                affectedRows = cmd.ExecuteNonQuery();
            }
            catch (System.Exception)
            {

                throw;
            }
            finally
            {
                con.Close();
            }
            return affectedRows;
        }
    }
}