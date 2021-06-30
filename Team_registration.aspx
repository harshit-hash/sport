<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Team_registration, App_Web_5i3zjyyk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
<br /><br />
<center>
    <table class="tablee" width="60%" align="center" style="margin: 5px; border-style: solid;
                    border-width: 2px; color: #000000;">
        <tr>
            <td align="center" colspan="4" height="70" 
                
                
                style="border: medium inset #000000; background-color: #FFC723; font-weight: bold; font-style: inherit; font-size: large">
                Team Registration</td>
        </tr>
        <tr>
            <td height="100" width="200" align="center">
                Game</td>
            <td height="100" width="200">
                <asp:DropDownList ID="ddGame" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddGame_SelectedIndexChanged">
                    
                </asp:DropDownList>
            </td>
            <td height="100" width="200" align="center">
                Tournament</td>
            <td height="100" class="style1" width="200">
                <asp:DropDownList ID="ddTourn" runat="server">
             
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td height="100" width="200" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Team Name</td>
            <td height="100" width="200">
                <asp:TextBox ID="txtTeamName" runat="server"></asp:TextBox>
            </td>
            <td height="100" width="200" align="center">
                Short Name</td>
            <td height="100" class="style1" width="200">
&nbsp;<asp:TextBox ID="txtShortName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" height="20" style="padding-bottom:10px">
                <asp:Button ID="btnSave" runat="server" onclick="Button1_Click" Text="Save" BackColor="#3E7D71" Font-Bold="True" ForeColor="White" Width="100px" />
            </td>
        </tr>
    </table>
    </center>
    <br /><br />
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

