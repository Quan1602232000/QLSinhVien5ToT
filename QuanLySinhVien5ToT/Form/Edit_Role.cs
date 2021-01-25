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
    public partial class Edit_Role : UserControl
    {
        public Edit_Role()
        {
            InitializeComponent();
        }

        private void btnThemRole_Click(object sender, EventArgs e)
        {
            pn_Them_Role.Visible = true;
            btnLuuRole.Visible = true;
            dtgv_Role.Width = 322;
            lbTD.Text = "Thêm Role";
        }

        private void dtgv_Role_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string name = dtgv_Role.Columns[e.ColumnIndex].Name;
            if (name == "Sua")
            {

                pn_Them_Role.Visible = true;
                btnLuuRole.Visible = true;
                dtgv_Role.Width = 322;
                lbTD.Text = "Sửa Role";
            }
        }

        private void btnXRole_Click(object sender, EventArgs e)
        {
            pn_Them_Role.Visible = false;
            btnLuuRole.Visible = false;
            dtgv_Role.Width = 572;
        }

        private void btnLuuRole_Click(object sender, EventArgs e)
        {
            pn_Them_Role.Visible = false;
            btnLuuRole.Visible = false;
            dtgv_Role.Width = 572;
        }

        private void btnXRole_Click_1(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
