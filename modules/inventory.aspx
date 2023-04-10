<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="hospitalproject.modules.inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
       <div class="container border p-2 card">
        <div class="row m-0 border p-0">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
            <a href="moduledashboard.aspx"> <i class="fa fa-arrow-left text-black"></i></a>INVENTORY</div>
        <div class="col-md-12">
        <div class="row p-2">
             <div class="col-md-3">
       Product ID<br /><asp:TextBox ID="productid" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-3">
       Product Name<br /><asp:TextBox ID="productname" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="col-md-3">
      Purchase Date<br /><asp:TextBox ID="purchasedate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-3">
                          Quantity<asp:TextBox ID="quantity" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
            <div class="col-md-3">
                          Price per piece<asp:TextBox ID="priceperpiece" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
               <div class="col-md-3">
                          Total amount<asp:TextBox ID="totalamount" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
           
                   <div class="col-md-3"></div>
                        <div class="col-md-2 mt-1">
                            <br />
<asp:Button ID="save" runat="server" Text="Save" CssClass="btn w-100" />
                        </div>
                    </div>
              
            </div>
     

  
        </div>
        </div>
</asp:Content>
