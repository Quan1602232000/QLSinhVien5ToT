﻿namespace QuanLySinhVien5ToT
{
    partial class QL_DonVi
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dtgv_DV = new Guna.UI2.WinForms.Guna2DataGridView();
            this.MaDonVi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenDonVi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Sua = new System.Windows.Forms.DataGridViewImageColumn();
            this.Xoa = new System.Windows.Forms.DataGridViewImageColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.btnThemDV = new Guna.UI2.WinForms.Guna2Button();
            this.pn_ThemSua_DV = new Guna.UI2.WinForms.Guna2Panel();
            this.btnLuuDV = new Guna.UI2.WinForms.Guna2Button();
            this.lbTenDV = new System.Windows.Forms.Label();
            this.lbMaDV = new System.Windows.Forms.Label();
            this.txtTenDV = new Guna.UI2.WinForms.Guna2TextBox();
            this.btnX_DV = new Guna.UI2.WinForms.Guna2ImageButton();
            this.lbTieuDe = new System.Windows.Forms.Label();
            this.guna2Separator1 = new Guna.UI2.WinForms.Guna2Separator();
            this.txtMaDV = new Guna.UI2.WinForms.Guna2TextBox();
            this.txtSearch_DV = new Guna.UI2.WinForms.Guna2TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_DV)).BeginInit();
            this.pn_ThemSua_DV.SuspendLayout();
            this.SuspendLayout();
            // 
            // dtgv_DV
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            this.dtgv_DV.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dtgv_DV.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtgv_DV.BackgroundColor = System.Drawing.Color.White;
            this.dtgv_DV.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dtgv_DV.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.dtgv_DV.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtgv_DV.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dtgv_DV.ColumnHeadersHeight = 21;
            this.dtgv_DV.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaDonVi,
            this.TenDonVi,
            this.Sua,
            this.Xoa});
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgv_DV.DefaultCellStyle = dataGridViewCellStyle3;
            this.dtgv_DV.EnableHeadersVisualStyles = false;
            this.dtgv_DV.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dtgv_DV.Location = new System.Drawing.Point(28, 61);
            this.dtgv_DV.Name = "dtgv_DV";
            this.dtgv_DV.RowHeadersVisible = false;
            this.dtgv_DV.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dtgv_DV.Size = new System.Drawing.Size(985, 577);
            this.dtgv_DV.TabIndex = 0;
            this.dtgv_DV.Theme = Guna.UI2.WinForms.Enums.DataGridViewPresetThemes.Default;
            this.dtgv_DV.ThemeStyle.AlternatingRowsStyle.BackColor = System.Drawing.Color.White;
            this.dtgv_DV.ThemeStyle.AlternatingRowsStyle.Font = null;
            this.dtgv_DV.ThemeStyle.AlternatingRowsStyle.ForeColor = System.Drawing.Color.Empty;
            this.dtgv_DV.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = System.Drawing.Color.Empty;
            this.dtgv_DV.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = System.Drawing.Color.Empty;
            this.dtgv_DV.ThemeStyle.BackColor = System.Drawing.Color.White;
            this.dtgv_DV.ThemeStyle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dtgv_DV.ThemeStyle.HeaderStyle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.dtgv_DV.ThemeStyle.HeaderStyle.BorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dtgv_DV.ThemeStyle.HeaderStyle.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            this.dtgv_DV.ThemeStyle.HeaderStyle.ForeColor = System.Drawing.Color.White;
            this.dtgv_DV.ThemeStyle.HeaderStyle.HeaightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            this.dtgv_DV.ThemeStyle.HeaderStyle.Height = 21;
            this.dtgv_DV.ThemeStyle.ReadOnly = false;
            this.dtgv_DV.ThemeStyle.RowsStyle.BackColor = System.Drawing.Color.White;
            this.dtgv_DV.ThemeStyle.RowsStyle.BorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.dtgv_DV.ThemeStyle.RowsStyle.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            this.dtgv_DV.ThemeStyle.RowsStyle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.dtgv_DV.ThemeStyle.RowsStyle.Height = 22;
            this.dtgv_DV.ThemeStyle.RowsStyle.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dtgv_DV.ThemeStyle.RowsStyle.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.dtgv_DV.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgv_DV_CellContentClick);
            // 
            // MaDonVi
            // 
            this.MaDonVi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.MaDonVi.DataPropertyName = "MaDonVi";
            this.MaDonVi.HeaderText = "Mã Đơn Vị";
            this.MaDonVi.Name = "MaDonVi";
            this.MaDonVi.Width = 98;
            // 
            // TenDonVi
            // 
            this.TenDonVi.DataPropertyName = "TenDonVi";
            this.TenDonVi.HeaderText = "Tên Đơn Vị";
            this.TenDonVi.Name = "TenDonVi";
            // 
            // Sua
            // 
            this.Sua.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.Sua.HeaderText = "";
            this.Sua.Name = "Sua";
            this.Sua.Width = 20;
            // 
            // Xoa
            // 
            this.Xoa.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.Xoa.HeaderText = "";
            this.Xoa.Name = "Xoa";
            this.Xoa.Width = 20;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.label3.ForeColor = System.Drawing.Color.Gray;
            this.label3.Location = new System.Drawing.Point(29, 31);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 15);
            this.label3.TabIndex = 19;
            this.label3.Text = "Đơn Vị :";
            // 
            // btnThemDV
            // 
            this.btnThemDV.BackColor = System.Drawing.Color.Transparent;
            this.btnThemDV.BorderRadius = 20;
            this.btnThemDV.CheckedState.Parent = this.btnThemDV;
            this.btnThemDV.CustomImages.Parent = this.btnThemDV;
            this.btnThemDV.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemDV.ForeColor = System.Drawing.Color.White;
            this.btnThemDV.HoverState.Parent = this.btnThemDV;
            this.btnThemDV.Image = global::QuanLySinhVien5ToT.Properties.Resources.icons8_plus_96;
            this.btnThemDV.Location = new System.Drawing.Point(760, 16);
            this.btnThemDV.Name = "btnThemDV";
            this.btnThemDV.ShadowDecoration.Parent = this.btnThemDV;
            this.btnThemDV.Size = new System.Drawing.Size(202, 39);
            this.btnThemDV.TabIndex = 24;
            this.btnThemDV.Text = "Thêm Đơn Vị";
            this.btnThemDV.Click += new System.EventHandler(this.btnThemDV_Click);
            // 
            // pn_ThemSua_DV
            // 
            this.pn_ThemSua_DV.BorderRadius = 20;
            this.pn_ThemSua_DV.Controls.Add(this.btnLuuDV);
            this.pn_ThemSua_DV.Controls.Add(this.lbTenDV);
            this.pn_ThemSua_DV.Controls.Add(this.lbMaDV);
            this.pn_ThemSua_DV.Controls.Add(this.txtTenDV);
            this.pn_ThemSua_DV.Controls.Add(this.btnX_DV);
            this.pn_ThemSua_DV.Controls.Add(this.lbTieuDe);
            this.pn_ThemSua_DV.Controls.Add(this.guna2Separator1);
            this.pn_ThemSua_DV.Controls.Add(this.txtMaDV);
            this.pn_ThemSua_DV.FillColor = System.Drawing.Color.White;
            this.pn_ThemSua_DV.Location = new System.Drawing.Point(680, 61);
            this.pn_ThemSua_DV.Name = "pn_ThemSua_DV";
            this.pn_ThemSua_DV.ShadowDecoration.Parent = this.pn_ThemSua_DV;
            this.pn_ThemSua_DV.Size = new System.Drawing.Size(336, 266);
            this.pn_ThemSua_DV.TabIndex = 25;
            this.pn_ThemSua_DV.Visible = false;
            // 
            // btnLuuDV
            // 
            this.btnLuuDV.BackColor = System.Drawing.Color.Transparent;
            this.btnLuuDV.BorderRadius = 20;
            this.btnLuuDV.CheckedState.Parent = this.btnLuuDV;
            this.btnLuuDV.CustomImages.Parent = this.btnLuuDV;
            this.btnLuuDV.FillColor = System.Drawing.Color.LimeGreen;
            this.btnLuuDV.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLuuDV.ForeColor = System.Drawing.Color.White;
            this.btnLuuDV.HoverState.Parent = this.btnLuuDV;
            this.btnLuuDV.Location = new System.Drawing.Point(258, 210);
            this.btnLuuDV.Name = "btnLuuDV";
            this.btnLuuDV.ShadowDecoration.Parent = this.btnLuuDV;
            this.btnLuuDV.Size = new System.Drawing.Size(60, 35);
            this.btnLuuDV.TabIndex = 26;
            this.btnLuuDV.Text = "Lưu";
            this.btnLuuDV.Visible = false;
            this.btnLuuDV.Click += new System.EventHandler(this.btnLuuDV_Click);
            // 
            // lbTenDV
            // 
            this.lbTenDV.AutoSize = true;
            this.lbTenDV.BackColor = System.Drawing.Color.Transparent;
            this.lbTenDV.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.lbTenDV.ForeColor = System.Drawing.Color.Gray;
            this.lbTenDV.Location = new System.Drawing.Point(20, 146);
            this.lbTenDV.Name = "lbTenDV";
            this.lbTenDV.Size = new System.Drawing.Size(68, 15);
            this.lbTenDV.TabIndex = 25;
            this.lbTenDV.Text = "Tên Đơn Vị";
            // 
            // lbMaDV
            // 
            this.lbMaDV.AutoSize = true;
            this.lbMaDV.BackColor = System.Drawing.Color.Transparent;
            this.lbMaDV.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.lbMaDV.ForeColor = System.Drawing.Color.Gray;
            this.lbMaDV.Location = new System.Drawing.Point(21, 72);
            this.lbMaDV.Name = "lbMaDV";
            this.lbMaDV.Size = new System.Drawing.Size(65, 15);
            this.lbMaDV.TabIndex = 24;
            this.lbMaDV.Text = "Mã Đơn Vị";
            // 
            // txtTenDV
            // 
            this.txtTenDV.BackColor = System.Drawing.Color.Transparent;
            this.txtTenDV.BorderRadius = 20;
            this.txtTenDV.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtTenDV.DefaultText = "";
            this.txtTenDV.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtTenDV.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtTenDV.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtTenDV.DisabledState.Parent = this.txtTenDV;
            this.txtTenDV.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtTenDV.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
            this.txtTenDV.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtTenDV.FocusedState.Parent = this.txtTenDV;
            this.txtTenDV.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txtTenDV.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtTenDV.HoverState.Parent = this.txtTenDV;
            this.txtTenDV.Location = new System.Drawing.Point(23, 164);
            this.txtTenDV.Name = "txtTenDV";
            this.txtTenDV.PasswordChar = '\0';
            this.txtTenDV.PlaceholderText = "";
            this.txtTenDV.SelectedText = "";
            this.txtTenDV.ShadowDecoration.Parent = this.txtTenDV;
            this.txtTenDV.Size = new System.Drawing.Size(295, 36);
            this.txtTenDV.TabIndex = 23;
            // 
            // btnX_DV
            // 
            this.btnX_DV.BackColor = System.Drawing.Color.White;
            this.btnX_DV.Checked = true;
            this.btnX_DV.CheckedState.ImageSize = new System.Drawing.Size(30, 30);
            this.btnX_DV.CheckedState.Parent = this.btnX_DV;
            this.btnX_DV.HoverState.ImageSize = new System.Drawing.Size(30, 30);
            this.btnX_DV.HoverState.Parent = this.btnX_DV;
            this.btnX_DV.Image = global::QuanLySinhVien5ToT.Properties.Resources.icons8_macos_close_96;
            this.btnX_DV.ImageRotate = 0F;
            this.btnX_DV.ImageSize = new System.Drawing.Size(25, 25);
            this.btnX_DV.Location = new System.Drawing.Point(288, 15);
            this.btnX_DV.Name = "btnX_DV";
            this.btnX_DV.PressedState.ImageSize = new System.Drawing.Size(64, 64);
            this.btnX_DV.PressedState.Parent = this.btnX_DV;
            this.btnX_DV.Size = new System.Drawing.Size(30, 31);
            this.btnX_DV.TabIndex = 19;
            this.btnX_DV.Click += new System.EventHandler(this.btnX_DV_Click);
            // 
            // lbTieuDe
            // 
            this.lbTieuDe.AutoSize = true;
            this.lbTieuDe.BackColor = System.Drawing.Color.Transparent;
            this.lbTieuDe.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.lbTieuDe.ForeColor = System.Drawing.Color.Gray;
            this.lbTieuDe.Location = new System.Drawing.Point(20, 22);
            this.lbTieuDe.Name = "lbTieuDe";
            this.lbTieuDe.Size = new System.Drawing.Size(109, 21);
            this.lbTieuDe.TabIndex = 20;
            this.lbTieuDe.Text = "Thêm Đơn Vị";
            // 
            // guna2Separator1
            // 
            this.guna2Separator1.BackColor = System.Drawing.Color.White;
            this.guna2Separator1.Location = new System.Drawing.Point(23, 55);
            this.guna2Separator1.Name = "guna2Separator1";
            this.guna2Separator1.Size = new System.Drawing.Size(295, 10);
            this.guna2Separator1.TabIndex = 21;
            // 
            // txtMaDV
            // 
            this.txtMaDV.BackColor = System.Drawing.Color.Transparent;
            this.txtMaDV.BorderRadius = 20;
            this.txtMaDV.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtMaDV.DefaultText = "";
            this.txtMaDV.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtMaDV.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtMaDV.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtMaDV.DisabledState.Parent = this.txtMaDV;
            this.txtMaDV.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtMaDV.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
            this.txtMaDV.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtMaDV.FocusedState.Parent = this.txtMaDV;
            this.txtMaDV.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txtMaDV.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtMaDV.HoverState.Parent = this.txtMaDV;
            this.txtMaDV.Location = new System.Drawing.Point(24, 93);
            this.txtMaDV.Name = "txtMaDV";
            this.txtMaDV.PasswordChar = '\0';
            this.txtMaDV.PlaceholderText = "";
            this.txtMaDV.SelectedText = "";
            this.txtMaDV.ShadowDecoration.Parent = this.txtMaDV;
            this.txtMaDV.Size = new System.Drawing.Size(295, 36);
            this.txtMaDV.TabIndex = 22;
            this.txtMaDV.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaDV_KeyPress);
            // 
            // txtSearch_DV
            // 
            this.txtSearch_DV.BackColor = System.Drawing.Color.Transparent;
            this.txtSearch_DV.BorderRadius = 10;
            this.txtSearch_DV.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtSearch_DV.DefaultText = "";
            this.txtSearch_DV.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtSearch_DV.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtSearch_DV.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtSearch_DV.DisabledState.Parent = this.txtSearch_DV;
            this.txtSearch_DV.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtSearch_DV.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtSearch_DV.FocusedState.Parent = this.txtSearch_DV;
            this.txtSearch_DV.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txtSearch_DV.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtSearch_DV.HoverState.Parent = this.txtSearch_DV;
            this.txtSearch_DV.Location = new System.Drawing.Point(86, 21);
            this.txtSearch_DV.Name = "txtSearch_DV";
            this.txtSearch_DV.PasswordChar = '\0';
            this.txtSearch_DV.PlaceholderText = "";
            this.txtSearch_DV.SelectedText = "";
            this.txtSearch_DV.ShadowDecoration.Parent = this.txtSearch_DV;
            this.txtSearch_DV.Size = new System.Drawing.Size(590, 36);
            this.txtSearch_DV.TabIndex = 26;
            this.txtSearch_DV.TextChanged += new System.EventHandler(this.txtSearch_DV_TextChanged);
            // 
            // QL_DonVi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtSearch_DV);
            this.Controls.Add(this.pn_ThemSua_DV);
            this.Controls.Add(this.btnThemDV);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dtgv_DV);
            this.Name = "QL_DonVi";
            this.Size = new System.Drawing.Size(1044, 661);
            this.Load += new System.EventHandler(this.QL_DonVi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_DV)).EndInit();
            this.pn_ThemSua_DV.ResumeLayout(false);
            this.pn_ThemSua_DV.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Guna.UI2.WinForms.Guna2DataGridView dtgv_DV;
        private System.Windows.Forms.Label label3;
        private Guna.UI2.WinForms.Guna2Button btnThemDV;
        private Guna.UI2.WinForms.Guna2Panel pn_ThemSua_DV;
        private Guna.UI2.WinForms.Guna2ImageButton btnX_DV;
        private System.Windows.Forms.Label lbTieuDe;
        private Guna.UI2.WinForms.Guna2Separator guna2Separator1;
        private Guna.UI2.WinForms.Guna2TextBox txtTenDV;
        private Guna.UI2.WinForms.Guna2TextBox txtMaDV;
        private System.Windows.Forms.Label lbTenDV;
        private System.Windows.Forms.Label lbMaDV;
        private Guna.UI2.WinForms.Guna2Button btnLuuDV;
        private Guna.UI2.WinForms.Guna2TextBox txtSearch_DV;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaDonVi;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenDonVi;
        private System.Windows.Forms.DataGridViewImageColumn Sua;
        private System.Windows.Forms.DataGridViewImageColumn Xoa;
    }
}
