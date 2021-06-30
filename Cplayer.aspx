<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="_Default, App_Web_tjv0ljbg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <script type="text/javascript">
        function isDelete() {
            return confirm("Do you want to delete this row ?");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
            <br />
            <br />
            <center>
                <table class="tablee" width="60%" align="center" style="margin: 5px; border-style: solid;
                    border-width: 2px; color: #000000;">
                    <tr>
                        <td align="center" colspan="8" style="border-style: inset; border-width: 2px; font-size: large;
                            font-weight: bold; background-color: #FFC723;" height="100">
                            Player Name
                        </td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            Games
                        </td>
                        <td align="left" height="50" colspan="2">
                            <asp:DropDownList ID="ddGame" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddGame_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td align="center" height="50">
                            Tournament</td>
                       <td align="left" height="50" colspan="2">
                            <asp:DropDownList ID="ddTourn" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddTourn_SelectedIndexChanged">
                            </asp:DropDownList></td>
                        <td align="left" height="50">
                            <asp:Label ID="lblGames0" runat="server" Text="Teams"></asp:Label>
                        </td>
                        <td align="left" height="50" colspan="1">
                            <asp:DropDownList ID="ddTeams" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddTeams_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            Name
                        </td>
                        <td colspan="3" height="50" align="left">
                            <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
                        </td>
                       <td align="left" height="50" colspan="3">
                            Jersey
                        </td>
                        <td height="50" align="left" colspan="1">
                            <asp:TextBox ID="txtNo1" runat="server" Width="100px" placeholder="Jersey no."></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="8">
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" 
                                BackColor="#3E7D71" Font-Bold="True" ForeColor="White" Width="100px" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="8" style="font-size: medium; padding-bottom: 20px; padding-top: 30px;"
                            align="center" width="100px">
                            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" BorderColor="Black"
                                BorderStyle="Solid" BorderWidth="2px" Width="600px">
                                <Columns>
                                    <asp:BoundField DataField="pname" HeaderText="Name" ItemStyle-BorderColor="Black"
                                        ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="2px" />
                                    <asp:BoundField DataField="jerssyno" HeaderText="J. No." ItemStyle-BorderColor="Black"
                                        ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="2px" />
                                    <asp:BoundField DataField="team" HeaderText="Team Name" ItemStyle-BorderColor="Black"
                                        ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="2px" />
                                </Columns>
                                <EditRowStyle Font-Size="Medium" />
                                <HeaderStyle BackColor="#FFC723" Font-Bold="True" Font-Size="Large" BorderColor="Black"
                                    BorderStyle="Solid" BorderWidth="2px" />
                                <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </center>
            <br />
            <%-- <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False"  BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" Height="50px" Width="100%" >
        <Columns>
            <asp:BoundField DataField="pname" HeaderText="Name" />
            <asp:BoundField DataField="jerssyno" HeaderText="J. No." />
            <asp:BoundField DataField="team" HeaderText="Team Name" />
        </Columns>
    </asp:GridView>--%>
            <br />
            </div>
            <asp:UpdateProgress ID="updtProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <div style="font-size: 15px; z-index: 9999999; right: 0px; left: 0px; width: 100%;
                        position: fixed; top: 0px; height: 100%; background-color: #d4d0c8; text-align: center;
                        filter: alpha(opacity=70); xindex: -1; opacity: 0.7">
                        <asp:Image ID="imgUpdateProgress" runat="server" AlternateText="Processing Please Wait ..."
                            ImageUrl="~/image/Loading/Cricket ball.gif" Style="left: 45%; position: fixed; top: 40%"
                            ToolTip="Loading ..." />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
