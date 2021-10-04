using System;
using MySql.Data.MySqlClient;

namespace MySQL_Connector
{
    class MainClass
    {
        static MySqlConnection connection;

        static void Main(string[] args)
        {
            // connect to database
            connection = new MySqlConnection();
            try
            {
                connection.ConnectionString =
                    "server = 127.0.0.1;User Id = root" +
                    ";database=c_sharp_test;" +
                    "Password = ''" + 
                    "; SSL Mode=None";

                connection.Open();
                Console.WriteLine("Connection established!");
            }
            catch (Exception e)
            {
                Console.WriteLine("FAIL: " + e.ToString());
            }

            // read from database
            Customer testCustomer = new Customer(1, "John", "Doe");
            try
            {
                string sql = "SELECT * FROM customer";
                MySqlCommand cmd = new MySqlCommand(sql, connection);
                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Console.WriteLine("reading...");
                    for (int i = 0; i < reader.FieldCount; i++)
                    {
                        string column = (i != reader.FieldCount - 1) ? reader[i].ToString() + " -- " : reader[i].ToString();
                        Console.Write(column);
                    }
                }
                reader.Close();
                Console.WriteLine("\nClosed reader...");
            }
            catch(Exception e)
            {
                Console.WriteLine(e.ToString());
            }

            // close connection
            connection.Close();
        }
    }

    class Customer
    {
        private int id;
        public string firstName;
        public string lastName;

        public Customer(int id, string firstName, string lastName)
        {
            this.id = id;
            this.firstName = firstName;
            this.lastName = lastName;
        }

        public int getCustomerId()
        {
            return this.id;
        }
    }
}
