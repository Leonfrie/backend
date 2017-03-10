<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 350px;
        }

    
        #grijs {
            background-color: #999999;
        }

    
        .auto-style2 {
            color: #FF0000;
        }

    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1> Selecteer een datum in de kalender</h1>

    </div>
        <asp:Calendar ID="kalVerjaardag" runat="server" SelectedDate="1995, 1, 1" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="kalVerjaardag_SelectionChanged" Width="220px" VisibleDate="1995-01-01">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <p>
            U heeft de onderstaande datum geselecteerd:</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </p>
        <p>
            U bent nu</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Button ID="bntLeeftijd" runat="server" OnClick="Button1_Click" Text="Laat zien" />
        </p>
        <p>
            &nbsp;</p>

        <div id="grijs">
        <h1 class="auto-style2">
            Het aftellen is begonnen</h1>
        <p>
            Het is vandaag</p>
        <p>
            <asp:Label ID="litVandaag" runat="server"></asp:Label>
        </p>
        <p>
            Het is nu</p>
        <asp:Label ID="litTijd" runat="server"></asp:Label>
        <br />
        <br />
       <h3> Wanneer is het Pasen?</h3> 
            <br /> <br /> <br />
       
       
        <table class="auto-style1">
            <tr>
                <td>Het duurt nog</td>
                <td>
                    <asp:Literal ID="litUren" runat="server"></asp:Literal>
                &nbsp; Uren</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Literal ID="litMinuten" runat="server"></asp:Literal>
                &nbsp;Minuten</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Literal ID="litSeconden" runat="server"></asp:Literal>
                &nbsp;Seconden</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            
        <asp:Button ID="buttonVervers" runat="server" OnClick="buttonVervers_Click" Text="Button" />
            </div>
    </form>
</body>
</html>
