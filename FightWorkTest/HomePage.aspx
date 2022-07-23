<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FightWorkTest.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LAZADA </title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script src="Scripts/popper.min.js"></script>

</head>
<body>
    <style>
        body {
            background: #e7e8ec;
            color: #999;
            font-size: 12px;
            font-family: system-ui,-apple-system,BlinkMacSystemFont,Helvetica Neue,Helvetica,sans-serif;
            -webkit-text-size-adjust: none;
        }

        card-platform-campaign-banner {
            margin: 0 auto !important;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 99999999;
            background-color: #e2e2e2;
            padding-top: 0 !important;
        }

        .lzd-header {
            -webkit-tap-highlight-color: transparent;
            line-height: 1.15;
            color: #999;
            font-size: 12px;
            -webkit-text-size-adjust: none;
            margin: 0;
            padding: 0;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            box-sizing: content-box;
            width: 100%;
            height: 115px;
        }

        .top-links-item.grey {
            color: #9e9e9e;
        }

        .header-content {
            -webkit-tap-highlight-color: transparent;
            background: rgba(0,0,0,.03);
            line-height: 1.15;
            color: #999;
            font-size: 12px;
            -webkit-text-size-adjust: none;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            text-align: right;
            padding: 0;
            box-sizing: content-box;
            width: 1188px;
            min-width: 1188px;
            margin: 0 auto;
        }

        .lzd-links-bar {
            -webkit-tap-highlight-color: transparent;
            line-height: 1.15;
            color: #999;
            font-size: 12px;
            -webkit-text-size-adjust: none;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: content-box;
            position: relative;
            background: rgba(0,0,0,.03);
            min-width: 1006px;
            height: 34px;
            text-align: right;
            transition: height .25s linear,zIndex 0s linear .25s;
            z-index: 310;
        }

        .links-list {
            -webkit-tap-highlight-color: transparent;
            line-height: 1.15;
            color: #999;
            font-size: 12px;
            -webkit-text-size-adjust: none;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            text-align: right;
            padding: 0;
            box-sizing: content-box;
            width: 1188px;
            min-width: 1188px;
            margin: 0 auto;
            margin: 0 auto;
        }

        .lzd-logo-bar {
            -webkit-tap-highlight-color: transparent;
            line-height: 1.15;
            color: #999;
            font-size: 12px;
            -webkit-text-size-adjust: none;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            padding-top: 11px;
            height: 75px;
        }

        .top-links-item {
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            margin: 0;
            box-sizing: content-box;
            position: relative;
            display: inline-block;
            font-size: 12px;
            height: 25px;
            line-height: 25px;
            text-align: left;
            white-space: nowrap;
            cursor: pointer;
            color: #9e9e9e;
            transition: color .2s;
            padding: 0 17px;
        }

        .top-links-item-orange {
            -webkit-tap-highlight-color: transparent;
            -webkit-text-size-adjust: none;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            margin: 0;
            box-sizing: content-box;
            position: relative;
            display: inline-block;
            font-size: 12px;
            height: 25px;
            line-height: 25px;
            text-align: left;
            white-space: nowrap;
            cursor: pointer;
            transition: color .2s;
            padding: 0 17px;
            color: #0f1568;
        }

        .top-links-item-grey {
            margin: 0;
            box-sizing: content-box;
            position: relative;
            display: inline-block;
            font-size: 12px;
            height: 25px;
            line-height: 25px;
            text-align: left;
            white-space: nowrap;
            cursor: pointer;
            transition: color .2s;
            padding: 0 17px;
            color: #9e9e9e
        }

        .logo-bar-content {
            -webkit-tap-highlight-color: transparent;
            line-height: 1.15;
            color: #999;
            font-size: 12px;
            -webkit-text-size-adjust: none;
            font-family: Roboto-Regular,'Helvetica Neue',Helvetica,Tahoma,Arial,Sans-serif;
            padding: 0;
            box-sizing: content-box;
            width: 1188px;
            min-width: 1188px;
            margin: 0 auto;
            position: relative;
        }

        .search-box__input--O34g {
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            box-sizing: border-box;
            padding: 13px 19px;
            font-family: Roboto-Regular,Helvetica,sans-serif;
            font-size: 14px;
            line-height: 1;
            letter-spacing: 0;
            color: #212121;
            border: none;
            outline: none;
            background: #eff0f5;
            box-shadow: none;
            border-radius: 2px;
        }

        .lzd-logo-content img {
            color: #000;
            margin: 0;
            padding: 0;
            border: none;
            vertical-align: middle;
            border-style: none;
            box-sizing: content-box;
            width: 127px;
            height: 40px;
        }

        .card-banner-slider-list {
            width: 988px;
            height: 344px;
            margin-left: 200px;
        }
    </style>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="hp-mod-card card-platform-campaign-banner J_CampaignBanner" data-module-id="campaignBanner" style="background: #01bfa6">
            <asp:Image ID="ImageTop" ImageUrl="Images/img toppage.jpg" runat="server" />
        </div>
        <div class="lzd-header lzd-header-lite" data-spm="header">
            <div class="lzd-links-bar">
                <div class="links-list header-content TH en">
                    <span class="top-links-item" style="visibility: hidden;"></span>
                    <span class="top-links-item-orange" style="color: #0f1568">SAVE MORE ON APP
                    </span>
                    <span class="top-links-item" style="color: #0f1568">SELL ON LAZADA
                    </span>
                    <span class="top-links-item-grey ">TRACK MY ORDER
                    </span>
                    <span class="top-links-item-grey">LOGIN
                    </span>
                    <span class="top-links-item-grey">SIGN UP
                    </span>
                    <span class="top-links-item-grey">เปลี่ยนภาษา
                    </span>
                </div>
                <div class="lzd-logo-bar">
                    <div class="logo-bar-content header-content">
                        <div class="lzd-logo-content">

                            <asp:Image ID="Image1" ImageUrl="Images/lzd logo.png" runat="server" />
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" CssClass="search-box__input--O34g"></asp:TextBox>
                            <asp:Image ID="Image2" ImageUrl="Images/imggift.jpg" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <asp:Menu ID="Menu1" runat="server"></asp:Menu>
            <div class="card-banner-slider-list">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:AdRotator ID="AdRotator1" Width="988px" Height="344px" runat="server" AdvertisementFile="~/slider.xml" />
                        <asp:Timer ID="Timer1" runat="server" Interval="2000"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>


    </form>
</body>
</html>
