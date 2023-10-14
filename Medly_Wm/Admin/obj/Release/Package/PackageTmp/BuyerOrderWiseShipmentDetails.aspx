﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyerOrderWiseShipmentDetails.aspx.cs" Inherits="AdminAfforadbleApp.BuyerOrderWiseShipmentDetails" %>

<%@ Register TagPrefix="usc" TagName="Header" Src="~/Header.ascx" %>
 <%@ Register TagPrefix="usc2" TagName="Header2" Src="~/HeaderTop.ascx" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head id="Head1" runat="server">
        <meta charset="utf-8" />
        <title>Dashboard</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #2 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
        rel="stylesheet" type="text/css" />
   <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"
        type="text/css" />
    <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/select2/css/select2.min.css" rel="stylesheet"
        type="text/css" />
    <link href="../assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet"
        type="text/css" />
          <link href="../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
        rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/clockface/css/clockface.css" rel="stylesheet"
        type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
        rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
   
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="../assets/global/css/components-md.min.css" rel="stylesheet" id="style_components"
        type="text/css" />
    <link href="../assets/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />

     <link href="../assets/pages/css/profile.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="../assets/layouts/layout2/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/layouts/layout2/css/themes/blue.min.css" rel="stylesheet" type="text/css"
        id="style_color" />
    <link href="../assets/layouts/layout2/css/custom.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    </head>

 <body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-md">

    <usc2:Header2 ID="Header1" runat="server" />
    <div class="clearfix">
    </div>
    <!-- BEGIN HEADER -->
    <!-- END HEADER -->
    <!-- BEGIN HEADER & CONTENT DIVIDER -->
    <div class="clearfix">
    </div>
    <!-- END HEADER & CONTENT DIVIDER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <usc:Header ID="Header" runat="server" />
        <form id="f1" runat="server">
         <asp:Label runat="server" ID="lblContactTypeId" ForeColor="White" CssClass="label"
        Visible="false" Text="1"> </asp:Label>
         <asp:ScriptManager ID="SM" runat="server">
    </asp:ScriptManager>
        <!-- BEGIN SIDEBAR -->
        <!-- END SIDEBAR -->
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <!-- BEGIN CONTENT BODY -->
                  <div class="page-content">
                <!-- BEGIN PAGE HEADER-->
               
                <asp:UpdatePanel ID="UP" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-lg-12 col-xs-12 col-sm-12">
                                <div class="portlet light " style="height: 1300px; padding-left: 3px;">
                                  <div class="portlet-title">
                                <div class="caption font-green">
                                    <i class="icon-pin font-green"></i><span class="caption-subject bold uppercase" style=" font-size:15px">Buyer Order Wise Shipment Report</span>
                                </div>
                            </div>
                                     <div class="col-lg-12">
                            <div class="col-lg-3">
                                 <div class="form-group">
                                                        <label for="form_control_1" style="    font-weight: bold;">
                                                            Report Type</label>
                                                        <asp:DropDownList ID="ddlReportType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlReportType_OnSelectedIndexChanged"
                                                            Class="form-control select2">
                                                             <asp:ListItem Text="Shipment Wise Summary" Value="3"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>

                                
                            </div>
                            <div class="col-lg-3" id="AccountingYear" runat="server" visible="false">
                                <div class="form-group">
                                    <label style="    font-weight: bold;">
                                        Accounting Year</label>
                                    <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" Width="110px" MaxLength="4"></asp:TextBox>
                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server"
                                        FilterType="Numbers" TargetControlID="txtYear" />
                                </div>
                            </div>
                            <div class="col-lg-3" id="BuyerCode" runat="server" visible="true">

                             <div class="form-group">
                                                        <label for="form_control_1" style="    font-weight: bold;">
                                                            Buyer Code</label>
                                                        <asp:DropDownList ID="ddlBuyerCode" runat="server" AutoPostBack="true" OnSelectedIndexChanged="buyer_code"
                                                            Class="form-control select2">
                                                        </asp:DropDownList>
                                                    </div>

                               
                            </div>
                            <div class="col-lg-2" id="Months" runat="server" visible="false" >
                                <div class="form-group">
                                 <label style="    font-weight: bold;">
                                        Months </label>
                                    <asp:CheckBoxList ID="chkMonths" runat="server" RepeatColumns="4" Width="220px">
                                        <asp:ListItem Text="Apr" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="Jul" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="Aug" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="Sep" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="Oct" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="Nov" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="Dec" Value="12"></asp:ListItem>
                                        <asp:ListItem Text="Jan" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Feb" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Mar" Value="3"></asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group" id="ExcNo" runat="server" visible="true">
                                    <asp:TextBox ID="txtfabcontrast" runat="server" Width="100%" Class="form-control" placeholder="Find ExcNo"
                                        onkeyup="SearchEmployees(this,'#chkExcNo');"></asp:TextBox>
                                    <div style="overflow-y: scroll; height: 100px">
                                        <div class="panel panel-default" style="width: 350px">
                                            <asp:CheckBoxList ID="chkExcNo" CssClass="chkChoice1" runat="server" RepeatLayout="Table"
                                                Style="overflow: auto">
                                            </asp:CheckBoxList>
                                            <asp:DropDownList ID="ddlExcNo" runat="server" Class="form-control select2" Width="100%"
                                                Visible="false">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="form-group" id="Date" runat="server" visible="true">
                                    <asp:Label ID="lblDate" runat="server" Text="Order Date" Width="110px" Style="font-weight: bold"></asp:Label>
                                    <br />
                                    <asp:CheckBox ID="chkUseDate" runat="server" />
                                </div>
                            </div>

                           
                            <div class="col-lg-1" style="display:none">
                                <br />
                                <asp:Button ID="btnExcel" runat="server" CssClass="btn btn-primary" Text="Excel"
                                    OnClick="btnExcel_OnClick" Width="125px" />
                            </div>
                            <div class="col-lg-1" style="display:none">
                                <br />
                                <asp:Button ID="btn" runat="server" Text="Print" CssClass="btn btn-info" OnClientClick="ReportPrint()"
                                    Width="125px" />
                            </div>

                        </div>
                         <div class="col-lg-12">
                         <div class="col-lg-4" id="FromDate" runat="server">
                                                    <div class="form-group">
                                                        <label for="form_control_1" style="    font-weight: bold;">
                                                            From Date</label>
                                                        <div class="input-group input-medium date date-picker" data-date-format="dd/mm/yyyy"
                                                            data-date-viewmode="years">
                                                            <span class="input-group-btn">
                                                                <button class="btn default" type="button">
                                                                    <i class="fa fa-calendar"></i>
                                                                </button>
                                                            </span> <asp:TextBox CssClass="form-control" ID="txtFromDate" runat="server" Width="212px"
                                                                autocomplete="off"></asp:TextBox>
                                                           
                                                        </div>
                                                    </div>
                                                </div>
                                             
                                                <div class="col-lg-4" id="ToDate" runat="server">
                                                    <div class="form-group">
                                                        <label for="form_control_1" style="    font-weight: bold;">
                                                            To Date</label>
                                                        <div class="input-group input-medium date date-picker" data-date-format="dd/mm/yyyy"
                                                            data-date-viewmode="years">
                                                            <span class="input-group-btn">
                                                                <button class="btn default" type="button">
                                                                    <i class="fa fa-calendar"></i>
                                                                </button>
                                                            </span><asp:TextBox CssClass="form-control" ID="txtToDate" runat="server" Width="212px"
                                                                autocomplete="off"></asp:TextBox>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                            
                            <div class="col-lg-4">
                              
                                <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-success" Text="Search"
                                    OnClick="btnSearch_OnClick" Width="125px" />
                            </div>
                        </div>
                        <div id="Excel" runat="server">
                     
                            <asp:GridView ID="gvBuyerOrderSheet" CssClass="Gridview" runat="server" AutoGenerateColumns="False"
                                ShowHeader="false">
                                <HeaderStyle CssClass="headerstyle" />
                                <Columns>
                                    <asp:BoundField HeaderText="Column1" DataField="Column1" />
                                    <asp:BoundField HeaderText="Column2" DataField="Column2" />
                                    <asp:BoundField HeaderText="Column3" DataField="Column3" />
                                    <asp:BoundField HeaderText="Column4" DataField="Column4" />
                                    <asp:BoundField HeaderText="Column5" DataField="Column5" />
                                    <asp:BoundField HeaderText="Column6" DataField="Column6" />
                                    <asp:BoundField HeaderText="Column7" DataField="Column7" />
                                    <asp:BoundField HeaderText="Column8" DataField="Column8" />
                                    <asp:BoundField HeaderText="Column9" DataField="Column9" />
                                    <asp:BoundField HeaderText="Column10" DataField="Column10" />
                                    <asp:ImageField DataImageUrlField="Column11" HeaderText="Column11" ItemStyle-Height="1%"
                                        ItemStyle-Width="1%" />
                                </Columns>
                            </asp:GridView>
                      
                          
                            <asp:GridView ID="gvBuyerOrderQty" runat="server" CssClass="myGridStyle1" Width="100%"
                                AutoGenerateColumns="true">
                                <HeaderStyle BackColor="White" />
                                <EmptyDataRowStyle HorizontalAlign="Center" BackColor="White" ForeColor="Black" />
                                <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast"
                                    NextPageText="Next" PreviousPageText="Previous" />
                                <Columns>
                                </Columns>
                                <FooterStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                                <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                            </asp:GridView>
                            

                            <div style="width: 100%;     padding-top: 10px;  overflow-x: scroll">
                             <asp:GridView ID="gvBuyerOrder" runat="server"  CssClass="table table-striped table-bordered table-hover" EmptyDataText="No Records Found"  ShowFooter="true"
                                Width="100%" OnPageIndexChanging="gvBuyerOrder_PageIndexChanging" AutoGenerateColumns="True" AllowPaging="True" PagerSettings-FirstPageText="First"
                                            PagerSettings-LastPageText="Last" PagerSettings-Mode="NumericFirstLast" PagerSettings-PageButtonCount="4"
                                             PageSize="5">
                                <HeaderStyle BackColor="White" />
                                <EmptyDataRowStyle HorizontalAlign="Center" BackColor="White" ForeColor="Black" />
                                <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast"
                                    NextPageText="Next" PreviousPageText="Previous" />
                                <Columns>
                                    <%--<asp:BoundField HeaderText="OrderType " DataField="OrderType" />--%>
                                </Columns>
                                <FooterStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                                <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                            </asp:GridView>
                            </div>
                            <asp:GridView ID="gvSketches" CssClass="Gridview" runat="server" AutoGenerateColumns="False"
                                ShowHeader="false">
                                <HeaderStyle CssClass="headerstyle" />
                                <Columns>
                                    <asp:BoundField HeaderText="ExcNo" DataField="ExcNo" />
                                    <asp:BoundField HeaderText="StyleNo" DataField="StyleNo" />
                                    <asp:ImageField DataImageUrlField="Sketch" HeaderText="Image" />
                                </Columns>
                            </asp:GridView>
                        </div>
                                  
                                </div>
                            </div>
                            
                        </div>
                         
                        
                       
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <!-- END CONTENT BODY -->
        </div>
        <!-- END CONTENT -->
        <!-- BEGIN QUICK SIDEBAR -->
        <!-- END QUICK SIDEBAR -->
        </form>
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <div class="page-footer">
        <div class="page-footer-inner">
            2021 &copy; Bigdbiz Solutions Pvt Ltd
            <div class="scroll-to-top">
                <i class="icon-arrow-up"></i>
            </div>
        </div>
        <!-- END FOOTER -->
        <!-- BEGIN QUICK NAV -->
        <!-- END QUICK NAV -->
        <!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<script src="../assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
          <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
            type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
            type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="../assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        
            <script src="../assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        
            <script src="../assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
        <script src="../assets/pages/scripts/charts-amcharts.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->

           <script src="../assets/global/plugins/moment.min.js" type="text/javascript"></script>

    <script src="../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js"
        type="text/javascript"></script>
    <script src="../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
    <script src="../assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"
        type="text/javascript"></script>
    <script src="../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"
        type="text/javascript"></script>
    <script src="../assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>

        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="../assets/pages/scripts/components-select2.min.js" type="text/javascript"></script>
        <script src="../assets/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
            type="text/javascript"></script>
        <script src="../assets/pages/scripts/table-datatables-rowreorder.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <script src="../assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
            type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <script src="../assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
         <script src="../assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->

        <script src="../assets/pages/scripts/table-datatables-managed.min.js" type="text/javascript"></script>
        <script src="../assets/pages/scripts/profile.min.js" type="text/javascript"></script>
        <script src="../assets/pages/scripts/timeline.min.js" type="text/javascript"></script>
</body>

</html>
