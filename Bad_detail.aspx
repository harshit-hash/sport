<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="cri_detail, App_Web_tjv0ljbg" %>

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
            <div class="col-sm-4 col-lg-4 col-col-md-4 col-xl-4">
            <nav class="" id="myScrollspy">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item" style="padding: 100px">
          <a class="nav-link active" href="schedule.aspx">Match Schedule</a>
        </li>
        <li class="nav-item" style="padding: 100px">
          <a class="nav-link active" href="AllTournament.aspx" >Tournament Detail</a>
        </li>
       
      </ul>
    </nav>
            </div>
            <div class="col-sm-8 col-lg-8 col-md-8 col-xl-8" style="background-color: #FFC723; width: 100%; height: 100%;color: #000000;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/tbtn.jpg" Width="80%" 
                    style="padding-top: 20px;" Height="70%" />
                <h1 style="text-decoration: underline; font-weight: bold; color: #000000;" >
                    Badminton</h1>
               Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. ... Points are scored by striking the shuttlecock with the racquet and landing it within the opposing side's half of the court. Each side may only strike the shuttlecock once before it passes over the net.
            </div>
        </div>
    </div>

  <!-- The four columns -->
  
 <%-- <div class="container" style="background-color: #F8F9FE; padding-bottom: 50px" align="center">
  <div class="columnnn" style="background-color: #aFFFCf">
   <h3>G</h3>
   <h3>A</h3>
   <h3>L</h3>
   <h3>L</h3>
   <h3>E</h3>
   <h3>R</h3>
   <h3>Y</h3>
  </div>
<div class="row" style="background-color: #38736B; padding-bottom: 0px; height :250px" >
  <div class="columnn">
    <img src="image/football1.jpg" alt="Nature" style="width:100%" 
          onclick="myFunction(this);">
  </div>
  <div class="columnn">
    <img src="image/football.jpg" alt="Snow" style="width:100%" 
          onclick="myFunction(this);">
  </div>
  <div class="columnn">
    <img src="image/cricket%20stadium.jpg" alt="Mountains" style="width:100%" 
          onclick="myFunction(this);">
  </div>
  <div class="columnn">
    <img src="image/cricket.jpg" alt="Lights" style="width:100%" 
          onclick="myFunction(this);">
          <div align="right" style="padding: 20px">
    <asp:Button ID="btnDetail" runat="server" Text="See More" BorderStyle="Ridge" 
                  Height="40px" Width="100px" BackColor="Black" BorderColor="#FFFFCC" 
                  Font-Bold="True" Font-Size="Medium" ForeColor="#FFFFCC" 
                  PostBackUrl="~/Gallery.aspx"   />
    </div>
  </div>
  
</div>

<div class="containerr">
  <span onclick="this.parentElement.style.display='none'" class="closebtnn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>
</div>--%>
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
