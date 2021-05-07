<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="Campus_Helpdesk_System.Student.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Complain</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Complain</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label> Complaint</label>
                                          <asp:TextBox ID="txt_Complaint" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Phone number</label>
                                          <asp:TextBox ID="txt_phonenumber" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>

                                      
                               <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save"/>
                                      
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Complaint Added Successfully </strong>
                        </div>
                                       

                                      

                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>


</asp:Content>
