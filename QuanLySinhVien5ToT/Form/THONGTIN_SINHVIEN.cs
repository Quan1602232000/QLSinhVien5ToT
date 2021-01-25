﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLySinhVien5ToT.BLL;
using System.Data.Entity.Core.Metadata.Edm;
using QuanLySinhVien5ToT.DTO;
using System.Windows.Forms.DataVisualization.Charting;

namespace QuanLySinhVien5ToT
{
    public partial class THONGTIN_SINHVIEN : UserControl
    {
        public THONGTIN_SINHVIEN()
        {
            InitializeComponent();
        }
        private int flagLuu = 0;
        private int flagDT = 0;
        DT_QL_SV5TOT_5Entities2 db = Mydb.GetInstance();
        SinhVienBLL sinhVienBLL = new SinhVienBLL();
        private void THONGTIN_SINHVIEN_Load(object sender, EventArgs e)
        {
            ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
            loadcbFillterDonVi();
            loadcbFillterKhoa();
            loadtxtFillter();
            loadcbGioiTinh();
            loadcbKhoa();
            loadcbDonVi();
            
            //Fillter();
        }
        void ShowSinhVien(List<Sinh_VienDTO> listsv)
        {
            dtgv_SV.DataSource = listsv;
            flagDT = 0;
        }

        private void btnThemKQ_Click(object sender, EventArgs e)
        {
            pn_Sort.Visible = false;
            pn_ThemSua.Visible = true;
            btnLuuSV.Visible = true;
            flagLuu = 0;
            clear();
            maxlength();
        }

        void clear()
        {
            txtMssv.Text = "";
            txtHoTen.Text = "";
            txtNoiSinh.Text = "";
            txtLop.Text = "";
            txtSDT.Text = "";
            txtEmail.Text = "";
        }

        private void dtgv_SV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string name = dtgv_SV.Columns[e.ColumnIndex].Name;
            if (name == "Xem")
            {
                pn_Sort.Visible = false;
                pn_ThemSua.Visible = true;
                btnLuuSV.Visible = false;
                btnThemKQ.Enabled = false;
                bindingSV();
            }
            if (name == "Sua")
            {
                pn_Sort.Visible = false;
                pn_ThemSua.Visible = true;
                btnLuuSV.Visible = true;
                flagLuu = 1;
                btnThemKQ.Enabled = false;
                bindingSV();
                maxlength();
            }
            if (name == "Xoa")
            {
                SINH_VIEN nv = Mydb.GetInstance().SINH_VIEN.Where(p => p.Mssv == txtMssv.Text.Trim()).SingleOrDefault();
                USER user = Mydb.GetInstance().USERs.Where(p => p.IDuser == nv.IDuser).SingleOrDefault();

                Mydb.GetInstance().USERs.Remove(user);
                sinhVienBLL.Delete(nv);

                ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
            }
        }

