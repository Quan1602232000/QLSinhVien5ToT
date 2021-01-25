using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLySinhVien5ToT
{
    public partial class Edit_Tieu_Chi : UserControl
    {
        public Edit_Tieu_Chi()
        {
            InitializeComponent();
        }

        private void btnThemTC_Click(object sender, EventArgs e)
        {
            pn_ThemTieuChi.Visible = true;
            btnLuuTC.Visible = true;
            dtgv_TC.Width = 352;

        }

        private void dtgv_TC_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string name = dtgv_TC.Columns[e.ColumnIndex].Name;
            if (name == "Sua")
            {

                pn_ThemTieuChi.Visible = true;
                btnLuuTC.Visible = true;
                dtgv_TC.Width = 352;

            }
        }

        private void btnX_TC_Click(object sender, EventArgs e)
        {
            pn_ThemTieuChi.Visible = false;
            btnLuuTC.Visible = false;
            dtgv_TC.Width = 659;
        }

        private void btnLuuTC_Click(object sender, EventArgs e)
        {
            pn_ThemTieuChi.Visible = false;
            btnLuuTC.Visible = false;
            dtgv_TC.Width = 659;
        }

        private void btnXForm_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
