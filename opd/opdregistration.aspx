<%@ Page Title="" Language="C#" MasterPageFile="~/opd/opd.master" AutoEventWireup="true" CodeBehind="opdregistration.aspx.cs" Inherits="hospitalproject.opd.opdregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    <div class="container border p-2 card">
        <div class="row m-0 border p-0">
            <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
                <a href="opddashboard.aspx"><i class="fa fa-arrow-left text-black"></i></a>OPD Registration
            </div>
            <div class="col-md-12">
                <div class="row p-2">
                    <div class="col-md-3">
                        Patient No.<br />
                        <asp:TextBox ID="patientno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Patient Name<br />
                        <asp:TextBox ID="patientname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Age<br />
                        <asp:TextBox ID="age" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Gender<asp:DropDownList ID="gender" runat="server" CssClass="form-control">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        Date<asp:TextBox ID="date" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
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
                        Doctor Name
                        <asp:DropDownList ID="doctorname" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        Specialization
                        <asp:DropDownList ID="specialization" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        Visit Type
                        <asp:DropDownList ID="visitetype" runat="server" CssClass="form-control">
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        Fee<asp:TextBox ID="fee" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-12" style="font-weight: 900">Medical Details:</div>
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
                    <!--medical details END-->
                    <div class="col-md-6">
                        Remark<asp:TextBox ID="remark" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6"></div>
                    <div class="col-md-2 mt-1">

                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn w-100 btn-success " OnClick="submit_Click" />
                    </div>
                </div>
            </div>
        </div>

    <div class="row m-0 p-0 border-0 fw-bold table-responsive card-body">
        <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="White" runat="server" CssClass="table table-hover table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Patient No." DataField="patientno" />
                <asp:BoundField HeaderText="Patient Name" DataField="patientname" />
                <asp:BoundField HeaderText="Age" DataField="age" />
                <asp:BoundField HeaderText="Gender" DataField="gender" />
                <asp:BoundField HeaderText="Date" DataField="date"
                    ItemStyle-Width="150" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField HeaderText="Mobile Number" DataField="mobilenumber" />
                <asp:BoundField HeaderText="Mobile Number(Alternate)" DataField="mobilenumber2" />
                <asp:BoundField HeaderText="Email" DataField="email" />
                <asp:BoundField HeaderText="Address" DataField="address" />
                <asp:BoundField HeaderText="Doctor Name" DataField="doctorname" />
                <asp:BoundField HeaderText="Specialization" DataField="specialization" />
                <asp:BoundField HeaderText="Visit Type" DataField="visittype" />
                <asp:BoundField HeaderText="Fee" DataField="fee" />
                <asp:BoundField HeaderText="Height" DataField="height" />
                <asp:BoundField HeaderText="Weight" DataField="weight" />
                <asp:BoundField HeaderText="Blood Pressure" DataField="bloodpressure" />
                <asp:BoundField HeaderText="Temperature" DataField="temperature" />
                <asp:BoundField HeaderText="Remark" DataField="remark" />
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

</asp:Content>
