<%@ Page Title="" Language="C#" MasterPageFile="~/modules/module.master" AutoEventWireup="true" CodeBehind="charges.aspx.cs" Inherits="hospitalproject.modules.charges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent" runat="server">
    <div class="container border p-2 card ">
        <div class="row m-0 border p-0">
            <div class="col-md-12 p-2 bg-info border-0 fw-bold card-header">
                <a href="moduledashboard.aspx"><i class="fa fa-arrow-left text-black"></i></a>CHARGES
            </div>
            <div class="col-md-12">
                <div class="row p-2">
                    <!--name-->
                    <div class="col-md-3  p-1">
                        Doctor ID<br />
                        <asp:DropDownList ID="doctorid" runat="server" ClientIDMode="Static" AutoPostBack="true" OnSelectedIndexChanged="doctorid_SelectedIndexChanged" CssClass="form-control js-example-basic-single "></asp:DropDownList>
                    </div>
                    <div class="col-md-3 p-1">
                        Date<br />
                        <asp:TextBox ID="date" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3 p-1">
                        Visit Type<br />
                        <asp:TextBox ID="visittype" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3 p-1">
                        Charges<br />
                        <asp:TextBox ID="fee" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-12">

                    </div>
                    <div class="col-md-3 p-1">
                        <br />
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn w-25 btn-success " OnClick="submit_Click" />
                    </div>
                    <div class="col-md-12"></div>
                </div>
            </div>
        </div>
        <div class="row m-0 p-0 border-0 fw-bold table-responsive card-body">
            <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
                <Columns>
                    <asp:BoundField HeaderText="SN" DataField="sn" />
                    <asp:BoundField HeaderText="Doctor ID" DataField="doctorid" />
                    <asp:BoundField HeaderText="Date" DataField="date" DataFormatString="{0:dd-MM-yyyy}" />
                    <asp:BoundField HeaderText="Visit Type" DataField="visittype" />
                    <asp:BoundField HeaderText="Charges" DataField="fee" />
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
