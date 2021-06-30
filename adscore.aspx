<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="adscore, App_Web_4l4w3xsn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
    <br />
    <br />
    <table class="Tablee" width="100%" >
        <tr>
            <td align="center" colspan="7" 
                style="font-weight: bold; font-size: large; color: #000000;" class="style1" 
                height="30" bgcolor="#FFC723">
                Player State
            </td>
        </tr>
        <tr style="font-weight: normal; color: #000000;">
         <td width="100">Tournament - </td>
            <td align="left" height="50" width="100">
                <asp:DropDownList ID="ddTourn" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddTourn_SelectedIndexChanged">
                    
                 
                </asp:DropDownList>
            </td>

        <td width="100">Batsman - </td><td align="left" height="50" width="50">
                <asp:DropDownList ID="ddBat" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddBat_SelectedIndexChanged">
                    
                 
                </asp:DropDownList>
            </td>
            <td width="100">Bowler - </td>
            <td align="left" height="50" width="100">
                <asp:DropDownList ID="ddBall" runat="server" 
                    onselectedindexchanged="ddBall_SelectedIndexChanged">
                    
                 
                </asp:DropDownList>
            </td>
            <td align="center" width="100">
                <asp:Button ID="btnViewPlay" runat="server" onclick="btnViewPlay_Click" 
                    Text="View" />
            </td></tr>
      
         
        </table>
         <div class="main-content">
        <div class="container mt-7">
            <!-- Table -->
            <caption>
                <h2 class="mb-5">
                    Raipur match</h2>
                <div class="row">
                    <div class="col">
                        <div class="card shadow">
                            <div class="card-header border-0">
                                <h3 class="mb-0">
                                    Batsman Table</h3>
                            </div>
                            <div class="table-responsive">
                                <table class="table align-items-center table-flush">
                                    <thead class="thead-light">
                                        <tr style="font-weight: bold">
                                            
                                            <th>
                                                PLAYER Name
                                            </th>
                                            <th>
                                                Run</th>
                                            <th>
                                                ball
                                            </th>
                                            <th>
                                                4&#39;s
                                            </th>
                                            <th>
                                                6&#39;s</th>
                                            
                                            <th>
                                                &nbsp;</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            
                                            <td width="100">
                                                <asp:DropDownList ID="ddPName" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="ddPName_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="50">
                                                <asp:TextBox ID="TxtBatRun" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBatBall" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBat4" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBat6" runat="server"></asp:TextBox>
                                            </td>
                                           
                                            <td width="100">
                                                <asp:RadioButtonList ID="RbtnBat1" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Selected="True" Value="P">Playing</asp:ListItem>
                                                    <asp:ListItem Value="O">Out</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                           
                                        </tr>
                                       
                                    </tbody>
                                    <tbody>
                                        <tr>
                                            
                                            <td width="100">
                                                <asp:DropDownList ID="ddPName2" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="ddPName2_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBatRun2" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBatBall2" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBat42" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtBat62" runat="server"></asp:TextBox>
                                            </td>
                                           
                                            <td width="100">
                                                <asp:RadioButtonList ID="RbtnBat2" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Selected="True" Value="P">Playing</asp:ListItem>
                                                    <asp:ListItem Value="O">Out</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="7">
                                                &nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </caption>
        </div>
    </div>
   
     <div class="main-content">
        <div class="container mt-7">
            <!-- Table -->
            <caption>
                <h2 class="mb-5">
                    &nbsp;</h2>
                <div class="row">
                    <div class="col">
                        <div class="card shadow">
                            <div class="card-header border-0">
                                <h3 class="mb-0">
                                    Bowler Table</h3>
                            </div>
                            <div class="table-responsive">
                                <table class="table align-items-center table-flush" width="100%">
                                    <thead class="thead-light">
                                        <tr style="font-weight: bold">
                                            
                                            <th>
                                                Player Name
                                            </th>
                                            <th>
                                                Over</th>
                                            <th>
                                                run
                                            </th>
                                            <th>
                                                wicket
                                            </th>
                                            
                                            
                                            <th>
                                                Playing/not</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            
                                            <td width="100">
                                                <asp:DropDownList ID="ddBowName" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="ddBowName_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="txtOver" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="txtRun" runat="server"></asp:TextBox>
                                            </td>
                                            <td width="100">
                                                <asp:TextBox ID="TxtWicket" runat="server"></asp:TextBox>
                                            </td>
                                            
                                           
                                            <td width="100">
                                                <asp:RadioButtonList ID="RbtnBow" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="O">Over</asp:ListItem>
                                                    <asp:ListItem Selected="True" Value="R">Running</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                            
                                           
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="5" width="100">
                                                TOTAL_OVER&nbsp;&nbsp;
                                                <asp:TextBox ID="txtTotlOver" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="5">
                                                <asp:Button ID="BtnBowSave" runat="server" onclick="btnSave_Click" 
                                                    Text="Save" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </caption>
        </div>
    </div>
    <br />
    <br /></div>
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
