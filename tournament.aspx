<%@ page title="SPORT.CGK" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="tournamenr, App_Web_tjv0ljbg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <link href="css/tournament%20bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/tournament.css" rel="stylesheet" type="text/css" />
    <style>
        /* vietnamese */
        @font-face
        {
            font-family: 'Questrial';
            font-style: normal;
            font-weight: 400;
            src: url(https://fonts.gstatic.com/s/questrial/v13/QdVUSTchPBm7nuUeVf70sSFlq20.woff2) format('woff2');
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
        }
        /* latin-ext */
        @font-face
        {
            font-family: 'Questrial';
            font-style: normal;
            font-weight: 400;
            src: url(https://fonts.gstatic.com/s/questrial/v13/QdVUSTchPBm7nuUeVf70sCFlq20.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }
        /* latin */
        @font-face
        {
            font-family: 'Questrial';
            font-style: normal;
            font-weight: 400;
            src: url(https://fonts.gstatic.com/s/questrial/v13/QdVUSTchPBm7nuUeVf70viFl.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <%--
    <div style="padding-top: 50px; width: 100%;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/bg.jpg" Width="1518px" Height="900px"
            BorderWidth="10px" />
        <div class="container">--%>
            <div style="padding-top: 100px">
                <br>
                <table class="tablee" style="padding: 10px; background-image: none; background-color: #FFC723;"
                    align="center" width="100%">
                    <tr>
                        <td colspan="2">
                            <div class="card" style="width: 200px;">
                                <img class="card-img-top" src="image/tbtn.jpg" alt="Badminton" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Badminton</h4>
                                    <p class="card-text">
                                    </p>
                                    <a href="Bad_detail.aspx" class="btn btn-primary">See Detail</a>
                                </div>
                            </div>
                        </td>
                        <td colspan="2">
                            <div class="card" style="width: 200px;">
                                <img class="card-img-top" src="image/ball.jpg" alt="Cricket" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Cricket</h4>
                                    <p class="card-text">
                                    </p>
                                    <a href="cri_detail.aspx" class="btn btn-primary">See Detail</a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="card" style="width: 200px;">
                                <img class="card-img-top" src="image/tfb.jpg" alt="Football" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Football</h4>
                                    <p class="card-text">
                                    </p>
                                    <a href="Foot_detail.aspx" class="btn btn-primary">See Detail</a>
                                </div>
                            </div>
                        </td>
                        <td align="center" colspan="3">
                            <div class="card" style="width: 200px;">
                                <img class="card-img-top" src="image/tvb.jpg" alt="Volleyball" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Volleyball</h4>
                                    <p class="card-text">
                                    </p>
                                    <a href="Volley_detail.aspx" class="btn btn-primary">See Detail</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
               
                <br>
                <br>
                <br>
                <br>
                <%--        </div>
    </div>--%></div>
            <asp:UpdateProgress ID="updtProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <div style="font-size: 15px; z-index: 9999999; right: 0px; left: 0px; width: 100%;
                        position: fixed; top: 0px; height: 100%; background-color: #d4d0c8; text-align: center;
                        filter: alpha(opacity=70); xindex: -1; opacity: 0.7">
                        <asp:Image ID="imgUpdateProgress" runat="server" AlternateText="Processing Please Wait ..."
                            ImageUrl="~/image/Loading/Cricket ball.gif" Style="left: 45%; position: fixed;
                            top: 40%" ToolTip="Loading ..." />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
