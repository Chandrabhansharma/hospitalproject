<%@ Page Title="" Language="C#" MasterPageFile="~/opd/opd.master" AutoEventWireup="true" CodeBehind="opddashboard.aspx.cs" Inherits="hospitalproject.opd.opddashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
        <div class="container border p-1 card">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
              <a href="../dashBoard.aspx"><i class="fa fa-arrow-left text-black"></i></a>OPD</div>
        <div class="card-body border rounded-2 m-2 row">
            
          <a href="opdregistration.aspx" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-file-text-o"></i>
                <div class="mt-2">OPD Registration</div></center>
            </a>
            <a href="prescription.aspx" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-file-text-o"></i>
                <div class="mt-2">Prescription</div></center>
            </a>
            
        </div>
       
    </div>
</asp:Content>