using System;
namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)

        {

            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs

            if (!IsPostBack)

            {

                finalGrade.Text = "Submit muna ";

            }

        }

        protected string CalculateEquivalentGrade(double percentageGrade)

        {

            if (percentageGrade > 96 && percentageGrade <= 99.99)

            {

                Response.Write($"<script> alert('Congrats, you got an uno!') </script>");

                return "1.00";

            }

            else if (percentageGrade >= 91.51 && percentageGrade <= 96)

            {

                return "1.25";

            }

            // Add more conditions for other ranges as needed

            else if (percentageGrade >= 87.01 && percentageGrade <= 91.50)

            {

                return "1.50";

            }

            else if (percentageGrade >= 82.51 && percentageGrade <= 87)
            {
                return "1.75";
            }

            else
            {
                return "Invalid grade"; // Default case if the grade does not fall within any of the specified ranges
            }
        }



        protected void calculateGrade(object sender, EventArgs e)

        {

            double gradePercentage;

            if (double.TryParse(percentageGrade.Text, out gradePercentage))

            {

                string equivalentGrade = CalculateEquivalentGrade(gradePercentage);

                finalGrade.Text = equivalentGrade;

            }

            else

            {

                finalGrade.Text = "Invalid input";

            }

        }

    }

}