        private void btnLuuSV_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtMssv.Text.Trim()))
            {
                txtMssv.BorderColor = Color.Red;
                txtMssv.PlaceholderText = "bạn chưa nhập mssv";
                txtMssv.PlaceholderForeColor = Color.Red;
                if (string.IsNullOrEmpty(txtSDT.Text.Trim()))
                {
                    txtSDT.BorderColor = Color.Red;
                    txtSDT.PlaceholderText = "bạn chưa nhập SDT";
                    txtSDT.PlaceholderForeColor = Color.Red;
                }
            } 
            else
            {
                pn_Sort.Visible = true;
                pn_ThemSua.Visible = false;
                btnLuuSV.Visible = false;
                btnThemKQ.Enabled = true;
                if (flagLuu == 0)
                {
                    SINH_VIEN sinhvien = sinhVienBLL.Get(x => x.Mssv.Trim() == txtMssv.Text.Trim());
                    if (sinhvien == null)
                    {
                        sinhvien = new SINH_VIEN();
                        sinhvien.Mssv = txtMssv.Text;
                        if (txtMssv.Text.Trim() == "")
                        {
                            MessageBox.Show("Mã Số Sinh Viên Không được để trống");
                        }
                        else
                        {
                            sinhvien.HoTen = txtHoTen.Text;
                            sinhvien.NgaySinh = dtpkNgaySinh.Value;
                            sinhvien.GioiTinh = cbGioiTinh.Text;
                            sinhvien.NoiSinh = txtNoiSinh.Text;
                            sinhvien.SDT = txtSDT.Text;
                            sinhvien.Lop = txtLop.Text;
                            sinhvien.DonVi = cbDonVi.Text;
                            sinhvien.Khoa = cbKhoa.Text;
                            sinhvien.Email = txtEmail.Text;
                            

                            sinhVienBLL.Add(sinhvien);
                            MessageBox.Show("Lưu Thành Công");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Mã Số Sinh Viên Không Được Trùng!!!!!");
                    }
                    ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
                }
                else
                {
                    try
                    {
                        SINH_VIEN sv = sinhVienBLL.Get(x => x.Mssv.Trim() == txtMssv.Text.Trim());

                        sv.HoTen = txtHoTen.Text;
                        sv.NgaySinh = dtpkNgaySinh.Value;
                        sv.GioiTinh = cbGioiTinh.Text;
                        sv.NoiSinh = txtNoiSinh.Text;
                        sv.SDT = txtSDT.Text;
                        sv.Lop = txtLop.Text;
                        sv.DonVi = cbDonVi.Text;
                        sv.Khoa = cbKhoa.Text;
                        sv.Email = txtEmail.Text;
                        //sv.IDuser = Convert.ToInt32(txtUserID.Text);

                        sinhVienBLL.Edit(sv);
                        MessageBox.Show("Sửa Thành Công");
                    }
                    catch (NullReferenceException)
                    {
                        MessageBox.Show("Vui lòng chọn nhân viên cần sửa thông tin");
                    }

                    ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
                }
            }
            
        }

        private void btnXThemSV_Click(object sender, EventArgs e)
        {
            pn_Sort.Visible = true;
            pn_ThemSua.Visible = false;
            btnLuuSV.Visible = false;
            btnThemKQ.Enabled = true;
            ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
        }


        void loadcbGioiTinh()
        {
            cbGioiTinh.Items.Clear();
            cbGioiTinh.Items.Add("Nam");
            cbGioiTinh.Items.Add("Nữ");
            cbGioiTinh.SelectedItem = 1;
        }
        void loadcbKhoa()
        {
            cbKhoa.Items.Clear();
            cbKhoa.Items.Add("K40");
            cbKhoa.Items.Add("K41");
            cbKhoa.Items.Add("K42");
            cbKhoa.Items.Add("K43");
            cbKhoa.Items.Add("K44");
            cbKhoa.Items.Add("K45");
            cbKhoa.Items.Add("K46");
            cbKhoa.SelectedItem = cbKhoa.FindStringExact("K44");
        }
        void loadcbDonVi()
        {
            cbDonVi.DataSource = sinhVienBLL.dsDonVi();
            cbDonVi.DisplayMember = "MaDonVi";
            cbDonVi.ValueMember = "MaDonVi";
        }
        void loadcbFillterDonVi()
        {
            cbFillter_DonVi.DataSource = sinhVienBLL.GetAlDonVi();
            cbFillter_DonVi.DisplayMember = "MaDonVi";
            cbFillter_DonVi.ValueMember = "MaDonVi";
            cbFillter_DonVi.SelectedItem = null;
            cbFillter_DonVi.Text = "BIT";
        }
        void loadcbFillterKhoa()
        {
            //cbFillter_Khoa.Items.Clear();
            cbFillter_Khoa.Items.Add("K40");
            cbFillter_Khoa.Items.Add("K41");
            cbFillter_Khoa.Items.Add("K42");
            cbFillter_Khoa.Items.Add("K43");
            cbFillter_Khoa.Items.Add("K44");
            cbFillter_Khoa.Items.Add("K45");
            cbFillter_Khoa.Items.Add("K46");
            cbFillter_Khoa.SelectedItem = null;
            cbFillter_Khoa.Text = "K44";
        }
        void loadtxtFillter()
        {
            txtFillterLop.Text = "EC001";
        }
        void bindingSV()
        {
            txtMssv.DataBindings.Clear();
            txtMssv.DataBindings.Add("Text", dtgv_SV.DataSource, "Mssv");
            txtHoTen.DataBindings.Clear();
            txtHoTen.DataBindings.Add("Text", dtgv_SV.DataSource, "HoTen");
            dtpkNgaySinh.DataBindings.Clear();
            dtpkNgaySinh.DataBindings.Add("Text", dtgv_SV.DataSource, "NgaySinh");
            cbGioiTinh.DataBindings.Clear();
            cbGioiTinh.DataBindings.Add("Text", dtgv_SV.DataSource, "GioiTinh");
            txtNoiSinh.DataBindings.Clear();
            txtNoiSinh.DataBindings.Add("Text", dtgv_SV.DataSource, "NoiSinh");
            txtSDT.DataBindings.Clear();
            txtSDT.DataBindings.Add("Text", dtgv_SV.DataSource, "SDT");
            txtLop.DataBindings.Clear();
            txtLop.DataBindings.Add("Text", dtgv_SV.DataSource, "Lop");
            cbDonVi.DataBindings.Clear();
            cbDonVi.DataBindings.Add("Text", dtgv_SV.DataSource, "DonVi");
            cbKhoa.DataBindings.Clear();
            cbKhoa.DataBindings.Add("Text", dtgv_SV.DataSource, "Khoa");
            txtEmail.DataBindings.Clear();
            txtEmail.DataBindings.Add("Text", dtgv_SV.DataSource, "Email");
        }

        private void txtSaerch_TextChanged(object sender, EventArgs e)
        {
            dtgv_SV.DataSource = sinhVienBLL.Search_Ten(txtSaerch.Text);
        }


        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            dtgv_SV.DataSource = sinhVienBLL.Fillter_SV(cbFillter_DonVi.Text, cbFillter_Khoa.Text, txtFillterLop.Text,pagenumber,numberRecord);
            flagDT = 1;
        }

        int pagenumber = 1;
        int numberRecord = 8;

        private void btnNext_Click(object sender, EventArgs e)
        {
            int totlalrecord = 0;
            totlalrecord = db.SINH_VIEN.Count();
            if (pagenumber - 1 < totlalrecord / numberRecord)
            {
                pagenumber++;
                if (flagDT == 0)
                {
                    ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
                }
                else if (flagDT == 1)
                {
                    dtgv_SV.DataSource = sinhVienBLL.Fillter_SV(cbFillter_DonVi.Text, cbFillter_Khoa.Text, txtFillterLop.Text, pagenumber, numberRecord);
                }

            }
        }

        private void btnprevious_Click(object sender, EventArgs e)
        {
            if (pagenumber - 1 > 0)
            {
                pagenumber--;
                if (flagDT == 0)
                {
                    ShowSinhVien(sinhVienBLL.DsSinhVien(pagenumber, numberRecord));
                }
                else if (flagDT == 1)
                {
                    dtgv_SV.DataSource = sinhVienBLL.Fillter_SV(cbFillter_DonVi.Text, cbFillter_Khoa.Text, txtFillterLop.Text, pagenumber, numberRecord);
                }

            }
        }
        void maxlength()
        {
            txtMssv.MaxLength = 11;
            txtSDT.MaxLength = 10;
        }
        private void txtMssv_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
        (e.KeyChar != '.'))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập kí tự số !!!");
            }

        }
        private void txtSDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập kí tự số !!!");
            }
        }

       
    }
}
