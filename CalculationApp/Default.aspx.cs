using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculationApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Datebox.Text = DateTime.Now.ToString("dd/MM/yyyy");
            this.Datebox.TextMode = TextBoxMode.Date;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            submitButton.Enabled = false;
            string date = Datebox.Text;
            string name = namebox.Text;
            string project = projectname.SelectedValue;
            string collegename = universityname.SelectedValue;
            string quantity = quantitybox.Text;
            int totalAmount = 0;
            resultLable.Text = "Thank you!!!";

            Int32.TryParse(quantity, out int numQuantity);

            string[] lastname = name.Split(null);
            string nameForCode;

            if(lastname.Length > 1)
            {
                nameForCode = lastname[1];
            }
            else
            {
                nameForCode = lastname[0];
            }
            string uniqueCode = "Unique Code : "+ collegename + project + nameForCode + date.Replace("-", "");

            string fileloc = System.AppDomain.CurrentDomain.BaseDirectory + "\\result.txt";

            if(project == "B")
            {
                totalAmount = numQuantity * 35;
            }
            else if(project == "P")
            {
                totalAmount = numQuantity * 40;
            }
            //System.IO.File.WriteAllText(fileloc, name);
            //System.IO.File.WriteAllText(fileloc, "Project" + project);

            using (System.IO.StreamWriter file =
           new System.IO.StreamWriter(fileloc, true))
            {
                file.WriteLine("Date : "+date);
                file.WriteLine("Name : "+name);
                file.WriteAsync("College : " + collegename);
                file.WriteLine("Project : " + project);
                file.WriteLine(uniqueCode);
                file.WriteLine("Amount : "+ totalAmount);

            }

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}