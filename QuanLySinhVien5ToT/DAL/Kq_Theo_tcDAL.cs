using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLySinhVien5ToT.DTO;

namespace QuanLySinhVien5ToT.DAL
{
    public class Kq_Theo_tcDAL
    {
        private Thoi_Gian_XetDTO thoi_Gian_XetDTO = new Thoi_Gian_XetDTO();
        private Kq_Theo_tcDTO kq_Theo_TcDTO = new Kq_Theo_tcDTO();
        DT_QL_SV5TOT_5Entities2 db = Mydb.GetInstance();
        public List<Kq_Theo_tcDTO> getKQ(int page, int recordNum) 
        {
            List<Kq_Theo_tcDTO> kq_Theo_TcDTOs = new List<Kq_Theo_tcDTO>();
            kq_Theo_TcDTOs = (from kq in db.KQ_THEO_TIEUCHI
                              from sv in db.SINH_VIEN
                              from tc in db.TIEU_CHI
                              from tg in db.THOIGIAN_XET    
                              where kq.Mssv == sv.Mssv && kq.MaTieuChi == tc.MaTieuChi && kq.MaThoiGian == tg.MaThoiGian
                              select new Kq_Theo_tcDTO 
                              {
                                  Mssv=kq.Mssv,
                                  HoTen=sv.HoTen,
                                  TenTieuChi=tc.TenTieuChi,
                                  TienDoHDBatBuoc=kq.TienDoHDBatBuoc,
                                  TienDoHDKhac=kq.TienDoHDKhac,
                                  ThoiGian=string.Concat(tg.TuNgay,"-", tg.DenNgay)
                              }).ToList();
            List<Kq_Theo_tcDTO> Loadrecord = new List<Kq_Theo_tcDTO>();
            Loadrecord = kq_Theo_TcDTOs.Skip((page - 1) * recordNum).Take(recordNum).ToList();
            return Loadrecord;
        }
    }
}
