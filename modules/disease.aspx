<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="disease.aspx.cs" Inherits="hospitalproject.modules.disease" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    <div class="container border p-2 card ">
        <div class="row m-0 border p-0">
            <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
                <a href="dashboard.aspx"><i class="fa fa-arrow-left text-black"></i></a>Disease
            </div>
            <div class="col-md-12">
                <div class="row p-2">
                    <!--name-->
                    <div class="col-md-3">
                       Disease Name</div><div class="col-md-3">
                        <asp:DropDownList ID="diseasename" runat="server" CssClass="form-control" required="diseasename"></asp:DropDownList>
                    </div>
                     <div class="col-md-3">
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn w-25 btn-success " />
                         </div>
                    <div class="col-md-12"></div>
                   

                </div>
                
        </div>
</div>
        </div>
</asp:Content>
