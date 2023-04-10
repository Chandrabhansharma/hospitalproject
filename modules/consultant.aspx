<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="consultant.aspx.cs" Inherits="hospitalproject.modules.consultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    <div class="container border p-2 card">
        <div class="row m-0 border p-0">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
            <a href="moduledashboard.aspx"> <i class="fa fa-arrow-left text-black"></i></a>CONSULTANT</div>
        <div class="col-md-12">
        <div class="row p-2">
             <div class="col-md-3">
       Doctor ID<br /><asp:TextBox ID="doctorid" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-3">
       Doctor Name<br /><asp:TextBox ID="doctorname" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="col-md-3">
      Licence No.<br /><asp:TextBox ID="licenceno" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-3">
                          Specialization<asp:TextBox ID="specialization" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
            <div class="col-md-3">
                          Designation<asp:TextBox ID="designation" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
              <div class="col-md-3">
                          Qualification<asp:TextBox ID="qualification" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
            <div class="col-md-3">
                            Mobile Number<asp:TextBox ID="mobilenumber" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                            Mobile Number(Alternate)<asp:TextBox ID="mobilenumber2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                            Email<asp:TextBox ID="email" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                           Address<asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                           City<asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                        </div> <div class="col-md-3">
                           State<asp:DropDownList ID="state" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
            <div class="col-md-3">
                         Shift <asp:DropDownList ID="shift" runat="server" CssClass="form-control">
                             <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                                    </asp:DropDownList>         
                        </div>
             <div class="col-md-3">
                          Date<asp:TextBox ID="date" runat="server" TextMode="Date"  CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                          Signature<asp:FileUpload ID="signature" runat="server" CssClass="form-control"></asp:FileUpload>
                        </div>
           
                   <div class="col-md-3"></div>
                        <div class="col-md-2 mt-1">
                            <br />
<asp:Button ID="save" runat="server" Text="Save"  OnClick="save_Click" CssClass="btn w-100" />
                        </div>
                    </div>
              
            </div>
         <asp:HiddenField ID="autono" runat="server" />

     <div class="row m-0 p-0 border-0 fw-bold table-responsive card-body">
            <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="White" runat="server" CssClass="table table-hover table-bordered">
                <Columns>
                    <asp:BoundField HeaderText="Doctor ID" DataField="doctorid" />
                    <asp:BoundField HeaderText="Doctor Name" DataField="doctorname" />
                     <asp:BoundField HeaderText="Licence NO." DataField="licenceno" />
                    <asp:BoundField HeaderText="Specialization" DataField="specialization" />
                    <asp:BoundField HeaderText="Designation" DataField="designation" />
                    <asp:BoundField HeaderText="Qualification" DataField="qualification" />
                    <asp:BoundField HeaderText="Mobile Number" DataField="mobilenumber" />
                    <asp:BoundField HeaderText="Mobile Number(Alternate)" DataField="mobilenumber2" />
                    <asp:BoundField HeaderText="Email" DataField="emailid" />
                    <asp:BoundField HeaderText="Address" DataField="address" />
                    <asp:BoundField HeaderText="City" DataField="city" />
                    <asp:BoundField HeaderText="State" DataField="state" />
                    <asp:BoundField HeaderText="Shift" DataField="shift" />
                    <asp:BoundField HeaderText="Date" DataField="date" ItemStyle-Width="150" DataFormatString="{0:dd/MM/yyyy}"/>
                     <asp:BoundField HeaderText="Signature" DataField="signature" />
                   <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                            <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');" CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        </div>
        </div>
</asp:Content>
