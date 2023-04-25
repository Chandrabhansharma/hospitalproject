<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="hospitalproject.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border p-1 card">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">DashBoard</div>
        <div class="card-body border rounded-2 m-2 row">
            
            <a href="../modules/moduledashboard.aspx" id="module2" runat="server" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-gears"></i>
                <div class="mt-2"> Modules</div></center>
            </a>
             <a href="../opd/opddashboard.aspx" id="opd2" runat="server" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-stethoscope"></i>
                <div class="mt-2"> OPD</div></center>
            </a>
        </div>
    </div>
</asp:Content>
