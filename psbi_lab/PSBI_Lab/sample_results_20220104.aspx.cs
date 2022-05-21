using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Data.SqlClient;
using System.Data;


namespace PSBI_Lab2012
{
    public partial class sample_results_20220104 : System.Web.UI.Page
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
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            CDBOperations obj_op = new CDBOperations();

            string var_LA_03_b = "";
            string var_LA_04_b = "";
            string var_LA_05_b = "";
            string var_LA_06_b = "";
            string var_LA_07_b = "";
            string var_LA_08_b = "";
            string var_LA_09_b = "";
            string var_LA_10_b = "";
            string var_LA_11_b = "";
            string var_LA_12_b = "";
            string var_LA_13_b = "";
            string var_LA_14_b = "";
            string var_LA_15_b = "";
            string var_LA_16_b = "";

            string var_LA_20a_b = "";
            string var_LA_21a_b = "";
            string var_LA_22a_b = "";
            string var_LA_23a_b = "";
            string var_LA_24a_b = "";
            string var_LA_25a_b = "";
            string var_LA_26a_b = "";
            string var_LA_27a_b = "";
            string var_LA_28a_b = "";
            string var_LA_29a_b = "";
            string var_LA_30a_b = "";
            string var_LA_31a_b = "";
            string var_LA_32a_b = "";
            string var_LA_33a_b = "";
            string var_LA_34a_b = "";
            string var_LA_35a_b = "";
            string var_LA_36a_b = "";
            string var_LA_37a_b = "";
            string var_LA_38a_b = "";
            string var_LA_39a_b = "";
            string var_LA_40a_b = "";
            string var_LA_41a_b = "";
            string var_LA_42a_b = "";
            string var_LA_43a_b = "";
            string var_LA_44a_b = "";
            string var_LA_45a_b = "";
            string var_LA_46a_b = "";
            string var_LA_47a_b = "";
            string var_LA_48a_b = "";
            string var_LA_49a_b = "";
            string var_LA_50a_b = "";
            string var_LA_51a_b = "";
            string var_LA_52a_b = "";


            var var_LA_20b_a = "";
            var var_LA_21b_a = "";
            var var_LA_22b_a = "";
            var var_LA_23b_a = "";
            var var_LA_24b_a = "";
            var var_LA_25b_a = "";
            var var_LA_26b_a = "";
            var var_LA_27b_a = "";
            var var_LA_28b_a = "";
            var var_LA_29b_a = "";
            var var_LA_30b_a = "";
            var var_LA_31b_a = "";
            var var_LA_32b_a = "";
            var var_LA_33b_a = "";
            var var_LA_34b_a = "";
            var var_LA_35b_a = "";
            var var_LA_36b_a = "";
            var var_LA_37b_a = "";
            var var_LA_38b_a = "";
            var var_LA_39b_a = "";
            var var_LA_40b_a = "";
            var var_LA_41b_a = "";
            var var_LA_42b_a = "";
            var var_LA_43b_a = "";
            var var_LA_44b_a = "";
            var var_LA_45b_a = "";
            var var_LA_46b_a = "";
            var var_LA_47b_a = "";
            var var_LA_48b_a = "";
            var var_LA_49b_a = "";
            var var_LA_50b_a = "";
            var var_LA_51b_a = "";
            var var_LA_52b_a = "";


