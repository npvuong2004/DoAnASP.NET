using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace QLWedXeDo.Models
{
    public class Cart
    {
        //khai báo danh sách dùng để lưu trữ các sản phẩm (CartItem)
        private List<CartItem> _items;

        //phương thức khởi tạo giỏ hàng
        public Cart()
        {
            _items = new List<CartItem>();
        }
        //phương thức trả về danh sách các sản phẩm trong giỏ
        public List<CartItem> Items { get { return _items; } }
        //phương thức thêm sản phẩm vào giỏ
        public void Add(int maxe)
        {
            //truy xuất CSDL để lấy thông tin về sản phẩm cần thêm vào giỏ hàng
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["QLXeDoDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Xe where MaXe=@maxe", conn);
            cmd.Parameters.AddWithValue("@masp", maxe);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //tạo đối tượng CartItem
                CartItem xe = new CartItem
                {
                    MaXe = maxe,

                    TenXe = dr["TENXE"].ToString(),
                    HinhXe = dr["HINHXe"].ToString(),
                    GiaXe = int.Parse(dr["GIAXE"].ToString()),

                    SoLuong = 1
                };
                //thêm vào giỏ (đề nghị sinh viên tự lập trình
                // cho trường hợp sản phẩm đã có trong giỏ)
                _items.Add(xe);
            }
        }
        //Phương thức cập nhật số lượng,
        public void Update(int maxe, int soluong)
        {
            int index = findID(maxe);
            if (index != -1)
            {
               if(soluong > 0)
                {
                    _items[index].SoLuong = soluong;
                }
                else
                {
                    _items.RemoveAt(index);
                }
            }
        }
        //phương thức xoá sản phẩm khỏi giỏ,
        public void Delete(int maxe)
        {
            int index = findID(maxe);
            if(index != -1 ){
                _items.RemoveAt(index);
            }
        }
        private int findID (int maxe)
        {
            for(int i=0; i<_items.Count; i++)
            {
                if(_items[i].MaXe == maxe)
                {
                    return i;
                }
            }
            return -1;
        }
        //tính tổng thành tiền
        public int Total
        {
            get
            {
                int tong = 0;
                foreach (CartItem item in _items)
                {
                    tong += item.ThanhTien;
                }
                return tong;
            }
        }
    }
}