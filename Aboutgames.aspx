<%@ Page Title="SPORT.CGK" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Aboutgames.aspx.cs" Inherits="Aboutgames" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg"
        type="image/x-icon" />
    <style>
        body
        {
            position: relative;
        }
        ul.nav-pills
        {
            top: 20px;
            position: fixed;
        }
        div.col-8 div
        {
            height: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div style="padding-top: 200px" align="center">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm col">
                            <div id="section1" class="bg-success" style="background-color: #FFFFFF">
                                <h1 style="text-decoration: underline overline">
                                    About Site</h1>
                                    <div style="width: 40%" align="center">
                                <p style="color: #000000; font-size: medium" align="left">
                                    This website is developed for playing Indoor and Outdoor games.</p>
                                <p style="color: #000000; font-size: medium" align="left">
                                    There are many sports available here like cricket, football, etc</p>
                                <p style="color: #000000; font-size: medium" align="left">
                                    You can check Score of active match of a particular tournament.</p>
                                <p style="color: #000000; font-size: medium" align="left">
                                    Here you can Register your team for the game you want(If any Tournament is active).
                                </p>
                                </div>
                            </div>
                            <div id="section2" class="bg-success">
                                 <div style="width: 40%" align="center">
                                <p style="color: #000000; font-size: medium" align="left"> For Rules, Entry Fees, Term & Condition, etc. of the Tournament please Check tournament Pamphlet..<asp:HyperLink
                                        ID="HyperLink1" runat="server" NavigateUrl="~/AllTournament.aspx" ForeColor="#3333FF">Click Here</asp:HyperLink>
                                    <p>
                            </div></div>
                          <%--  <div id="section3" class="bg-secondary">
                                <h1>
                                    Section 3</h1>
                                <p>
                                    Try to scroll this section and look at the navigation list while scrolling!</p>
                            </div>
                            <div id="section41" class="bg-danger">
                                <h1>
                                    Section 4-1</h1>
                                <p>
                                    Try to scroll this section and look at the navigation list while scrolling!</p>
                            </div>
                            <div id="section42" class="bg-info">
                                <h1>
                                    Section 4-2</h1>
                                <p>
                                    Try to scroll this section and look at the navigation list while scrolling!</p>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
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
