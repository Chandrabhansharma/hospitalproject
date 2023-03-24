<%@ Page Title="" Language="C#" MasterPageFile="~/opd/opd.master" AutoEventWireup="true" CodeBehind="prescription.aspx.cs" Inherits="hospitalproject.opd.prescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
     <div class="container border p-2 card">
        <div class="row m-0 border p-0">
        <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
            <a href="opddashboard.aspx"> <i class="fa fa-arrow-left text-black"></i></a>Prescription</div>
        <div class="col-md-12">
             <div class="row p-2">
            
            <div class="col-md-3">
       Doctor Name<br /><asp:TextBox ID="doctorname" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                 <div class="col-md-3">
     Qualification<br /><asp:TextBox ID="qualification" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="col-md-3">
      Specialization<br /><asp:TextBox ID="specialization" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                  <div class="col-md-3">
                            Phone Number<asp:TextBox ID="phonenumber" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
        <div class="row p-2">
             <div class="col-md-3">
       Patient No.<br /><asp:TextBox ID="patientno" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-3">
       Patient Name<br /><asp:TextBox ID="patientname" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="col-md-3">
      Age<br /><asp:TextBox ID="age" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-3">
                            Gender<asp:DropDownList ID="gender" runat="server" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                       </asp:DropDownList>
                        </div>
            
           
                        <div class="col-md-3">
                            Mobile Number<asp:TextBox ID="mobilenumber" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
           
                        <div class="col-md-3">
                            Email<asp:TextBox ID="email" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                       
                       <div class="col-md-3">
                           Address<asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                          Date<asp:TextBox ID="date" runat="server" TextMode="Date"  CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="col-md-3">
                        Height<asp:TextBox ID="height" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                        Weight<asp:TextBox ID="weight" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                        Blood Pressure<asp:TextBox ID="bloodpressure" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                       Temperature<asp:TextBox ID="temperature" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    
                        <div class="col-md-2 mt-1">
                           
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn w-100 btn-success "/>
                         </div>
                    </div>

             <div class="row p-2">
             <div class="col-md-12" style="font-weight:900">Prescription:</div>

                 <div class="col-md-3">
      Symptoms<br /><asp:TextBox ID="Symptoms" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                  <div class="col-md-9"> </div>
            <div class="col-md-3">
      Medicine Company Name<br /><asp:TextBox ID="medicinecompanyname" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                 <div class="col-md-3">
     Medicine Name<br /><asp:TextBox ID="medicinename" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="col-md-3">
      Dosage<br /><asp:TextBox ID="dosage" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                  <div class="col-md-3">
                          Duration<asp:TextBox ID="duration" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>
            </div>
         </div>
</asp:Content>
