<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="charges.aspx.cs" Inherits="hospitalproject.modules.chargers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
      <div class="container border p-2 card ">
        <div class="row m-0 border p-0">
            <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
                <a href="dashboard.aspx"><i class="fa fa-arrow-left text-black"></i></a>Charges
            </div>
            <div class="col-md-12">
                <div class="row p-2">
                    <!--name-->
                    <div class="col-md-2">
                       Doctor Name</div><div class="col-md-3">
                        <asp:DropDownList ID="doctorname" runat="server" CssClass="form-control" required="doctorname"></asp:DropDownList>
                    </div>
                       <div class="col-md-2">
                       Specialization</div><div class="col-md-3">
                        <asp:DropDownList ID="specialization" runat="server" CssClass="form-control" required="doctorname"></asp:DropDownList>
                    </div>
                    <div class="col-md-12"></div>
                    <div class="col-md-12 h2">Charges</div>
                    <div class="col-md-2">Regular</div>

                </div>
            <%--   <div class="col-md-3">

                  " runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                 
     <!-- Start Grid View-->
       <div class="row m-0 p-0 border-0 fw-bold table-responsive card-body">
       
<asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
<Columns>
<asp:BoundField HeaderText="Hospital Name" DataField="hospitalname" />
<asp:BoundField HeaderText="Slogan" DataField="slogan" />
<asp:BoundField HeaderText="Mobile No1" DataField="mobileno" />
<asp:BoundField HeaderText="Mobile No2" DataField="mobileno2" />
<asp:BoundField HeaderText="Email ID" DataField="emailid" />
<asp:BoundField HeaderText="Website" DataField="website" />
<asp:BoundField HeaderText="Medical Council" DataField="medicalcouncil" />
<asp:BoundField HeaderText="Medical Regno" DataField="medicalregno" />
<asp:BoundField HeaderText="Address1" DataField="address1" />
<asp:BoundField HeaderText="Address2" DataField="address2" />
<asp:BoundField HeaderText="Pincode" DataField="pincode" />
<asp:BoundField HeaderText="City" DataField="city" />
<asp:BoundField HeaderText="State" DataField="state" />
<asp:BoundField HeaderText="Country" DataField="country" />
  <asp:BoundField HeaderText="Logo" DataField="logo" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                               <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');"  CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div> --%>
</div>
        </div>

</asp:Content>
