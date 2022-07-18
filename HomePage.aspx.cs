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
            // Variable declaration
            string connectionString;
            SqlConnection cnn;

            // Set connection string
            connectionString = "Data Source=(local);Initial Catalog=MigraineTriggersTrackersDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            cnn.Open();

            Response.Write("Connection Made");
            // cnn.Close();

            // Construct select statement to read data from database.
            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = "";

            // Define sql statement
            sql = "SELECT migraine_detail,migraine_id, migraine_detail, time, quantity, intensity FROM migraine";

            // command statement
            command = new SqlCommand(sql, cnn);

            // Define the data reader
            dataReader = command.ExecuteReader();



            // Get the table values from multiple table columns
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2) + " - " + dataReader.GetValue(3) + " - " + dataReader.GetValue(4) + dataReader.GetValue(5) + "</br>";
            }


            Response.Write(Output);
            dataReader.Close();
            command.Dispose();
            cnn.Close();

            // Open connection
            cnn.Open();

            // Define variables
            SqlCommand command2;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql2 = "";

            // Define insert statement
           
            // Insert Static Data into Tables
            // sql2 = "INSERT INTO migraine (migraine_detail, time, quantity, intensity) VALUES('Santa' , '5 hr & 4 min' , '8' , '69')";
            // Define the sql command
            command2 = new SqlCommand(sql2, cnn);

            // Associate the insert command
            adapter.InsertCommand = new SqlCommand(sql2, cnn);
           // adapter.InsertCommand.ExecuteNonQuery();

            // Close all objects
            command2.Dispose();
            cnn.Close();







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

        }

        protected void AddSymptomButton_Click(object sender, EventArgs e)
        {   // Add Selected dropdown items to listbox
            MigraineListBox.Items.Add(SymptomsDropDownList.SelectedItem.ToString());
            IntensityListBox.Items.Add(IntensityDropDownList.SelectedItem.ToString());
            QuantityListBox.Items.Add(QuantityDropDownList.SelectedItem.ToString());

            // Reset DropDownLists to Index 0 or NA
            SymptomsDropDownList.SelectedIndex = 0;
            IntensityDropDownList.SelectedIndex = 0;
            QuantityDropDownList.SelectedIndex = 0;
            FoodDropDownList.SelectedIndex = 0;
            SleepDropDownList.SelectedIndex = 0;
            DrinksDropDownList.SelectedIndex = 0;

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

            // Reset DropDownLists to Index 0 or NA
            SymptomsDropDownList.SelectedIndex = 0;
            IntensityDropDownList.SelectedIndex = 0;
            QuantityDropDownList.SelectedIndex = 0;
            FoodDropDownList.SelectedIndex = 0;
            SleepDropDownList.SelectedIndex = 0;
            DrinksDropDownList.SelectedIndex = 0;


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




            //double hoursSelectedToInt = 0;
            //double minutesSelectedToInt = 0;
            //double totalMinutes = 0;

            // Convert Selected DropDown Hours to Minutes 

            //if (HoursDropDownList.SelectedIndex != 0)
            //{
            //    hoursSelected = HoursDropDownList.SelectedValue.ToString();
            //}

            //if (MinutesDropDownList.SelectedIndex != 0)
            //{
            //    minutesSelected = MinutesDropDownList.SelectedValue.ToString();
            //}

            //if (hoursSelected != "NA")
            //{
            //    hoursSelectedToInt = Convert.ToDouble(hoursSelected);
            //}

            //if (hoursSelected != "NA")
            //{
            //    hoursSelectedToInt = hoursSelectedToInt * 60;
            //}

            //if (minutesSelected != "NA")
            //{
            //    minutesSelectedToInt = Convert.ToDouble(minutesSelected);

            //}

            //if (hoursSelectedToInt != 0)
            //{ 
            //       totalMinutes = hoursSelectedToInt;
            //}

            //// add Converted minutes to Selected Minutes
            //if (minutesSelectedToInt != 0)
            //{
            //        totalMinutes = totalMinutes + minutesSelectedToInt;
            //}

            //// Left off here!!!!!!!!!!!!!!!!!
            ///////////////////////////////////////////////////////////////////////////////////////////
            /////
            //// Convert Total Minutes to Hours & Minutes
            //double hoursAndMinutes = (totalMinutes % 60) / 60;





            // TimeListBox.Items.Add(hoursAndMinutes.ToString());
            // TimeListBox.Items.Add(totalMinutes.ToString());

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

        protected void AddDrinksButton_Click(object sender, EventArgs e)
        {
            MigraineListBox.Items.Add(DrinksDropDownList.SelectedItem.ToString());
            TimeListBox.Items.Add(HoursDropDownList.SelectedItem.ToString());
            IntensityListBox.Items.Add(IntensityDropDownList.SelectedItem.ToString());
            QuantityListBox.Items.Add(QuantityDropDownList.SelectedItem.ToString());

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
            QuantityListBox.Items.RemoveAt(QuantityDropDownList.Items.Count - 1);
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //////////////////////Insert ListBox Items
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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

            //string MigraineListBoxColumn = MigraineListBox.SelectedItem.ToString();
            //Response.Write("This is MigraineListBoxColumn Variable:  " + MigraineListBoxColumn);

            //var migraineSelectedItem = MigraineListBox.SelectedItem.Value;
            //Response.Write(migraineSelectedItem);

            System.Collections.IList list = MigraineListBox.Items;
            for (int i = 0; i < list.Count; i++)
            {
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

                //Response.Write(
               // string.Format("Row Number {4}: I can insert a row like: {0}, {1}, {2}, {3} ",
                   // migraineItem, timeListBoxItem, intensityListBoxItem, quantityListBoxItem, i));

                //Response.Write(
                //string.Format("INSERT INTO migraine (migraine_detail, time, quantity, intensity) VALUES ( {0}, {1}, {2}, {3} )",
                   // migraineItem, timeListBoxItem, intensityListBoxItem, quantityListBoxItem, i));

                sql3 = string.Format("INSERT INTO migraine (migraine_detail, time, quantity, intensity) VALUES ('{0}', '{1}', '{2}', '{3}' )",
                migraineItem, timeListBoxItem, intensityListBoxItem, quantityListBoxItem, i);


                command3 = new SqlCommand(sql3, cnn);


                // Associate the insert command
                adapter3.InsertCommand = new SqlCommand(sql3, cnn);
                adapter3.InsertCommand.ExecuteNonQuery();


            }

            //foreach (var item in MigraineListBox.Items)
            //{
            //    Response.Write(item.ToString());
            //    Debug.Write(item.ToString());
            //    // if this works, insert thees
            //}
            //foreach (var item in TimeListBox.Items)
            //{
            //    Response.Write(item.ToString());
            //    Debug.Write(item.ToString());
            //    // if this works, insert thees
            //}
            //foreach (var item in IntensityListBox.Items)
            //{
            //    Response.Write(item.ToString());
            //    Debug.Write(item.ToString());
            //    // if this works, insert thees
            //}
            //foreach (var item in QuantityListBox.Items)
            //{
            //    Response.Write(item.ToString());
            //    Debug.Write(item.ToString());
            //    // if this works, insert thees
            //}

            //string.Format("INSERT INTO migraine(migraine_detail, time, quantity, intensity) VALUES({0},{1},{2},{3}", migraineSelectedItem,"TWO","THREE");


            // sql3 = "INSERT INTO migraine (migraine_detail, time, quantity, intensity) VALUES (migraineSelectedItem, TimeListBox., QuantityListBox.SelectedItem.Value, IntensityListBox.SelectedItem.Value)";
           // sql3 = "INSERT INTO migraine (migraine_detail, time, quantity, intensity) VALUES ('Test ', ' ', ' ', ' ' )"; 
             // Define the sql command
             command3 = new SqlCommand(sql3, cnn);


          //

            // Associate the insert command
            adapter3.InsertCommand = new SqlCommand(sql3, cnn);
            adapter3.InsertCommand.ExecuteNonQuery();


           
            
            // Close all objects
            command3.Dispose();
            cnn.Close();
        }
    }
}