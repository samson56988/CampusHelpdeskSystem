<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admn.Master" AutoEventWireup="true" CodeBehind="Add Course.aspx.cs" Inherits="Campus_Helpdesk_System.Admin.Add_Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">


     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Course</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Course</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label> Course Name</label>
                                          <asp:TextBox ID="txt_Coursename" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Course Code</label>
                                          <asp:TextBox ID="txt_coursecode" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Unit</label>
                                          <asp:TextBox ID="txt_unit" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                               <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click"/>
                                      
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Course Added Successfully </strong>
                        </div>
                                       <hr />

                                      <div class="form-group">
                                          <h3>Courses</h3>
                                          <label>Search the table with desired details </label>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                                                  <asp:BoundField DataField="Coursename" HeaderText="Coursename" SortExpression="Coursename" />
                                                  <asp:BoundField DataField="Coursecode" HeaderText="Coursecode" SortExpression="Coursecode" />
                                                  <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
                                              </Columns>
                                                                                        
                                          </asp:GridView>

                                         
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusHelpdeskConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>

                                         
                                      </div>

                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>



</asp:Content>
