<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admn.Master" AutoEventWireup="true" CodeBehind="SchoolFees.aspx.cs" Inherits="Campus_Helpdesk_System.Admin.SchoolFees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

      <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">School Fees</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Fee</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label> Level</label>
                                          <asp:TextBox ID="txt_leve" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Departmant</label>
                                          <asp:TextBox ID="txt_department" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>School Fees</label>
                                          <asp:TextBox ID="txt_fees" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                               <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click"/>
                                      
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Fee Added Successfully </strong>
                        </div>
                                       <hr />

                                      <div class="form-group">
                                          <h3>School Fee</h3>
                                          <label>Search the table with desired details </label>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="level_l" HeaderText="level_l" SortExpression="level_l" />
                                                  <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                                                  <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                                              </Columns>
                                                                                        
                                          </asp:GridView>

                                         
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusHelpdeskConnectionString %>" SelectCommand="SELECT * FROM [Fee]"></asp:SqlDataSource>

                                         
                                      </div>

                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>

</asp:Content>
