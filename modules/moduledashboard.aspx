<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="moduledashboard.aspx.cs" Inherits="hospitalproject.modules.moduledashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    
       <div class="container border p-1 card">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
            <a href="../dashBoard.aspx"><i class="fa fa-arrow-left text-black"></i></a>Modules</div>
        <div class="card-body border rounded-2 m-2 row">
         
            <a href="../modules/hospital.aspx" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-hospital-o"></i>
                <div class="mt-2"> Hospital</div></center>
            </a>
             <a href="../modules/consultant.aspx" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-archive"></i>
                <div class="mt-2"> Consultant/Charges</div></center>
            </a>
             
             <a href="../modules/disease.aspx" class="col-md-dashboard border p-3 ad">
                <center><i class="fa fa-2x fa-bed"></i>
                <div class="mt-2">Disease</div></center>
            </a>
            
            
           
        </div>
       
    </div>


</asp:Content>
