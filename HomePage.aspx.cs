using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        }

        protected void AddSymptomButton_Click(object sender, EventArgs e)
        {   // Add Selected dropdown items to listbox
            MigraineListBox.Items.Add(SymptomsDropDownList.SelectedItem.ToString());
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

        protected void AddSleepButton_Click(object sender, EventArgs e)
        {
             MigraineListBox.Items.Add(SleepDropDownList.SelectedItem.ToString());
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
    }
}