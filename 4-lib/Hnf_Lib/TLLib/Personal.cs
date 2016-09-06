using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace TLLib
{
    public class Personal
    {
        string connectionString = Common.ConnectionStringSoft;
        DBNull dbNULL = DBNull.Value;

        public int PersonalDelete(string PersonalID)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Personal_Delete", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
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
                    throw new Exception("Stored Procedure 'usp_Personal_Delete' reported the ErrorCode : " + parameter.Value.ToString());
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

        public int PersonalImageDelete(string PersonalID)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_PersonalImage_Delete", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
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
                    throw new Exception("Stored Procedure 'usp_PersonalImage_Delete' reported the ErrorCode : " + parameter.Value.ToString());
                }
                num2 = num;
            }
            catch (Exception exception)
            {
                throw new Exception(exception.Message);
            }
            return num2;
        }

        public string PersonalInsert(string ImageName, string Name, string ConvertedName, string DoB, string PoB, string Tel, string Email, string Sex, string MaritalStatus, string Address, string Certificate, string Education, string WorkHistory, string Status, string IsPV)
        {
            string str;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Personal_Insert1", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@ImageName", string.IsNullOrEmpty(ImageName) ? ((object)this.dbNULL) : ((object)ImageName));
                command.Parameters.AddWithValue("@Name", string.IsNullOrEmpty(Name) ? ((object)this.dbNULL) : ((object)Name));
                command.Parameters.AddWithValue("@ConvertedName", string.IsNullOrEmpty(ConvertedName) ? ((object)this.dbNULL) : ((object)ConvertedName));
                command.Parameters.AddWithValue("@DoB", string.IsNullOrEmpty(DoB) ? ((object)this.dbNULL) : ((object)DoB));
                command.Parameters.AddWithValue("@PoB", string.IsNullOrEmpty(PoB) ? ((object)this.dbNULL) : ((object)PoB));
                command.Parameters.AddWithValue("@Tel", string.IsNullOrEmpty(Tel) ? ((object)this.dbNULL) : ((object)Tel));
                command.Parameters.AddWithValue("@Email", string.IsNullOrEmpty(Email) ? ((object)this.dbNULL) : ((object)Email));
                command.Parameters.AddWithValue("@Sex", string.IsNullOrEmpty(Sex) ? ((object)this.dbNULL) : ((object)Sex));
                command.Parameters.AddWithValue("@MaritalStatus", string.IsNullOrEmpty(MaritalStatus) ? ((object)this.dbNULL) : ((object)MaritalStatus));
                command.Parameters.AddWithValue("@Address", string.IsNullOrEmpty(Address) ? ((object)this.dbNULL) : ((object)Address));
                command.Parameters.AddWithValue("@Certificate", string.IsNullOrEmpty(Certificate) ? ((object)this.dbNULL) : ((object)Certificate));
                command.Parameters.AddWithValue("@Education", string.IsNullOrEmpty(Education) ? ((object)this.dbNULL) : ((object)Education));
                command.Parameters.AddWithValue("@WorkHistory", string.IsNullOrEmpty(WorkHistory) ? ((object)this.dbNULL) : ((object)WorkHistory));
                command.Parameters.AddWithValue("@Status", string.IsNullOrEmpty(Status) ? ((object)this.dbNULL) : ((object)Status));
                command.Parameters.AddWithValue("@IsPV", string.IsNullOrEmpty(IsPV) ? ((object)this.dbNULL) : ((object)IsPV));
                SqlParameter parameter = new SqlParameter("@OutImageName", null);
                SqlParameter parameter2 = new SqlParameter("@ErrorCode", null);
                parameter.Size = 100;
                parameter2.Size = 4;
                parameter2.Direction = parameter.Direction = ParameterDirection.Output;
                command.Parameters.Add(parameter);
                command.Parameters.Add(parameter2);
                connection.Open();
                int num = command.ExecuteNonQuery();
                connection.Close();
                if (parameter2.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Personal_Insert1' reported the ErrorCode : " + parameter2.Value.ToString());
                }
                str = parameter.Value.ToString();
            }
            catch (SqlException exception)
            {
                throw new Exception(exception.Number.ToString());
            }
            catch (Exception exception2)
            {
                throw new Exception(exception2.Message);
            }
            return str;
        }

        public DataTable PersonalSelectAll()
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_Personal_SelectAll", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Personal_SelectAll' reported the ErrorCode : " + parameter.Value.ToString());
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

        public DataTable PersonalSelectAll(string Keyword, string PersonalID, string ImageName, string Name, string DoB, string PoB, string Tel, string Email, string Sex, string MaritalStatus, string Address, string Certificate, string EnglishLevel, string Salary, string Experience, string Position)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_Personal_SelectAll", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@Keyword", string.IsNullOrEmpty(Keyword) ? ((object)this.dbNULL) : ((object)Keyword));
                selectCommand.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                selectCommand.Parameters.AddWithValue("@ImageName", string.IsNullOrEmpty(ImageName) ? ((object)this.dbNULL) : ((object)ImageName));
                selectCommand.Parameters.AddWithValue("@Name", string.IsNullOrEmpty(Name) ? ((object)this.dbNULL) : ((object)Name));
                selectCommand.Parameters.AddWithValue("@DoB", string.IsNullOrEmpty(DoB) ? ((object)this.dbNULL) : ((object)DoB));
                selectCommand.Parameters.AddWithValue("@PoB", string.IsNullOrEmpty(PoB) ? ((object)this.dbNULL) : ((object)PoB));
                selectCommand.Parameters.AddWithValue("@Tel", string.IsNullOrEmpty(Tel) ? ((object)this.dbNULL) : ((object)Tel));
                selectCommand.Parameters.AddWithValue("@Email", string.IsNullOrEmpty(Email) ? ((object)this.dbNULL) : ((object)Email));
                selectCommand.Parameters.AddWithValue("@Sex", string.IsNullOrEmpty(Sex) ? ((object)this.dbNULL) : ((object)Sex));
                selectCommand.Parameters.AddWithValue("@MaritalStatus", string.IsNullOrEmpty(MaritalStatus) ? ((object)this.dbNULL) : ((object)MaritalStatus));
                selectCommand.Parameters.AddWithValue("@Address", string.IsNullOrEmpty(Address) ? ((object)this.dbNULL) : ((object)Address));
                selectCommand.Parameters.AddWithValue("@Certificate", string.IsNullOrEmpty(Certificate) ? ((object)this.dbNULL) : ((object)Certificate));
                selectCommand.Parameters.AddWithValue("@EnglishLevel", string.IsNullOrEmpty(EnglishLevel) ? ((object)this.dbNULL) : ((object)EnglishLevel));
                selectCommand.Parameters.AddWithValue("@Salary", string.IsNullOrEmpty(Salary) ? ((object)this.dbNULL) : ((object)Salary));
                selectCommand.Parameters.AddWithValue("@Experience", string.IsNullOrEmpty(Experience) ? ((object)this.dbNULL) : ((object)Experience));
                selectCommand.Parameters.AddWithValue("@Position", string.IsNullOrEmpty(Position) ? ((object)this.dbNULL) : ((object)Position));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Personal_SelectAll' reported the ErrorCode : " + parameter.Value.ToString());
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

        public DataTable PersonalSelectName(string Name)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_Personal_SelectName", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@Name", string.IsNullOrEmpty(Name) ? ((object)this.dbNULL) : ((object)Name));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Personal_SelectName' reported the ErrorCode : " + parameter.Value.ToString());
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


        public DataTable PersonalSelectOne(string PersonalID)
        {
            DataTable table2;
            try
            {
                DataTable dataTable = new DataTable();
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand selectCommand = new SqlCommand("usp_Personal_SelectOne", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                selectCommand.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                SqlParameter parameter = new SqlParameter("@ErrorCode", null)
                {
                    Size = 4,
                    Direction = ParameterDirection.Output
                };
                selectCommand.Parameters.Add(parameter);
                new SqlDataAdapter(selectCommand).Fill(dataTable);
                if (parameter.Value.ToString() != "0")
                {
                    throw new Exception("Stored Procedure 'usp_Personal_SelectOne' reported the ErrorCode : " + parameter.Value.ToString());
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

        public int PersonalUpdate(string PersonalID, string ImageName, string Name, string ConvertedName, string DoB, string PoB, string Tel, string Email, string Sex, string MaritalStatus, string Address, string Certificate, string Education, string WorkHistory, string Status, string IsPV)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Personal_Update1", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                command.Parameters.AddWithValue("@ImageName", string.IsNullOrEmpty(ImageName) ? ((object)this.dbNULL) : ((object)ImageName));
                command.Parameters.AddWithValue("@Name", string.IsNullOrEmpty(Name) ? ((object)this.dbNULL) : ((object)Name));
                command.Parameters.AddWithValue("@ConvertedName", string.IsNullOrEmpty(ConvertedName) ? ((object)this.dbNULL) : ((object)ConvertedName));
                command.Parameters.AddWithValue("@DoB", string.IsNullOrEmpty(DoB) ? ((object)this.dbNULL) : ((object)DoB));
                command.Parameters.AddWithValue("@PoB", string.IsNullOrEmpty(PoB) ? ((object)this.dbNULL) : ((object)PoB));
                command.Parameters.AddWithValue("@Tel", string.IsNullOrEmpty(Tel) ? ((object)this.dbNULL) : ((object)Tel));
                command.Parameters.AddWithValue("@Email", string.IsNullOrEmpty(Email) ? ((object)this.dbNULL) : ((object)Email));
                command.Parameters.AddWithValue("@Sex", string.IsNullOrEmpty(Sex) ? ((object)this.dbNULL) : ((object)Sex));
                command.Parameters.AddWithValue("@MaritalStatus", string.IsNullOrEmpty(MaritalStatus) ? ((object)this.dbNULL) : ((object)MaritalStatus));
                command.Parameters.AddWithValue("@Address", string.IsNullOrEmpty(Address) ? ((object)this.dbNULL) : ((object)Address));
                command.Parameters.AddWithValue("@Certificate", string.IsNullOrEmpty(Certificate) ? ((object)this.dbNULL) : ((object)Certificate));
                command.Parameters.AddWithValue("@Education", string.IsNullOrEmpty(Education) ? ((object)this.dbNULL) : ((object)Education));
                command.Parameters.AddWithValue("@WorkHistory", string.IsNullOrEmpty(WorkHistory) ? ((object)this.dbNULL) : ((object)WorkHistory));
                command.Parameters.AddWithValue("@Status", string.IsNullOrEmpty(Status) ? ((object)this.dbNULL) : ((object)Status));
                command.Parameters.AddWithValue("@IsPV", string.IsNullOrEmpty(IsPV) ? ((object)this.dbNULL) : ((object)IsPV));
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
                    throw new Exception("Stored Procedure 'usp_Personal_Update1' reported the ErrorCode : " + parameter.Value.ToString());
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

        public int PersonalQuickUpdate(string PersonalID, string Status, string IsPV)
        {
            int num2;
            try
            {
                SqlConnection connection = new SqlConnection(this.connectionString);
                SqlCommand command = new SqlCommand("usp_Personal_QuickUpdate", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@PersonalID", string.IsNullOrEmpty(PersonalID) ? ((object)this.dbNULL) : ((object)PersonalID));
                command.Parameters.AddWithValue("@Status", string.IsNullOrEmpty(Status) ? ((object)this.dbNULL) : ((object)Status));
                command.Parameters.AddWithValue("@IsPV", string.IsNullOrEmpty(IsPV) ? ((object)this.dbNULL) : ((object)IsPV));
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
                    throw new Exception("Stored Procedure 'usp_Personal_QuickUpdate' reported the ErrorCode : " + parameter.Value.ToString());
                }
                num2 = num;
            }
            catch (Exception exception)
            {
                throw new Exception(exception.Message);
            }
            return num2;
        }
  
    }
}
