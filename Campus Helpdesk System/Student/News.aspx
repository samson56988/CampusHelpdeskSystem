<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Campus_Helpdesk_System.Student.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View News</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View News</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      

                                      <div class="form-group">
                                          <h3>News</h3>
                                          <label>Search the table with desired details </label>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                  <asp:BoundField DataField="News" HeaderText="News" SortExpression="News" />
                                              </Columns>
                                                                                        
                                          </asp:GridView>

                                         
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusHelpdeskConnectionString %>" SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>

                                         
                                      </div>

                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>
