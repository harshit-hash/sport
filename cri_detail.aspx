<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="cri_detail, App_Web_tzymvrhd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <link href="css/Image_gallery/gallery.css" rel="stylesheet" type="text/css" />
    <script src="css/Image_gallery/gallery.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <div style="padding-top:100px">
    <div class="container" align="center" style="margin: 10px; padding: 50px;">
        <div class="row">
            <div class="col-lg col-md-2 col-xl col-sm">
            <nav class="" id="myScrollspy">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item" style="padding: 100px">
          <a class="nav-link active" href="schedule.aspx"   >Match Schedule</a>
        </li>
        <li class="nav-item" style="padding: 100px">
          <a class="nav-link active" href="AllTournament.aspx" >Tournament Detail</a>
        </li>
       
      </ul>
    </nav>
            </div>
          <div class="col-sm-8 col-lg-8 col-md-8 col-xl-8" style="background-color: #FFC723; width: 100%; height: 100%;color: #000000;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/ball.jpg" Width="50%" 
                    style="padding-top: 20px;" Height="40%" />
                <h1 style="text-decoration: underline; font-weight: bold; color: #000000;">
                    Cricket</h1>
                 Cricket is traditionally a bat-and-ball game. There are 125 countries who play cricket
                        across the globe. There are 11 players in each team and two teams play against each
                        other. A coin flip decides to bat or ball. There are many versions of cricket being
                        played like IPL , 20-20,Test Series, and ODI. Hence, cricket is the most popular and most played game
                        in India.
            </div>
        </div>
    </div>

  <!-- The four columns -->
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
