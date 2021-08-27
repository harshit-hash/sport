<%@ Page Title="SPORT.CGK" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title title="SPORT.CGK">SPORT.CGK</title>
    <link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="css/home/WinLoss_2.css" rel="stylesheet" type="text/css" />
    <link href="css/home/WinLoss.css" rel="stylesheet" type="text/css" />
    <style>
        /* Make the image fully responsive */


        .t1 {
            width: 200px;
            color: #808080;
        }

        .style1 {
            width: 100%;
            background-color: #FFC723;
        }

        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="container">
                <div id="demo" class="carousel slide" data-ride="carousel-item">
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                        <li data-target="#demo" data-slide-to="3"></li>
                        <li data-target="#demo" data-slide-to="4"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="image/cricket%20stadium.jpg" alt="Cricket" width="100%" height="700px">
                            <div class="carousel-caption">
                                <h3 style="color: #FFFFFF">CRICKET</h3>
                                <p>
                                </p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="image/football.jpg" alt="FOOTBALL" width="100%" height="700px">
                            <div class="carousel-caption">
                                <h3 style="color: #FFFFFF">FOOTBALL</h3>

                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="image/volleyball-with-net-1.jpg" alt="VOLLEYBALL" width="100%" height="700px">
                            <div class="carousel-caption">
                                <h3 style="color: #FFFFFF">VOLLEYBALL</h3>

                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="image/m_blog-common-volleyball-injuries-8-17_optimized.jpg" alt="New York"
                                width="100%" height="700px">
                            <div class="carousel-caption">
                                <h3 style="color: #FFFFFF">VOLLEYBALLk</h3>

                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="image/cricket.jpg" alt="Cricket" width="100%" height="700px">
                            <div class="carousel-caption">
                                <h3 style="color: #FFFFFF">CRICKET</h3>

                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#demo" data-slide="prev" style="position: absolute">
                        <span class="carousel-control-prev-icon"></span></a><a class="carousel-control-next"
                            href="#demo" data-slide="next" style="position: absolute"><span class="carousel-control-next-icon"></span></a>
                </div>
            </div>
            <div style="background-color: #CCCCCC; width: 100%; height: 10%; margin-top: 10px; margin-bottom: 100px; color: #000000;"
                align="center">
                Game-
                        <asp:DropDownList ID="ddGame" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddGame_SelectedIndexChanged">
                        </asp:DropDownList>
                Tournament-
                        <asp:DropDownList ID="ddTourn" runat="server">
                        </asp:DropDownList>
                <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" BackColor="#3E7D71"
                    Font-Bold="True" ForeColor="White" Width="100px" />
            </div>
            <%-- for win loss --%>
            <div>
                <div id="Div1" class="hfeed site">
                    <header id="masthead" class="site-header clearfix">

                        <div id="Div2" class="site-main">
                            <div id="Div3" class="content-area">
                                <div id="Div4" class="site-content" role="main">
                                    <div id="Div5" class="entry post-2 page type-page status-publish hentry">
                                        <div class="entry-content">
                                            <div class="vc_row wpb_row vc_row-fluid">
                                                <div class="row">
                                                    <div class="wpb_column vc_column_container vc_col-sm-12">
                                                        <div class="vc_column-inner">
                                                            <div class="wpb_wrapper">
                                                                <div class="posts-list-wrapper  latest-results">
                                                                    <div class="list-header">
                                                                        <div class="list-title">
                                                                            <h3>Latest results</h3>
                                                                        </div>
                                                                    </div>
                                                                    <div class="posts-list latest-match-result   latest-results" data-contents-per-item="1" data-width="1024" data-height="1024" data-stagepadding="0" data-margin="0" data-full-width="" data-center="" data-loop="">
                                                                        <div class="entry latest-match-result post-504 azsc_match type-azsc_match status-publish has-post-thumbnail hentry">
                                                                            <div class="entry-data">
                                                                                <div class="entry-header">
                                                                                    <h2 class="entry-title"><a href="http://azexo.com/sportak/match/best-of-the-best-match/" rel="bookmark">Best of the best match</a></h2>
                                                                                    <div class="entry-meta">
                                                                                        <div class="match-date-time"><span class="date">
                                                                                            <asp:Label ID="LblDate" runat="server" Text=""></asp:Label></span><%--<span class="time">7:00 </span>--%></div>
                                                                                        <div class="match-info">
                                                                                            <div class="team1 win">

                                                                                                <div class="name">
                                                                                                    <asp:Label ID="lblWinTName" runat="server" Text=""></asp:Label></div>
                                                                                            </div>
                                                                                            <div class="match-score">
                                                                                                <div class="score">Score</div>
                                                                                                <div class="data team1">
                                                                                                    <div class="team1 win">
                                                                                                        <asp:Label ID="lblWinScr" runat="server" Text=""></asp:Label>/<asp:Label ID="LblWinWikt" runat="server" Text=""></asp:Label></div>
                                                                                                    <div class="vs">VS</div>
                                                                                                    <div class="team2 loss">
                                                                                                        <asp:Label ID="lblLossScr" runat="server" Text=""></asp:Label>/<asp:Label ID="LblLossWikt" runat="server" Text=""></asp:Label></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="team2 loss">

                                                                                                <div class="name">
                                                                                                    <asp:Label ID="lblLossTName" runat="server" Text=""></asp:Label></div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>


                                                                                <div class="entry-summary">
                                                                                    See The Match Result... &hellip;               
                                                                                </div>
                                                                                <!-- .entry-summary -->

                                                                                <div class="entry-footer">
                                                                                    <div class="entry-more">
                                                                                        <asp:Button ID="btnMR" runat="server" Text="Match Detail"
                                                                                            OnClick="btnMR_Click"></asp:Button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!-- #post -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg col-md col-xl col-sm" style="color: #000000">

                    <table class="style1" style="border: 20px solid #FFC723;">
                        <tr>
                            <td>
                                <center>
                                    <table class="" style="border-collapse: separate; border-spacing: 10px;">
                                        <tr>
                                            <%-- <td style="background-color: #ffffff;" width="600px" height="50px" align="left">
                                        NEXT MATCH  
                                            <span class="boxed2" style="height: 100px">
                                               <div class="container"> <div class="row">
                                                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label> VS <asp:Label ID="Label2"
                                                       runat="server" Text=""></asp:Label></div></div>
                                            </span>
                                        </td>--%>
                                            <td style="color: #FFFFFF" align="right" width="700px" height="100px">
                                                <asp:GridView ID="gvMDate" runat="server" AutoGenerateColumns="False" BackColor="#404040"
                                                    Font-Bold="False" Font-Names="Arial,Helvetica,sans-serif" BorderStyle="Solid"
                                                    BorderWidth="2px" BorderColor="White" EditRowStyle-BorderColor="White" EditRowStyle-BorderStyle="Solid"
                                                    EditRowStyle-BorderWidth="2px" EmptyDataRowStyle-BorderStyle="Solid" EmptyDataRowStyle-BorderColor="White"
                                                    EmptyDataRowStyle-BorderWidth="2px" HeaderStyle-BorderStyle="Solid">
                                                    <Columns>
                                                        <asp:BoundField HeaderText="Match Date" DataField="matchdate" ItemStyle-Width="150px"
                                                            ItemStyle-Height="50px" ControlStyle-BorderStyle="Solid" ControlStyle-BorderColor="White"
                                                            ControlStyle-BorderWidth="2px" ItemStyle-BorderStyle="Solid">
                                                            <ItemStyle Height="50px" Width="150px" BorderStyle="Solid" BorderWidth="1px" />
                                                        </asp:BoundField>
                                                        <asp:BoundField HeaderText="Team-1" DataField="team1" ItemStyle-Width="400px" ControlStyle-BorderStyle="Solid">
                                                            <ItemStyle Width="400px" BorderStyle="Solid" BorderWidth="1px" />
                                                        </asp:BoundField>
                                                        <asp:BoundField HeaderText="VS" DataField="Vs" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-ForeColor="#FFC823" HeaderStyle-ForeColor="#FFC823" HeaderStyle-HorizontalAlign="Center"
                                                            HeaderStyle-VerticalAlign="NotSet">
                                                            <HeaderStyle ForeColor="#FFC823" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" BorderStyle="Solid"
                                                                BorderWidth="1px" BorderColor="White" />
                                                        </asp:BoundField>
                                                        <asp:BoundField HeaderText="Team-2" DataField="team2" ItemStyle-Width="400px">
                                                            <ItemStyle Width="400px" BorderStyle="Solid" BorderWidth="1px" />
                                                        </asp:BoundField>
                                                    </Columns>
                                                    <HeaderStyle CssClass="thead-light" BackColor="Black" Font-Bold="True" Font-Size="Medium" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <%--point Table--%>
            <div id="tbC" class="main-content" runat="server">
                <div class="container mt-7">
                    <!-- Table -->
                    <div class="row">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header border-0">
                                    <h3 class="mb-0">Point tables</h3>
                                </div>
                                <div class="table-responsive">
                                    <table id="tblC" class="table align-items-center table-flush">
                                        <tbody>
                                            <tr>
                                                <td align="center" colspan="7">
                                                    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" Width="100%">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="No.">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1 %>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="teamname" HeaderText="Team Name" />
                                                            <asp:BoundField DataField="played" HeaderText="Played" />
                                                            <asp:BoundField DataField="win" HeaderText="Win" />
                                                            <asp:BoundField DataField="loss" HeaderText="Loss" />
                                                            <asp:BoundField DataField="runr" HeaderText="Run Rate" />
                                                            <asp:BoundField DataField="point" HeaderText="Point" />
                                                        </Columns>
                                                        <HeaderStyle CssClass="thead-light" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>


                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



             <div id="tblB" class="main-content">
                <div class="container mt-7">
                    <!-- Table -->
                    <div class="row">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header border-0">
                                    <h3 class="mb-0">Point tables</h3>
                                </div>
                                <div class="table-responsive">
                                    


                                    <table id="tbB" class="table align-items-center table-flush">
                                        <tbody>
                                            <tr>
                                                <td align="center" colspan="7">
                                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Width="100%">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="No.">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1 %>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Player Name" HeaderText="Team Name" />
                                                            <asp:BoundField DataField="played" HeaderText="Played" />
                                                            <asp:BoundField DataField="win" HeaderText="Win" />
                                                            <asp:BoundField DataField="loss" HeaderText="Loss" />
                                                            <asp:BoundField DataField="point" HeaderText="Point" />
                                                        </Columns>
                                                        <HeaderStyle CssClass="thead-light" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="row align-items-center justify-content-xl-between">
                    <div class="col-xl-6 m-auto text-center">
                        <div class="copyright">
                            <p>Create by Hemant D</p>
                        </div>
                    </div>
                </div>
            </footer>
            <%--for page loading--%>
            <asp:UpdateProgress ID="updtProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <div style="font-size: 15px; z-index: 9999999; right: 0px; left: 0px; width: 100%; position: fixed; top: 0px; height: 100%; background-color: #d4d0c8; text-align: center; filter: alpha(opacity=70); xindex: -1; opacity: 0.7">
                        <asp:Image ID="imgUpdateProgress" runat="server" AlternateText="Processing Please Wait ..."
                            ImageUrl="~/image/Loading/Cricket ball.gif" Style="left: 45%; position: fixed; top: 40%"
                            ToolTip="Loading ..." />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
