<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="showmatch, App_Web_5i3zjyyk" %>

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
                        <td align="center" colspan="3" height="100" style="font-size: large; font-weight: bold;
                            text-decoration: underline" bgcolor="#FFC723">
                            Games
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="font-size: medium; padding-top: 30px;" width="20%">
                            Games Name -
                        </td>
                        <td width="30%" style="padding-top: 30px;">
                            <asp:TextBox ID="TxtGameName" runat="server"></asp:TextBox>
                        </td>
                        <td align="left" style="padding-top: 30px;">
                            <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" BackColor="#009999"
                                Font-Bold="True" ForeColor="White" Width="100px" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="3" style="font-size: medium; padding-bottom: 20px; padding-top: 30px;"
                            align="center" width="100px">
                            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" OnRowDeleting="gv_RowDeleting"
                                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Width="600px">
                                <Columns>
                                    <asp:BoundField DataField="game" HeaderText="Game" />
                                    <asp:TemplateField ItemStyle-Width="20%">
                                        <ItemStyle Width="20%" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black" />
                                        <ItemTemplate>
                                            <asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete" OnClientClick="return isDelete();"
                                                ForeColor="#3333FF">Delete
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle Width="20%" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black" />
                                    </asp:TemplateField>
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
