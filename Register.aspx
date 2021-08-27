<%@ Page Title="SPORT.CGK" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel="icon" href="image/360_F_202276862_Bl20MC12CxPZAr781Sctf37otHIwSvBU.jpg" type="image/x-icon" />
    <title>Registration Form </title>
    <link href="css/register.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap%20min.css" rel="stylesheet" type="text/css" />
    <script src="css/bootstrap.min.js" type="text/javascript"></script>
    <script src="css/jquery.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager2" runat="server">
            </asp:ScriptManager>
     <div style="padding-top:100px">
    <div class="row" style="padding-top: 50px; padding-bottom: 100px">
        <div class="col-md-8 col-lg-6 col-sm-6 mx-auto p-0">
            <div class="card">
                <div class="login-box">
                    <div class="login-snip">
                        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1"
                            class="tab">Login</label>
                        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign
                            Up</label>
                        <div class="login-space">
                            <div class="login">
                                <div class="group">
                                    <label for="user" class="label">
                                        Username</label>
                                    <asp:TextBox ID="txtusername" runat="server" class="input" placeholder="Enter your username"
                                        MaxLength="20"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtusername"
                                        FilterType=" UppercaseLetters, LowercaseLetters, numbers">
                                    </asp:FilteredTextBoxExtender>
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">
                                        Password</label>
                                    <asp:TextBox ID="txtpassword" runat="server" class="input" placeholder="Enter your password"
                                        TextMode="Password" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="group">
                                    <input id="check" type="checkbox" class="check" checked>
                                    <label for="check">
                                        <span class="icon"></span>Keep me Signed in</label>
                                </div>
                                <div class="group">
                                    <asp:Button ID="btnsignin" runat="server" class="button" Text="Sign in" 
                                        onclick="btnsignin_Click"  />
                                </div>
                                <div class="hr">
                                </div>
                                <div class="foot">
                                    <a href="#">Forgot Password?</a>
                                </div>
                            </div>
                            <div class="sign-up-form">
                                <div class="group">
                                    <label for="user" class="label">
                                        Full name</label>
                                    <asp:TextBox ID="txtfname" class="input" runat="server" placeholder="Enter your Full name"
                                        MaxLength="20"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtfname"
                                        FilterType="UppercaseLetters, LowercaseLetters">
                                    </asp:FilteredTextBoxExtender>
                                </div>
                              
                                <div class="group">
                                    <label for="user" class="label">
                                        Username</label>
                                    <asp:TextBox ID="txtuser" class="input" runat="server" placeholder="Create your Username"
                                        MaxLength="20" Style="text-transform: lowercase"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtuser"
                                        FilterType=" UppercaseLetters, LowercaseLetters, numbers">
                                    </asp:FilteredTextBoxExtender>
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">
                                        Password</label>
                                    <asp:TextBox ID="txtpass" class="input" runat="server" placeholder="Create your password"
                                        TextMode="Password" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">
                                       Confirm Password</label>
                                    <asp:TextBox ID="txtComp" class="input" runat="server" placeholder="Confirm password"
                                        TextMode="Password" MaxLength="20"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1"
                                            runat="server" ErrorMessage="Not Matched" 
                                        ControlToCompare="txtComp" ForeColor="Red" ControlToValidate="txtpass"></asp:CompareValidator>
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">
                                        Email Id</label>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalidEmail"
                                        ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        CssClass="alert-dark"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txtemail" class="input" runat="server" placeholder="Enter your email id"
                                        MaxLength="50"></asp:TextBox>
                                </div>
                                <div class="group">
                                    <asp:Button ID="btnsubmit" runat="server" class="button" Text="Sign Up" OnClick="btnsubmit_Click" />
                                </div>
                                <div class="hr">
                                </div>
                               <%-- <div class="foot">
                                    <label for="tab-1">
                                        Already Member?</label>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
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
                            ImageUrl="~/image/Loading/Cricket ball.gif" Style="left: 45%; position: fixed; top: 40%"
                            ToolTip="Loading ..." />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
