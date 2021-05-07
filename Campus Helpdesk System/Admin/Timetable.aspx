<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admn.Master" AutoEventWireup="true" CodeBehind="Timetable.aspx.cs" Inherits="Campus_Helpdesk_System.Admin.Timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Timetable</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Create Timetable</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label> Course Name</label>
                                          <asp:TextBox ID="txt_coursename" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Course Code</label>
                                          <asp:TextBox ID="txt_coursecode" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>

                                     

                                       <div class="form-group">
                                          <label>Date</label>
                                          <asp:TextBox ID="txt_dob" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>

                                       <div class="form-group">
                                          <label>Time Start</label>
                                          <asp:TextBox ID="txt_timestart" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Time End</label>
                                          <asp:TextBox ID="txt_timeEnd" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Level</label>
                                          <asp:TextBox ID="txt_levle" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                       <div class="form-group">
                                          <label>Department</label>
                                          <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>



                                      
                               <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click"/>
                                      
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Timetable Created Successfully </strong>
                        </div>

                                      <hr />

                                      <div class="form-group">
                                          <h3>TimeTbale</h3>
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
