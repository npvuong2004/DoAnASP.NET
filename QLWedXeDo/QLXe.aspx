<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QLXe.aspx.cs" Inherits="QLWedXeDo.QLXe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container w-50">
        <div class="row">
            <div class="text-center col-12 mt-2">
                <h2>Trang Quản Lý Xe</h2>  
            </div>
            <hr />

            <div class="form-inline">
                <a href="Themxe.aspx" class="btn btn-primary">Thêm sách mới</a>
            </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaXe" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="MaXe" HeaderText="Mã Xe" InsertVisible="False" ReadOnly="True" SortExpression="MaXe" />
                <asp:BoundField DataField="TenXe" HeaderText="Tên Xe" SortExpression="TenXe" />
                <asp:BoundField DataField="GiaXe" HeaderText="Gía Xe" SortExpression="GiaXe" />
                <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinhxe"
                DataImageUrlFormatString="hinh_anh_xe_do/{0}" ReadOnly="true"
                HeaderText="Ảnh xe" ControlStyle-Width="100px">
                </asp:ImageField>
                <asp:BoundField DataField="MaLoaiXe" HeaderText="Mã Loại Xe" SortExpression="MaLoaiXe" />
                <asp:BoundField DataField="NgayDangXe" HeaderText="Ngày Đăng Xe" SortExpression="NgayDangXe" />
                <asp:BoundField DataField="CauhinhXe" HeaderText="Cáu Hình Xe" SortExpression="CauhinhXe" />
                <asp:TemplateField ItemStyle-Wrap="false">
                 <ItemTemplate>
                     <asp:Button ID="btSua" runat="server" CssClass="btn btn-success" CommandName="Edit" Text="Sửa" />
                     <asp:Button ID="btXoa" OnClientClick="return confirm('Bạn có muốn xoá xe này?')" runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Xoá" />
                 </ItemTemplate>
                <EditItemTemplate>
                       <asp:Button ID="btCapnhat" runat="server" CssClass="btn btn-success" CommandName="Update" Text="Ghi" />
                       <asp:Button ID="btKhong" runat="server" CssClass="btn btn-warning" CommandName="Cancel" Text="Không" />
                </EditItemTemplate>
            <ItemStyle Wrap="False"></ItemStyle>
            </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

        
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeDoDBConnectionString %>" DeleteCommand="DELETE FROM [Xe] WHERE [MaXe] = @MaXe" InsertCommand="INSERT INTO [Xe] ([TenXe], [GiaXe], [HinhXe], [MaLoaiXe], [NgayDangXe], [CauhinhXe]) VALUES (@TenXe, @GiaXe, @HinhXe, @MaLoaiXe, @NgayDangXe, @CauhinhXe)" SelectCommand="SELECT * FROM [Xe]" UpdateCommand="UPDATE [Xe] SET [TenXe] = @TenXe, [GiaXe] = @GiaXe, [HinhXe] = @HinhXe, [MaLoaiXe] = @MaLoaiXe, [NgayDangXe] = @NgayDangXe, [CauhinhXe] = @CauhinhXe WHERE [MaXe] = @MaXe">
                <DeleteParameters>
                    <asp:Parameter Name="MaXe" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenXe" Type="String" />
                    <asp:Parameter Name="GiaXe" Type="Double" />
                    <asp:Parameter Name="HinhXe" Type="String" />
                    <asp:Parameter Name="MaLoaiXe" Type="Int32" />
                    <asp:Parameter Name="NgayDangXe" Type="DateTime" />
                    <asp:Parameter Name="CauhinhXe" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenXe" Type="String" />
                    <asp:Parameter Name="GiaXe" Type="Double" />
                    <asp:Parameter Name="HinhXe" Type="String" />
                    <asp:Parameter Name="MaLoaiXe" Type="Int32" />
                    <asp:Parameter Name="NgayDangXe" Type="DateTime" />
                    <asp:Parameter Name="CauhinhXe" Type="String" />
                    <asp:Parameter Name="MaXe" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        
        
            </div>
    </div>
</asp:Content>
