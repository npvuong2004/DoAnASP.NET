<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="QLWedXeDo.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container w-50">
        <div class="row">
            <div class="text-center col-12 mt-2">
                <h2>Đăng Nhập</h2>  
            </div>
            <hr />
        
            <div class="mb-3">
	            <label class="mb-2 text-muted" for="name">Nhập Email</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
				<div class="invalid-feedback">
			        Email không hơp lệ	
				</div>
            </div>
            <div class="mb-3">
	            <label class="mb-2 text-muted" for="name">Nhập Mật Khẩu</label>
                <asp:TextBox ID="txtMK" runat="server" class="form-control"></asp:TextBox>
				<div class="invalid-feedback">
			        Mật khẩu không hơp lệ	
				</div>
            </div>

            <div>
                <asp:Button ID="Button1" runat="server" class="btn btn-primary ms-auto" onclick="btnDangNhap_Click" Text="Đăng Nhập" />
            </div>

            <div class="card-footer py-3 border-0">
			    <div class="text-center">
					Bạn chưa tài khoản ? <a href="dangky.aspx" class="text-dark">Đăng ký</a>
				</div>
			</div>

        </div>
    </div>
</asp:Content>
