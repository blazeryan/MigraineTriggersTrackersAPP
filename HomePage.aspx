<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MigraineTriggersTrackersAPP.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body style="height: 38px">
    <form id="form1" runat="server">
        <div class ="">
            <asp:Label ID="AppNameLabel" runat="server" style="z-index: 1; left: 167px; top: 15px; position: absolute" Text="Migraine Triggers &amp; Tracker" Font-Bold="True"></asp:Label>
            <asp:Button ID="AddSymptomButton" runat="server" style="z-index: 1; left: 68px; top: 125px; position: absolute; width: 180px;" Text="ADD SYMPTOM" OnClick="AddSymptomButton_Click" Font-Bold="True" />
        </div>
        <p>
            <asp:DropDownList ID="FoodDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 50px; top: 210px; position: absolute; width: 105px;" OnSelectedIndexChanged="FoodDropDownList_SelectedIndexChanged">
                <asp:ListItem>Foods</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:DropDownList ID="SymptomsDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SymptomsDropdownList_SelectedIndexChanged" style="z-index: 1; left: 50px; top: 80px; position: absolute; width: 105px; right: 1220px;" DataSourceID="SymptomDataSource" DataTextField="symptom_name" DataValueField="symptom_name">
            <asp:ListItem>Symptoms</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SymptomDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" OnSelecting="SymptomDataSource_Selecting" SelectCommand="SELECT [symptom_name] FROM [symptom]"></asp:SqlDataSource>
        <asp:DropDownList ID="SymptomTimeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="MinutesDropDownList_SelectedIndexChanged" style="z-index: 1; left: 165px; top: 80px; position: absolute; width: 105px;" DataSourceID="TimeDataSource" DataTextField="time_number" DataValueField="time_number">
            <asp:ListItem>Time</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="TimeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [time_number] FROM [time]"></asp:SqlDataSource>
        <asp:DropDownList ID="SleepDropDownList" runat="server" style="z-index: 1; left: 315px; top: 80px; position: absolute; width: 105px; right: 955px;" OnSelectedIndexChanged="SleepDropDownList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Sleep</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="SleepTimeDropDownList" runat="server" style="z-index: 1; left: 425px; top: 80px; position: absolute; width: 105px;" OnSelectedIndexChanged="SleepTimeDropdownList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Time</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="FoodQuantityDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 160px; top: 210px; position: absolute; width: 105px;" OnSelectedIndexChanged="FoodQuantityDropDownList_SelectedIndexChanged">
            <asp:ListItem>Quantity</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DrinksDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DrinksDropDownList_SelectedIndexChanged" style="z-index: 1; left: 315px; top: 210px; position: absolute; width: 105px;">
            <asp:ListItem>Drinks</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DrinksQuantityDrowDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 425px; top: 210px; position: absolute; width: 105px; right: 928px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Quantity</asp:ListItem>
        </asp:DropDownList>
        <asp:ListBox ID="MigraineListBox" runat="server" AutoPostBack="True" style="z-index: 1; left: 595px; top: 80px; position: absolute; height: 229px; width: 252px;" OnSelectedIndexChanged="MigraineListBox_SelectedIndexChanged"></asp:ListBox>
        <asp:TextBox ID="NotesTextBox" runat="server" style="z-index: 1; left: 50px; top: 341px; position: absolute; width: 477px; height: 180px;"></asp:TextBox>
        <asp:Button ID="HistoryButton" runat="server" style="z-index: 1; left: 595px; top: 536px; position: absolute; width: 252px;" Text="History" Font-Bold="True" />
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 595px; top: 342px; position: absolute; height: 184px; width: 252px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Button ID="SubmitButton" runat="server" style="z-index: 1; left: 595px; top: 574px; position: absolute; width: 252px;" Text="Submit" Font-Bold="True" />
        <asp:Button ID="AddSleepButton" runat="server" style="z-index: 1; left: 332px; top: 125px; position: absolute; width: 180px;" Text="ADD SLEEP" OnClick="AddSleepButton_Click" Font-Bold="True" />
        <asp:Button ID="AddFoodsButton" runat="server" style="z-index: 1; left: 68px; top: 255px; position: absolute; width: 180px" Text="ADD FOODS" Font-Bold="True" />
        <asp:Button ID="AddDrinksButton" runat="server" Text="ADD DRINKS" Font-Bold="True" style="z-index: 1; left: 332px; top: 255px; position: absolute; width: 180px;" />
        <asp:Label ID="NotesLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 264px; top: 315px; position: absolute" Text="Notes"></asp:Label>
        <asp:Label ID="MigraineDetailsLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 692px; top: 56px; position: absolute" Text="Details"></asp:Label>
    </form>
</body>
</html>
