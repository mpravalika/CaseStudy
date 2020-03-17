using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class Population
    {
        int applicationID;
        int memberid;
        string firstname;
        string middlename;
        string lastname;
        string suffix;
        DateTime dob;
        string gender;

        public int ApplicationID { get => applicationID; set => applicationID = value; }
        public int Memberid { get => memberid; set => memberid = value; }
        public string Firstname { get => firstname; set => firstname = value; }
        public string Middlename { get => middlename; set => middlename = value; }
        public string Lastname { get => lastname; set => lastname = value; }
        public string Suffix { get => suffix; set => suffix = value; }
        public DateTime Dob { get => dob; set => dob = value; }
        public string Gender { get => gender; set => gender = value; }
    }
}