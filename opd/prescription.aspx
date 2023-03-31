<%@ Page Title="" Language="C#" MasterPageFile="~/opd/opd.master" AutoEventWireup="true" CodeBehind="prescription.aspx.cs" Inherits="hospitalproject.opd.prescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    <div class="container border p-2 card">
        <div class="row m-0 border p-0">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
            <a href="opddashboard.aspx"> <i class="fa fa-arrow-left text-black"></i></a>PRESCRIPTION</div>
        <div class="col-md-12">
            
            <div class="col-md-12">
            <div class="container border p-2 card">
                 <div class="col-md-12" style="font-weight:900">PATIENT DETAILS:</div>
        <div class="row p-2">
             <div class="col-md-3">
       Patient No.<br /><asp:DropDownList ID="patientno" runat="server" CssClass="form-control"></asp:DropDownList>
       </div>
            <div class="col-md-3">
       Patient Name<br /><asp:DropDownList ID="patientname" runat="server" CssClass="form-control"></asp:DropDownList>
       </div></div></div></div>
            <div class="col-md-12">
                  <div class="container border p-2 card">
          <div class="col-md-12" style="font-weight:900">PRESCRIPTION:</div>
                         <div class="row p-2">
                 
                 <div class="col-md-3">
     Medicine Name<br /><asp:TextBox ID="medicinename" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="col-md-3">
      Dosage<br /><asp:TextBox ID="dosage" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
    <div class="col-md-3">
     Duration<br /><asp:TextBox ID="duration" runat="server" CssClass="form-control"></asp:TextBox></div><div class="col-md-3"></div>
            <div class="col-md-3">
      Testing<br /><asp:TextBox ID="testing" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
       </div>
           <div class="col-md-3">
      Avoid<br /><asp:TextBox ID="avoid" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
       </div>
 <div class="col-md-3">
      Follow Up<br /><asp:TextBox ID="followup" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
       </div><div class="col-md-9"> </div></div></div>
 
                <div class="col-md-2 mt-1"><br />
                     <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="btn w-100 btn-success "/>
                         </div>
             </div></div></div></div>
    <div class="row m-0 p-0 border-0 fw-bold table-responsive card-body">
        <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="White" runat="server" CssClass="table table-hover table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Patient No." DataField="patientno" />
                <asp:BoundField HeaderText="Patient Name" DataField="patientname" />
                <asp:BoundField HeaderText="Medicine Name" DataField="medicinename" />
                <asp:BoundField HeaderText="Dosage" DataField="dosage" />
                <asp:BoundField HeaderText="Duration" DataField="duration" />
                <asp:BoundField HeaderText="Testing" DataField="testing" />
                <asp:BoundField HeaderText="Avoid" DataField="avoid" />
                <asp:BoundField HeaderText="Followup" DataField="followup" />
            
               <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');" CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
         
</asp:Content>
	