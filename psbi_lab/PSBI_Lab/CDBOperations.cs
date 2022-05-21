using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace PSBI_Lab2012
{
    public class CDBOperations
    {
        public CDBOperations()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public string ExecuteNonQuery_Message(string[] fieldName, string[] fieldValues, string spName)
        {
            SqlCommand cmd = null;
            CConnection cn = null;
            SqlDataAdapter da = null;
            DataSet ds = null;

            string errmsg = "";

            string[] dt;


            try
            {
                cn = new CConnection();

                cmd = new SqlCommand();
                cmd.Connection = cn.cn;
                cmd.CommandText = spName;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int a = 0; a <= fieldName.Length - 1; a++)
                {
                    if (fieldValues[a] == "" || fieldValues[a] == " -" || fieldValues[a] == "  /  /" || fieldValues[a] == "  :" || fieldValues[a] == "" || fieldValues[a] == "  -   -  -      -  - -" || fieldValues[a] == "3-     -" || fieldValues[a] == "  ." || fieldValues[a] == "  -   -  -    -  - -")
                    {
                        cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                    }
                    else
                    {
                        if (fieldName[a] == "DOP"
                            || fieldName[a] == "StartDate"
                            || fieldName[a] == "EndDate"
                            || fieldName[a] == "AADOP"
                            || fieldName[a] == "AS1_Q5"
                            || fieldName[a] == "AS2_Q9"
                            || fieldName[a] == "AS3_A2"
                            || fieldName[a] == "AS3_B2"
                            || fieldName[a] == "AS3_Q14a"
                            || fieldName[a] == "AS4_Q22b"
                            || fieldName[a] == "AS4_Q24"
                            || fieldName[a] == "EntryDate"
                            )
                        {
                            if (fieldValues[a].ToString() == "01/01/0001")
                            {
                                cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                            }
                            else
                            {
                                dt = fieldValues[a].Split('/');
                                cmd.Parameters.AddWithValue(fieldName[a], dt[1] + "/" + dt[0] + "/" + dt[2]);
                            }
                        }
                        else if (
                            fieldName[a] == "AS1_Q4"
                            || fieldName[a] == "AS2_Q10"
                            || fieldName[a] == "AS2_Q13a"                            
                            || fieldName[a] == "AS3_Q15"
                            || fieldName[a] == "AS3_Q17"
                            || fieldName[a] == "AS3_Q20"
                            || fieldName[a] == "LA_01"
                            || fieldName[a] == "AS1_Q6"
                            || fieldName[a] == "AS1_Q6c"
                            || fieldName[a] == "AS4_Q22a"                            
                            )
                        {
                            dt = fieldValues[a].Split(':');
                            cmd.Parameters.AddWithValue(fieldName[a], dt[0] + ":" + dt[1]);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue(fieldName[a], fieldValues[a]);
                        }
                    }
                }

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
            }

            catch (Exception ex)
            {
                errmsg = ex.Message;
            }

            finally
            {
                cn.MConnClose();
                cmd = null;
                cn = null;
            }

            return errmsg;
        }



        public DataSet ExecuteNonQuery(string[] fieldName, string[] fieldValues, string spName)
        {
            SqlCommand cmd = null;
            CConnection cn = null;
            SqlDataAdapter da = null;
            DataSet ds = null;

            string[] dt;


            try
            {
                cn = new CConnection();

                cmd = new SqlCommand();
                cmd.Connection = cn.cn;
                cmd.CommandText = spName;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int a = 0; a <= fieldName.Length - 1; a++)
                {
                    if (fieldValues[a] == "" || fieldValues[a] == " -" || fieldValues[a] == "  /  /" || fieldValues[a] == "  :" || fieldValues[a] == "" || fieldValues[a] == "  -   -  -      -  - -" || fieldValues[a] == "3-     -" || fieldValues[a] == "  ." || fieldValues[a] == "  -   -  -    -  - -")
                    {
                        cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                    }
                    else
                    {
                        if (fieldName[a] == "DOP"
                            || fieldName[a] == "StartDate"
                            || fieldName[a] == "EndDate"
                            || fieldName[a] == "AADOP"
                            || fieldName[a] == "AS1_Q5"
                            || fieldName[a] == "AS2_Q9"
                            || fieldName[a] == "AS3_A2"
                            || fieldName[a] == "AS3_B2"
                            || fieldName[a] == "EntryDate"
                            )
                        {
                            if (fieldValues[a].ToString() == "01/01/0001")
                            {
                                cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                            }
                            else
                            {
                                dt = fieldValues[a].Split('/');
                                cmd.Parameters.AddWithValue(fieldName[a], dt[1] + "/" + dt[0] + "/" + dt[2]);
                            }
                        }
                        else if (
                            fieldName[a] == "AS1_Q4"
                            || fieldName[a] == "AS2_Q10"
                            || fieldName[a] == "AS3_Q15"
                            || fieldName[a] == "AS3_Q17"
                            || fieldName[a] == "AS3_Q20"
                            || fieldName[a] == "LA_01"
                            )
                        {
                            dt = fieldValues[a].Split(':');
                            cmd.Parameters.AddWithValue(fieldName[a], dt[0] + ":" + dt[1]);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue(fieldName[a], fieldValues[a]);
                        }
                    }
                }

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
            }

            catch (Exception ex)
            {

            }

            finally
            {
                cn.MConnClose();
                cmd = null;
                cn = null;
            }

            return ds;
        }


        public DataSet GetFormData_VisitID(string spName, string fldval, string formno, string visitid)
        {
            DataSet ds = null;

            try
            {
                string[] fldname = { "sno", "fldvalue" };
                string[] fldvalue = { formno, fldval };

                ds = ExecuteNonQuery(fldname, fldvalue, spName);
            }

            catch (Exception ex)
            {

            }

            finally
            {

            }

            return ds;
        }


        public DataSet ExecuteNonQuery_Request(string[] fieldName, string[] fieldValues, string spName)
        {
            SqlCommand cmd = null;
            CConnection cn = null;
            SqlDataAdapter da = null;
            DataSet ds = null;

            string[] dt;


            try
            {
                cn = new CConnection();

                cmd = new SqlCommand();
                cmd.Connection = cn.cn;
                cmd.CommandText = spName;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int a = 0; a <= fieldName.Length - 1; a++)
                {
                    if (fieldValues[a] == " -" || fieldValues[a] == "  /  /" || fieldValues[a] == "  :" || fieldValues[a] == "" || fieldValues[a] == "  -   -  -      -  - -" || fieldValues[a] == "3-     -" || fieldValues[a] == "  ." || fieldValues[a] == "  -   -  -    -  - -")
                    {
                        cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                    }
                    else
                    {
                        if (fieldName[a] == "PRDATE")
                        {
                            if (fieldValues[a].ToString() == "01/01/0001")
                            {
                                cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                            }
                            else
                            {
                                dt = fieldValues[a].Split('/');
                                cmd.Parameters.AddWithValue(fieldName[a], dt[1] + "/" + dt[0] + "/" + dt[2]);
                            }
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue(fieldName[a], fieldValues[a]);
                        }
                    }
                }

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

            }

            catch (Exception ex)
            {

            }

            finally
            {
                cn.MConnClose();
                cmd = null;
                cn = null;
            }

            return ds;
        }


        public string ExecuteNonQuery_Inventory(string[] fieldName, string[] fieldValues, string spName)
        {
            SqlCommand cmd = null;
            CConnection cn = null;
            SqlDataAdapter da = null;
            DataSet ds = null;
            string errmsg = null;

            string[] dt;


            try
            {
                cn = new CConnection();

                cmd = new SqlCommand();
                cmd.Connection = cn.cn;
                cmd.CommandText = spName;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int a = 0; a <= fieldName.Length - 1; a++)
                {
                    if (fieldValues[a] == "" || fieldValues[a] == " -" || fieldValues[a] == "  /  /" || fieldValues[a] == "  :" || fieldValues[a] == "" || fieldValues[a] == "  -   -  -      -  - -" || fieldValues[a] == "3-     -" || fieldValues[a] == "  ." || fieldValues[a] == "  -   -  -    -  - -")
                    {
                        cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                    }
                    else
                    {
                        if (fieldName[a] == "ENTRYDATE" || fieldName[a] == "LASTVERIFDT" || fieldName[a] == "DUEDATE" || fieldName[a] == "WODATE" || fieldName[a] == "PURDATE")
                        {
                            if (fieldValues[a].ToString() == "01/01/0001")
                            {
                                cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                            }
                            else
                            {
                                dt = fieldValues[a].Split('/');
                                cmd.Parameters.AddWithValue(fieldName[a], dt[1] + "/" + dt[0] + "/" + dt[2]);
                            }
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue(fieldName[a], fieldValues[a]);
                        }
                    }
                }

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
            }

            catch (Exception ex)
            {
                errmsg = ex.Message;
            }

            finally
            {
                cn.MConnClose();
                cmd = null;
                cn = null;
            }

            return errmsg;
        }




        public bool ExecuteNonQuery_Add(string[] fieldName, string[] fieldValues, string spName)
        {
            SqlCommand cmd = null;
            CConnection cn = null;
            SqlDataAdapter da = null;
            DataSet ds = null;
            bool IsSucess = false;

            string[] dt;


            try
            {
                cn = new CConnection();

                cmd = new SqlCommand();
                cmd.Connection = cn.cn;
                cmd.CommandText = spName;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int a = 0; a <= fieldName.Length - 1; a++)
                {
                    if (fieldValues[a] == " -" || fieldValues[a] == "  /  /" || fieldValues[a] == "  :" || fieldValues[a] == "" || fieldValues[a] == "  -   -  -      -  - -" || fieldValues[a] == "3-     -" || fieldValues[a] == "  ." || fieldValues[a] == "  -   -  -    -  - -")
                    {
                        cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                    }
                    else
                    {
                        if (fieldName[a] == "DOP" || fieldName[a] == "AADOP")
                        {
                            if (fieldValues[a].ToString() == "01/01/0001")
                            {
                                cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                            }
                            else
                            {
                                dt = fieldValues[a].Split('/');
                                cmd.Parameters.AddWithValue(fieldName[a], dt[1] + "/" + dt[0] + "/" + dt[2]);
                            }
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue(fieldName[a], fieldValues[a]);
                        }
                    }
                }

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                IsSucess = true;
            }

            catch (Exception ex)
            {

            }

            finally
            {
                cn.MConnClose();
                cmd = null;
                cn = null;
            }

            return IsSucess;
        }



        public bool Login(string UserID, string Pwd, string spName)
        {
            bool IsExists = false;

            try
            {
                string[] fldname = { "UserID", "Passwd" };
                string[] fldvalue = { UserID, Pwd };

                DataSet ds = ExecuteNonQuery(fldname, fldvalue, spName);

                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            HttpContext.Current.Response.Cookies["mycookie"].Value = ds.Tables[0].Rows[0][1].ToString();
                            //HttpContext.Current.Response.Cookies["UserName"].Value = ds.Tables[0].Rows[0][1].ToString();
                            //HttpContext.Current.Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(5);
                            HttpContext.Current.Session["UserID"] = ds.Tables[0].Rows[0][0].ToString();
                            HttpContext.Current.Session["UserName"] = ds.Tables[0].Rows[0][1].ToString();
                            HttpContext.Current.Response.Cookies["IsAdmin"].Value = ds.Tables[0].Rows[0]["IsAdmin"].ToString();

                            IsExists = true;
                        }
                    }
                }

                ds = null;
            }

            catch (Exception ex)
            {
            }

            finally
            {

            }

            return IsExists;
        }



        public DataSet GetFormData_VisitID1(string spName, string fldval, string formno, string visitid, string frmName)
        {
            DataSet ds = null;

            try
            {
                string[] fldname = { "sno", "fldvalue", "FormName" };
                string[] fldvalue = { formno, fldval, frmName };

                ds = ExecuteNonQuery(fldname, fldvalue, spName);
            }

            catch (Exception ex)
            {

            }

            finally
            {

            }

            return ds;
        }




        public int ExecuteNonQuery_New1(string[] fieldName, string[] fieldValues, string spName)
        {
            SqlCommand cmd = null;
            CConnection cn = null;
            SqlDataAdapter da = null;
            DataSet ds = null;
            int result = 0;

            string[] dt;


            try
            {
                cn = new CConnection();

                cmd = new SqlCommand();
                cmd.Connection = cn.cn;
                cmd.CommandText = spName;
                cmd.CommandType = CommandType.StoredProcedure;

                for (int a = 0; a <= fieldName.Length - 1; a++)
                {
                    if (fieldValues[a] == " -" || fieldValues[a] == "  /  /" || fieldValues[a] == "  :" || fieldValues[a] == "" || fieldValues[a] == "  -   -  -      -  - -" || fieldValues[a] == "3-     -" || fieldValues[a] == "  ." || fieldValues[a] == "  -   -  -    -  - -")
                    {
                        cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                    }
                    else
                    {
                        if (fieldName[a] == "DOP" || fieldName[a] == "AADOP" || fieldName[a] == "EntryDate")
                        {
                            if (fieldValues[a].ToString() == "01/01/0001")
                            {
                                cmd.Parameters.AddWithValue(fieldName[a], DBNull.Value);
                            }
                            else
                            {
                                dt = fieldValues[a].Split('/');
                                cmd.Parameters.AddWithValue(fieldName[a], dt[1] + "/" + dt[0] + "/" + dt[2]);
                            }
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue(fieldName[a], fieldValues[a]);
                        }
                    }
                }

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                result = 1;
            }

            catch (Exception ex)
            {

            }

            finally
            {
                cn.MConnClose();
                cmd = null;
                cn = null;
            }

            return result;
        }




        public string DaysDifference(string id, string spName, string fieldname, string fieldvalue, string StartDate, string EndDate, string VisitID)
        {
            string value = "";
            CDBOperations obj_op = null;

            try
            {
                string[] fldname = { "FormID", "fldvalue", "StartDate", "EndDate", "VisitID" };
                string[] fldvalue = { fieldvalue, id, StartDate, EndDate, VisitID };

                obj_op = new CDBOperations();
                DataSet ds = obj_op.ExecuteNonQuery(fldname, fldvalue, spName);

                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            value = ds.Tables[0].Rows[0]["" + fieldname + ""].ToString();

                            if (value == "")
                            {
                                value = "-0";
                            }
                        }
                        else
                        {
                            value = "99/99/9999";
                        }
                    }
                    else
                    {
                        value = "99/99/9999";
                    }
                }
                else
                {
                    value = "99/99/9999";
                }
            }

            catch (Exception ex)
            {

            }

            finally
            {
                obj_op = null;
            }

            return value;
        }







    }
}