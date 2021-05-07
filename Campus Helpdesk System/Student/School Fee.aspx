<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.Master" AutoEventWireup="true" CodeBehind="School Fee.aspx.cs" Inherits="Campus_Helpdesk_System.Student.School_Fee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View School Fee</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View School Fee</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      

                                      <div class="form-group">
                                          <h3>Fees</h3>
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
