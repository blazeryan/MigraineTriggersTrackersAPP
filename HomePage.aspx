<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MigraineTriggersTrackersAPP.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .TimeListBoxClass {
            z-index: 1;
            left: 145px;
            top: 314px;
            position: absolute;
            right: 1336px;
        }
    </style>
</head>
<body style="height: 38px">
    <form id="form1" style="height: 1000px" runat="server">
        <div class ="">
            <asp:Label ID="AppNameLabel" runat="server" style="z-index: 1; left: 266px; top: 15px; position: absolute" Text="Migraine Triggers &amp; Tracker" Font-Bold="True"></asp:Label>
            <asp:Button ID="AddSymptomButton" runat="server" style="z-index: 1; left: 50px; top: 125px; position: absolute; width: 130px;" Text="ADD SYMPTOM" OnClick="AddSymptomButton_Click" Font-Bold="True" />
        </div>
        <p>
            <asp:DropDownList ID="FoodDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 50px; top: 210px; position: absolute; width: 130px;" OnSelectedIndexChanged="FoodDropDownList_SelectedIndexChanged" DataSourceID="FoodDataSource" DataTextField="food_name" DataValueField="food_name">
                <asp:ListItem>Foods</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="FoodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [food_name] FROM [food]"></asp:SqlDataSource>
            <asp:ListBox ID="QuantityListBox" runat="server" style="z-index: 4; left: 309px; top: 342px; position: absolute; height: 229px; width: 110px;" OnSelectedIndexChanged="QuantityListBox_SelectedIndexChanged"></asp:ListBox>
            <asp:ListBox ID="TimeListBox" runat="server" style="z-index: 2; left: 143px; top: 342px; position: absolute; height: 229px; width: 110px;" OnSelectedIndexChanged="TimeListBox_SelectedIndexChanged"></asp:ListBox>
        </p>
        <asp:DropDownList ID="SymptomsDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SymptomsDropdownList_SelectedIndexChanged" style="z-index: 1; left: 50px; top: 80px; position: absolute; width: 130px; right: 1392px;" DataSourceID="SymptomsDataSource" DataTextField="symptom_name" DataValueField="symptom_name">
            <asp:ListItem>Symptoms</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SymptomsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [symptom_name] FROM [symptom]" OnSelecting="SymptomsDataSource_Selecting"></asp:SqlDataSource>
        <asp:DropDownList ID="HoursDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 315px; top: 80px; position: absolute; width: 105px;" OnSelectedIndexChanged="HoursDropDownList_SelectedIndexChanged1" DataSourceID="HoursDataSource" DataTextField="hours_number" DataValueField="hours_number">
            <asp:ListItem>Time</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="HoursDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [hours_number] FROM [hours]"></asp:SqlDataSource>
        <asp:DropDownList ID="MinutesDropDownList" runat="server" AutoPostBack="True" DataSourceID="MinutesDataSource" DataTextField="minutes_number" DataValueField="minutes_number" style="z-index: 1; left: 315px; top: 126px; position: absolute; width: 105px;">
        </asp:DropDownList>
        <asp:SqlDataSource ID="MinutesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [minutes_number] FROM [minutes]" OnSelecting="MinutesDataSource_Selecting"></asp:SqlDataSource>
        <asp:ListBox ID="IntensityListBox" runat="server" AutoPostBack="True" style="z-index: 3; left: 226px; top: 342px; position: absolute; height: 229px; width: 110px"></asp:ListBox>
        <asp:DropDownList ID="IntensityDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 315px; top: 210px; position: absolute; width: 105px;" OnSelectedIndexChanged="IntensityDropDownList_SelectedIndexChanged1" DataSourceID="IntensityDataSource" DataTextField="intensity_number" DataValueField="intensity_number">
            <asp:ListItem Value="Intensity"></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="IntensityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [intensity_number] FROM [intensity]"></asp:SqlDataSource>
        <asp:Button ID="RemoveLastButton" runat="server" OnClick="RemoveLastButton_Click" style="z-index: 1; left: 172px; top: 576px; position: absolute" Text="Remove Last" Font-Bold="True" />
        <asp:Label ID="IntensityListBoxLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 228px; top: 313px; position: absolute" Text="Intensity"></asp:Label>
        <asp:DropDownList ID="DrinksDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 565px; top: 210px; position: absolute; width: 130px;" DataSourceID="DrinksDataSource" DataTextField="drink_name" DataValueField="drink_name">
            <asp:ListItem>Drinks</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="DrinksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [drink_name] FROM [drink]" OnSelecting="DrinksDataSource_Selecting"></asp:SqlDataSource>
        <asp:DropDownList ID="QuantityDropDownList" runat="server" style="z-index: 1; left: 315px; top: 256px; position: absolute; width: 105px;" AutoPostBack="True" OnSelectedIndexChanged="QuantityDropDownList_SelectedIndexChanged1" DataSourceID="QuantityDataSource" DataTextField="quantity_number" DataValueField="quantity_number">
            <asp:ListItem>Quantity</asp:ListItem>
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="QuantityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [quantity_number] FROM [quantity]"></asp:SqlDataSource>
        
            <asp:TextBox ID="NotesTextBox" runat="server" style="z-index: 1; left: 50px; top: 632px; position: absolute; width: 638px; height: 180px;" OnTextChanged="NotesTextBox_TextChanged"></asp:TextBox>
        <asp:Button ID="HistoryButton" runat="server" style="z-index: 1; left: 444px; top: 536px; position: absolute; width: 252px;" Text="History" Font-Bold="True" />
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 441px; top: 342px; position: absolute; height: 184px; width: 252px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#0066FF" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Button ID="SubmitButton" runat="server" style="z-index: 1; left: 444px; top: 574px; position: absolute; width: 252px;" Text="Submit" Font-Bold="True" BackColor="#0066FF" />
        <asp:Button ID="AddSleepButton" runat="server" style="z-index: 1; left: 565px; top: 125px; position: absolute; width: 130px;" Text="ADD SLEEP" OnClick="AddSleepButton_Click" Font-Bold="True" />
        <asp:Button ID="AddFoodsButton" runat="server" style="z-index: 1; left: 50px; top: 255px; position: absolute; width: 130px" Text="ADD FOODS" Font-Bold="True" OnClick="AddFoodsButton_Click" />
        <asp:Button ID="AddDrinksButton" runat="server" Text="ADD DRINKS" Font-Bold="True" style="z-index: 1; left: 565px; top: 255px; position: absolute; width: 130px;" OnClick="AddDrinksButton_Click" />
        <asp:Label ID="NotesLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 344px; top: 608px; position: absolute" Text="Notes"></asp:Label>
        <asp:Label ID="DetailLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 55px; top: 314px; position: absolute; width: 58px" Text="Detail"></asp:Label>
        <asp:DropDownList ID="SleepDropDownList" runat="server" style="z-index: 1; left: 565px; top: 80px; position: absolute; width: 130px;" DataSourceID="SleepDataSource" DataTextField="sleep_name" DataValueField="sleep_name" AutoPostBack="True" OnSelectedIndexChanged="SleepDropDownList_SelectedIndexChanged1">
            <asp:ListItem>Sleep</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="HoursLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 319px; top: 52px; position: absolute; width: 105px" Text="Hours" ForeColor="#003399"></asp:Label>
        <asp:SqlDataSource ID="SleepDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [sleep_name] FROM [sleep]"></asp:SqlDataSource>
        <asp:Label ID="QuantityLabel" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#003399" style="z-index: 1; left: 313px; top: 313px; position: absolute" Text="Quantity"></asp:Label>
        <asp:Label ID="TimeListBoxLabel" runat="server" BorderColor="White" CssClass="TimeListBoxClass" Font-Bold="True" Text="Time" ForeColor="#003399"></asp:Label>
        
        <asp:ListBox class="listbox" ID="MigraineListBox" runat="server" AutoPostBack="True" style="z-index: 1; left: 50px; top: 342px; position: absolute; height: 229px; width: 110px; right: 1374px;" OnSelectedIndexChanged="MigraineListBox_SelectedIndexChanged"></asp:ListBox>
    </form>
</body>
</html>
