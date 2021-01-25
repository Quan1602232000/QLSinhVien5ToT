using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLySinhVien5ToT.DAL;
using QuanLySinhVien5ToT.DTO;

namespace QuanLySinhVien5ToT.BLL
{
    public class KQ_Theo_tcBLL
    {
        private Thoi_Gian_XetDTO thoi_Gian_XetDTO = new Thoi_Gian_XetDTO();
        private Tieu_ChiDAL tieu_ChiDAL = new Tieu_ChiDAL();
        private Kq_Theo_tcDAL kq_Theo_TcDAL = new Kq_Theo_tcDAL();
        private Thoi_Gian_XetDAL thoi_Gian_XetDAL = new Thoi_Gian_XetDAL();
        private GenericUnitOfWork unitOfWorkNV = new GenericUnitOfWork(Mydb.GetInstance());
        public void Add(KQ_THEO_TIEUCHI entity)
        {
            unitOfWorkNV.Repository<KQ_THEO_TIEUCHI>().Add(entity);
            unitOfWorkNV.SaveChanges();
        }
        public void Delete(KQ_THEO_TIEUCHI entity)
        {
            unitOfWorkNV.Repository<KQ_THEO_TIEUCHI>().Delete(entity);
            unitOfWorkNV.SaveChanges();
        }
        public void Edit(KQ_THEO_TIEUCHI entity)
        {
            unitOfWorkNV.SaveChanges();
        }
        public KQ_THEO_TIEUCHI Get(Func<KQ_THEO_TIEUCHI, bool> predicate)
        {
            return unitOfWorkNV.Repository<KQ_THEO_TIEUCHI>().Get(predicate);
        }
        public List<KQ_THEO_TIEUCHI> GetAll(Func<KQ_THEO_TIEUCHI, bool> predicate = null)
        {
            return unitOfWorkNV.Repository<KQ_THEO_TIEUCHI>().GetAll(predicate);
        }
        public List<Thoi_Gian_XetDTO> dsthoigian()
        {
            return thoi_Gian_XetDAL.getthoigian();
        }
        public List<Kq_Theo_tcDTO> DsKQ(int page, int recordNum)
        {
            return kq_Theo_TcDAL.getKQ(page, recordNum);
        }
        public List<Tieu_ChiDTO> dstieuchi()
        {
            return tieu_ChiDAL.gettieuchi();
        }
        //public List<string> showTime()
        //{
        //    List<String> ListTime = new List<string>();
        //    thoi_Gian_XetDAL.getthoigian()
        //        .ForEach(x => ListTime.Add(((DateTime)x.TuNgay).ToString("dd/MM/yyyy") + "-" + ((DateTime)x.DenNgay).ToString("dd/MM/yyyy")));
        //    return ListTime;
        //}
    }
}
