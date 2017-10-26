using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace SOS.TestApplication.Code_File
{
    public class AppDataManager
    {
        // Set Connection string to Login DB.
        SqlConnection LoginDBConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginDBConnectionString"].ConnectionString);


        // Get Data from SQL DB.
        public DataTable GetData(string sql)
        {
            try
            {
                if (sql.Trim() == "")
                {
                    throw new ArgumentException("The SQL statement is empty.");
                }
                else
                {
                    DataTable dt = new DataTable();
                    if (LoginDBConnection.State != ConnectionState.Open)
                    {
                        LoginDBConnection.Open();
                        SqlDataAdapter da = new SqlDataAdapter(sql, LoginDBConnection);
                        da.Fill(dt);
                        LoginDBConnection.Close();
                    }
                    else
                    {
                        SqlDataAdapter da = new SqlDataAdapter(sql, LoginDBConnection);
                        da.Fill(dt);
                    }
                    return dt;
                }
            }
            catch (ArgumentException e)
            {   
                //Output exception in console.
                Console.Write(e.Message);
            }
            catch (SqlException e)
            {
                //Output exception in console.
                Console.Write(e.Message);
            }
            return null;
        }

        public void SetData(string sql, SqlTransaction trans)
        {
            try
            {
                if (sql.Trim() == "")
                {
                    throw new ArgumentException("The SQL statement is empty.");
                }

                SqlCommand SQLCmd = new SqlCommand(sql, LoginDBConnection);
                SQLCmd.Transaction = trans;
                SQLCmd.CommandType = CommandType.Text;
                SQLCmd.ExecuteNonQuery();
            }
            catch (ArgumentException ex)
            {
                LoginDBConnection.Close();
                Console.Write(ex.Message);
            }
            catch (ApplicationException ex)
            {
                LoginDBConnection.Close();
                Console.Write(ex.Message);
            }
            catch (SqlException ex)
            {
                LoginDBConnection.Close();
                Console.Write(ex.Message);
            }
            catch (InvalidOperationException ex)
            {
                LoginDBConnection.Close();
                Console.Write(ex.Message);
            }
        }

        public SqlTransaction BeginTransaction()
        {
            if (LoginDBConnection.State != ConnectionState.Open)
            {
                LoginDBConnection.Open();
                SqlTransaction trans = LoginDBConnection.BeginTransaction();
                return trans;
            }
            else
            {
                SqlTransaction trans = LoginDBConnection.BeginTransaction();
                return trans;
            }

 
        }

        public void CommitTransaction(SqlTransaction trans)
        {
            try
            {
                if (LoginDBConnection.State == ConnectionState.Open)
                {
                    trans.Commit();
                    LoginDBConnection.Close();
                }
            }
            catch (ApplicationException ex)
            {
                Console.Write(ex.Message);
            }
            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }
            catch (InvalidOperationException ex)
            {
                Console.Write(ex.Message);
            }
        }
    }
}