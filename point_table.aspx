<%@ Page Title="SPORT.CGK" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="point_table.aspx.cs" Inherits="point_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:150px; color: #000000;">
   <div style="padding: 10px; font-weight: bold;">Game - <asp:DropDownList ID="ddGame" 
           runat="server" onselectedindexchanged="ddGame_SelectedIndexChanged" 
           AutoPostBack="True">
    </asp:DropDownList>
    Tournament - <asp:DropDownList ID="ddTourn" runat="server">
    </asp:DropDownList>
       <asp:Button ID="btnView" runat="server" Text="View" onclick="btnView_Click" /></div> 
    <div class="main-content">
        <div class="container mt-7">
            <!-- Table -->
            <h2 class="mb-5">
                Raipur match</h2>
            <div class="row">
                <div class="col">
                    <div class="card shadow">
                        <div class="card-header border-0">
                            <h3 class="mb-0">
                                Point tables</h3>
                        </div>
                        <div class="table-responsive">
                            <table class="table align-items-center table-flush">
                                
                                <thead class="thead-light">
                                    <tr style="font-weight: bold">
                                        <th scope="col">
                                            S No.
                                        </th>
                                        <th>
                                            Team Name
                                        </th>
                                        <th>
                                            Played
                                        </th>
                                        <th>
                                            Win
                                        </th>
                                        <th>
                                            Loss
                                        </th>
                                        <th>
                                            Run Rate
                                        </th>
                                        <th>
                                            Point</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td width="50">
                                            &nbsp;
                                        </td>
                                        <td width="100">
                                            <asp:DropDownList ID="ddTmNm" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddTmNm_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="100">
                                            <asp:TextBox ID="txtPlay" runat="server"></asp:TextBox>
                                        </td>
                                        <td width="100">
                                            <asp:TextBox ID="txtWin" runat="server"></asp:TextBox>
                                        </td>
                                        <td width="100">
                                            <asp:TextBox ID="txtLoss" runat="server"></asp:TextBox>
                                        </td>
                                        <td width="100">
                                            <asp:TextBox ID="txtRR" runat="server"></asp:TextBox>
                                        </td>
                                        <td width="100">
                                            <asp:TextBox ID="txtPt" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="7">
                                            <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> </div><asp:UpdateProgress ID="updtProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1">
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
