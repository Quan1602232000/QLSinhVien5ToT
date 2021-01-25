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
    public partial class User_Role : UserControl
    {
        public User_Role()
        {
            InitializeComponent();
        }

        private void btnThemUser_Click(object sender, EventArgs e)
        {
            pn_Them_User.Visible = true;
            btnLuuUser.Visible = true;
            dtgv_User.Width = 650;
            lbTD.Text = "Thêm User";
        }

        private void dtgv_User_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string name = dtgv_User.Columns[e.ColumnIndex].Name;
            if (name == "Sua")
            {

                pn_Them_User.Visible = true;
                btnLuuUser.Visible = true;
                dtgv_User.Width = 650;
                lbTD.Text = "Sửa Thông Tin User";
            }
        }

        private void btnLuuUser_Click(object sender, EventArgs e)
        {
            pn_Them_User.Visible = false;
            btnLuuUser.Visible = false;
            dtgv_User.Width = 1011;
        }

        private void btnXUser_Click(object sender, EventArgs e)
        {
            pn_Them_User.Visible = false;
            btnLuuUser.Visible = false;
            dtgv_User.Width = 1011;
        }

        private void User_Role_Load(object sender, EventArgs e)
        {

        }

        private void btnSuaRole_Click(object sender, EventArgs e)
        {
            Edit_Role UC = new Edit_Role();
            this.Controls.Add(UC);
            UC.BringToFront();
            UC.Location = new Point(170, 48);
        }
    }
}
