using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLWedXeDo
{
    public partial class themxe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["QLXeDoDBConnectionString"].ConnectionString);
            conn.Open();

            string sql = "INSERT INTO Xe (TenXe,GiaXe,HinhXe,MaLoaiXe,NgayDangXe,CauHinhXe) values (@TenXe,@GiaXe,@HinhXe,@MaLoaiXe,@NgayDangXe,@CauHinhXe)";
            SqlCommand cmd = new SqlCommand(sql, conn);

            cmd.Parameters.AddWithValue("@TenXe", txtTen.Text);
            cmd.Parameters.AddWithValue("@GiaXe", txtDonGia.Text);
            cmd.Parameters.AddWithValue("@MaLoaiXe", ddlMaLoaiXe.SelectedValue);
            cmd.Parameters.AddWithValue("@NgayDangXe", txtNgayDang.Text);
            cmd.Parameters.AddWithValue("@CauHinhXe", txtCauHinhXe.Text);
            if (FHinh.HasFiles)
            {
                string path = Server.MapPath("~/hinh_anh_xe_do/") + FHinh.FileName;
                FHinh.SaveAs(path);
                cmd.Parameters.AddWithValue("@HinhXe", FHinh.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@HinhXe", "no_image.png");
            }
            if (cmd.ExecuteNonQuery() > 0) //Thêm thành công
            {
                Response.Write("<script> alert('Đã thêm thành công') </script>");
            }
            else
            {
                Response.Write("<script> alert('Thao tác thêm không thành công') </script>");
            }
        }
    }
}