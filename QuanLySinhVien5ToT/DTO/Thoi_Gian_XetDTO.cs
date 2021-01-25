﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLySinhVien5ToT.DTO
{
    public class Thoi_Gian_XetDTO
    {
        public int MaThoiGian { get; set; }
        public DateTime? TuNgay { get; set; }
        public DateTime? DenNgay { get; set; }
        public string FullTime { get { return ((DateTime)TuNgay).ToString("dd/MM/yyyy") + "-" + ((DateTime)DenNgay).ToString("dd/MM/yyyy"); } }
       
    }
}
