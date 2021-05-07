<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.Master" AutoEventWireup="true" CodeBehind="Timetable.aspx.cs" Inherits="Campus_Helpdesk_System.Student.Timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Time Table</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View Time Table</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      

                                      <div class="form-group">
                                          <h3>Time Table</h3>
                                          <label>Search the table with desired details </label>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="Coursename" HeaderText="Coursename" SortExpression="Coursename" />
                                                  <asp:BoundField DataField="coursecode" HeaderText="coursecode" SortExpression="coursecode" />
                                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                  <asp:BoundField DataField="Timestart" HeaderText="Timestart" SortExpression="Timestart" />
                                                  <asp:BoundField DataField="Timeend" HeaderText="Timeend" SortExpression="Timeend" />
                                                  <asp:BoundField DataField="level_L" HeaderText="level_L" SortExpression="level_L" />
                                                  <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                              </Columns>
                                                                                        
                                          </asp:GridView>

                                         
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusHelpdeskConnectionString %>" SelectCommand="SELECT * FROM [Timetable]"></asp:SqlDataSource>

                                         
                                      </div>

                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>
