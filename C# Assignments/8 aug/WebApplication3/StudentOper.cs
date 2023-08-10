using System.Data.SqlClient;

namespace WebApplication3
{
    public class StudentOper
    {
       
        string connectionString = "server=localhost, 1401;database=Test;user id=sa;password=Pass@word;" +
        "TrustServerCertificate=true";

        public int AddStudentDetails(Student student)
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
            paramName.Value = student.Name;
            paramName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramName.Size = 50;

            SqlParameter paramAddress = new SqlParameter();
            paramAddress.ParameterName = "@address";
            paramAddress.Value = student.Address;
            paramAddress.SqlDbType = System.Data.SqlDbType.VarChar;
            paramAddress.Size = 50;

            SqlParameter paramClassName = new SqlParameter();
            paramClassName.ParameterName = "@class";
            paramClassName.Value = student.Class;
            paramClassName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramClassName.Size = 50;

            SqlParameter paramMark = new SqlParameter();
            paramMark.ParameterName = "@mark";
            paramMark.Value = student.Mark;
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

        public Student GetDetails(int Id)
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
            //while (reader.Read())
            //{
            //    for (int i = 0; i < reader.FieldCount; i++)
            //    {
            //        Console.WriteLine(reader[i]);
            //    }
            //}

            Student returnObj = new Student();
            if (reader.Read())
            {
                returnObj.Name = reader["NameOfStudent"].ToString();
                returnObj.Address = reader["Address"].ToString();
                returnObj.Class = reader["class"].ToString();
                returnObj.Mark = (int)reader["Mark"];
                returnObj.Id = Id;

            }

            return returnObj;
            con.Close();
        
        }
    }
}
