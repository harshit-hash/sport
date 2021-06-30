<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin, App_Web_tjv0ljbg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <div style="padding-top:150px">
    <table width="100%" style="font-weight: bold; color: #3333FF;">
        <tr>
            <td align="center"  style="font-weight: bold; color: #3333FF;">
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Game_Name.aspx"  Height="100px" Width="100px">Add Game Name</asp:LinkButton>
           
              
            </td>
             <td align="center" height="50" width="100">
              <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/Tour_Name.aspx"  
                    Height="50px" Width="100px">Add Tournament</asp:LinkButton>
            
                 </td>
        </tr>
        <tr>
            <td align="center" height="50" width="100">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Team_registration.aspx"  Height="50px" Width="100px">Add Team</asp:LinkButton>
          
                 </td>
            <td align="center" height="50" width="100">
             <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/match_regi.aspx"  Height="100px" Width="100px">Match Registration</asp:LinkButton>
           
            
                  </td>
        </tr>
        <tr>
            <td align="center" height="50" width="100">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Cplayer.aspx"  Height="50px" Width="100px">Add Player</asp:LinkButton>
          
               </td>
            <td align="center" height="50" width="100">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/adscore.aspx" 
                    Height="50px" Width="100px">Add Score</asp:LinkButton>
                
                </td>
        </tr>
        <tr>
           
            <td align="center" height="50" width="100" colspan="2">
             <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/point_table.aspx"  Height="50px" Width="100px">Add Point</asp:LinkButton>
           
               </td>
        </tr>
      
        </table>
        </div>
</asp:Content>
