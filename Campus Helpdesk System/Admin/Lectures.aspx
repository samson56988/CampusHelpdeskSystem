<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admn.Master" AutoEventWireup="true" CodeBehind="Lectures.aspx.cs" Inherits="Campus_Helpdesk_System.Admin.Lectures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
      <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Lecturer</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Lecturer</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label> Lecturer Name</label>
                                          <asp:TextBox ID="txt_lecturername" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Department</label>
                                          <asp:TextBox ID="txt_department" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>

                                     
                               <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click"/>
                                      
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>lecturer Added Successfully </strong>
                        </div>
                                       <hr />

                                      <div class="form-group">
                                          <h3>Lecturer</h3>
                                          <label>Search the table with desired details </label>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="Lecturer" HeaderText="Lecturer" SortExpression="Lecturer" />
                                                  <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                              </Columns>
                                                                                        
                                          </asp:GridView>

                                         
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusHelpdeskConnectionString %>" SelectCommand="SELECT * FROM [lecturer]"></asp:SqlDataSource>

                                         
                                      </div>

                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>
