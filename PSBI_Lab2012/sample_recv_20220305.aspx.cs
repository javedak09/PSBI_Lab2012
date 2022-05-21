using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Data.SqlClient;
using System.Web.Services;

namespace PSBI_Lab2012
{
    public partial class sample_recv_20220305 : System.Web.UI.Page
    {
        public List<CountryInfo> CountryInformation { get; set; }

        public class CountryInfo
        {
            public string AS1_screening_ID { get; set; }
            public string AS1_rand_id { get; set; }
            public string AS1_name { get; set; }
            public string AS1_sex { get; set; }
            public string AS1_age { get; set; }
            public string AS1_barcode { get; set; }
            public string AS1_fsite { get; set; }
            public string AS1_Q1_1 { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            cmdSave.OnClientClick = "return ValidateForm();";

            if (Session["userid"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                LinkButton lnkUser = (LinkButton)FindControl("usernme");
                lnkUser.Text = "Welcome: " + HttpContext.Current.Request["mycookie"].ToString();
                lnkUser.CssClass = "dropdown-toggle nav-link";
                lnkUser = null;
            }

            if (!IsPostBack)
            {
                if (Request.Cookies["labid"].Value == "2")
                {
                    AS1_Q3a_11.Visible = true;
                    AS1_Q3a_11.Enabled = true;

                    AS1_Q3a_12.Visible = true;
                    AS1_Q3a_12.Enabled = true;

                    AS1_Q3a_2.Visible = true;
                    AS1_Q3a_2.Enabled = true;

                    AS2_Q8a_1.Visible = true;
                    AS2_Q8a_2.Visible = true;

                    AS2_Q8a_1.Enabled = true;
                    AS2_Q8a_2.Enabled = true;


                    pnl_AS1_Q3a_1.Visible = true;
                    pnl_AS1_Q3a_2.Visible = true;
                    pnl_AS2_Q8a.Visible = true;

                    Disable_IDRL_Questions();

                    pnl_AS1_Samp_1.Visible = false;
                    pnl_AS1_Samp_4.Visible = true;

                }
                else
                {
                    AS1_Q3a_11.Checked = false;
                    AS1_Q3a_12.Checked = false;

                    AS1_Q3a_11.Visible = false;
                    AS1_Q3a_12.Visible = false;

                    AS1_Q3a_11.Enabled = false;
                    AS1_Q3a_12.Enabled = false;

                    AS2_Q8a_1.Checked = false;
                    AS2_Q8a_2.Checked = false;

                    AS2_Q8a_1.Visible = false;
                    AS2_Q8a_2.Visible = false;

                    AS2_Q8a_1.Enabled = false;
                    AS2_Q8a_2.Enabled = false;


                    AS1_Q3a_2.Text = "";
                    AS1_Q3a_2.Visible = false;
                    AS1_Q3a_2.Enabled = false;


                    pnl_AS1_Q3a_1.Visible = false;
                    pnl_AS1_Q3a_2.Visible = false;
                    pnl_AS2_Q8a.Visible = false;

                    Enable_IDRL_Questions();

                    pnl_AS1_Samp_1.Visible = true;
                    pnl_AS1_Samp_4.Visible = false;
                }

            }

        }


        private void Disable_IDRL_Questions()
        {
            Disable_RadioButton(AS1_Q1_11);
            Disable_RadioButton(AS1_Q1_12);

            DisableControls(AS1_Q1_2);

            Disable_RadioButton(AS1_Q2_11);
            Disable_RadioButton(AS1_Q2_12);

            Disable_RadioButton(AS2_Q7_11);
            Disable_RadioButton(AS2_Q7_12);

            DisableControls(AS2_Q7_2);

            Disable_RadioButton(AS2_Q8_1);
            Disable_RadioButton(AS2_Q8_2);

            DisableControls(AS2_Q8_3);


            DisableControls(AS2_Q13);
            DisableControls(AS3_Q14);
            DisableControls(AS3_Q15);
            DisableControls(AS3_Q16);
            DisableControls(AS3_Q17);
            DisableControls(AS3_Q18);
            DisableControls(AS3_Q19);
            DisableControls(AS3_Q20);


            pnl_AS1_Q1_11.Visible = false;
            pnl_AS2_Q7_1.Visible = false;
            pnl_AS2_Q13.Visible = false;

        }



        private void Enable_IDRL_Questions()
        {
            Enable_RadioButton(AS1_Q1_11);
            Enable_RadioButton(AS1_Q1_12);

            EnableControls(AS1_Q1_2);

            Enable_RadioButton(AS1_Q2_11);
            Enable_RadioButton(AS1_Q2_12);

            Enable_RadioButton(AS2_Q7_11);
            Enable_RadioButton(AS2_Q7_12);

            EnableControls(AS2_Q7_2);

            Enable_RadioButton(AS2_Q8_1);
            Enable_RadioButton(AS2_Q8_2);

            EnableControls(AS2_Q8_3);


            EnableControls(AS2_Q13);
            EnableControls(AS3_Q14);
            EnableControls(AS3_Q15);
            EnableControls(AS3_Q16);
            EnableControls(AS3_Q17);
            EnableControls(AS3_Q18);
            EnableControls(AS3_Q19);
            EnableControls(AS3_Q20);


            pnl_AS1_Q1_11.Visible = true;
            pnl_AS2_Q7_1.Visible = true;
            pnl_AS2_Q13.Visible = true;

        }



        private void Enable_RadioButton(RadioButton rdo)
        {
            rdo.Visible = true;
            rdo.Enabled = true;
        }


        private void Disable_RadioButton(RadioButton rdo)
        {
            rdo.Checked = false;
            rdo.Visible = false;
            rdo.Enabled = false;
        }



        private void EnableControls(TextBox rdo)
        {
            rdo.Visible = true;
            rdo.Enabled = true;
        }


        private void DisableControls(TextBox rdo)
        {
            rdo.Text = "";
            rdo.Visible = false;
            rdo.Enabled = false;
        }



        protected void cmdSave_Click(object sender, EventArgs e)
        {

            CDBOperations obj_op = new CDBOperations();

            string var_AS1_screening_ID = "";
            string var_AS1_rand_id = "";
            string var_AS1_name = "";
            string var_AS1_sex = "";
            string var_AS1_age = "";
            string var_AS1_barcode = "";
            string var_AS1_fsite = "";
            string var_AS1_Samp = "";

            string var_AS1_Samp_1 = "";
            string var_AS1_Samp_2 = "";
            string var_AS1_Samp_3 = "";
            string var_AS1_Samp_4 = "";

            string var_AS1_Q1_1 = "";
            string var_AS1_Q1_2 = "";
            string var_AS1_Q2_1 = "";
            string var_AS1_Q2_2 = "";
            string var_AS1_Q3 = "";
            string var_AS1_Q3a_1 = "";
            string var_AS1_Q3a_2 = "";
            string var_AS1_Q4 = "";
            string var_AS1_Q5 = "";
            string var_AS1_Q6 = "";
            string var_AS2_Q7_1 = "";
            string var_AS2_Q7_2 = "";
            string var_AS2_Q8 = "";
            string var_AS2_Q8_3 = "";
            string var_AS2_Q8a = "";
            string var_AS2_Q9 = "";
            string var_AS2_Q10 = "";
            string var_AS2_Q11 = "";
            string var_AS2_Q12 = "";
            string var_AS2_Q13 = "";
            string var_AS3_Q14 = "";
            string var_AS3_Q15 = "";
            string var_AS3_Q16 = "";
            string var_AS3_Q17 = "";
            string var_AS3_Q18 = "";
            string var_AS3_Q19 = "";
            string var_AS3_Q20 = "";
            string var_AS3_Remarks = "";
            string var_AS3_A1 = "";
            string var_AS3_A2 = "";
            string var_AS3_B1 = "";
            string var_AS3_B2 = "";




            try
            {

                if (AS1_sex_a.Checked == true)
                {
                    var_AS1_sex = "1";
                }
                else if (AS1_sex_b.Checked == true)
                {
                    var_AS1_sex = "2";
                }



                if (AS1_fsite_1.Checked == true)
                {
                    var_AS1_fsite = "1";
                }
                else if (AS1_fsite_2.Checked == true)
                {
                    var_AS1_fsite = "2";
                }
                else if (AS1_fsite_3.Checked == true)
                {
                    var_AS1_fsite = "3";
                }



                if (AS1_Samp_1.Checked == true)
                {
                    var_AS1_Samp_1 = "1";
                }

                if (AS1_Samp_2.Checked == true)
                {
                    var_AS1_Samp_2 = "2";
                }

                if (AS1_Samp_3.Checked == true)
                {
                    var_AS1_Samp_3 = "3";
                }

                if (AS1_Samp_4.Checked == true)
                {
                    var_AS1_Samp_4 = "4";
                }



                if (AS1_Q1_11.Checked == true)
                {
                    var_AS1_Q1_1 = "1";
                }
                else if (AS1_Q1_12.Checked == true)
                {
                    var_AS1_Q1_1 = "2";
                }



                if (AS1_Q2_11.Checked == true)
                {
                    var_AS1_Q2_1 = "1";
                }
                else if (AS1_Q2_12.Checked == true)
                {
                    var_AS1_Q2_1 = "2";
                }




                if (AS1_Q3_1.Checked == true)
                {
                    var_AS1_Q3 = "1";
                }
                else if (AS1_Q3_2.Checked == true)
                {
                    var_AS1_Q3 = "2";
                }




                if (AS1_Q3_1.Checked == true)
                {
                    var_AS1_Q3 = "1";
                }
                else if (AS1_Q3_2.Checked == true)
                {
                    var_AS1_Q3 = "2";
                }



                if (AS1_Q3a_11.Checked == true)
                {
                    var_AS1_Q3a_1 = "1";
                }
                else if (AS1_Q3a_12.Checked == true)
                {
                    var_AS1_Q3a_1 = "2";
                }




                if (AS2_Q7_11.Checked == true)
                {
                    var_AS2_Q7_1 = "1";
                }
                else if (AS2_Q7_12.Checked == true)
                {
                    var_AS2_Q7_1 = "2";
                }



                if (AS2_Q8_1.Checked == true)
                {
                    var_AS2_Q8 = "1";
                }
                else if (AS2_Q8_2.Checked == true)
                {
                    var_AS2_Q8 = "2";
                }




                if (AS2_Q8a_1.Checked == true)
                {
                    var_AS2_Q8a = "1";
                }
                else if (AS2_Q8a_2.Checked == true)
                {
                    var_AS2_Q8a = "2";
                }




                if (AS2_Q11_1.Checked == true)
                {
                    var_AS2_Q11 = "1";
                }
                else if (AS2_Q11_2.Checked == true)
                {
                    var_AS2_Q11 = "2";
                }


                DateTime dt_entry = new DateTime();
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-GB");
                dt_entry = Convert.ToDateTime(DateTime.Now.ToShortDateString());



                string[] fldname = {
"AS1_screening_ID",
"AS1_rand_id",
"AS1_name",
"AS1_sex",
"AS1_age",
"AS1_barcode",
"AS1_fsite",
"AS1_Samp_1",
"AS1_Samp_2",
"AS1_Samp_3",
"AS1_Samp_4",
"AS1_Q1_1",
"AS1_Q1_2",
"AS1_Q2_1",
"AS1_Q2_2",
"AS1_Q3",
"AS1_Q3a_1",
"AS1_Q3a_2",
"AS1_Q4",
"AS1_Q5",
"AS1_Q6",
"AS2_Q7_1",
"AS2_Q7_2",
"AS2_Q8",
"AS2_Q8_3",
"AS2_Q8a",
"AS2_Q9",
"AS2_Q10",
"AS2_Q11",
"AS2_Q12_1",
"AS2_Q12_2",
"AS2_Q12_3",
"AS2_Q12_4",
"AS2_Q13",
"AS3_Q14",
"AS3_Q15",
"AS3_Q16",
"AS3_Q17",
"AS3_Q18",
"AS3_Q19",
"AS3_Q20",
"AS3_Remarks",
"AS3_A1",
"AS3_A2",
"AS3_B1",
"AS3_B2",
"UserID",
"EntryDate"
 };


                string[] fldvalue =
                {

                 AS1_screening_ID.Text,
AS1_rand_id.Text,
AS1_name.Text,
var_AS1_sex,
AS1_age.Text,
AS1_barcode.Text,
var_AS1_fsite,
var_AS1_Samp_1,
var_AS1_Samp_2,
var_AS1_Samp_3,
var_AS1_Samp_4,
var_AS1_Q1_1,
AS1_Q1_2.Text,
var_AS1_Q2_1,
AS1_Q2_2.Text,
var_AS1_Q3,
var_AS1_Q3a_1,
AS1_Q3a_2.Text,
AS1_Q4.Text,
AS1_Q5.Text,
AS1_Q6.Text,
var_AS2_Q7_1,
AS2_Q7_2.Text,
var_AS2_Q8,
AS2_Q8_3.Text,
var_AS2_Q8a,
AS2_Q9.Text,
AS2_Q10.Text,
var_AS2_Q11,
AS2_Q12_1.Text,
AS2_Q12_2.Text,
AS2_Q12_3.Text,
AS2_Q12_4.Text,
AS2_Q13.Text,
AS3_Q14.Text,
AS3_Q15.Text,
AS3_Q16.Text,
AS3_Q17.Text,
AS3_Q18.Text,
AS3_Q19.Text,
AS3_Q20.Text,
AS3_Remarks.Text,
AS3_A1.Text,
AS3_A2.Text,
AS3_B1.Text,
AS3_B2.Text,
Session["userid"].ToString(),
dt_entry.ToShortDateString()

                };


                string msg = obj_op.ExecuteNonQuery_Message(fldname, fldvalue, "sp_AddForm1");

                if (string.IsNullOrEmpty(msg))
                {
                    ClearFields();


                    string message = "alert('Record saved successfully');window.location.href='sample_recv.aspx'";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }
                else
                {
                    string message = "alert('" + msg + "');";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }


                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Record saved successfully');", true);

                //Response.Redirect("sample_recv.aspx");

                //lblerr.Text = "Record saved successfully";                                
            }

            catch (Exception ex)
            {
                string message = "alert('" + ex.Message + "');";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }

            finally
            {
                obj_op = null;
            }

        }

       


        private void ClearFields()
        {
            AS1_screening_ID.Text = "";
            AS1_rand_id.Text = "";
            AS1_name.Text = "";
            AS1_sex_a.Checked = false;
            AS1_sex_b.Checked = false;

            AS1_age.Text = "";
            AS1_barcode.Text = "";

            AS1_fsite_1.Checked = false;
            AS1_fsite_2.Checked = false;
            AS1_fsite_3.Checked = false;

            AS1_Samp_1.Checked = false;
            AS1_Samp_2.Checked = false;
            AS1_Samp_3.Checked = false;
            AS1_Samp_4.Checked = false;


            AS1_Q1_11.Checked = false;
            AS1_Q1_12.Checked = false;


            AS1_Q1_2.Text = "";


            AS1_Q2_11.Checked = false;
            AS1_Q2_12.Checked = false;


            AS1_Q2_2.Text = "";

            AS1_Q3a_11.Checked = false;
            AS1_Q3a_12.Checked = false;


            AS1_Q3a_11.Checked = false;
            AS1_Q3a_12.Checked = false;


            AS1_Q3a_2.Text = "";
            AS1_Q4.Text = "";
            AS1_Q5.Text = "";
            AS1_Q6.Text = "";


            AS2_Q7_11.Checked = false;
            AS2_Q7_12.Checked = false;


            AS2_Q7_2.Text = "";


            AS2_Q8_1.Checked = false;
            AS2_Q8_2.Checked = false;
            AS2_Q8_3.Text = "";


            AS2_Q8a_1.Checked = false;
            AS2_Q8a_2.Checked = false;


            AS2_Q9.Text = "";
            AS2_Q10.Text = "";


            AS2_Q11_1.Checked = false;
            AS2_Q11_2.Checked = false;


            AS2_Q12_1.Text = "";
            AS2_Q12_2.Text = "";
            AS2_Q12_3.Text = "";
            AS2_Q12_4.Text = "";


            AS2_Q13.Text = "";
            AS3_Q14.Text = "";
            AS3_Q15.Text = "";
            AS3_Q16.Text = "";
            AS3_Q17.Text = "";
            AS3_Q18.Text = "";
            AS3_Q19.Text = "";
            AS3_Q20.Text = "";
            AS3_Remarks.Text = "";
            AS3_A1.Text = "";
            AS3_A2.Text = "";
            AS3_B1.Text = "";
            AS3_B2.Text = "";
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            Session.Abandon();
            Response.Redirect("login.aspx");
        }



        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<CountryInfo> CheckScreeningID(string screeningid)
        {
            List<CountryInfo> CountryInformation = new List<CountryInfo>();

            try
            {
                string[] fldname = { "screeningid", "fldvalue", "visitid" };
                string[] fldvalue = { screeningid, "0", "0" };

                DataSet ds = ExecuteNonQuery(fldname, fldvalue, "sp_GetRecords");

                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {

                            foreach (DataRow dr in ds.Tables[0].Rows)
                            {
                                CountryInformation.Add(new CountryInfo()
                                {
                                    AS1_screening_ID = dr["AS1_screening_ID"].ToString(),
                                    AS1_rand_id = dr["AS1_rand_id"].ToString(),
                                    AS1_name = dr["AS1_name"].ToString(),
                                    AS1_sex = dr["AS1_sex"].ToString(),
                                    AS1_age = dr["AS1_age"].ToString(),
                                    AS1_barcode = dr["AS1_barcode"].ToString(),
                                    AS1_fsite = dr["AS1_fsite"].ToString(),
                                    AS1_Q1_1 = dr["AS1_Q1_1"].ToString(),

                                });
                            }

                        }
                    }
                }


            }

            catch (Exception ex)
            {

            }

            return CountryInformation;
        }



        public static DataSet ExecuteNonQuery(string[] fieldName, string[] fieldValues, string spName)
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
                        if (fieldName[a] == "DOP" || fieldName[a] == "StartDate" || fieldName[a] == "EndDate" || fieldName[a] == "AADOP")
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

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("sample_recv.aspx");
        }
    }
}