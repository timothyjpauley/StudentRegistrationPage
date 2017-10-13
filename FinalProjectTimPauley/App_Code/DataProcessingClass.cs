using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace FinalProjectTimPauley
{
    public class DataProcessingClass
    {

        protected SqlConnection GetConnection()

        {
            string strConnection = ConfigurationManager.ConnectionStrings["AdvWebProjectConnectionString"].ConnectionString;


            //configure my connection
            SqlConnection objCon;
            objCon = new SqlConnection();
            objCon.ConnectionString = strConnection;
            return objCon;

        }
        //Register For Classes: INSERT
        public void RegisterForClass(int StudentID, int ClassID)
        {
            //Get my configured connection
            System.Data.SqlClient.SqlConnection objCon = GetConnection();

            //Configure my command 
            System.Data.SqlClient.SqlCommand objCmd;
            objCmd = new System.Data.SqlClient.SqlCommand();
            objCmd.Connection = objCon;
            objCmd.CommandType = System.Data.CommandType.StoredProcedure;
            objCmd.CommandText = "pInsClassStudents";

            //Setup the parameters
            System.Data.SqlClient.SqlParameter objRC;
            objRC = new System.Data.SqlClient.SqlParameter();
            objRC.ParameterName = "@RC";
            objRC.SqlDbType = System.Data.SqlDbType.Int;
            objRC.Direction = System.Data.ParameterDirection.ReturnValue;
            objCmd.Parameters.Add(objRC);

            System.Data.SqlClient.SqlParameter objStudentID;
            objStudentID = new System.Data.SqlClient.SqlParameter();
            objStudentID.ParameterName = "@StudentId";
            objStudentID.SqlDbType = System.Data.SqlDbType.Int;
            objStudentID.Direction = System.Data.ParameterDirection.Input;
            objStudentID.Value = StudentID;
            objCmd.Parameters.Add(objStudentID);

            System.Data.SqlClient.SqlParameter objClassID;
            objClassID = new System.Data.SqlClient.SqlParameter();
            objClassID.ParameterName = "@ClassId";
            objClassID.SqlDbType = System.Data.SqlDbType.Int;
            objClassID.Direction = System.Data.ParameterDirection.Input;
            objClassID.Value = ClassID;
            objCmd.Parameters.Add(objClassID);

            try
            {
                objCon.Open();
                objCmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                objCon.Close();
            }
        }
        //REQUEST New Login: INSERT
        public void RequestNewLogin(string name, string emailAddress, string loginName, string newOrReactivate, string reasonForAccess, DateTime dateNeededBy)
        {
            //get my configured connection
            SqlConnection objCon = GetConnection();

            //Configure my command
            SqlCommand objCmd;
            objCmd = new SqlCommand();
            objCmd.Connection = objCon;
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "pInsLoginRequest";

            //Setup the paramaeters 
             objCmd.Parameters.Add("@Name", SqlDbType.NVarChar, 50).Value = name;
            objCmd.Parameters.Add("@EmailAddress", SqlDbType.NVarChar, 50).Value = emailAddress;
            objCmd.Parameters.Add("@LoginName", SqlDbType.NVarChar, 50).Value = loginName;
            objCmd.Parameters.Add("@NewOrReactivate", SqlDbType.NVarChar, 50).Value = newOrReactivate;
            objCmd.Parameters.Add("@ReasonForAccess", SqlDbType.NVarChar, 50).Value = reasonForAccess;
            objCmd.Parameters.Add("@DateNeededBy", SqlDbType.DateTime).Value = dateNeededBy;
            objCon.Open();
            objCmd.ExecuteNonQuery();
            objCon.Close();
        }

        //REGISTER for classes: SELECT
        public void RegisterForClasses(int studentID)
        {
            //get my configured connection
            SqlConnection objCon = GetConnection();

            //Configure my command
            SqlCommand objCmd;
            objCmd = new SqlCommand();
            objCmd.Connection = objCon;
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "pSelClassesByStudentID";

            //Setup the paramaeters 
            objCmd.Parameters.Add("@StudentId", SqlDbType.Int, 50).Value = studentID;
            objCon.Open();
            objCmd.ExecuteNonQuery();
            objCon.Close();
        }
        public int WebsiteLogin(string StudentLogin, string StudentPassword)
        {
            //Get my configured connection
            System.Data.SqlClient.SqlConnection objCon = GetConnection();

            //Configure my command 
            System.Data.SqlClient.SqlCommand objCmd;
            objCmd = new System.Data.SqlClient.SqlCommand();
            objCmd.Connection = objCon;
            objCmd.CommandType = System.Data.CommandType.StoredProcedure;
            objCmd.CommandText = "pSelLoginIdByLoginAndPassword";

            //Setup the parameters
            System.Data.SqlClient.SqlParameter objRC;
            objRC = new System.Data.SqlClient.SqlParameter();
            objRC.ParameterName = "@RC";
            objRC.SqlDbType = System.Data.SqlDbType.Int;
            objRC.Direction = System.Data.ParameterDirection.ReturnValue;
            objCmd.Parameters.Add(objRC);

            System.Data.SqlClient.SqlParameter objStudentLogin;
            objStudentLogin = new System.Data.SqlClient.SqlParameter();
            objStudentLogin.ParameterName = "@StudentLogin";
            objStudentLogin.SqlDbType = System.Data.SqlDbType.NVarChar;
            objStudentLogin.Size = 50;
            objStudentLogin.Direction = System.Data.ParameterDirection.Input;
            objStudentLogin.Value = StudentLogin;
            objCmd.Parameters.Add(objStudentLogin);

            System.Data.SqlClient.SqlParameter objStudentPassword;
            objStudentPassword = new System.Data.SqlClient.SqlParameter();
            objStudentPassword.ParameterName = "@StudentPassword";
            objStudentPassword.SqlDbType = System.Data.SqlDbType.NVarChar;
            objStudentPassword.Size = 50;
            objStudentPassword.Direction = System.Data.ParameterDirection.Input;
            objStudentPassword.Value = StudentPassword;
            objCmd.Parameters.Add(objStudentPassword);

            System.Data.SqlClient.SqlParameter objStudentID;
            objStudentID = new System.Data.SqlClient.SqlParameter();
            objStudentID.ParameterName = "@StudentID";
            objStudentID.SqlDbType = System.Data.SqlDbType.Int;
            objStudentID.Direction = System.Data.ParameterDirection.Output;
            objCmd.Parameters.Add(objStudentID);

            int intStudentID = -1;
            try
            {
                objCon.Open();
                objCmd.ExecuteNonQuery();
                if (objStudentID.Value.GetType() == typeof(Int32))//If the data is returned as DBNull then skip this
                {
                    intStudentID = (int)objStudentID.Value;
                }
            }
            finally
            {
                objCon.Close();
            }
            //If login has failed, then you will receive a -1
            //If login succeeds then you will receive the Student ID
            return intStudentID;
        }

        //MyClasses: UPDATE
        public void MyClasses(int originalClassId, int originalStudentId, int newClassId, int newStudentID)
        {
            //get my configured connection
            SqlConnection objCon = GetConnection();

            //Configure my command
            SqlCommand objCmd;
            objCmd = new SqlCommand();
            objCmd.Connection = objCon;
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "pSelClassesByStudentID";

            //Setup the paramaeters 
            objCmd.Parameters.Add("@OrginalClassId", SqlDbType.Int).Value = originalClassId;
            objCmd.Parameters.Add("@OriginalStudentId", SqlDbType.Int).Value = originalStudentId;
            objCmd.Parameters.Add("@NewClassId", SqlDbType.Int).Value = newClassId;
            objCmd.Parameters.Add("@NewStudentId", SqlDbType.Int).Value = newStudentID;
            objCmd.ExecuteNonQuery();
            objCon.Close();
        }
    }

}