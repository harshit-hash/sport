<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Cricket, App_Web_4l4w3xsn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div style="padding-top: 150px; padding-bottom: 100px; color: #000000;">
                <div style="padding-bottom: 50px">
                Game -
                    <asp:DropDownList ID="ddVGame" runat="server" 
                        onselectedindexchanged="ddVGame_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                            Tournament
                       
                            <asp:DropDownList ID="ddTourn" runat="server">
                            </asp:DropDownList>
                       
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                    <asp:Button ID="btnsave1" runat="server" OnClick="Button1_Click" Text="View" BackColor="#3366FF"
                        Font-Bold="True" ForeColor="White" Width="100px" />
                    <div style="padding-top: 50px">
                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" Height="50" Font-Bold="False"
                            Width="100%" HeaderStyle-BackColor="#FFC723" HeaderStyle-BorderColor="Black"
                            HeaderStyle-BorderStyle="Solid" HeaderStyle-BorderWidth="2px">
                            <Columns>
                                <asp:BoundField HeaderText="Team name" DataField="teamname" />
                                <asp:BoundField HeaderText="short name" DataField="shortname" />
                                <asp:BoundField HeaderText="Game" DataField="game" />
                                <asp:BoundField HeaderText="tournament" DataField="tournament" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <table class="tablee" width="60%" align="right" style="border-style: solid; border-width: 2px;
                    color: #000000; padding-bottom: 50px">
                    <tr style="border: medium solid #000000; background-color: #FFC723;">
                        <td align="center" class="style1" colspan="4" style="font-weight: bold; font-size: large">
                            Cricket Entry
                        </td>
                    </tr>
                  
                    <tr>
                        <td align="center" height="100" width="300">
                            Team-1
                        </td>
                        <td height="100" colspan="3">
                            <asp:TextBox ID="txtTeam1" runat="server" AutoPostBack="True" OnTextChanged="txtTeam1_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" height="100">
                            Team-2
                        </td>
                        <td height="100" width="300" colspan="3">
                            <asp:TextBox ID="txtTeam2" runat="server" OnTextChanged="txtTeam2_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" height="100">
                            Date
                        </td>
                        <td height="100" width="300" colspan="3">
                            <asp:TextBox ID="txtDate" runat="server" placeholder="dd/MM/yyyy"></asp:TextBox>
                            <asp:CalendarExtender ID="txtChequeDate_CalendarExtender" runat="server" DaysModeTitleFormat="dd/MM/yyyy"
                                Enabled="True" Format="dd/MM/yyyy" PopupButtonID="btnChequeDate" TargetControlID="txtDate"
                                TodaysDateFormat="dd/MM/yyyy">
                            </asp:CalendarExtender>
                            <asp:ImageButton ID="btnChequeDate" runat="server" Height="25px" ImageUrl="~/image/Calendar.gif"
                                Width="25px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4">
                            <asp:Button ID="btnSave" runat="server" OnClick="btnsave_Click" Text="Save" BackColor="#3E7D71"
                                Font-Bold="True" ForeColor="White" Width="100px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <asp:UpdateProgress ID="updtProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <div style="font-size: 15px; z-index: 9999999; right: 0px; left: 0px; width: 100%;
                        position: fixed; top: 0px; height: 100%; background-color: #d4d0c8; text-align: center;
                        filter: alpha(opacity=70); xindex: -1; opacity: 0.7">
                        <asp:Image ID="imgUpdateProgress" runat="server" AlternateText="Processing Please Wait ..."
                            ImageUrl="~/image/Loading/Cricket ball.gif" Style="left: 45%; position: fixed;
                            top: 40%" ToolTip="Loading ..." />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