            try
            {



                if (LA_03_b.Checked == true)
                {
                    var_LA_03_b = "999";
                }
                else if (LA_03_c.Checked == true)
                {
                    var_LA_03_b = "888";
                }



                if (LA_04_b.Checked == true)
                {
                    var_LA_04_b = "999";
                }
                else if (LA_04_c.Checked == true)
                {
                    var_LA_04_b = "888";
                }


                if (LA_05_b.Checked == true)
                {
                    var_LA_05_b = "999";
                }
                else if (LA_05_c.Checked == true)
                {
                    var_LA_05_b = "888";
                }


                if (LA_06_b.Checked == true)
                {
                    var_LA_06_b = "999";
                }
                else if (LA_06_c.Checked == true)
                {
                    var_LA_06_b = "888";
                }


                if (LA_07_b.Checked == true)
                {
                    var_LA_07_b = "999";
                }
                else if (LA_07_c.Checked == true)
                {
                    var_LA_07_b = "888";
                }


                if (LA_08_b.Checked == true)
                {
                    var_LA_08_b = "999";
                }
                else if (LA_08_c.Checked == true)
                {
                    var_LA_08_b = "888";
                }



                if (LA_09_b.Checked == true)
                {
                    var_LA_09_b = "999";
                }
                else if (LA_09_c.Checked == true)
                {
                    var_LA_09_b = "999";
                }


                if (LA_10_b.Checked == true)
                {
                    var_LA_10_b = "999";
                }
                else if (LA_10_c.Checked == true)
                {
                    var_LA_10_b = "888";
                }



                if (LA_11_b.Checked == true)
                {
                    var_LA_11_b = "999";
                }
                else if (LA_11_c.Checked == true)
                {
                    var_LA_11_b = "888";
                }


                if (LA_12_b.Checked == true)
                {
                    var_LA_12_b = "999";
                }
                else if (LA_12_c.Checked == true)
                {
                    var_LA_12_b = "888";
                }


                if (LA_13_b.Checked == true)
                {
                    var_LA_13_b = "999";
                }
                else if (LA_13_c.Checked == true)
                {
                    var_LA_13_b = "888";
                }


                if (LA_14_b.Checked == true)
                {
                    var_LA_14_b = "999";
                }
                else if (LA_14_c.Checked == true)
                {
                    var_LA_14_b = "888";
                }



                if (LA_15_b.Checked == true)
                {
                    var_LA_15_b = "999";
                }
                else if (LA_15_c.Checked == true)
                {
                    var_LA_15_b = "888";
                }


                if (LA_16_b.Checked == true)
                {
                    var_LA_16_b = "999";
                }
                else if (LA_16_c.Checked == true)
                {
                    var_LA_16_b = "888";
                }



                if (LA_20a_b.Checked == true)
                {
                    var_LA_20a_b = "999";
                }
                else if (LA_20a_c.Checked == true)
                {
                    var_LA_20a_b = "888";
                }



                if (LA_20b_a.Checked == true)
                {
                    var_LA_20b_a = "1";
                }
                else if (LA_20b_b.Checked == true)
                {
                    var_LA_20b_a = "2";
                }
                else if (LA_20b_c.Checked == true)
                {
                    var_LA_20b_a = "3";
                }




                if (LA_21a_b.Checked == true)
                {
                    var_LA_21a_b = "999";
                }
                else if (LA_21a_c.Checked == true)
                {
                    var_LA_21a_b = "888";
                }



                if (LA_21b_a.Checked == true)
                {
                    var_LA_21b_a = "1";
                }
                else if (LA_21b_b.Checked == true)
                {
                    var_LA_21b_a = "2";
                }
                else if (LA_21b_c.Checked == true)
                {
                    var_LA_21b_a = "3";
                }



                if (LA_22a_b.Checked == true)
                {
                    var_LA_22a_b = "999";
                }
                else if (LA_22a_c.Checked == true)
                {
                    var_LA_22a_b = "888";
                }



                if (LA_22b_a.Checked == true)
                {
                    var_LA_22b_a = "1";
                }
                else if (LA_22b_b.Checked == true)
                {
                    var_LA_22b_a = "2";
                }
                else if (LA_22b_c.Checked == true)
                {
                    var_LA_22b_a = "3";
                }



                if (LA_23a_b.Checked == true)
                {
                    var_LA_23a_b = "999";
                }
                else if (LA_23a_c.Checked == true)
                {
                    var_LA_23a_b = "888";
                }



                if (LA_23b_a.Checked == true)
                {
                    var_LA_23b_a = "1";
                }
                else if (LA_23b_b.Checked == true)
                {
                    var_LA_23b_a = "2";
                }
                else if (LA_23b_c.Checked == true)
                {
                    var_LA_23b_a = "3";
                }



                if (LA_24a_b.Checked == true)
                {
                    var_LA_24a_b = "999";
                }
                else if (LA_24a_c.Checked == true)
                {
                    var_LA_24a_b = "888";
                }



                if (LA_24b_a.Checked == true)
                {
                    var_LA_24b_a = "1";
                }
                else if (LA_24b_b.Checked == true)
                {
                    var_LA_24b_a = "2";
                }
                else if (LA_24b_c.Checked == true)
                {
                    var_LA_24b_a = "3";
                }



                if (LA_25a_b.Checked == true)
                {
                    var_LA_25a_b = "999";
                }
                else if (LA_25a_c.Checked == true)
                {
                    var_LA_25a_b = "888";
                }



                if (LA_25b_a.Checked == true)
                {
                    var_LA_25b_a = "1";
                }
                else if (LA_25b_b.Checked == true)
                {
                    var_LA_25b_a = "2";
                }
                else if (LA_25b_c.Checked == true)
                {
                    var_LA_25b_a = "3";
                }



                if (LA_26a_b.Checked == true)
                {
                    var_LA_26a_b = "999";
                }
                else if (LA_26a_c.Checked == true)
                {
                    var_LA_26a_b = "888";
                }



                if (LA_26b_a.Checked == true)
                {
                    var_LA_26b_a = "1";
                }
                else if (LA_26b_b.Checked == true)
                {
                    var_LA_26b_a = "2";
                }
                else if (LA_26b_c.Checked == true)
                {
                    var_LA_26b_a = "3";
                }




                if (LA_27a_b.Checked == true)
                {
                    var_LA_27a_b = "999";
                }
                else if (LA_27a_c.Checked == true)
                {
                    var_LA_27a_b = "888";
                }



                if (LA_27b_a.Checked == true)
                {
                    var_LA_27b_a = "1";
                }
                else if (LA_27b_b.Checked == true)
                {
                    var_LA_27b_a = "2";
                }
                else if (LA_27b_c.Checked == true)
                {
                    var_LA_27b_a = "3";
                }




                if (LA_28a_b.Checked == true)
                {
                    var_LA_28a_b = "999";
                }
                else if (LA_28a_c.Checked == true)
                {
                    var_LA_28a_b = "888";
                }



                if (LA_28b_a.Checked == true)
                {
                    var_LA_28b_a = "1";
                }
                else if (LA_28b_b.Checked == true)
                {
                    var_LA_28b_a = "2";
                }
                else if (LA_28b_c.Checked == true)
                {
                    var_LA_28b_a = "3";
                }



                if (LA_29a_b.Checked == true)
                {
                    var_LA_29a_b = "999";
                }
                else if (LA_29a_c.Checked == true)
                {
                    var_LA_29a_b = "888";
                }



                if (LA_29b_a.Checked == true)
                {
                    var_LA_29b_a = "1";
                }
                else if (LA_29b_b.Checked == true)
                {
                    var_LA_29b_a = "2";
                }
                else if (LA_29b_c.Checked == true)
                {
                    var_LA_29b_a = "3";
                }



                if (LA_30a_b.Checked == true)
                {
                    var_LA_30a_b = "999";
                }
                else if (LA_30a_c.Checked == true)
                {
                    var_LA_30a_b = "888";
                }



                if (LA_30b_a.Checked == true)
                {
                    var_LA_30b_a = "1";
                }
                else if (LA_30b_b.Checked == true)
                {
                    var_LA_30b_a = "2";
                }
                else if (LA_30b_c.Checked == true)
                {
                    var_LA_30b_a = "3";
                }



                if (LA_31a_b.Checked == true)
                {
                    var_LA_31a_b = "999";
                }
                else if (LA_31a_c.Checked == true)
                {
                    var_LA_31a_b = "888";
                }



                if (LA_31b_a.Checked == true)
                {
                    var_LA_31b_a = "1";
                }
                else if (LA_31b_b.Checked == true)
                {
                    var_LA_31b_a = "2";
                }
                else if (LA_31b_c.Checked == true)
                {
                    var_LA_31b_a = "3";
                }



                if (LA_32a_b.Checked == true)
                {
                    var_LA_32a_b = "999";
                }
                else if (LA_32a_c.Checked == true)
                {
                    var_LA_32a_b = "888";
                }



                if (LA_32b_a.Checked == true)
                {
                    var_LA_32b_a = "1";
                }
                else if (LA_32b_b.Checked == true)
                {
                    var_LA_32b_a = "2";
                }
                else if (LA_32b_c.Checked == true)
                {
                    var_LA_32b_a = "3";
                }




                if (LA_33a_b.Checked == true)
                {
                    var_LA_33a_b = "999";
                }
                else if (LA_33a_c.Checked == true)
                {
                    var_LA_33a_b = "888";
                }



                if (LA_33b_a.Checked == true)
                {
                    var_LA_33b_a = "1";
                }
                else if (LA_33b_b.Checked == true)
                {
                    var_LA_33b_a = "2";
                }
                else if (LA_33b_c.Checked == true)
                {
                    var_LA_33b_a = "3";
                }




                if (LA_34a_b.Checked == true)
                {
                    var_LA_34a_b = "999";
                }
                else if (LA_34a_c.Checked == true)
                {
                    var_LA_34a_b = "888";
                }



                if (LA_34b_a.Checked == true)
                {
                    var_LA_34b_a = "1";
                }
                else if (LA_34b_b.Checked == true)
                {
                    var_LA_34b_a = "2";
                }
                else if (LA_34b_c.Checked == true)
                {
                    var_LA_34b_a = "3";
                }



                if (LA_35a_b.Checked == true)
                {
                    var_LA_35a_b = "999";
                }
                else if (LA_35a_c.Checked == true)
                {
                    var_LA_35a_b = "888";
                }



                if (LA_35b_a.Checked == true)
                {
                    var_LA_35b_a = "1";
                }
                else if (LA_35b_b.Checked == true)
                {
                    var_LA_35b_a = "2";
                }
                else if (LA_35b_c.Checked == true)
                {
                    var_LA_35b_a = "3";
                }



                if (LA_36a_b.Checked == true)
                {
                    var_LA_36a_b = "999";
                }
                else if (LA_36a_c.Checked == true)
                {
                    var_LA_36a_b = "888";
                }



                if (LA_36b_a.Checked == true)
                {
                    var_LA_36b_a = "1";
                }
                else if (LA_36b_b.Checked == true)
                {
                    var_LA_36b_a = "2";
                }
                else if (LA_36b_c.Checked == true)
                {
                    var_LA_36b_a = "3";
                }




                if (LA_37a_b.Checked == true)
                {
                    var_LA_37a_b = "999";
                }
                else if (LA_37a_c.Checked == true)
                {
                    var_LA_37a_b = "888";
                }



                if (LA_37b_a.Checked == true)
                {
                    var_LA_37b_a = "1";
                }
                else if (LA_37b_b.Checked == true)
                {
                    var_LA_37b_a = "2";
                }
                else if (LA_37b_c.Checked == true)
                {
                    var_LA_37b_a = "3";
                }



                if (LA_38a_b.Checked == true)
                {
                    var_LA_38a_b = "999";
                }
                else if (LA_38a_c.Checked == true)
                {
                    var_LA_38a_b = "888";
                }



                if (LA_38b_a.Checked == true)
                {
                    var_LA_38b_a = "1";
                }
                else if (LA_38b_b.Checked == true)
                {
                    var_LA_38b_a = "2";
                }
                else if (LA_38b_c.Checked == true)
                {
                    var_LA_38b_a = "3";
                }



                if (LA_39a_b.Checked == true)
                {
                    var_LA_39a_b = "999";
                }
                else if (LA_39a_c.Checked == true)
                {
                    var_LA_39a_b = "888";
                }



                if (LA_39b_a.Checked == true)
                {
                    var_LA_39b_a = "1";
                }
                else if (LA_39b_b.Checked == true)
                {
                    var_LA_39b_a = "2";
                }
                else if (LA_39b_c.Checked == true)
                {
                    var_LA_39b_a = "3";
                }



                if (LA_40a_b.Checked == true)
                {
                    var_LA_40a_b = "999";
                }
                else if (LA_40a_c.Checked == true)
                {
                    var_LA_40a_b = "888";
                }



                if (LA_40b_a.Checked == true)
                {
                    var_LA_40b_a = "1";
                }
                else if (LA_40b_b.Checked == true)
                {
                    var_LA_40b_a = "2";
                }
                else if (LA_40b_c.Checked == true)
                {
                    var_LA_40b_a = "3";
                }



                if (LA_41a_b.Checked == true)
                {
                    var_LA_41a_b = "999";
                }
                else if (LA_41a_c.Checked == true)
                {
                    var_LA_41a_b = "888";
                }



                if (LA_41b_a.Checked == true)
                {
                    var_LA_41b_a = "1";
                }
                else if (LA_41b_b.Checked == true)
                {
                    var_LA_41b_a = "2";
                }
                else if (LA_41b_c.Checked == true)
                {
                    var_LA_41b_a = "3";
                }



                if (LA_42a_b.Checked == true)
                {
                    var_LA_42a_b = "999";
                }
                else if (LA_42a_c.Checked == true)
                {
                    var_LA_42a_b = "888";
                }



                if (LA_42b_a.Checked == true)
                {
                    var_LA_42b_a = "1";
                }
                else if (LA_42b_b.Checked == true)
                {
                    var_LA_42b_a = "2";
                }
                else if (LA_42b_c.Checked == true)
                {
                    var_LA_42b_a = "3";
                }



                if (LA_43a_b.Checked == true)
                {
                    var_LA_43a_b = "999";
                }
                else if (LA_43a_c.Checked == true)
                {
                    var_LA_43a_b = "888";
                }



                if (LA_43b_a.Checked == true)
                {
                    var_LA_43b_a = "1";
                }
                else if (LA_43b_b.Checked == true)
                {
                    var_LA_43b_a = "2";
                }
                else if (LA_43b_c.Checked == true)
                {
                    var_LA_43b_a = "3";
                }



                if (LA_44a_b.Checked == true)
                {
                    var_LA_44a_b = "999";
                }
                else if (LA_44a_c.Checked == true)
                {
                    var_LA_44a_b = "888";
                }



                if (LA_44b_a.Checked == true)
                {
                    var_LA_44b_a = "1";
                }
                else if (LA_44b_b.Checked == true)
                {
                    var_LA_44b_a = "2";
                }
                else if (LA_44b_c.Checked == true)
                {
                    var_LA_44b_a = "3";
                }



                if (LA_45a_b.Checked == true)
                {
                    var_LA_45a_b = "999";
                }
                else if (LA_45a_c.Checked == true)
                {
                    var_LA_45a_b = "888";
                }



                if (LA_45b_a.Checked == true)
                {
                    var_LA_45b_a = "1";
                }
                else if (LA_45b_b.Checked == true)
                {
                    var_LA_45b_a = "2";
                }
                else if (LA_45b_c.Checked == true)
                {
                    var_LA_45b_a = "3";
                }



                if (LA_46a_b.Checked == true)
                {
                    var_LA_46a_b = "999";
                }
                else if (LA_46a_c.Checked == true)
                {
                    var_LA_46a_b = "888";
                }



                if (LA_46b_a.Checked == true)
                {
                    var_LA_46b_a = "1";
                }
                else if (LA_46b_b.Checked == true)
                {
                    var_LA_46b_a = "2";
                }
                else if (LA_46b_c.Checked == true)
                {
                    var_LA_46b_a = "3";
                }



                if (LA_47a_b.Checked == true)
                {
                    var_LA_47a_b = "999";
                }
                else if (LA_47a_c.Checked == true)
                {
                    var_LA_47a_b = "888";
                }



                if (LA_47b_a.Checked == true)
                {
                    var_LA_47b_a = "1";
                }
                else if (LA_47b_b.Checked == true)
                {
                    var_LA_47b_a = "2";
                }
                else if (LA_47b_c.Checked == true)
                {
                    var_LA_47b_a = "3";
                }




                if (LA_48a_b.Checked == true)
                {
                    var_LA_48a_b = "999";
                }
                else if (LA_48a_c.Checked == true)
                {
                    var_LA_48a_b = "888";
                }



                if (LA_48b_a.Checked == true)
                {
                    var_LA_48b_a = "1";
                }
                else if (LA_48b_b.Checked == true)
                {
                    var_LA_48b_a = "2";
                }
                else if (LA_48b_c.Checked == true)
                {
                    var_LA_48b_a = "3";
                }



                if (LA_49a_b.Checked == true)
                {
                    var_LA_49a_b = "999";
                }
                else if (LA_49a_c.Checked == true)
                {
                    var_LA_49a_b = "888";
                }



                if (LA_49b_a.Checked == true)
                {
                    var_LA_49b_a = "1";
                }
                else if (LA_49b_b.Checked == true)
                {
                    var_LA_49b_a = "2";
                }
                else if (LA_49b_c.Checked == true)
                {
                    var_LA_49b_a = "3";
                }



                if (LA_50a_b.Checked == true)
                {
                    var_LA_50a_b = "999";
                }
                else if (LA_50a_c.Checked == true)
                {
                    var_LA_50a_b = "888";
                }



                if (LA_50b_a.Checked == true)
                {
                    var_LA_50b_a = "1";
                }
                else if (LA_50b_b.Checked == true)
                {
                    var_LA_50b_a = "2";
                }
                else if (LA_50b_c.Checked == true)
                {
                    var_LA_50b_a = "3";
                }




                if (LA_51a_b.Checked == true)
                {
                    var_LA_51a_b = "999";
                }
                else if (LA_51a_c.Checked == true)
                {
                    var_LA_51a_b = "888";
                }



                if (LA_51b_a.Checked == true)
                {
                    var_LA_51b_a = "1";
                }
                else if (LA_51b_b.Checked == true)
                {
                    var_LA_51b_a = "2";
                }
                else if (LA_51b_c.Checked == true)
                {
                    var_LA_51b_a = "3";
                }



                if (LA_52a_b.Checked == true)
                {
                    var_LA_52a_b = "999";
                }
                else if (LA_52a_c.Checked == true)
                {
                    var_LA_52a_b = "888";
                }



                if (LA_52b_a.Checked == true)
                {
                    var_LA_52b_a = "1";
                }
                else if (LA_52b_b.Checked == true)
                {
                    var_LA_52b_a = "2";
                }
                else if (LA_52b_c.Checked == true)
                {
                    var_LA_52b_a = "3";
                }


                DateTime dt_entry = new DateTime();
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-GB");
                dt_entry = Convert.ToDateTime(DateTime.Now.ToShortDateString());



                string[] fldname = {
"la_sno",
"LA_01",
"LA_02",
"LA_03_b",
"LA_03_a",
"LA_04_b",
"LA_04_a",
"LA_05_b",
"LA_05_a",
"LA_06_b",
"LA_06_a",
"LA_07_b",
"LA_07_a",
"LA_08_b",
"LA_08_a",
"LA_09_b",
"LA_09_a",
"LA_10_b",
"LA_10_a",
"LA_11_b",
"LA_11_a",
"LA_12_b",
"LA_12_a",
"LA_13_b",
"LA_13_a",
"LA_14_b",
"LA_14_a",
"LA_15_b",
"LA_15_a",
"LA_16_b",
"LA_16_a",
"LA_17",
"LA_18",
"LA_19",
"LA_20a_b",
"LA_20a_a",
"LA_20b_a",
"LA_21a_b",
"LA_21a_a",
"LA_21b_a",
"LA_22a_b",
"LA_22a_a",
"LA_22b_a",
"LA_23a_b",
"LA_23a_a",
"LA_23b_a",
"LA_24a_b",
"LA_24a_a",
"LA_24b_a",
"LA_25a_b",
"LA_25a_a",
"LA_25b_a",
"LA_26a_b",
"LA_26a_a",
"LA_26b_a",
"LA_27a_b",
"LA_27a_a",
"LA_27b_a",
"LA_28a_b",
"LA_28a_a",
"LA_28b_a",
"LA_29a_b",
"LA_29a_a",
"LA_29b_a",
"LA_30a_b",
"LA_30a_a",
"LA_30b_a",
"LA_31a_b",
"LA_31a_a",
"LA_31b_a",
"LA_32a_b",
"LA_32a_a",
"LA_32b_a",
"LA_33a_b",
"LA_33a_a",
"LA_33b_a",
"LA_34a_b",
"LA_34a_a",
"LA_34b_a",
"LA_35a_b",
"LA_35a_a",
"LA_35b_a",
"LA_36a_b",
"LA_36a_a",
"LA_36b_a",
"LA_37a_b",
"LA_37a_a",
"LA_37b_a",
"LA_38a_b",
"LA_38a_a",
"LA_38b_a",
"LA_39a_b",
"LA_39a_a",
"LA_39b_a",
"LA_40a_b",
"LA_40a_a",
"LA_40b_a",
"LA_41a_b",
"LA_41a_a",
"LA_41b_a",
"LA_42a_b",
"LA_42a_a",
"LA_42b_a",
"LA_43a_b",
"LA_43a_a",
"LA_43b_a",
"LA_44a_b",
"LA_44a_a",
"LA_44b_a",
"LA_45a_b",
"LA_45a_a",
"LA_45b_a",
"LA_46a_b",
"LA_46a_a",
"LA_46b_a",
"LA_47a_b",
"LA_47a_a",
"LA_47b_a",
"LA_48a_b",
"LA_48a_a",
"LA_48b_a",
"LA_49a_b",
"LA_49a_a",
"LA_49b_a",
"LA_50a_b",
"LA_50a_a",
"LA_50b_a",
"LA_51a_b",
"LA_51a_a",
"LA_51b_a",
"LA_52a_b",
"LA_52a_a",
"LA_52b_a",
"UserID",
"EntryDate"
};

                string[] fldvalue = {
la_sno.Text,
LA_01.Text,
LA_02.Text,
var_LA_03_b,
LA_03_a.Text,
var_LA_04_b,
LA_04_a.Text,
var_LA_05_b,
LA_05_a.Text,
var_LA_06_b,
LA_06_a.Text,
var_LA_07_b,
LA_07_a.Text,
var_LA_08_b,
LA_08_a.Text,
var_LA_09_b,
LA_09_a.Text,
var_LA_10_b,
LA_10_a.Text,
var_LA_11_b,
LA_11_a.Text,
var_LA_12_b,
LA_12_a.Text,
var_LA_13_b,
LA_13_a.Text,
var_LA_14_b,
LA_14_a.Text,
var_LA_15_b,
LA_15_a.Text,
var_LA_16_b,
LA_16_a.Text,
LA_17.Text,
LA_18.Text,
LA_19.Text,
var_LA_20a_b,
LA_20a_a.Text,
var_LA_20b_a,
var_LA_21a_b,
LA_21a_a.Text,
var_LA_21b_a,
var_LA_22a_b,
LA_22a_a.Text,
var_LA_22b_a,
var_LA_23a_b,
LA_23a_a.Text,
var_LA_23b_a,
var_LA_24a_b,
LA_24a_a.Text,
var_LA_24b_a,
var_LA_25a_b,
LA_25a_a.Text,
var_LA_25b_a,
var_LA_26a_b,
LA_26a_a.Text,
var_LA_26b_a,
var_LA_27a_b,
LA_27a_a.Text,
var_LA_27b_a,
var_LA_28a_b,
LA_28a_a.Text,
var_LA_28b_a,
var_LA_29a_b,
LA_29a_a.Text,
var_LA_29b_a,
var_LA_30a_b,
LA_30a_a.Text,
var_LA_30b_a,
var_LA_31a_b,
LA_31a_a.Text,
var_LA_31b_a,
var_LA_32a_b,
LA_32a_a.Text,
var_LA_32b_a,
var_LA_33a_b,
LA_33a_a.Text,
var_LA_33b_a,
var_LA_34a_b,
LA_34a_a.Text,
var_LA_34b_a,
var_LA_35a_b,
LA_35a_a.Text,
var_LA_35b_a,
var_LA_36a_b,
LA_36a_a.Text,
var_LA_36b_a,
var_LA_37a_b,
LA_37a_a.Text,
var_LA_37b_a,
var_LA_38a_b,
LA_38a_a.Text,
var_LA_38b_a,
var_LA_39a_b,
LA_39a_a.Text,
var_LA_39b_a,
var_LA_40a_b,
LA_40a_a.Text,
var_LA_40b_a,
var_LA_41a_b,
LA_41a_a.Text,
var_LA_41b_a,
var_LA_42a_b,
LA_42a_a.Text,
var_LA_42b_a,
var_LA_43a_b,
LA_43a_a.Text,
var_LA_43b_a,
var_LA_44a_b,
LA_44a_a.Text,
var_LA_44b_a,
var_LA_45a_b,
LA_45a_a.Text,
var_LA_45b_a,
var_LA_46a_b,
LA_46a_a.Text,
var_LA_46b_a,
var_LA_47a_b,
LA_47a_a.Text,
var_LA_47b_a,
var_LA_48a_b,
LA_48a_a.Text,
var_LA_48b_a,
var_LA_49a_b,
LA_49a_a.Text,
var_LA_49b_a,
var_LA_50a_b,
LA_50a_a.Text,
var_LA_50b_a,
var_LA_51a_b,
LA_51a_a.Text,
var_LA_51b_a,
var_LA_52a_b,
LA_52a_a.Text,
var_LA_52b_a,
Session["userid"].ToString(),
dt_entry.ToShortDateString()

};



                string msg = obj_op.ExecuteNonQuery_Message(fldname, fldvalue, "sp_AddSampleResult");

                if (string.IsNullOrEmpty(msg))
                {
                    string message = "alert('Record saved successfully');window.location.href='sample_recv.aspx'";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }
                else
                {
                    string message = "alert('" + msg + "');";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }


                LA_01.Focus();

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



    }
}