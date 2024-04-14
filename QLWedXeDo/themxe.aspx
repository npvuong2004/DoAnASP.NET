<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="themxe.aspx.cs" Inherits="QLWedXeDo.themxe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container w-50">
        <div class="row">
            <div class="text-center col-12 mt-2">
                <h2>Thêm Xe Mới</h2>  
            </div>
            <hr />
            
            <div class="col-3 mt-2">
                <label> Nhập Tên Xe:</label>
            </div>
            <div class="col-9 mt-2">
                <asp:TextBox ID="txtTen" runat="server" CssClass="form-group"></asp:TextBox>
                
            </div>

            <div class="col-3 mt-2">
                <label>Nhập Giá bán:</label>
            </div>
            <div class="col-9 mt-2">
                <asp:TextBox ID="txtDonGia" runat="server" CssClass="form-group"></asp:TextBox>
            </div>

            <div class="col-3 mt-2">
                <label>Chọn Ảnh Xe:</label>
            </div>
            <div class="col-9 mt-2">
                <asp:FileUpload ID="FHinh" runat="server" />
            </div>

            <div class="col-3 mt-2">
                <label>Chọn Mã loại xe:</label>
            </div>
            <div class="col-9 mt-2">
                <asp:DropDownList ID="ddlMaLoaiXe" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLoaiXe" DataValueField="MaLoaiXe"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeDoDBConnectionString %>" SelectCommand="SELECT * FROM [LoaiXe]"></asp:SqlDataSource>
            </div>

            <div class="col-3 mt-2">
                <label>Chọn Ngày đăng:</label>
            </div>
            <div class="col-9 mt-2">
                <asp:TextBox ID="txtNgayDang" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div class="col-3 mt-2">
                <label>Nhập Cấu hỉnh xe:</label>
            </div>
            <div class="col-9 mt-2">
                <asp:TextBox ID="txtCauHinhXe" runat="server" CssClass="form-group"></asp:TextBox>
            </div>
            
            <div class="col-12 mt-2 text-center">
                <asp:Button CssClass="btn btn-success" ID="btnThem" runat="server" Text="Thêm Xe" OnClick="btnThem_Click" />
            </div>
        </div>
    </div>

    

    
</asp:Content>
