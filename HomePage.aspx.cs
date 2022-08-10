using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

namespace MigraineTriggersTrackersAPP
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
     

        }

        protected void TimeDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SleepDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void FoodDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void FoodQuantityDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DrinksDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void QuantityDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

           // Variable declaration
           string connectionString;
            SqlConnection cnn;

            // Set connection string
            connectionString = "Data Source=(local);Initial Catalog=MigraineTriggersTrackersDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            cnn.Open();

            // Get Data from Detail Table for Selected Date on Calendar Control
            string sql = null;
            sql = "SELECT date, migraine_detail, time, quantity, intensity, notes FROM details WHERE day(date)='" + Calendar1.SelectedDate.Day + "'";

            if (sql != null)
            {
                NoDataOnDateLabel.Visible = false;
            }

            SqlCommand command3;
            SqlDataAdapter adapter3 = new SqlDataAdapter();

            command3 = new SqlCommand(sql, cnn);
            SqlDataReader r = command3.ExecuteReader();
            DetailsGridView.DataSource = r;
            DetailsGridView.DataBind();


            // Display Column Data from Detail Table in GridView Only if There is Data to Show
            try
            {

                DetailsGridView.HeaderRow.Cells[0].Text = "";
                DetailsGridView.HeaderRow.Cells[1].Text = "Migraine Details";
                DetailsGridView.HeaderRow.Cells[2].Text = "Time";
                DetailsGridView.HeaderRow.Cells[3].Text = "Quantity";
                DetailsGridView.HeaderRow.Cells[4].Text = "Intensity";
                DetailsGridView.HeaderRow.Cells[5].Text = "Notes";
                DetailsGridView.HeaderRow.Cells[6].Text = "Date";

            }
            catch (Exception ex)
            {
                // Provide User Feedback When There is No Data in Database for the Date Selected
                NoDataOnDateLabel.Visible = true;

            }

            // Close all objects
            command3.Dispose();
            cnn.Close();

           
        }

        protected void AddSymptomButton_Click(object sender, EventArgs e)
        {   // Add Selected dropdown items to listbox
            MigraineListBox.Items.Add(SymptomsDropDownList.SelectedItem.ToString());
            IntensityListBox.Items.Add(IntensityDropDownList.SelectedItem.ToString());
            QuantityListBox.Items.Add(QuantityDropDownList.SelectedItem.ToString());


            // Add text from NoesTextBox to NotesListBox
            NotesListBox.Items.Add(NotesTextBox.Text.ToString());


            // Clear Text from NotesTextBox
            NotesTextBox.Text = "";

            // Reset DropDownLists to Index 0 or NA
            SymptomsDropDownList.SelectedIndex = 0;
            IntensityDropDownList.SelectedIndex = 0;
            QuantityDropDownList.SelectedIndex = 0;
            FoodDropDownList.SelectedIndex = 0;
            SleepDropDownList.SelectedIndex = 0;
            DrinksDropDownList.SelectedIndex = 0;

            // Show SleepDetailsButton
            SleepDetailsButton.Visible = true;

            string hoursSelected = "NA";
            string minutesSelected = "NA";
            string hoursAndMinutes = "NA";

            // Get Hours Selected from hours dropdown control
            if (HoursDropDownList.SelectedIndex != 0)
            {
                hoursSelected = HoursDropDownList.SelectedValue.ToString();
            }

            // Get Minutes Selected from minutes dropdown control
            if (MinutesDropDownList.SelectedIndex != 0)
            {
                minutesSelected = MinutesDropDownList.SelectedValue.ToString();
            }

            // Choose Hours or Minutes text after selected time
            if (hoursSelected != "NA" && minutesSelected == "NA")
            {
                hoursAndMinutes = (hoursSelected + "hrs");
            }
            else if (hoursSelected == "NA" && minutesSelected != "NA")
            {
                hoursAndMinutes = (minutesSelected + "min");
            }
            else if (hoursSelected != "NA" && minutesSelected != "NA")
            {
                hoursAndMinutes = (hoursSelected + "hrs & " + minutesSelected + "min");
            }

            // Add total time to list box
            TimeListBox.Items.Add(hoursAndMinutes);

            // Reset Hour & Minute DropDownLists
            HoursDropDownList.SelectedIndex = 0;
            MinutesDropDownList.SelectedIndex = 0;

        }

        protected void AddSleepButton_Click(object sender, EventArgs e)
        {

            MigraineListBox.Items.Add(SleepDropDownList.SelectedItem.ToString());
            IntensityListBox.Items.Add(IntensityDropDownList.SelectedItem.ToString());
            QuantityListBox.Items.Add(QuantityDropDownList.SelectedItem.ToString());

            // Add text from NoesTextBox to NotesListBox
            NotesListBox.Items.Add(NotesTextBox.Text.ToString());

            // Clear Text from NotesTextBox
            NotesTextBox.Text = "";

            // Reset DropDownLists to Index 0 or NA
            SymptomsDropDownList.SelectedIndex = 0;
            IntensityDropDownList.SelectedIndex = 0;
            QuantityDropDownList.SelectedIndex = 0;
            FoodDropDownList.SelectedIndex = 0;
            SleepDropDownList.SelectedIndex = 0;
            DrinksDropDownList.SelectedIndex = 0;

            // Show Sleep DropDownLabel Disapear Symptoms DropDownLabel
            SymptomLabel.Visible = false;
            SleepDropDownLabel.Visible = true;


            string hoursSelected = "NA";
            string minutesSelected = "NA";
            string hoursAndMinutes = "NA";

            // Get Hours Selected from hours dropdown control
            if (HoursDropDownList.SelectedIndex != 0)
            {
                hoursSelected = HoursDropDownList.SelectedValue.ToString();
            }

            // Get Minutes Selected from minutes dropdown control
            if (MinutesDropDownList.SelectedIndex != 0)
            {
                minutesSelected = MinutesDropDownList.SelectedValue.ToString();
            }

            // Choose Hours or Minutes text after selected time
            if (hoursSelected != "NA" && minutesSelected == "NA")
            {
                hoursAndMinutes = (hoursSelected + "hrs");
            }
            else if (hoursSelected == "NA" && minutesSelected != "NA")
            {
                hoursAndMinutes = (minutesSelected + "min");
            }
            else if (hoursSelected != "NA" && minutesSelected != "NA")
            {
                hoursAndMinutes = (hoursSelected + "hrs & " + minutesSelected + "min");
            }

            // Add total time to list box
            TimeListBox.Items.Add(hoursAndMinutes);

            // Reset Hours and Minutes DropDownLists after Selected Hours & Times have been populated onto List Box
            HoursDropDownList.SelectedIndex = 0;
            MinutesDropDownList.SelectedIndex = 0;
        }

        protected void SymptomDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void MigraineListBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void SymptomsDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void QuantityDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void IntensityDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void NotesTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SymptomsDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TimeListBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void QuantityListBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DrinksDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void AddFoodsButton_Click(object sender, EventArgs e)
        {
            MigraineListBox.Items.Add(FoodDropDownList.SelectedItem.ToString());
            TimeListBox.Items.Add(HoursDropDownList.SelectedItem.ToString());
            IntensityListBox.Items.Add(IntensityDropDownList.SelectedItem.ToString());
            QuantityListBox.Items.Add(QuantityDropDownList.SelectedItem.ToString());

            // Add text from NoesTextBox to NotesListBox
            NotesListBox.Items.Add(NotesTextBox.Text.ToString());

            // Clear Text from NotesTextBox
            NotesTextBox.Text = "";

            // Reset DropDownLists to Index 0 or NA
            SymptomsDropDownList.SelectedIndex = 0;
            HoursDropDownList.SelectedIndex = 0;
            MinutesDropDownList.SelectedIndex = 0;
            IntensityDropDownList.SelectedIndex = 0;
            QuantityDropDownList.SelectedIndex = 0;
            FoodDropDownList.SelectedIndex = 0;
            SleepDropDownList.SelectedIndex = 0;
            DrinksDropDownList.SelectedIndex = 0;

            // Show Drink Details Button
            SleepDetailsButton.Visible = false;
            DrinkDetailsButton.Visible = true;

        }

        protected void AddDrinksButton_Click(object sender, EventArgs e)
        {
            MigraineListBox.Items.Add(DrinksDropDownList.SelectedItem.ToString());
            TimeListBox.Items.Add(HoursDropDownList.SelectedItem.ToString());
            IntensityListBox.Items.Add(IntensityDropDownList.SelectedItem.ToString());
            QuantityListBox.Items.Add(QuantityDropDownList.SelectedItem.ToString());

            

            // Add text from NoesTextBox to NotesListBox
            NotesListBox.Items.Add(NotesTextBox.Text.ToString());

            // Clear Text from NotesTextBox
            NotesTextBox.Text = "";

            // Reset DropDownLists to Index 0 or NA
            SymptomsDropDownList.SelectedIndex = 0;
            HoursDropDownList.SelectedIndex = 0;
            MinutesDropDownList.SelectedIndex = 0;
            IntensityDropDownList.SelectedIndex = 0;
            QuantityDropDownList.SelectedIndex = 0;
            FoodDropDownList.SelectedIndex = 0;
            SleepDropDownList.SelectedIndex = 0;
            DrinksDropDownList.SelectedIndex = 0;

        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void HoursDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {





        }

        protected void MinutesDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TimeDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void MinutesDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SleepDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void ClearLastItemButton_Click(object sender, EventArgs e)
        {
            MigraineListBox.Items.RemoveAt(MigraineListBox.Items.Count - 1);
            TimeListBox.Items.RemoveAt(TimeListBox.Items.Count - 1);
            IntensityListBox.Items.RemoveAt(IntensityListBox.Items.Count - 1);
            QuantityDropDownList.Items.RemoveAt(QuantityDropDownList.Items.Count - 1);
        }

        protected void RemoveLastButton_Click(object sender, EventArgs e)
        {
            MigraineListBox.Items.RemoveAt(MigraineListBox.Items.Count - 1);
            TimeListBox.Items.RemoveAt(TimeListBox.Items.Count - 1);
            IntensityListBox.Items.RemoveAt(IntensityListBox.Items.Count - 1);
            QuantityListBox.Items.RemoveAt(QuantityListBox.Items.Count - 1);
            NotesListBox.Items.RemoveAt(NotesListBox.Items.Count - 1);
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            // Variable declaration
            string connectionString;
            SqlConnection cnn;

            // Set connection string
            connectionString = "Data Source=(local);Initial Catalog=MigraineTriggersTrackersDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            cnn.Open();

            SqlCommand command3;
            SqlDataAdapter adapter3 = new SqlDataAdapter();
            String sql3 = "";

            System.Collections.IList list = MigraineListBox.Items;
            for (int i = 0; i < list.Count; i++)
            {
                // GetTodays Date
                DateTime todaysDateTime = DateTime.Now;
                Debug.Write(todaysDateTime.ToString());

                var migraineItem = list[i];
                //Response.Write(migraineItem.ToString());
                Debug.Write(migraineItem.ToString());

                var timeListBoxItem = TimeListBox.Items[i];
                //Response.Write(timeListBoxItem.ToString());
                Debug.Write(timeListBoxItem.ToString());

                var intensityListBoxItem = IntensityListBox.Items[i];
                //Response.Write(intensityListBoxItem.ToString());
                Debug.Write(intensityListBoxItem.ToString());

                var quantityListBoxItem = QuantityListBox.Items[i];
                //Response.Write(quantityListBoxItem.ToString());
                Debug.Write(quantityListBoxItem.ToString());

                var notesListBoxItem = NotesListBox.Items[i];
                Debug.Write(notesListBoxItem.ToString());

                sql3 = string.Format("INSERT INTO details (date, migraine_detail, time, quantity, intensity, notes) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}' )",
                todaysDateTime, migraineItem, timeListBoxItem, intensityListBoxItem, quantityListBoxItem, notesListBoxItem, i);

                command3 = new SqlCommand(sql3, cnn);

                // Associate the insert command
                adapter3.InsertCommand = new SqlCommand(sql3, cnn);
                adapter3.InsertCommand.ExecuteNonQuery();

            }

            SqlCommand command4;
            SqlDataAdapter adapter4 = new SqlDataAdapter();

            // Get Data from Detail Table for Selected Date on Calendar Control
            string sql = null;
            sql = "SELECT date, migraine_detail, time, quantity, intensity, notes FROM details WHERE day(date)='" + Calendar1.TodaysDate.Day + "'";

            command4 = new SqlCommand(sql, cnn);
            SqlDataReader rr = command4.ExecuteReader();
            DetailsGridView.DataSource = rr;
            DetailsGridView.DataBind();


            // Change table names to readable text
            DetailsGridView.HeaderRow.Cells[0].Text = "";
            DetailsGridView.HeaderRow.Cells[1].Text = "Migraine Details";
            DetailsGridView.HeaderRow.Cells[2].Text = "Time";
            DetailsGridView.HeaderRow.Cells[3].Text = "Quantity";
            DetailsGridView.HeaderRow.Cells[4].Text = "Intensity";
            DetailsGridView.HeaderRow.Cells[5].Text = "Notes";
            DetailsGridView.HeaderRow.Cells[6].Text = "Date";


           



            // Close all objects
            //command3.Dispose();
            cnn.Close();

            // clear all ListBoxItems
            MigraineListBox.Items.Clear();
            TimeListBox.Items.Clear();
            IntensityListBox.Items.Clear();
            QuantityListBox.Items.Clear();
            NotesListBox.Items.Clear();

        }

        protected void DetailsGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SleepDetailsButton_Click(object sender, EventArgs e)
        {
            SymptomsPanelLabel.Visible = false;
            TriggersPanelLabel.Visible = true;
            SleepDropDownList.Visible = true;
            AddSleepButton.Visible = true;

            SymptomsDropDownList.Visible = false;
            AddSymptomButton.Visible = false;
            FoodDropDownList.Visible = false;
            AddFoodsButton.Visible = false;

            // Show SleepDropDown Label Dissapear Symptom Label
            SymptomLabel.Visible = false;
            SleepDropDownLabel.Visible = true;

        }

        protected void SleepDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void QuantityDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void HoursDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DrinksDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void SleepDataSource_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void FoodDetailsButton_Click(object sender, EventArgs e)
        {
            FoodDropDownList.Visible = true;
            AddFoodsButton.Visible = true;
            FoodDetailsButton.Visible = false;
            DrinkDetailsButton.Visible = true;


            SleepDropDownList.Visible = false;
            AddSleepButton.Visible = false;
            SleepDetailsButton.Visible = false;

            // Show FoodDropDownLabel Disapear Sleep DropDownLabel
            SleepDropDownLabel.Visible = false;
            FoodDropDownLabel.Visible = true;
        }

        protected void QuantityDataSource_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DrinkDetailsButton_Click(object sender, EventArgs e)
        {
            DrinksDropDownList.Visible = true;
            AddDrinksButton.Visible = true;
            FoodDetailsButton.Visible = false;
            DrinkDetailsButton.Visible = false;

            FoodDropDownList.Visible = false;
            AddFoodsButton.Visible = false;

            // Show DrinksDropDownLabel Disapear FoodDropDownLabel
            FoodDropDownLabel.Visible = false;
            DrinkDropDownLabel.Visible = true;
        }

        protected void SleepDataSource_Selecting2(object sender, SqlDataSourceSelectingEventArgs e)
        {
            SleepDetailsButton.Visible = false;
            FoodDetailsButton.Visible = true;

        }

        protected void IntensityDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void historyButton_Click(object sender, EventArgs e)
        {

            //Insert ListBox Items

            // Variable declaration
            string connectionString;
            SqlConnection cnn;

            // Set connection string
            connectionString = "Data Source=(local);Initial Catalog=MigraineTriggersTrackersDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            cnn.Open();

            // Bind Gridview on button click or get new data from table and display in gridview
            DetailsGridView.DataSource = GridViewDataSource;
            DetailsGridView.DataBind();

            DetailsGridView.HeaderRow.Cells[0].Text = "";
            DetailsGridView.HeaderRow.Cells[1].Text = "Migraine Details";
            DetailsGridView.HeaderRow.Cells[2].Text = "Time";
            DetailsGridView.HeaderRow.Cells[3].Text = "Quantity";
            DetailsGridView.HeaderRow.Cells[4].Text = "Intensity";
            DetailsGridView.HeaderRow.Cells[5].Text = "Notes";
            DetailsGridView.HeaderRow.Cells[6].Text = "Date";

            // Close all objects
            //command3.Dispose();
            cnn.Close();

            // clear all ListBoxItems
            MigraineListBox.Items.Clear();
            TimeListBox.Items.Clear();
            IntensityListBox.Items.Clear();
            QuantityListBox.Items.Clear();
            NotesListBox.Items.Clear();
        }
    }
}
