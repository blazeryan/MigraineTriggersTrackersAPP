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
            top: 401px;
            position: absolute;
            }
    </style>
</head>
<body style="height: 38px">
    <form id="form1" style="height: 1000px" runat="server">
        <div class ="">
            <asp:Button ID="AddSymptomButton" runat="server" style="z-index: 1; left: 50px; top: 117px; position: absolute; width: 130px;" Text="ADD SYMPTOM" OnClick="AddSymptomButton_Click" Font-Bold="True" />
            <asp:Label ID="MInutesDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 4; left: 469px; top: 130px; position: absolute" Text="Minutes"></asp:Label>
        </div>
        <p>
            <asp:DropDownList ID="FoodDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 256px; top: 170px; position: absolute; width: 130px;" OnSelectedIndexChanged="FoodDropDownList_SelectedIndexChanged" DataSourceID="FoodDataSource" DataTextField="food_name" DataValueField="food_name">
                <asp:ListItem>Foods</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="FoodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [food_name] FROM [food]"></asp:SqlDataSource>
            <asp:Label ID="PropertiesPanelLabel" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="White" style="z-index: 4; left: 480px; top: 26px; position: absolute; width: 103px; height: 29px;" Text="Properties"></asp:Label>
            <asp:ListBox ID="QuantityListBox" runat="server" style="z-index: 4; left: 309px; top: 425px; position: absolute; height: 229px; width: 110px;" OnSelectedIndexChanged="QuantityListBox_SelectedIndexChanged"></asp:ListBox>
            <asp:ListBox ID="TimeListBox" runat="server" style="z-index: 2; left: 143px; top: 425px; position: absolute; height: 229px; width: 110px;" OnSelectedIndexChanged="TimeListBox_SelectedIndexChanged"></asp:ListBox>
        </p>
        <asp:DropDownList ID="SymptomsDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SymptomsDropdownList_SelectedIndexChanged" style="z-index: 1; left: 50px; top: 82px; position: absolute; width: 130px; right: 1060px;" DataSourceID="SymptomsDataSource" DataTextField="symptom_name" DataValueField="symptom_name">
            <asp:ListItem>Symptoms</asp:ListItem>
        </asp:DropDownList>
        <asp:Panel ID="TriggersPanel" runat="server" BackColor="#0066FF" style="z-index: 0; left: 225px; top: 17px; position: absolute; height: 370px; width: 177px" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
        </asp:Panel>
        <asp:SqlDataSource ID="SymptomsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [symptom_name] FROM [symptom]" OnSelecting="SymptomsDataSource_Selecting"></asp:SqlDataSource>
        <asp:Label ID="TriggersPanelLabel" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 276px; top: 26px; position: absolute" Text="Triggers" Font-Italic="True"></asp:Label>
        <asp:Panel ID="PropertiesPanel" runat="server" BackColor="#0066FF" style="z-index: 1; left: 425px; top: 17px; position: absolute; height: 370px; width: 177px" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
        </asp:Panel>
        <asp:DropDownList ID="HoursDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 465px; top: 81px; position: absolute; width: 105px;" OnSelectedIndexChanged="HoursDropDownList_SelectedIndexChanged1" DataSourceID="HoursDataSource" DataTextField="hours_number" DataValueField="hours_number">
            <asp:ListItem>Time</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="HoursDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [hours_number] FROM [hours]"></asp:SqlDataSource>
        <asp:Label ID="QuantityDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 472px; top: 264px; position: absolute" Text="Quantity"></asp:Label>
        <asp:DropDownList ID="MinutesDropDownList" runat="server" AutoPostBack="True" DataSourceID="MinutesDataSource" DataTextField="minutes_number" DataValueField="minutes_number" style="z-index: 1; left: 467px; top: 156px; position: absolute; width: 105px;">
        </asp:DropDownList>
        <asp:SqlDataSource ID="MinutesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [minutes_number] FROM [minutes]" OnSelecting="MinutesDataSource_Selecting"></asp:SqlDataSource>
        <asp:Panel ID="SymptomsPanel" runat="server" BackColor="#0066FF" BorderColor="White" BorderStyle="Inset" BorderWidth="5px" style="z-index: 0; left: 25px; top: 17px; position: absolute; height: 370px; width: 177px">
        </asp:Panel>
        <asp:Label ID="SymptomsLabel" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 71px; top: 26px; position: absolute" Text="Symptoms" Font-Italic="True"></asp:Label>
        <asp:Label ID="IntensityDropDownLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 470px; top: 200px; position: absolute; right: 696px;" Text="Intensity"></asp:Label>
        <asp:ListBox ID="IntensityListBox" runat="server" AutoPostBack="True" style="z-index: 3; left: 226px; top: 425px; position: absolute; height: 229px; width: 110px"></asp:ListBox>
        <asp:DropDownList ID="IntensityDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 468px; top: 224px; position: absolute; width: 105px;" OnSelectedIndexChanged="IntensityDropDownList_SelectedIndexChanged1" DataSourceID="IntensityDataSource" DataTextField="intensity_number" DataValueField="intensity_number">
            <asp:ListItem Value="Intensity"></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="IntensityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [intensity_number] FROM [intensity]"></asp:SqlDataSource>
        <asp:Button ID="RemoveLastButton" runat="server" OnClick="RemoveLastButton_Click" style="z-index: 1; left: 172px; top: 674px; position: absolute" Text="Remove Last" Font-Bold="True" />
        <asp:Panel ID="DatePanel" runat="server" BackColor="#0066FF" style="z-index: 1; left: 625px; top: 17px; position: absolute; height: 370px; width: 177px" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
            <asp:Label ID="DatePanelLabel" runat="server" style="z-index: 0; left: 66px; top: 0px; position: absolute" Text="Date" Font-Bold="True" Font-Italic="True" ForeColor="White"></asp:Label>
        </asp:Panel>
        <asp:Label ID="IntensityListBoxLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 228px; top: 400px; position: absolute" Text="Intensity"></asp:Label>
        <asp:DropDownList ID="DrinksDropDownList" runat="server" AutoPostBack="True" style="z-index: 1; left: 257px; top: 255px; position: absolute; width: 130px;" DataSourceID="DrinksDataSource" DataTextField="drink_name" DataValueField="drink_name">
            <asp:ListItem>Drinks</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="DrinksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [drink_name] FROM [drink]" OnSelecting="DrinksDataSource_Selecting"></asp:SqlDataSource>
        <asp:DropDownList ID="QuantityDropDownList" runat="server" style="z-index: 1; left: 469px; top: 288px; position: absolute; width: 105px;" AutoPostBack="True" OnSelectedIndexChanged="QuantityDropDownList_SelectedIndexChanged1" DataSourceID="QuantityDataSource" DataTextField="quantity_number" DataValueField="quantity_number">
            <asp:ListItem>Quantity</asp:ListItem>
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="QuantityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [quantity_number] FROM [quantity]"></asp:SqlDataSource>
        
            <asp:TextBox ID="NotesTextBox" runat="server" style="z-index: 1; left: 447px; top: 425px; position: absolute; width: 544px; height: 229px;" OnTextChanged="NotesTextBox_TextChanged"></asp:TextBox>
        <asp:Button ID="HistoryButton" runat="server" style="z-index: 1; left: 650px; top: 279px; position: absolute; width: 133px; right: 457px;" Text="History" Font-Bold="True" BackColor="#FFCC66" />
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 635px; top: 81px; position: absolute; height: 106px; width: 84px; margin-bottom: 0px;" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#0066FF" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Button ID="SubmitButton" runat="server" style="z-index: 1; left: 740px; top: 675px; position: absolute; width: 252px;" Text="Submit" Font-Bold="True" BackColor="#0066FF" OnClick="SubmitButton_Click" />
        <asp:Button ID="AddSleepButton" runat="server" style="z-index: 1; left: 256px; top: 117px; position: absolute; width: 130px;" Text="ADD SLEEP" OnClick="AddSleepButton_Click" Font-Bold="True" />
        <asp:Button ID="AddFoodsButton" runat="server" style="z-index: 1; left: 258px; top: 203px; position: absolute; width: 130px" Text="ADD FOODS" Font-Bold="True" OnClick="AddFoodsButton_Click" />
        <asp:Button ID="AddDrinksButton" runat="server" Text="ADD DRINKS" Font-Bold="True" style="z-index: 1; left: 258px; top: 283px; position: absolute; width: 130px;" OnClick="AddDrinksButton_Click" />
        <asp:Label ID="NotesLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 450px; top: 400px; position: absolute" Text="Notes" ForeColor="#003399"></asp:Label>
        <asp:Label ID="DetailLabel" runat="server" Font-Bold="True" ForeColor="#003399" style="z-index: 1; left: 55px; top: 400px; position: absolute; width: 58px" Text="Detail"></asp:Label>
        <asp:DropDownList ID="SleepDropDownList" runat="server" style="z-index: 1; left: 254px; top: 82px; position: absolute; width: 130px; right: 856px; margin-bottom: 0px;" DataSourceID="SleepDataSource" DataTextField="sleep_name" DataValueField="sleep_name" AutoPostBack="True" OnSelectedIndexChanged="SleepDropDownList_SelectedIndexChanged1">
            <asp:ListItem>Sleep</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="HoursLabel" runat="server" Font-Bold="True" style="z-index: 1; left: 465px; top: 58px; position: absolute; width: 105px" Text="Hours" ForeColor="#003399"></asp:Label>
        <asp:SqlDataSource ID="SleepDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [sleep_name] FROM [sleep]"></asp:SqlDataSource>
        <asp:GridView ID="DetailsGridView" runat="server" AutoGenerateColumns="False" DataSourceID="GridViewDataSource" OnSelectedIndexChanged="DetailsGridView_SelectedIndexChanged" style="z-index: 1; left: 57px; top: 711px; position: absolute; height: 735px; width: 931px; margin-right: 178px">
            <Columns>
                <asp:BoundField DataField="migraine_detail" HeaderText="migraine_detail" SortExpression="migraine_detail" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="intensity" HeaderText="intensity" SortExpression="intensity" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="GridViewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MigraineTriggersTrackersDBConnectionString %>" SelectCommand="SELECT [migraine_detail], [time], [quantity], [intensity], [notes] FROM [details]"></asp:SqlDataSource>
        <asp:Label ID="QuantityLabel" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#003399" style="z-index: 1; left: 313px; top: 400px; position: absolute" Text="Quantity"></asp:Label>
        <asp:Label ID="TimeListBoxLabel" runat="server" BorderColor="White" CssClass="TimeListBoxClass" Font-Bold="True" Text="Time" ForeColor="#003399" ></asp:Label>
        
        <asp:ListBox class="listbox" ID="MigraineListBox" runat="server" AutoPostBack="True" style="z-index: 1; left: 50px; top: 425px; position: absolute; height: 229px; width: 110px; right: 1080px;" OnSelectedIndexChanged="MigraineListBox_SelectedIndexChanged"></asp:ListBox>
    </form>
</body>
</html>
