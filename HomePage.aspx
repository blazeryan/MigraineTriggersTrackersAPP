<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MigraineTriggersTrackersAPP.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="">
            <asp:Label ID="AppNameLabel" runat="server" style="z-index: 1; left: 530px; top: 15px; position: absolute" Text="Migraine Triggers &amp; Tracker"></asp:Label>
        </div>
        <asp:CheckBoxList ID="SymptomsCheckBoxList" runat="server" AutoPostBack="True" style="z-index: 1; left: 43px; top: 100px; position: absolute; height: 28px; width: 200px">
       <asp:ListItem Text="Vision Abnormal" Value="1"></asp:ListItem>
       <asp:ListItem Text="Aura" Value="2"></asp:ListItem>
            
       </asp:CheckBoxList>
        <p>
        <asp:Label ID="SymptomsLabel0" runat="server" style="z-index: 1; left: 50px; top: 60px; position: absolute" Text="Symptoms"></asp:Label>
            <asp:Label ID="FoodsLabel" runat="server" style="z-index: 1; left: 300px; top: 60px; position: absolute" Text="Foods"></asp:Label>
            <asp:Label ID="DrinksLabel" runat="server" style="z-index: 1; left: 550px; top: 60px; position: absolute" Text="Drinks"></asp:Label>
        </p>
        <asp:Label ID="SleepLabel" runat="server" style="z-index: 1; left: 800px; top: 60px; position: absolute" Text="Sleep"></asp:Label>
        <asp:Label ID="HeatLabel" runat="server" style="z-index: 1; left: 1050px; top: 60px; position: absolute" Text="Heat"></asp:Label>
    </form>
</body>
</html>
