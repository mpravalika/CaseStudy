using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CaseStudy
{
    public partial class Household_Info : System.Web.UI.Page
    {
        //SqlConnection con = null;
        //SqlDataAdapter adp = null;
        List<Population> LP = new List<Population>();
        //DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["S"] != null)
                LP = (List<Population>)Session["S"];
            //P = new Population();
            //LP = new List<Population>();
            //PDB = new PopulationDBEntities();
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
            //adp = new SqlDataAdapter("select max(ApplicationID) from PopulationCensus", con);
            //ds = new DataSet();
            //if(ds.Tables[0].Rows.Count!=0)
            //{
            //    DataRow R = ds.Tables[0].Rows[0];
            //    P.ApplicationID = int.Parse(R[0].ToString() + 1);
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBclass D = new DBclass();
            Population P = new Population();
            P.ApplicationID = D.getAppid();
            P.Memberid = LP.Count + 1;
            P.Firstname = TextBox1.Text;
            P.Middlename = TextBox2.Text;
            P.Lastname = TextBox3.Text;
            P.Suffix = DropDownList1.SelectedValue;
            P.Dob = DateTime.Parse(TextBox4.Text);
            P.Gender = RadioButtonList1.SelectedValue;
            LP.Add(P);
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            DropDownList1.SelectedValue = "-1";
            RadioButtonList1.SelectedValue = " ";
            Session["S"] = LP;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DBclass D = new DBclass();
            string s = D.SaveMembers(LP);
            Session.Remove("S");
            Response.Redirect("Confirmation.aspx?s="+s);
        //    if(LP.Count!=0)
        //    {
        //        for(int i=0;i<LP.Count;i++)
        //        {
        //            PDB.sp_population(LP[i].ApplicationID, LP[i].Memberid, LP[i].Firstname, LP[i].Middlename, LP[i].Lastname, LP[i].Suffix, LP[i].Dob, LP[i].Gender);
        //            PDB.SaveChanges(); 
        //        }
        //    }
        //    else
        //    {
        //        int applid = P.ApplicationID;
        //        int memid = 1;
        //        string fn = TextBox1.Text;
        //        string mn = TextBox2.Text;
        //        string ln = TextBox3.Text;
        //        string suff = DropDownList1.SelectedValue;
        //        DateTime dob = DateTime.Parse(TextBox4.Text);
        //        string g = RadioButtonList1.SelectedValue;
        //        PDB.sp_population(applid, memid, fn, mn, ln, suff, dob, g);
        //        PDB.SaveChanges();
        //    }
        }
    }
}