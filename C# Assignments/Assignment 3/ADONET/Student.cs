using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ADONET
{
    public class Student
    {
        string connectionString = "server=localhost, 1401;database=Test;user id=sa;password=Pass@word;" +
        "TrustServerCertificate=true";

        public int AddStudentDetails(string name, string address, string classname, int mark)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string query = "InsertStudent";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;


            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@name";
            paramName.Value = name;
            paramName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramName.Size = 15;

            SqlParameter paramAddress = new SqlParameter();
            paramAddress.ParameterName = "@address";
            paramAddress.Value = address;
            paramAddress.SqlDbType = System.Data.SqlDbType.VarChar;
            paramAddress.Size = 50;

            SqlParameter paramClassName = new SqlParameter();
            paramClassName.ParameterName = "@class";
            paramClassName.Value = classname;
            paramClassName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramClassName.Size = 5;

            SqlParameter paramMark = new SqlParameter();
            paramMark.ParameterName = "@mark";
            paramMark.Value = mark;
            paramMark.SqlDbType = System.Data.SqlDbType.Int;

            SqlParameter paramReturn = new SqlParameter();
            paramReturn.SqlDbType = System.Data.SqlDbType.Int;
            paramReturn.Direction = System.Data.ParameterDirection.ReturnValue; 

            cmd.Parameters.Add(paramName);
            cmd.Parameters.Add(paramAddress);
            cmd.Parameters.Add(paramClassName);
            cmd.Parameters.Add(paramMark);
            cmd.Parameters.Add(paramReturn);
            cmd.ExecuteNonQuery();
            con.Close();    
            int retvalue = (int)paramReturn.Value;
            return retvalue;
        }

        public void GetDetails(int Id)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string query = "GetStudentDetails";
            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter paramId = new SqlParameter();
            paramId.ParameterName = "@id";
            paramId.Value = Id;
            paramId.SqlDbType = System.Data.SqlDbType.Int;
            cmd.Parameters.Add(paramId);

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    Console.WriteLine(reader[i]);
                }
            }
            con.Close();
        }
    }
}
