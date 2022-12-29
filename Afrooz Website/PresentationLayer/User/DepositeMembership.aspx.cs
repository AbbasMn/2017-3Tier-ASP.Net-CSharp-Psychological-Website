using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using DataBaseLayer;
using LogicalLayer;
using System.IO;
using System.Data.SqlClient;
using System.Collections.Generic;
using HtmlAgilityPack;

namespace PresentationLayer.User
{
    public partial class DepositeMembership : System.Web.UI.Page
    {

        public void showMembershipPeriod()
        {
           
            
            string strTempDate = PersianDatePickup1.PersianDateString.ToString();

            if (strTempDate.Length > 1)
            {
                string strDate = strTempDate[0].ToString() + strTempDate[1].ToString() + strTempDate[2].ToString() + strTempDate[3].ToString() + strTempDate[4].ToString();

                if (strTempDate[6].ToString() == "/")
                {
                    strDate = strDate + "0" + strTempDate[5].ToString() + "/";

                    if (strTempDate.Length == 9)
                        strDate = strDate + strTempDate[7].ToString() + strTempDate[8].ToString();
                }
                else
                {
                    strDate = strDate + strTempDate[5].ToString() + strTempDate[6].ToString() + "/";

                    if (strTempDate.Length == 8)
                        strDate = strDate + "0" + strTempDate[7].ToString();
                    else

                        if (strTempDate.Length == 9)
                            strDate = strDate + "0" + strTempDate[8].ToString();
                        else

                            if (strTempDate.Length == 10)
                                strDate = strDate + strTempDate[8].ToString() + strTempDate[9].ToString();
                }

                LabelDateStart.Text = strDate;


                string startYear = strDate[0].ToString() + strDate[1].ToString() + strDate[2].ToString() + strDate[3].ToString();
                string startMonth = strDate[5].ToString() + strDate[6].ToString();
                string startDate = strDate[8].ToString() + strDate[9].ToString();

                string endYear = startYear;
                string endMonth = null;
                string endDate = startDate;

                if (int.Parse(startMonth) <= 8)
                {
                    endYear = startYear;
                    endMonth = (int.Parse(startMonth) + 4).ToString();

                    if (endMonth.Length < 2)
                        endMonth = "0" + endMonth;
                }
                else
                {
                    endYear = (int.Parse(startYear) + 1).ToString();
                    endMonth = (int.Parse(startMonth) + 4 - 12).ToString();

                    if (endMonth.Length < 2)
                        endMonth = "0" + endMonth;
                }

                LabelDateFinish.Text = endYear + "/" + endMonth + "/" + endDate;
            }



            

        }
        
        
        
        public void deposite()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            try
            {
                showMembershipPeriod(); 
                
                txtnewsSaeat.Text=txtnewsSaeat.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

 
                txtnewsTrakonesh.Text = txtnewsTrakonesh.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtnewsMablagh.Text = txtnewsMablagh.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtnewsKartNumber.Text = txtnewsKartNumber.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

             

              string[] fieldsOfTable = new string[15];            
              string[] valuesOfField = new string[15];
                
                                   
                fieldsOfTable[0]="Mablagh";
                valuesOfField[0]=txtnewsMablagh.Text.Trim();
                

                fieldsOfTable[1]="Tarakonesh";
                valuesOfField[1] = txtnewsTrakonesh.Text.Trim();
                                                            
                fieldsOfTable[2]="NoeVariz" ;
                valuesOfField[2] = drlistNoeVariz.SelectedItem.Text;
                                                                                                                                                                                                                       
                                                            
                fieldsOfTable[3]="KardNumber" ;
                valuesOfField[3] = txtnewsKartNumber.Text.Trim();
                                                          
                fieldsOfTable[4]="TarikhVariz";
                valuesOfField[4] = PersianDatePickup1.PersianDateString;
                                                           

                fieldsOfTable[5]="SaeatVariz" ;
                valuesOfField[5] = txtnewsSaeat.Text.Trim();

                fieldsOfTable[6] = "Name";
                valuesOfField[6] = Session["StudentName"].ToString();
                                    
                fieldsOfTable[7] = "Family";
                valuesOfField[7] = Session["StudentLastname"].ToString();


                fieldsOfTable[8] = "MemberID";
                valuesOfField[8] = Session["UserStudentRowID"].ToString();

                fieldsOfTable[9] = "VarizFor";
                valuesOfField[9] = drlistVarizFor.SelectedItem.Text;

                fieldsOfTable[10] = "TarikhEngheza";
                valuesOfField[10] =LabelDateFinish.Text;

                

                dbo.insertQuery("TableMemberDeposite", fieldsOfTable, valuesOfField);


                txtnewsKartNumber.Text="";
                txtnewsMablagh.Text = "";
                txtnewsSaeat.Text = "";
                txtnewsTrakonesh.Text = "";
                LabelDateFinish.Text = "";
                LabelDateStart.Text = "";
                 

                lblMessage.Text = "اطلاعات واریز ثبت شد.";

                
            }
            catch
            {
            }
        }




        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Student")
            {
            }
            else
                Response.Redirect("~/Main.aspx");

            if (!IsPostBack)
            {

            }
        }





        protected void btnSave_Click(object sender, EventArgs e)
        {
            deposite();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            showMembershipPeriod();
        }







    }
}