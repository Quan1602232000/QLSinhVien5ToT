using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLySinhVien5ToT.BLL;
using Microsoft.SqlServer.Server;
using QuanLySinhVien5ToT.DTO;

namespace QuanLySinhVien5ToT
{
    public partial class KQ_Theo_TC : UserControl
    {
        public KQ_Theo_TC()
        {
            InitializeComponent();
        }
        private int flagLuu = 0;
        DT_QL_SV5TOT_5Entities2 db = Mydb.GetInstance();
        KQ_Theo_tcBLL KQ_Theo_TcBLL = new KQ_Theo_tcBLL();
        int pagenumber = 1;
        int numberRecord = 8;
        private void KQ_Theo_TC_Load(object sender, EventArgs e)
        {
            loadcbFillterTG();
            loadcbFillterTC();
            showKQ(KQ_Theo_TcBLL.DsKQ(pagenumber, numberRecord));
            
        }
        void showKQ(List<Kq_Theo_tcDTO> listkq)
        {
            dtgv_KQTTC.DataSource = listkq;
            dtgv_KQTTC.Columns[5].DefaultCellStyle.Format = "dd/MM/yyyy";
        }
        private void guna2DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
            string name = dtgv_KQTTC.Columns[e.ColumnIndex].Name;
            if (name == "XemChiTiet")
            {
                pn_Them_SuaKQ.Visible = false;
                pn_XemChiTiet.Visible = true;
                dtgv_KQTTC.Width = 674;
            }
            if (name == "Sua")
            {
                pn_XemChiTiet.Visible = false;
                pn_Them_SuaKQ.Visible = true;
                dtgv_KQTTC.Width = 674;
                btnLuuKQ.Visible = true;
                flagLuu = 1;
            }
        }

        private void btnX_XemChiTiet_Click(object sender, EventArgs e)
        {
            pn_XemChiTiet.Visible = false;
            pn_Them_SuaKQ.Visible = false;
            dtgv_KQTTC.Width = 981;
        }
        void loadcbFillterTC()
        {
            cbFillterTC.DataSource = KQ_Theo_TcBLL.dstieuchi();
            cbFillterTC.DisplayMember = "TenTieuChi";
            cbFillterTC.ValueMember = "MaTieuChi";
        }

        private void btnThemKQ_Click(object sender, EventArgs e)
        {
            pn_XemChiTiet.Visible = false;
            pn_Them_SuaKQ.Visible = true;
            dtgv_KQTTC.Width = 674;
            btnLuuKQ.Visible = true;
            flagLuu = 0;
        }

        private void btnLuuKQ_Click(object sender, EventArgs e)
        {
            pn_XemChiTiet.Visible = false;
            pn_Them_SuaKQ.Visible = false;
            dtgv_KQTTC.Width = 981;
            btnLuuKQ.Visible = false;
            if (flagLuu == 0)
            {
                KQ_THEO_TIEUCHI kq = KQ_Theo_TcBLL.Get(x => x.Mssv.Trim() == txtMssvThem_Sua.Text.Trim() && x.MaTieuChi.Trim()==cbTCThem_Sua.Text.Trim());

            }
        }

        private void btnXThemKQ_Click(object sender, EventArgs e)
        {
            pn_XemChiTiet.Visible = false;
            pn_Them_SuaKQ.Visible = false;
            dtgv_KQTTC.Width = 981;
            btnLuuKQ.Visible = false;
        }

        void loadcbFillterTG()
        {
            cbFillterThoiGian.DataSource = KQ_Theo_TcBLL.dsthoigian();
            cbFillterThoiGian.DisplayMember="FullTime";
            cbFillterThoiGian.ValueMember = "MaThoiGian";
            //List<string> ListTime = KQ_Theo_TcBLL.showTime();
            //foreach (var item in ListTime)
            //{
            //    cbFillterThoiGian.Items.Add(item);
            //}
        }

        

        private void btnSuaTC_Click(object sender, EventArgs e)
        {
            Edit_Tieu_Chi UC = new Edit_Tieu_Chi();
            this.Controls.Add(UC);
            UC.BringToFront();
            UC.Location = new Point(170, 48);
        }

        private void btnprevious_Click(object sender, EventArgs e)
        {
            if (pagenumber - 1 > 0)
            {
                pagenumber--;
                showKQ(KQ_Theo_TcBLL.DsKQ(pagenumber, numberRecord));

            }
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            int totlalrecord = 0;
            totlalrecord = db.TIEU_CHUAN.Count();
            if (pagenumber - 1 < totlalrecord / numberRecord)
            {
                pagenumber++;
                showKQ(KQ_Theo_TcBLL.DsKQ(pagenumber, numberRecord));
            }
        }
    }
}
