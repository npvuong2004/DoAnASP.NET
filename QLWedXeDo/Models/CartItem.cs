using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace QLWedXeDo.Models
{
    public class CartItem
    {
        public int MaXe { set; get; }
        public string TenXe { set; get; }
        public string HinhXe { set; get; }
        public int GiaXe { set; get; }
        public int SoLuong { set; get; }
        public int ThanhTien
        {
            get { return SoLuong * GiaXe; }
        }
    }
}