<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MigraineTriggersTrackersAPP.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .TimeListBoxClass {
            z-index: 1;
            left: 131px;
            top: 406px;
            position: absolute;
            }
    </style>
</head>
<body style="height: 38px">
    <form id="form1" style="height: 1000px" runat="server">
        <div class ="">
            <asp:Button ID="AddSymptomButton" runat="server" style="z-index: 4; left: 255px; top: 305px; position: absolute; width: 130px;" Text="Add Symptom" OnClick="AddSymptomButton_Click" Font-Bold="True" BackColor="#FFCC66" />
            <asp:Label ID="MInutesDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 4; left: 265px; top: 120px; position: absolute; bottom: 435px;" Text="Minutes"></asp:Label>
        </div>
        <p>
            <asp:DropDownList ID="FoodDropDownList" runat="server" AutoPostBack="True" style="z-index: 5; left: 50px; top: 80px; position: absolute; width: 130px;" OnSelectedIndexChanged="FoodDropDownList_SelectedIndexChanged" DataSourceID="FoodDataSource" DataTextField="food_name" DataValueField="food_name" Visible="False">
                <asp:ListItem>Foods</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="FoodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [food_name] FROM [food]"></asp:SqlDataSource>
            <asp:Label ID="PropertiesPanelLabel" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="White" style="z-index: 4; left: 269px; top: 26px; position: absolute; width: 103px; height: 29px;" Text="Properties"></asp:Label>
            <asp:ListBox ID="QuantityListBox" runat="server" style="z-index: 4; left: 357px; top: 426px; position: absolute; height: 230px; width: 136px;" OnSelectedIndexChanged="QuantityListBox_SelectedIndexChanged"></asp:ListBox>
            <asp:ListBox ID="TimeListBox" runat="server" style="z-index: 2; left: 131px; top: 426px; position: absolute; height: 229px; width: 136px;" OnSelectedIndexChanged="TimeListBox_SelectedIndexChanged"></asp:ListBox>
        </p>
        <asp:DropDownList ID="SymptomsDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SymptomsDropdownList_SelectedIndexChanged" style="z-index: 4; left: 50px; top: 80px; position: absolute; width: 130px; right: 1060px;" DataSourceID="SymptomsDataSource" DataTextField="symptom_name" DataValueField="symptom_name">
            <asp:ListItem>Symptoms</asp:ListItem>
        </asp:DropDownList>
        <asp:Panel ID="TriggersPanel" runat="server" BackColor="#0066FF" style="z-index: 0; left: 225px; top: 17px; position: absolute; height: 370px; width: 177px" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
        </asp:Panel>
        <asp:SqlDataSource ID="SymptomsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [symptom_name] FROM [symptom]" OnSelecting="SymptomsDataSource_Selecting"></asp:SqlDataSource>
        <asp:Button ID="SleepDetailsButton" runat="server" OnClick="SleepDetailsButton_Click" style="z-index: 4; left: 255px; top: 350px; position: absolute; width: 130px" Text="Sleep Details &gt;&gt;" BackColor="#FFCC66" Font-Bold="True" Visible="False" />
        <asp:Label ID="TriggersPanelLabel" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 4; left: 70px; top: 25px; position: absolute" Text="Triggers" Font-Italic="True" Visible="False"></asp:Label>
        <asp:Label ID="SymptomsPanelLabel" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="White" style="z-index: 1; left: 70px; top: 25px; position: absolute" Text="Symptoms"></asp:Label>
        <asp:Panel ID="PropertiesPanel" runat="server" BackColor="#0066FF" style="z-index: 1; left: 425px; top: 17px; position: absolute; height: 370px; width: 177px" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
        </asp:Panel>
        <asp:DropDownList ID="HoursDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 265px; top: 81px; position: absolute; width: 105px;" OnSelectedIndexChanged="HoursDropDownList_SelectedIndexChanged1" DataSourceID="HoursDataSource" DataTextField="hours_number" DataValueField="hours_number">
            <asp:ListItem>Time</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="HoursDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [hours_number] FROM [hours]"></asp:SqlDataSource>
        <asp:Button ID="DrinkDetailsButton" runat="server" style="z-index: 4; left: 255px; top: 350px; position: absolute; width: 130px;" Text="Drink Details &gt;&gt;" OnClick="DrinkDetailsButton_Click" Visible="False" BackColor="#FFCC66" Font-Bold="True" />
        <asp:Label ID="QuantityDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 265px; top: 241px; position: absolute" Text="Quantity"></asp:Label>
        <asp:DropDownList ID="MinutesDropDownList" runat="server" AutoPostBack="True" DataSourceID="MinutesDataSource" DataTextField="minutes_number" DataValueField="minutes_number" style="z-index: 1; left: 265px; top: 142px; position: absolute; width: 105px;">
        </asp:DropDownList>
        <asp:SqlDataSource ID="MinutesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [minutes_number] FROM [minutes]" OnSelecting="MinutesDataSource_Selecting"></asp:SqlDataSource>
        <asp:Panel ID="SymptomsPanel" runat="server" BackColor="#0066FF" BorderColor="White" BorderStyle="Inset" BorderWidth="5px" style="z-index: 0; left: 25px; top: 17px; position: absolute; height: 370px; width: 177px">
        </asp:Panel>
        <asp:Label ID="IntensityDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 265px; position: absolute; right: 696px; top: 179px;" Text="Intensity"></asp:Label>
        <asp:ListBox ID="IntensityListBox" runat="server" AutoPostBack="True" style="z-index: 3; left: 244px; top: 426px; position: absolute; height: 229px; width: 137px"></asp:ListBox>
        <asp:DropDownList ID="IntensityDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 265px; top: 202px; position: absolute; width: 105px;" OnSelectedIndexChanged="IntensityDropDownList_SelectedIndexChanged1" DataSourceID="IntensityDataSource" DataTextField="intensity_number" DataValueField="intensity_number">
            <asp:ListItem Value="Intensity"></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="IntensityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [intensity_number] FROM [intensity]" OnSelecting="IntensityDataSource_Selecting"></asp:SqlDataSource>
        <asp:Button ID="RemoveLastButton" runat="server" OnClick="RemoveLastButton_Click" style="z-index: 1; left: 22px; top: 660px; position: absolute; width: 130px; right: 1088px;" Text="Remove Last" Font-Bold="True" BackColor="#FFCC66" />
        <asp:Panel ID="DatePanel" runat="server" BackColor="#0066FF" style="z-index: 1; left: 425px; top: 17px; position: absolute; height: 370px; width: 177px" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
            <asp:Label ID="DatePanelLabel" runat="server" style="z-index: 0; left: 66px; top: 3px; position: absolute" Text="Date" Font-Bold="True" Font-Italic="True" ForeColor="White"></asp:Label>
        </asp:Panel>
        <asp:Label ID="IntensityListBoxLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 248px; top: 405px; position: absolute" Text="Intensity"></asp:Label>
        <asp:DropDownList ID="DrinksDropDownList" runat="server" AutoPostBack="True" style="z-index: 6; left: 50px; top: 80px; position: absolute; width: 130px;" DataSourceID="DrinksDataSource" DataTextField="drink_name" DataValueField="drink_name" Visible="False">
            <asp:ListItem>Drinks</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="DrinksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [drink_name] FROM [drink]" OnSelecting="DrinksDataSource_Selecting"></asp:SqlDataSource>
        <asp:DropDownList ID="QuantityDropDownList" runat="server" style="z-index: 1; left: 265px; top: 265px; position: absolute; width: 105px;" AutoPostBack="True" OnSelectedIndexChanged="QuantityDropDownList_SelectedIndexChanged1" DataSourceID="QuantityDataSource" DataTextField="quantity_number" DataValueField="quantity_number">
            <asp:ListItem>Quantity</asp:ListItem>
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="QuantityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [quantity_number] FROM [quantity]" OnSelecting="QuantityDataSource_Selecting1"></asp:SqlDataSource>
        
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 5; left: 435px; top: 60px; position: absolute; height: 106px; width: 84px; margin-bottom: 0px;" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" SelectionMode="DayWeekMonth">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#0066FF" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />


        </asp:Calendar>


 


        <asp:Label ID="NoDataOnDateLabel" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 442px; top: 253px; position: absolute; width: 153px" Text="You did not have a migraine on this date!" Visible="False"></asp:Label>


 


        <asp:Button ID="AddSleepButton" runat="server" style="z-index: 5; left: 259px; top: 305px; position: absolute; width: 130px;" Text="Add Sleep" OnClick="AddSleepButton_Click" Font-Bold="True" Visible="False" BackColor="#FFCC66" />
        <asp:Button ID="FoodDetailsButton" runat="server" OnClick="FoodDetailsButton_Click" style="z-index: 1; left: 255px; top: 350px; position: absolute; width: 130px" Text="Food Details &gt;&gt;" Visible="False" BackColor="#FFCC66" Font-Bold="True" />
        <asp:Button ID="AddFoodsButton" runat="server" style="z-index: 5; left: 255px; top: 305px; position: absolute; width: 130px" Text="Add Food" Font-Bold="True" OnClick="AddFoodsButton_Click" Visible="False" BackColor="#FFCC66" />
        <asp:Button ID="AddDrinksButton" runat="server" Text="Add Drinks" Font-Bold="True" style="z-index: 6; left: 255px; position: absolute; width: 130px; top: 305px;" OnClick="AddDrinksButton_Click" Visible="False" BackColor="#FFCC66" />
        <asp:Label ID="NotesLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 49px; top: 120px; position: absolute" Text="Notes" ForeColor="#003399"></asp:Label>
        <asp:Label ID="DetailLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 24px; top: 405px; position: absolute; width: 58px" Text="Detail"></asp:Label>
        <asp:DropDownList ID="SleepDropDownList" runat="server" style="z-index: 1; left: 50px; top: 80px; position: absolute; width: 130px; right: 856px; margin-bottom: 0px;" DataSourceID="SleepDataSource" DataTextField="sleep_name" DataValueField="sleep_name" AutoPostBack="True" OnSelectedIndexChanged="SleepDropDownList_SelectedIndexChanged1" Visible="False">
            <asp:ListItem>Sleep</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="HoursLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 265px; top: 60px; position: absolute; width: 105px" Text="Hours" ForeColor="#003399"></asp:Label>
        <asp:Label ID="SymptomLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 52px; top: 60px; position: absolute" Text="Symptoms"></asp:Label>
        <asp:SqlDataSource ID="SleepDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [sleep_name] FROM [sleep]" OnSelecting="SleepDataSource_Selecting2"></asp:SqlDataSource>
        <asp:Label ID="NotesListBoxLabel" runat="server" style="z-index: 1; left: 481px; top: 405px; position: absolute" Text="Notes" Font-Bold="True" ForeColor="#003399"></asp:Label>
        <asp:Label ID="SleepDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 52px; top: 60px; position: absolute" Text="Sleep" Visible="False"></asp:Label>
        <asp:Label ID="FoodDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 52px; top: 60px; position: absolute; right: 1213px;" Text="Food" Visible="False"></asp:Label>
        <asp:Label ID="DrinkDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 52px; top: 60px; position: absolute; right: 1206px;" Text="Drinks" Visible="False"></asp:Label>

        <asp:GridView ID="DetailsGridView" runat="server" AutoGenerateColumns="False"  OnSelectedIndexChanged="DetailsGridView_SelectedIndexChanged" style="z-index: 1; left: 629px; top: 17px; position: absolute; width: 584px; margin-right: 178px; margin-top: 0px;" BackColor="#3399FF" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
            <AlternatingRowStyle BackColor="#0066FF" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="migraine_detail" HeaderText="migraine_detail" SortExpression="migraine_detail" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="intensity" HeaderText="intensity" SortExpression="intensity" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
            <HeaderStyle Height="20px" BackColor="#0066FF" ForeColor="White" />
            <FooterStyle BackColor="#0066FF" />
            <RowStyle Height="1px" />
        </asp:GridView>
        <asp:ListBox ID="NotesListBox" runat="server" AutoPostBack="True" style="z-index: 5; left: 476px; top: 426px; position: absolute; height: 230px; width: 137px"></asp:ListBox>
        <asp:SqlDataSource ID="GridViewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [migraine_detail], [time], [quantity], [intensity], [notes], [date] FROM [details]"></asp:SqlDataSource>
        <asp:Button ID="SubmitButton" runat="server" style="z-index: 1; left: 450px; top: 660px; position: absolute; width: 130px;" Text="Submit" Font-Bold="True" BackColor="#FFCC66" OnClick="SubmitButton_Click" />
        
            <asp:TextBox ID="NotesTextBox" runat="server" style="z-index: 1; left: 46px; top: 143px; position: absolute; width: 142px; height: 233px;" OnTextChanged="NotesTextBox_TextChanged" BorderColor="White" BorderStyle="Inset" BorderWidth="5px" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="QuantityLabel" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#003399" style="z-index: 1; left: 359px; top: 405px; position: absolute; right: 806px;" Text="Quantity"></asp:Label>
        <asp:Label ID="TimeListBoxLabel" runat="server" BorderColor="White" CssClass="TimeListBoxClass" Font-Bold="True" Text="Time" ForeColor="#003399" ></asp:Label>
        
        <asp:ListBox class="listbox" ID="MigraineListBox" runat="server" AutoPostBack="True" style="z-index: 1; left: 22px; top: 426px; position: absolute; height: 229px; width: 137px; right: 1787px;" OnSelectedIndexChanged="MigraineListBox_SelectedIndexChanged"></asp:ListBox>
    </form>
</body>
</html>
