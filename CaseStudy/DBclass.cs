using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CaseStudy
{
    public class DBclass
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        public int getAppid()
        {
            int C = 0;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
                con.Open();
                cmd = new SqlCommand("select max(ApplicationID) from PopulationCensus", con);
                string s = cmd.ExecuteScalar().ToString();
                if (s == "")
                    C++;
                else
                    C = int.Parse(s) + 1;
            }
            catch(SqlException E)
            {

            }
            finally
            {
                con.Close();
            }
            return C;
        }
        public string SaveMembers(List<Population> L)
        {
            string str = null;
            try
            {
                con=new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
                con.Open();
                cmd = new SqlCommand("sp_population", con);
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable Db = new DataTable();
                Db.Columns.Add("AplicationID", typeof(Int32));
                Db.Columns.Add("Memberid", typeof(Int32));
                Db.Columns.Add("Firstname", typeof(string));
                Db.Columns.Add("Middlename", typeof(string));
                Db.Columns.Add("Lastname", typeof(string));
                Db.Columns.Add("suffix", typeof(string));
                Db.Columns.Add("DOB", typeof(DateTime));
                Db.Columns.Add("Gender", typeof(string));
                for(int i=0;i<L.Count;i++)
                {
                    Db.Rows.Add(L[i].ApplicationID, L[i].Memberid, L[i].Firstname, L[i].Middlename, L[i].Lastname, L[i].Suffix, L[i].Dob, L[i].Gender);
                }
                SqlParameter p = new SqlParameter("@result", Db);//sending table to database
                p.SqlDbType = SqlDbType.Structured;//structure is used to send table
                cmd.Parameters.Add(p);
                cmd.ExecuteNonQuery();
                str= "Application submitted with " + L.Count + " Members details.Your Application id " + L[0].ApplicationID;
            }
            catch(SqlException E)
            {

            }
            finally
            {
                con.Close();
            }
            return str;
        }
    }
}