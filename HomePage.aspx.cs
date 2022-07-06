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
        {
            MigraineListBox.Items.Add(SymptomsDropDownList.SelectedItem.ToString());
            MigraineListBox.Items.Add(TimeDropDownList.SelectedItem.ToString());
           
        }

        protected void AddSleepButton_Click(object sender, EventArgs e)
        {

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

        protected void TimeDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void QuantityDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void IntensityDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}