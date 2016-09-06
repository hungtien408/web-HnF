using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace TLLib
{
    public class InterView
    {
        string connectionString = Common.ConnectionStringSoft;
        DBNull dbNULL = DBNull.Value;

        public int InterViewDelete(string InterviewID)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_InterView_Delete", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@InterviewID", string.IsNullOrEmpty(InterviewID) ? ((object)this.dbNULL) : ((object)InterviewID));
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
                    throw new Exception("Stored Procedure 'usp_InterView_Delete' reported the ErrorCode : " + parameter.Value.ToString());
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

        public int InterViewInsert(string InterviewID, string PersonalID, string InterviewDate, string InterveiwPosition, string Company, string TelSummary, string EnglishLevel, string HighTechLevel, string Attitude, string Salary, string Experience, string InterviewContent)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_InterView_Insert", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@InterviewID", string.IsNullOrEmpty(InterviewID) ? ((object)this.dbNULL) : ((object)InterviewID));
                command.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                command.Parameters.AddWithValue("@InterviewDate", string.IsNullOrEmpty(InterviewDate) ? ((object)this.dbNULL) : ((object)InterviewDate));
                command.Parameters.AddWithValue("@InterveiwPosition", string.IsNullOrEmpty(InterveiwPosition) ? ((object)this.dbNULL) : ((object)InterveiwPosition));
                command.Parameters.AddWithValue("@Company", string.IsNullOrEmpty(Company) ? ((object)this.dbNULL) : ((object)Company));
                command.Parameters.AddWithValue("@TelSummary", string.IsNullOrEmpty(TelSummary) ? ((object)this.dbNULL) : ((object)TelSummary));
                command.Parameters.AddWithValue("@EnglishLevel", string.IsNullOrEmpty(EnglishLevel) ? ((object)this.dbNULL) : ((object)EnglishLevel));
                command.Parameters.AddWithValue("@HighTechLevel", string.IsNullOrEmpty(HighTechLevel) ? ((object)this.dbNULL) : ((object)HighTechLevel));
                command.Parameters.AddWithValue("@Attitude", string.IsNullOrEmpty(Attitude) ? ((object)this.dbNULL) : ((object)Attitude));
                command.Parameters.AddWithValue("@Salary", string.IsNullOrEmpty(Salary) ? ((object)this.dbNULL) : ((object)Salary));
                command.Parameters.AddWithValue("@Experience", string.IsNullOrEmpty(Experience) ? ((object)this.dbNULL) : ((object)Experience));
                command.Parameters.AddWithValue("@InterviewContent", string.IsNullOrEmpty(InterviewContent) ? ((object)this.dbNULL) : ((object)InterviewContent));
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
                    throw new Exception("Stored Procedure 'usp_InterView_Insert' reported the ErrorCode : " + parameter.Value.ToString());
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

        public DataTable InterViewSelectAll(string Keyword, string InterviewID, string PersonalID, string InterviewDate, string InterveiwPosition, string TelSummary, string EnglishLevel, string HighTechLevel, string Attitude, string Salary, string Experience, string InterviewContent)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_InterView_SelectAll", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@Keyword", string.IsNullOrEmpty(Keyword) ? ((object)this.dbNULL) : ((object)Keyword));
                selectCommand.Parameters.AddWithValue("@InterviewID", string.IsNullOrEmpty(InterviewID) ? ((object)this.dbNULL) : ((object)InterviewID));
                selectCommand.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                selectCommand.Parameters.AddWithValue("@InterviewDate", string.IsNullOrEmpty(InterviewDate) ? ((object)this.dbNULL) : ((object)InterviewDate));
                selectCommand.Parameters.AddWithValue("@InterveiwPosition", string.IsNullOrEmpty(InterveiwPosition) ? ((object)this.dbNULL) : ((object)InterveiwPosition));
                selectCommand.Parameters.AddWithValue("@TelSummary", string.IsNullOrEmpty(TelSummary) ? ((object)this.dbNULL) : ((object)TelSummary));
                selectCommand.Parameters.AddWithValue("@EnglishLevel", string.IsNullOrEmpty(EnglishLevel) ? ((object)this.dbNULL) : ((object)EnglishLevel));
                selectCommand.Parameters.AddWithValue("@HighTechLevel", string.IsNullOrEmpty(HighTechLevel) ? ((object)this.dbNULL) : ((object)HighTechLevel));
                selectCommand.Parameters.AddWithValue("@Attitude", string.IsNullOrEmpty(Attitude) ? ((object)this.dbNULL) : ((object)Attitude));
                selectCommand.Parameters.AddWithValue("@Salary", string.IsNullOrEmpty(Salary) ? ((object)this.dbNULL) : ((object)Salary));
                selectCommand.Parameters.AddWithValue("@Experience", string.IsNullOrEmpty(Experience) ? ((object)this.dbNULL) : ((object)Experience));
                selectCommand.Parameters.AddWithValue("@InterviewContent", string.IsNullOrEmpty(InterviewContent) ? ((object)this.dbNULL) : ((object)InterviewContent));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_InterView_SelectAll' reported the ErrorCode : " + parameter.Value.ToString());
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

        public DataTable InterViewSelectOne(string InterviewID)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_InterView_SelectOne", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@InterviewID", string.IsNullOrEmpty(InterviewID) ? ((object)this.dbNULL) : ((object)InterviewID));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_InterView_SelectOne' reported the ErrorCode : " + parameter.Value.ToString());
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

        public int InterViewUpdate(string InterviewID, string PersonalID, string InterviewDate, string InterveiwPosition, string Company, string TelSummary, string EnglishLevel, string HighTechLevel, string Attitude, string Salary, string Experience, string InterviewContent)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_InterView_Update", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@InterviewID", string.IsNullOrEmpty(InterviewID) ? ((object)this.dbNULL) : ((object)InterviewID));
                command.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                command.Parameters.AddWithValue("@InterviewDate", string.IsNullOrEmpty(InterviewDate) ? ((object)this.dbNULL) : ((object)InterviewDate));
                command.Parameters.AddWithValue("@InterveiwPosition", string.IsNullOrEmpty(InterveiwPosition) ? ((object)this.dbNULL) : ((object)InterveiwPosition));
                command.Parameters.AddWithValue("@Company", string.IsNullOrEmpty(Company) ? ((object)this.dbNULL) : ((object)Company));
                command.Parameters.AddWithValue("@TelSummary", string.IsNullOrEmpty(TelSummary) ? ((object)this.dbNULL) : ((object)TelSummary));
                command.Parameters.AddWithValue("@EnglishLevel", string.IsNullOrEmpty(EnglishLevel) ? ((object)this.dbNULL) : ((object)EnglishLevel));
                command.Parameters.AddWithValue("@HighTechLevel", string.IsNullOrEmpty(HighTechLevel) ? ((object)this.dbNULL) : ((object)HighTechLevel));
                command.Parameters.AddWithValue("@Attitude", string.IsNullOrEmpty(Attitude) ? ((object)this.dbNULL) : ((object)Attitude));
                command.Parameters.AddWithValue("@Salary", string.IsNullOrEmpty(Salary) ? ((object)this.dbNULL) : ((object)Salary));
                command.Parameters.AddWithValue("@Experience", string.IsNullOrEmpty(Experience) ? ((object)this.dbNULL) : ((object)Experience));
                command.Parameters.AddWithValue("@InterviewContent", string.IsNullOrEmpty(InterviewContent) ? ((object)this.dbNULL) : ((object)InterviewContent));
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
                    throw new Exception("Stored Procedure 'usp_InterView_Update' reported the ErrorCode : " + parameter.Value.ToString());
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
