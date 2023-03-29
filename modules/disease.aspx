<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="disease.aspx.cs" Inherits="hospitalproject.modules.disease" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    <div class="container border p-2 card ">
        <div class="row m-0 border p-0">
            <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
                <a href="moduledashboard.aspx"><i class="fa fa-arrow-left text-black"></i></a>DISEASE
            </div>
            <div class="col-md-12">
                <div class="row p-2">
                    <!--name-->
                    <div class="col-md-3">
                       Disease
                        <asp:TextBox ID="diseasen" runat="server" CssClass="form-control" required="diseasen"></asp:TextBox>
                 
                    </div>
                    <div class="col-md-3">
                       Remark
                       <asp:TextBox ID="remark" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                       
                    </div>
                     <div class="col-md-3">
                         <br />
                        <asp:Button ID="submit" runat="server" Text="submit" CssClass="btn w-25 btn-success  "  OnClick="submit_Click" />
                         </div>
                    
                   

              </div>
                
        </div>
</div>

 <div class="row m-0 p-0 border-0 fw-bold table-responsive card-body">
       
<asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
<Columns>
<asp:BoundField HeaderText="Disease" DataField="diseasen" />
<asp:BoundField HeaderText="Remark" DataField="remark" />
 <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                               <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');"  CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        </div>

</asp:Content>
