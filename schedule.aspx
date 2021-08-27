<%@ Page Title="SPORT.CGK" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="schedule.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <link href="css/critour.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
            <br />
            <br />
            <table align="center" class="style1" style="border-style: solid; font-weight: bold;
                font-size: medium;" width="1000px">
                <tr>
                    <td align="center" colspan="5" style="border-style: inset; border-width: 2px; font-size: large;
                        font-weight: bold; background-color: #FFC723; color: #000000;" height="100">
                        Schedule
                    </td>
                </tr>
                <tr text="View" style="color: #000000; font-weight: normal">
                  
                    <td height="50">
                        Game -
                    </td>
                    <td align="center" height="50">
                        <asp:DropDownList ID="ddGame" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="ddGame_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                      <td height="50">
                        Tournament -
                    </td>
                    <td align="center" height="50">
                        <asp:DropDownList ID="ddTourn" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td height="50">
                        <asp:Button ID="Button1" runat="server" Text="View" OnClick="btnView_Click" BackColor="#3E7D71"
                            Font-Bold="True" ForeColor="White" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" height="50" width="100" colspan="5">
                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" BorderColor="Tan"
                            BorderWidth="1px" CellPadding="2" ForeColor="White" Height="50px" Width="100%"
                            HorizontalAlign="Right" BackColor="#404040" Font-Bold="False">
                            <Columns>
                            <asp:BoundField DataField="matchdate" HeaderText="Match Date" 
                                    HeaderStyle-Width="100px" >
                                <HeaderStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="team1" HeaderText="Team 1" />
                                <asp:BoundField DataField="VS" HeaderText="" ReadOnly="True" ItemStyle-HorizontalAlign="Center"
                                    ItemStyle-ForeColor="#FFC723" HeaderStyle-ForeColor="#FFC723" 
                                    HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100px">
                                <HeaderStyle ForeColor="#FFC723" HorizontalAlign="Center" />
                                <ItemStyle ForeColor="#FFC723" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="team2" HeaderText="Team2" />

                                <asp:TemplateField HeaderText="Score">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LnkCheckScore" runat="server" Text="Check Score" 
                                            onclick="LnkCheckScore_Click" ForeColor="#3366FF"></asp:LinkButton></ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Black" Font-Bold="True"  />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
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
