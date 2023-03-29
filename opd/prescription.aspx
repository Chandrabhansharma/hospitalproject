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
                            Phone Number<br /><asp:TextBox ID="phonenumber" runat="server" CssClass="form-control"></asp:TextBox>
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
                            Gender<br /><asp:DropDownList ID="gender" runat="server" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                       </asp:DropDownList>
                        </div>
            
           
                        <div class="col-md-3">
                            Mobile Number<br /><asp:TextBox ID="mobilenumber" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
           
                        <div class="col-md-3">
                            Email<br /><asp:TextBox ID="email" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                       
                       <div class="col-md-3">
                           Address<br /><asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
             <div class="col-md-3">
                          Date<br /><asp:TextBox ID="date" runat="server" TextMode="Date"  CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="col-md-3">
                        Height<br><asp:TextBox ID="height" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                        Weight<br /><asp:TextBox ID="weight" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                        Blood Pressure<br /><asp:TextBox ID="bloodpressure" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                       Temperature<br /><asp:TextBox ID="temperature" runat="server" CssClass="form-control"></asp:TextBox>
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
                          Duration<br /><asp:TextBox ID="duration" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                <div class="col-md-10"></div>
                  <div class="col-md-1">
                     <br />
                     <asp:LinkButton ID="add2" runat="server" Text="<i class='fa fa-plus text-white'></i>" CssClass="btn bg-primary"></asp:LinkButton>
                     
                 </div>
                  <div class="col-md-1">
                     <br />
                     <asp:LinkButton ID="remove2" runat="server" Text="<i class='fa fa-window-minimize text-white'></i>" CssClass="btn  p-0 float-end"></asp:LinkButton>
                     
                 </div>

                 <div class="col-md-3">
      Testing<br /><asp:TextBox ID="testing" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                  <div class="col-md-1">
                     <br />
                     <asp:LinkButton ID="add1" runat="server" Text="<i class='fa fa-plus text-white'></i>" CssClass="btn  p-0 float-end"></asp:LinkButton>
                     
                 </div>
                  <div class="col-md-1">
                     <br />
                     <asp:LinkButton ID="remove1" runat="server" Text="<i class='fa fa-window-minimize text-white'></i>" CssClass="btn  p-0 float-end"></asp:LinkButton>
                     
                 </div>
                  <div class="col-md-7"> </div>
           <div class="col-md-3">
      Avoid<br /><asp:TextBox ID="avoid" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                 <div class="col-md-1">
                     <br />
                     <asp:LinkButton ID="add" runat="server" Text="<i class='fa fa-plus text-white'></i>" CssClass="btn  p-0 float-end"></asp:LinkButton>
                     
                 </div>
                  <div class="col-md-1">
                     <br />
                     <asp:LinkButton ID="remove" runat="server" Text="<i class='fa fa-window-minimize text-white'></i>" CssClass="btn  p-0 float-end"></asp:LinkButton>
                     
                 </div>
                  <div class="col-md-7"> </div>
                 <div class="col-md-3">
      Follow Up<br /><asp:TextBox ID="followup" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                  <div class="col-md-9"> </div>
                  <div class="col-md-9"> </div>
                 <div class="col-md-3">
      Signature<br /><asp:FileUpload ID="signature" runat="server" CssClass="form-control" />
       </div>
                  <div class="col-md-9"> </div>
                 <div class="col-md-3">
      Name<br /><asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
                  



                 <div class="col-md-2 mt-1"><br />
                           
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn w-100 btn-success "/>
                         </div>
                    </div>
                 


                </div>
            </div>
         </div>
</asp:Content>
	