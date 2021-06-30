<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="score, App_Web_tjv0ljbg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
             <center>
    <table class="table align-items-center table-flush" 
                style="font-weight: bold; font-size: medium" align="center">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: xx-large">
                Score
            </td>
        </tr>
        <tr style=" font-size: medium" align="center">
            <td>
                <asp:Label ID="lblTeam1" runat="server"></asp:Label>
                -<asp:Label ID="lbl1stiniRun" runat="server"></asp:Label>
                /<asp:Label ID="lbl1stiniWkt" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTeam2" runat="server"></asp:Label>
                -<asp:Label ID="lbl2ndiniRun" runat="server"></asp:Label>
                /<asp:Label ID="lbl2ndiniWkt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr  style=" font-size: medium" align="center">
            <td>
                Over-<asp:Label ID="lblover" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblballo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td  colspan="2">
                <asp:GridView ID="gvbats" runat="server" AutoGenerateColumns="False" 
                    Width="80%">
                    <Columns>
                        <asp:BoundField DataField="pname" HeaderText="Batsman" ItemStyle-Width="200px" />
                        <asp:BoundField DataField="run" HeaderText="Run" ItemStyle-Width="200px" />
                        <asp:BoundField DataField="ball" HeaderText="Ball" ItemStyle-Width="200px" />
                        <asp:BoundField DataField="four" HeaderText="4's" ItemStyle-Width="200px" />
                        <asp:BoundField DataField="six" HeaderText="6's" ItemStyle-Width="200px" />
                         <asp:BoundField DataField="status" HeaderText="Playing Status" ItemStyle-Width="200px" />
                    </Columns>
                    <HeaderStyle CssClass="thead" BackColor="#FFC722"  />
                </asp:GridView>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:GridView ID="gvballs" runat="server" AutoGenerateColumns="False" 
                    Width="80%">
                    <Columns>
                        <asp:BoundField DataField="pname" HeaderText="Bowler" ItemStyle-Width="250px"  />
                        <asp:BoundField DataField="over" HeaderText="Over" ItemStyle-Width="250px" />
                        <asp:BoundField DataField="run" HeaderText="Run" ItemStyle-Width="250px"  />
                        <asp:BoundField DataField="wicket" HeaderText="Wicket" ItemStyle-Width="250px"  />
                    </Columns>
                    <HeaderStyle BackColor="#FFC722"  />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    </center>
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
