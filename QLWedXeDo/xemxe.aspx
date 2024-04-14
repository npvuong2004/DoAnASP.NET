<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="xemxe.aspx.cs" Inherits="QLWedXeDo.gioithieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-12 mt-2">
                <asp:Label ID="Label1" runat="server" Text="Danh mục loại xe:"></asp:Label>
                <asp:DropDownList AutoPostBack="true" CssClass="form-control" Width="50%" ID="ddlLoai" runat="server" 
                    DataSourceID="dsLoai" DataTextField="TenLoaiXe" DataValueField="MaLoaiXe"></asp:DropDownList>
            </div>
            <br />
            
                <asp:Repeater ID="rptXe" runat="server" DataSourceID="dsXe">
                    <ItemTemplate>
                        <div class="text-center col-3 mt-2">
                            <a href="#">
                                <img style="width:80%" src='hinh_anh_xe_do/<%#Eval("HinhXe")%>' />
                                <br />
                            </a>
                            <h5>
                                <%#Eval("TenXe")%>
                            </h5>                        
                            <p>
                                Giá bán: <span class="text-danger"><%#Eval("GiaXe","{0:#,##0} VNĐ")%></span>
                            </p>
                            <asp:Button ID="btnThemGioHang" runat="server" CssClass="btn btn-info"
                                Text="Thêm vào giỏ hàng" CommandArgument='<%# Eval("MaXe") %>'
                                OnClick="btnThemGioHang_Click" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            

            <asp:SqlDataSource ID="dsLoai" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QLXeDoDBConnectionString %>" 
                SelectCommand="SELECT * FROM [LoaiXe]"></asp:SqlDataSource>

            <asp:SqlDataSource ID="dsXe" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QLXeDoDBConnectionString %>" 
                SelectCommand="SELECT * FROM [Xe] WHERE ([MaLoaiXe] = @MaLoaiXe)">
                <SelectParameters>
            <asp:ControlParameter ControlID="ddlLoai" Name="MaLoaiXe" PropertyName="SelectedValue" Type="Int32" DefaultValue="1"/>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
