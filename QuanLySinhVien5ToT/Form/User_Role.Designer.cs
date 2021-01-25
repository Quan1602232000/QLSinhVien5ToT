namespace QuanLySinhVien5ToT
{ 
    partial class User_Role
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dtgv_User = new Guna.UI2.WinForms.Guna2DataGridView();
            this.Username = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Password = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Role = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Sua = new System.Windows.Forms.DataGridViewImageColumn();
            this.Xoa = new System.Windows.Forms.DataGridViewImageColumn();
            this.guna2Panel1 = new Guna.UI2.WinForms.Guna2Panel();
            this.label13 = new System.Windows.Forms.Label();
            this.guna2ComboBox3 = new Guna.UI2.WinForms.Guna2ComboBox();
            this.guna2TextBox1 = new Guna.UI2.WinForms.Guna2TextBox();
            this.pn_Them_User = new Guna.UI2.WinForms.Guna2Panel();
            this.btnLuuUser = new Guna.UI2.WinForms.Guna2Button();
            this.label1 = new System.Windows.Forms.Label();
            this.guna2ComboBox5 = new Guna.UI2.WinForms.Guna2ComboBox();
            this.guna2TextBox3 = new Guna.UI2.WinForms.Guna2TextBox();
            this.guna2TextBox2 = new Guna.UI2.WinForms.Guna2TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lbTD = new System.Windows.Forms.Label();
            this.guna2Separator2 = new Guna.UI2.WinForms.Guna2Separator();
            this.btnXUser = new Guna.UI2.WinForms.Guna2ImageButton();
            this.btnSuaRole = new Guna.UI2.WinForms.Guna2Button();
            this.btnThemUser = new Guna.UI2.WinForms.Guna2Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_User)).BeginInit();
            this.guna2Panel1.SuspendLayout();
            this.pn_Them_User.SuspendLayout();
            this.SuspendLayout();
            // 
            // dtgv_User
            // 
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.White;
            this.dtgv_User.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle4;
            this.dtgv_User.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtgv_User.BackgroundColor = System.Drawing.Color.White;
            this.dtgv_User.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dtgv_User.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.dtgv_User.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtgv_User.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle5;
            this.dtgv_User.ColumnHeadersHeight = 21;
            this.dtgv_User.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Username,
            this.Password,
            this.Role,
            this.Sua,
            this.Xoa});
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgv_User.DefaultCellStyle = dataGridViewCellStyle6;
            this.dtgv_User.EnableHeadersVisualStyles = false;
            this.dtgv_User.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dtgv_User.Location = new System.Drawing.Point(17, 190);
            this.dtgv_User.Name = "dtgv_User";
            this.dtgv_User.RowHeadersVisible = false;
            this.dtgv_User.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dtgv_User.Size = new System.Drawing.Size(1011, 445);
            this.dtgv_User.TabIndex = 0;
            this.dtgv_User.Theme = Guna.UI2.WinForms.Enums.DataGridViewPresetThemes.Default;
            this.dtgv_User.ThemeStyle.AlternatingRowsStyle.BackColor = System.Drawing.Color.White;
            this.dtgv_User.ThemeStyle.AlternatingRowsStyle.Font = null;
            this.dtgv_User.ThemeStyle.AlternatingRowsStyle.ForeColor = System.Drawing.Color.Empty;
            this.dtgv_User.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = System.Drawing.Color.Empty;
            this.dtgv_User.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = System.Drawing.Color.Empty;
            this.dtgv_User.ThemeStyle.BackColor = System.Drawing.Color.White;
            this.dtgv_User.ThemeStyle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dtgv_User.ThemeStyle.HeaderStyle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.dtgv_User.ThemeStyle.HeaderStyle.BorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dtgv_User.ThemeStyle.HeaderStyle.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            this.dtgv_User.ThemeStyle.HeaderStyle.ForeColor = System.Drawing.Color.White;
            this.dtgv_User.ThemeStyle.HeaderStyle.HeaightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            this.dtgv_User.ThemeStyle.HeaderStyle.Height = 21;
            this.dtgv_User.ThemeStyle.ReadOnly = false;
            this.dtgv_User.ThemeStyle.RowsStyle.BackColor = System.Drawing.Color.White;
            this.dtgv_User.ThemeStyle.RowsStyle.BorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.dtgv_User.ThemeStyle.RowsStyle.Font = new System.Drawing.Font("Segoe UI", 10.5F);
            this.dtgv_User.ThemeStyle.RowsStyle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.dtgv_User.ThemeStyle.RowsStyle.Height = 22;
            this.dtgv_User.ThemeStyle.RowsStyle.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dtgv_User.ThemeStyle.RowsStyle.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.dtgv_User.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgv_User_CellContentClick);
            // 
            // Username
            // 
            this.Username.HeaderText = "Username";
            this.Username.Name = "Username";
            // 
            // Password
            // 
            this.Password.HeaderText = "Password";
            this.Password.Name = "Password";
            // 
            // Role
            // 
            this.Role.HeaderText = "Role";
            this.Role.Name = "Role";
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
            // guna2Panel1
            // 
            this.guna2Panel1.BorderRadius = 20;
            this.guna2Panel1.Controls.Add(this.label13);
            this.guna2Panel1.Controls.Add(this.guna2ComboBox3);
            this.guna2Panel1.Controls.Add(this.guna2TextBox1);
            this.guna2Panel1.FillColor = System.Drawing.Color.White;
            this.guna2Panel1.Location = new System.Drawing.Point(17, 65);
            this.guna2Panel1.Name = "guna2Panel1";
            this.guna2Panel1.ShadowDecoration.Parent = this.guna2Panel1;
            this.guna2Panel1.Size = new System.Drawing.Size(650, 119);
            this.guna2Panel1.TabIndex = 1;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.BackColor = System.Drawing.Color.Transparent;
            this.label13.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.label13.ForeColor = System.Drawing.Color.Gray;
            this.label13.Location = new System.Drawing.Point(21, 72);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(38, 15);
            this.label13.TabIndex = 16;
            this.label13.Text = "Role :";
            // 
            // guna2ComboBox3
            // 
            this.guna2ComboBox3.BackColor = System.Drawing.Color.Transparent;
            this.guna2ComboBox3.BorderRadius = 20;
            this.guna2ComboBox3.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.guna2ComboBox3.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.guna2ComboBox3.FocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2ComboBox3.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2ComboBox3.FocusedState.Parent = this.guna2ComboBox3;
            this.guna2ComboBox3.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.guna2ComboBox3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(68)))), ((int)(((byte)(88)))), ((int)(((byte)(112)))));
            this.guna2ComboBox3.HoverState.Parent = this.guna2ComboBox3;
            this.guna2ComboBox3.ItemHeight = 30;
            this.guna2ComboBox3.ItemsAppearance.Parent = this.guna2ComboBox3;
            this.guna2ComboBox3.Location = new System.Drawing.Point(65, 61);
            this.guna2ComboBox3.Name = "guna2ComboBox3";
            this.guna2ComboBox3.ShadowDecoration.Parent = this.guna2ComboBox3;
            this.guna2ComboBox3.Size = new System.Drawing.Size(305, 36);
            this.guna2ComboBox3.TabIndex = 15;
            // 
            // guna2TextBox1
            // 
            this.guna2TextBox1.BackColor = System.Drawing.Color.Transparent;
            this.guna2TextBox1.BorderRadius = 10;
            this.guna2TextBox1.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.guna2TextBox1.DefaultText = "";
            this.guna2TextBox1.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.guna2TextBox1.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.guna2TextBox1.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.guna2TextBox1.DisabledState.Parent = this.guna2TextBox1;
            this.guna2TextBox1.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.guna2TextBox1.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2TextBox1.FocusedState.Parent = this.guna2TextBox1;
            this.guna2TextBox1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.guna2TextBox1.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2TextBox1.HoverState.Parent = this.guna2TextBox1;
            this.guna2TextBox1.Location = new System.Drawing.Point(14, 14);
            this.guna2TextBox1.Name = "guna2TextBox1";
            this.guna2TextBox1.PasswordChar = '\0';
            this.guna2TextBox1.PlaceholderText = "Tìm Kiếm";
            this.guna2TextBox1.SelectedText = "";
            this.guna2TextBox1.ShadowDecoration.Parent = this.guna2TextBox1;
            this.guna2TextBox1.Size = new System.Drawing.Size(617, 34);
            this.guna2TextBox1.TabIndex = 7;
            // 
            // pn_Them_User
            // 
            this.pn_Them_User.BorderRadius = 20;
            this.pn_Them_User.Controls.Add(this.btnLuuUser);
            this.pn_Them_User.Controls.Add(this.label1);
            this.pn_Them_User.Controls.Add(this.guna2ComboBox5);
            this.pn_Them_User.Controls.Add(this.guna2TextBox3);
            this.pn_Them_User.Controls.Add(this.guna2TextBox2);
            this.pn_Them_User.Controls.Add(this.label4);
            this.pn_Them_User.Controls.Add(this.label3);
            this.pn_Them_User.Controls.Add(this.lbTD);
            this.pn_Them_User.Controls.Add(this.guna2Separator2);
            this.pn_Them_User.Controls.Add(this.btnXUser);
            this.pn_Them_User.FillColor = System.Drawing.Color.White;
            this.pn_Them_User.Location = new System.Drawing.Point(673, 190);
            this.pn_Them_User.Name = "pn_Them_User";
            this.pn_Them_User.ShadowDecoration.Parent = this.pn_Them_User;
            this.pn_Them_User.Size = new System.Drawing.Size(355, 283);
            this.pn_Them_User.TabIndex = 40;
            this.pn_Them_User.Visible = false;
            // 
            // btnLuuUser
            // 
            this.btnLuuUser.BackColor = System.Drawing.Color.Transparent;
            this.btnLuuUser.BorderRadius = 20;
            this.btnLuuUser.CheckedState.Parent = this.btnLuuUser;
            this.btnLuuUser.CustomImages.Parent = this.btnLuuUser;
            this.btnLuuUser.FillColor = System.Drawing.Color.LimeGreen;
            this.btnLuuUser.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLuuUser.ForeColor = System.Drawing.Color.White;
            this.btnLuuUser.HoverState.Parent = this.btnLuuUser;
            this.btnLuuUser.Location = new System.Drawing.Point(267, 229);
            this.btnLuuUser.Name = "btnLuuUser";
            this.btnLuuUser.ShadowDecoration.Parent = this.btnLuuUser;
            this.btnLuuUser.Size = new System.Drawing.Size(60, 35);
            this.btnLuuUser.TabIndex = 28;
            this.btnLuuUser.Text = "Lưu";
            this.btnLuuUser.Visible = false;
            this.btnLuuUser.Click += new System.EventHandler(this.btnLuuUser_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.label1.ForeColor = System.Drawing.Color.Gray;
            this.label1.Location = new System.Drawing.Point(20, 187);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 15);
            this.label1.TabIndex = 23;
            this.label1.Text = "Role :";
            // 
            // guna2ComboBox5
            // 
            this.guna2ComboBox5.BackColor = System.Drawing.Color.Transparent;
            this.guna2ComboBox5.BorderRadius = 20;
            this.guna2ComboBox5.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.guna2ComboBox5.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.guna2ComboBox5.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
            this.guna2ComboBox5.FocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2ComboBox5.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2ComboBox5.FocusedState.Parent = this.guna2ComboBox5;
            this.guna2ComboBox5.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.guna2ComboBox5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(68)))), ((int)(((byte)(88)))), ((int)(((byte)(112)))));
            this.guna2ComboBox5.HoverState.Parent = this.guna2ComboBox5;
            this.guna2ComboBox5.ItemHeight = 30;
            this.guna2ComboBox5.ItemsAppearance.Parent = this.guna2ComboBox5;
            this.guna2ComboBox5.Location = new System.Drawing.Point(100, 177);
            this.guna2ComboBox5.Name = "guna2ComboBox5";
            this.guna2ComboBox5.ShadowDecoration.Parent = this.guna2ComboBox5;
            this.guna2ComboBox5.Size = new System.Drawing.Size(227, 36);
            this.guna2ComboBox5.TabIndex = 22;
            // 
            // guna2TextBox3
            // 
            this.guna2TextBox3.BackColor = System.Drawing.Color.Transparent;
            this.guna2TextBox3.BorderRadius = 20;
            this.guna2TextBox3.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.guna2TextBox3.DefaultText = "";
            this.guna2TextBox3.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.guna2TextBox3.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.guna2TextBox3.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.guna2TextBox3.DisabledState.Parent = this.guna2TextBox3;
            this.guna2TextBox3.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.guna2TextBox3.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
            this.guna2TextBox3.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2TextBox3.FocusedState.Parent = this.guna2TextBox3;
            this.guna2TextBox3.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.guna2TextBox3.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2TextBox3.HoverState.Parent = this.guna2TextBox3;
            this.guna2TextBox3.Location = new System.Drawing.Point(100, 122);
            this.guna2TextBox3.Name = "guna2TextBox3";
            this.guna2TextBox3.PasswordChar = '\0';
            this.guna2TextBox3.PlaceholderText = "";
            this.guna2TextBox3.SelectedText = "";
            this.guna2TextBox3.ShadowDecoration.Parent = this.guna2TextBox3;
            this.guna2TextBox3.Size = new System.Drawing.Size(227, 36);
            this.guna2TextBox3.TabIndex = 21;
            // 
            // guna2TextBox2
            // 
            this.guna2TextBox2.BackColor = System.Drawing.Color.Transparent;
            this.guna2TextBox2.BorderRadius = 20;
            this.guna2TextBox2.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.guna2TextBox2.DefaultText = "";
            this.guna2TextBox2.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.guna2TextBox2.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.guna2TextBox2.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.guna2TextBox2.DisabledState.Parent = this.guna2TextBox2;
            this.guna2TextBox2.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.guna2TextBox2.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
            this.guna2TextBox2.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2TextBox2.FocusedState.Parent = this.guna2TextBox2;
            this.guna2TextBox2.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.guna2TextBox2.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.guna2TextBox2.HoverState.Parent = this.guna2TextBox2;
            this.guna2TextBox2.Location = new System.Drawing.Point(100, 73);
            this.guna2TextBox2.Name = "guna2TextBox2";
            this.guna2TextBox2.PasswordChar = '\0';
            this.guna2TextBox2.PlaceholderText = "";
            this.guna2TextBox2.SelectedText = "";
            this.guna2TextBox2.ShadowDecoration.Parent = this.guna2TextBox2;
            this.guna2TextBox2.Size = new System.Drawing.Size(227, 36);
            this.guna2TextBox2.TabIndex = 20;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.label4.ForeColor = System.Drawing.Color.Gray;
            this.label4.Location = new System.Drawing.Point(19, 134);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(75, 15);
            this.label4.TabIndex = 19;
            this.label4.Text = "Passwword :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.label3.ForeColor = System.Drawing.Color.Gray;
            this.label3.Location = new System.Drawing.Point(20, 83);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(70, 15);
            this.label3.TabIndex = 18;
            this.label3.Text = "Username :";
            // 
            // lbTD
            // 
            this.lbTD.AutoSize = true;
            this.lbTD.BackColor = System.Drawing.Color.Transparent;
            this.lbTD.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.lbTD.ForeColor = System.Drawing.Color.Gray;
            this.lbTD.Location = new System.Drawing.Point(15, 17);
            this.lbTD.Name = "lbTD";
            this.lbTD.Size = new System.Drawing.Size(91, 21);
            this.lbTD.TabIndex = 15;
            this.lbTD.Text = "Thêm User";
            // 
            // guna2Separator2
            // 
            this.guna2Separator2.BackColor = System.Drawing.Color.White;
            this.guna2Separator2.Location = new System.Drawing.Point(18, 57);
            this.guna2Separator2.Name = "guna2Separator2";
            this.guna2Separator2.Size = new System.Drawing.Size(309, 10);
            this.guna2Separator2.TabIndex = 16;
            // 
            // btnXUser
            // 
            this.btnXUser.BackColor = System.Drawing.Color.White;
            this.btnXUser.Checked = true;
            this.btnXUser.CheckedState.ImageSize = new System.Drawing.Size(30, 30);
            this.btnXUser.CheckedState.Parent = this.btnXUser;
            this.btnXUser.HoverState.ImageSize = new System.Drawing.Size(30, 30);
            this.btnXUser.HoverState.Parent = this.btnXUser;
            this.btnXUser.Image = global::QuanLySinhVien5ToT.Properties.Resources.icons8_macos_close_96;
            this.btnXUser.ImageRotate = 0F;
            this.btnXUser.ImageSize = new System.Drawing.Size(25, 25);
            this.btnXUser.Location = new System.Drawing.Point(297, 7);
            this.btnXUser.Name = "btnXUser";
            this.btnXUser.PressedState.ImageSize = new System.Drawing.Size(64, 64);
            this.btnXUser.PressedState.Parent = this.btnXUser;
            this.btnXUser.Size = new System.Drawing.Size(30, 31);
            this.btnXUser.TabIndex = 17;
            this.btnXUser.Click += new System.EventHandler(this.btnXUser_Click);
            // 
            // btnSuaRole
            // 
            this.btnSuaRole.BackColor = System.Drawing.Color.Transparent;
            this.btnSuaRole.BorderRadius = 20;
            this.btnSuaRole.CheckedState.Parent = this.btnSuaRole;
            this.btnSuaRole.CustomImages.Parent = this.btnSuaRole;
            this.btnSuaRole.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.btnSuaRole.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnSuaRole.ForeColor = System.Drawing.Color.White;
            this.btnSuaRole.HoverState.Parent = this.btnSuaRole;
            this.btnSuaRole.Image = global::QuanLySinhVien5ToT.Properties.Resources.icons8_wrench_100__1_;
            this.btnSuaRole.Location = new System.Drawing.Point(743, 81);
            this.btnSuaRole.Name = "btnSuaRole";
            this.btnSuaRole.ShadowDecoration.Parent = this.btnSuaRole;
            this.btnSuaRole.Size = new System.Drawing.Size(210, 45);
            this.btnSuaRole.TabIndex = 39;
            this.btnSuaRole.Text = "Edit Role";
            this.btnSuaRole.Click += new System.EventHandler(this.btnSuaRole_Click);
            // 
            // btnThemUser
            // 
            this.btnThemUser.BackColor = System.Drawing.Color.Transparent;
            this.btnThemUser.BorderRadius = 20;
            this.btnThemUser.CheckedState.Parent = this.btnThemUser;
            this.btnThemUser.CustomImages.Parent = this.btnThemUser;
            this.btnThemUser.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemUser.ForeColor = System.Drawing.Color.White;
            this.btnThemUser.HoverState.Parent = this.btnThemUser;
            this.btnThemUser.Image = global::QuanLySinhVien5ToT.Properties.Resources.icons8_plus_96;
            this.btnThemUser.Location = new System.Drawing.Point(743, 132);
            this.btnThemUser.Name = "btnThemUser";
            this.btnThemUser.ShadowDecoration.Parent = this.btnThemUser;
            this.btnThemUser.Size = new System.Drawing.Size(210, 43);
            this.btnThemUser.TabIndex = 38;
            this.btnThemUser.Text = "Thêm User";
            this.btnThemUser.Click += new System.EventHandler(this.btnThemUser_Click);
            // 
            // User_Role
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pn_Them_User);
            this.Controls.Add(this.btnSuaRole);
            this.Controls.Add(this.btnThemUser);
            this.Controls.Add(this.guna2Panel1);
            this.Controls.Add(this.dtgv_User);
            this.Name = "User_Role";
            this.Size = new System.Drawing.Size(1044, 661);
            this.Load += new System.EventHandler(this.User_Role_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_User)).EndInit();
            this.guna2Panel1.ResumeLayout(false);
            this.guna2Panel1.PerformLayout();
            this.pn_Them_User.ResumeLayout(false);
            this.pn_Them_User.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Guna.UI2.WinForms.Guna2DataGridView dtgv_User;
        private Guna.UI2.WinForms.Guna2Panel guna2Panel1;
        private Guna.UI2.WinForms.Guna2Button btnSuaRole;
        private Guna.UI2.WinForms.Guna2Button btnThemUser;
        private Guna.UI2.WinForms.Guna2TextBox guna2TextBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Username;
        private System.Windows.Forms.DataGridViewTextBoxColumn Password;
        private System.Windows.Forms.DataGridViewTextBoxColumn Role;
        private System.Windows.Forms.DataGridViewImageColumn Sua;
        private System.Windows.Forms.DataGridViewImageColumn Xoa;
        private System.Windows.Forms.Label label13;
        private Guna.UI2.WinForms.Guna2ComboBox guna2ComboBox3;
        private Guna.UI2.WinForms.Guna2Panel pn_Them_User;
        private System.Windows.Forms.Label lbTD;
        private Guna.UI2.WinForms.Guna2Separator guna2Separator2;
        private Guna.UI2.WinForms.Guna2ImageButton btnXUser;
        private Guna.UI2.WinForms.Guna2TextBox guna2TextBox3;
        private Guna.UI2.WinForms.Guna2TextBox guna2TextBox2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private Guna.UI2.WinForms.Guna2ComboBox guna2ComboBox5;
        private Guna.UI2.WinForms.Guna2Button btnLuuUser;
    }
}
