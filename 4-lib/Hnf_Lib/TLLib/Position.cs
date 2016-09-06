using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace TLLib
{
    public class Position
    {
        string connectionString = Common.ConnectionStringSoft;
        DBNull dbNULL = DBNull.Value;

        public int PositionDelete(string PositionID)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Position_Delete", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PositionID", string.IsNullOrEmpty(PositionID) ? ((object)this.dbNULL) : ((object)PositionID));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                command.Parameters.Add(parameter);
                connection.Open();
                int num = command.ExecuteNonQuery();
                connection.Close();
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Position_Delete' reported the ErrorCode : " + parameter.Value.ToString());
                }
                num2 = num;
            }
            catch (SqlException exception)
            {
                throw new Exception(exception.Number.ToString());
            }
            catch (Exception exception2)
            {
                throw new Exception(exception2.Message);
            }
            return num2;
        }

        public int PositionInsert(string PositionName)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Position_Insert", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PositionName", string.IsNullOrEmpty(PositionName) ? ((object)this.dbNULL) : ((object)PositionName));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                command.Parameters.Add(parameter);
                connection.Open();
                int num = command.ExecuteNonQuery();
                connection.Close();
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Position_Insert' reported the ErrorCode : " + parameter.Value.ToString());
                }
                num2 = num;
            }
            catch (SqlException exception)
            {
                throw new Exception(exception.Number.ToString());
            }
            catch (Exception exception2)
            {
                throw new Exception(exception2.Message);
            }
            return num2;
        }

        public DataTable PositionSelectAll(string Keyword, string PositionID, string PositionName)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_Position_SelectAll", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@Keyword", string.IsNullOrEmpty(Keyword) ? ((object)this.dbNULL) : ((object)Keyword));
                selectCommand.Parameters.AddWithValue("@PositionID", string.IsNullOrEmpty(PositionID) ? ((object)this.dbNULL) : ((object)PositionID));
                selectCommand.Parameters.AddWithValue("@PositionName", string.IsNullOrEmpty(PositionName) ? ((object)this.dbNULL) : ((object)PositionName));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Position_SelectAll' reported the ErrorCode : " + parameter.Value.ToString());
                }
                table2 = dataTable;
            }
            catch (SqlException exception)
            {
                throw new Exception(exception.Number.ToString());
            }
            catch (Exception exception2)
            {
                throw new Exception(exception2.Message);
            }
            return table2;
        }

        public DataTable PositionSelectOne(string PositionID)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_Position_SelectOne", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@PositionID", string.IsNullOrEmpty(PositionID) ? ((object)this.dbNULL) : ((object)PositionID));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Position_SelectOne' reported the ErrorCode : " + parameter.Value.ToString());
                }
                table2 = dataTable;
            }
            catch (SqlException exception)
            {
                throw new Exception(exception.Number.ToString());
            }
            catch (Exception exception2)
            {
                throw new Exception(exception2.Message);
            }
            return table2;
        }

        public int PositionUpdate(string PositionID, string PositionName)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Position_Update", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PositionID", string.IsNullOrEmpty(PositionID) ? ((object)this.dbNULL) : ((object)PositionID));
                command.Parameters.AddWithValue("@PositionName", string.IsNullOrEmpty(PositionName) ? ((object)this.dbNULL) : ((object)PositionName));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                command.Parameters.Add(parameter);
                connection.Open();
                int num = command.ExecuteNonQuery();
                connection.Close();
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Position_Update' reported the ErrorCode : " + parameter.Value.ToString());
                }
                num2 = num;
            }
            catch (SqlException exception)
            {
                throw new Exception(exception.Number.ToString());
            }
            catch (Exception exception2)
            {
                throw new Exception(exception2.Message);
            }
            return num2;
        }

    }
}
