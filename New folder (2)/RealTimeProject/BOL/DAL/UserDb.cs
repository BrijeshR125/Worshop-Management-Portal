using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BOL;
using System.Data.SqlClient;

namespace DAL
{
    public class UserDb:DALBase
    {
        public List<tbl_User> GetTrainers()
        {
            try
            {
                List<tbl_User> Ls;
                Ls = new List<tbl_User>();

                string cmdStr = @"SELECT tbl_User.UserId,tbl_User.FirstName,tbl_User.LastName FROM tbl_User INNER JOIN tbl_Role ON tbl_User.RoleId = tbl_Role.RoleId WHERE (tbl_Role.RoleName = 'Trainer')";
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tbl_User Tr = new tbl_User();
                    Tr.UserId = int.Parse(dr["UserId"].ToString());
                    Tr.FirstName = dr["FirstName"].ToString();
                    Tr.LastName = dr["LastName"].ToString();
                    Ls.Add(Tr);
                }
                dr.Close();
                con.Close();
                return Ls;
            }
            catch
            {
                throw;
            }
        }
    
        public bool CreateUserRequest(tbl_User U, int WorkshopId)
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlTransaction trns = con.BeginTransaction();
            
            string cmdStr = @"insert into tbl_User (Username_Email,FirstName,LastName,UserGender,Mobile,RoleId) values(@Username_Email,@FirstName,@LastName,@Gender,@Mobile,7); select Scope_Identity() as Id";

            string cmdStr2 = "insert into tbl_Student_Workshop_Mapping values(@StudentId,@WorkshopId,NULL)";
            try 
            {
                //inserting Workshop
                SqlCommand cmd = new SqlCommand(cmdStr, con, trns);
                cmd.Parameters.AddWithValue("@Username_Email", U.Username_Email);
                cmd.Parameters.AddWithValue("@FirstName", U.FirstName);
                cmd.Parameters.AddWithValue("@LastName", U.LastName);
                cmd.Parameters.AddWithValue("@Gender", U.UserGender);
                cmd.Parameters.AddWithValue("@Mobile", U.Mobile);
                //cmd.Parameters.AddWithValue("@DOB", U.UserDob);
                SqlDataReader dr = cmd.ExecuteReader();

                //Reading StudentId returned from Scope_Identity
                int StudentId = 0;
                if(dr.Read())
                {
                    StudentId = int.Parse(dr[0].ToString());
                }
                dr.Close();

                //inserting record in tbl_Student_Workshop_Mapping with retrived StudentId from Scope_Identity
                SqlCommand cmd2 = new SqlCommand(cmdStr2, con, trns);
                cmd2.Parameters.AddWithValue("@StudentId", StudentId);
                cmd2.Parameters.AddWithValue("@WorkshopId", WorkshopId);
                cmd2.ExecuteNonQuery();

                //if everything is successful then commiting the transaction
                trns.Commit();
                con.Close();
                return true;
            }
            catch
            {
                trns.Rollback();
                return false;
            }
        }
        
        public bool ValidateUser(tbl_User U)
        {
            string cmdStr = @"SELECT * FROM tbl_User WHERE (Username_Email=@Username and Password=@Password)";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@Username", U.Username_Email);
            cmd.Parameters.AddWithValue("@Password", U.Password);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                U.UserId = int.Parse(dr["UserId"].ToString());
                U.RoleId = int.Parse(dr["RoleId"].ToString());
            }
            dr.Close();
            con.Close();
            if(U.UserId != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
