using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLWedXeDo.Models;

namespace QLWedXeDo
{
    public partial class gioithieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rptXe_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void btnThemGioHang_Click(object sender, EventArgs e)
        {
            //lấy mã sản phẩm từ người dùng chọn
            int maxe = int.Parse(((Button)sender).CommandArgument);
            //thêm sản phẩm vào giỏ hàng (dùng lớp Cart, CartItem và đối tượng Session)
            Cart cart = (Cart)Session["CART"]; //vào Session lấy ra giỏ hàng của người dùng
            if (cart == null) //nếu chưa có
            {
                cart = new Cart(); //tạo giỏ hàng
                                   //lưu vào Session
                Session["CART"] = cart;
            }
            //thêm sản phẩm vào giỏ
            cart.Add(maxe);
            //thông báo cho người dùng (hoặc chuyển hướng đến trang XemGio.aspx)
            Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");
        }
    }
}