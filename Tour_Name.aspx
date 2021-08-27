<%@ Page Title="SPORT.CGK" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Tour_Name.aspx.cs" Inherits="showmatch" %>

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
            <table class="tablee" width="60%" align="center" 
                style="border-style: solid; border-width: 2px; color: #000000;">
                <tr style="border-style: solid; border-width: 2px">
                    <td align="center" colspan="2" height="100px" style="font-size: large; font-weight: bold;
                        text-decoration: underline; color: #000000;" bgcolor="#FFC723">
                        Tournament
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: normal; font-size: medium; padding-top: 10px;" 
                        width="30%" height="50px">
                        Games Name -
                    </td>
                    <td height="50px" style="font-size: medium; font-weight: normal">
                        <asp:DropDownList ID="ddGame" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddGame_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    
                </tr>
                <tr>
                    <td style="font-weight: normal; font-size: medium">
                        Tournament Name -
                    </td>
                    <td style="font-weight: normal; font-size: medium" height="50px" width="50%">
                        <asp:TextBox ID="TxtTourName" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td style="font-weight: bold; font-size: medium" align="center" colspan="2">
                        &nbsp;
                        <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" />
                    </td>
                   
                </tr>
                <tr>
                    <td colspan="2" style=" font-size: medium; padding-bottom: 10px;" align="center" 
                        width="100px">
                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" 
                            OnRowDeleting="gv_RowDeleting" BorderColor="Black" BorderStyle="Solid" 
                            BorderWidth="2px">
                            <Columns>
                                <asp:BoundField DataField="tournamentname" HeaderText="Tournament" ItemStyle-BorderColor="Black" ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="2px" />
                                 
                                <asp:BoundField DataField="game" HeaderText="Game" />
                                
                                <asp:TemplateField ItemStyle-Width="20%">
                                 <ItemStyle Width="20%" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black" />
                                
                                    <ItemTemplate>
                                        <asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete" 
                                            OnClientClick="return isDelete();" ForeColor="#3333FF">Delete
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle Width="20%" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle Font-Size="Medium" />
                            <HeaderStyle BackColor="#FFC723" Font-Bold="True" Font-Size="Large" 
                                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                          
                            <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
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
