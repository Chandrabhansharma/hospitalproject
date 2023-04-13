<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="hospital.aspx.cs" Inherits="hospitalproject.modules.hospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
   <div class="container border p-2 card ">
        <div class="row m-0 border p-0">
            <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
                <a href="moduledashboard.aspx"><i class="fa fa-arrow-left text-black"></i></a>HOSPITAL
            </div>
            <div class="col-md-12">
                <div class="row p-2">
                    <!--name-->
                    <div class="col-md-3">
                        Name<br />
                        <asp:TextBox ID="hospitalname" required runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">

                        Slogan
                        <asp:TextBox ID="slogan" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Mobile Number
                        <asp:TextBox ID="mobileno" required runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--name end-->
                    <!--Contact  Email start-->
                    <div class="col-md-3">
                        Mobile Number
                        <asp:TextBox ID="mobileno2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Email ID
                        <asp:TextBox ID="emailid" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Website
                        <asp:TextBox ID="website" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Medical Council
                        <asp:TextBox ID="medicalcouncil" required runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Medical Regno
                        <asp:TextBox ID="medicalregno" required runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--Contact  Email end-->
                    <!--ADDRESS1-->
                    <div class="col-md-3">
                        Address1
                        <asp:TextBox ID="address1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--ADDRESS END1-->
                    <!--ADDRESS2-->
                    <div class="col-md-3">
                        Address2
                        <asp:TextBox ID="address2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--ADDRESS END2-->
                    <!--COUNTRY-->
                    <div class="col-md-3">
                        Pincode
                        <asp:TextBox ID="pincode" required runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        City
                        <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        State
                        <asp:DropDownList ID="state" runat="server" CssClass="form-control"> </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        Country 
                        <asp:TextBox ID="country" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--COUNTRY END-->
                    <div class="col-md-3">
                        Logo
                        <asp:FileUpload ID="logo" runat="server" CssClass="form-control" />
                    </div>
                        <!--BUTTON START-->
                        <div class="col-md-1 mt-1">
                            <br />
                            <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" CssClass="btn w-100" />
                        </div>

                    </div>
                </div></div>
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
        </div>

        </div>

</asp:Content>
