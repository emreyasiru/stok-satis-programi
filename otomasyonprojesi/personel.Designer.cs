namespace otomasyonprojesi
{
    partial class personel
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            datapersonel = new DataGridView();
            btngoster = new Button();
            btngizle = new Button();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            label8 = new Label();
            txtad = new TextBox();
            txtsoyad = new TextBox();
            txttc = new MaskedTextBox();
            txttel = new MaskedTextBox();
            txtmail = new TextBox();
            comboil = new ComboBox();
            comboilce = new ComboBox();
            txtadres = new RichTextBox();
            label9 = new Label();
            label10 = new Label();
            label11 = new Label();
            radioErkek = new RadioButton();
            radioKadin = new RadioButton();
            txtunvan = new TextBox();
            label12 = new Label();
            label13 = new Label();
            txtucret = new TextBox();
            radioEvli = new RadioButton();
            radioBekar = new RadioButton();
            btnkaydet = new Button();
            btnGuncelle = new Button();
            btnsil = new Button();
            grupcinsiyet = new GroupBox();
            grupmedenidurum = new GroupBox();
            dtpDogumTarihi = new DateTimePicker();
            lblpersonelid = new Label();
            ((System.ComponentModel.ISupportInitialize)datapersonel).BeginInit();
            grupcinsiyet.SuspendLayout();
            grupmedenidurum.SuspendLayout();
            SuspendLayout();
            // 
            // datapersonel
            // 
            datapersonel.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            datapersonel.Location = new Point(12, 38);
            datapersonel.Name = "datapersonel";
            datapersonel.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            datapersonel.Size = new Size(568, 192);
            datapersonel.TabIndex = 1;
            datapersonel.Visible = false;
            datapersonel.CellContentClick += dataGridView1_CellContentClick;
            datapersonel.CellDoubleClick += datapersonel_CellDoubleClick;
            // 
            // btngoster
            // 
            btngoster.BackColor = Color.FromArgb(192, 255, 255);
            btngoster.FlatStyle = FlatStyle.Flat;
            btngoster.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btngoster.Location = new Point(151, 239);
            btngoster.Name = "btngoster";
            btngoster.Size = new Size(94, 41);
            btngoster.TabIndex = 2;
            btngoster.Text = "Personelleri Göster";
            btngoster.UseVisualStyleBackColor = false;
            btngoster.Click += btngoster_Click;
            // 
            // btngizle
            // 
            btngizle.BackColor = Color.FromArgb(192, 255, 255);
            btngizle.FlatStyle = FlatStyle.Flat;
            btngizle.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btngizle.Location = new Point(312, 239);
            btngizle.Name = "btngizle";
            btngizle.Size = new Size(91, 41);
            btngizle.TabIndex = 3;
            btngizle.Text = "Personelleri Gizle";
            btngizle.UseVisualStyleBackColor = false;
            btngizle.Click += btngizle_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.Location = new Point(626, 48);
            label1.Name = "label1";
            label1.Size = new Size(22, 15);
            label1.TabIndex = 4;
            label1.Text = "Ad";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label2.Location = new Point(611, 86);
            label2.Name = "label2";
            label2.Size = new Size(40, 15);
            label2.TabIndex = 5;
            label2.Text = "Soyad";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label3.Location = new Point(596, 122);
            label3.Name = "label3";
            label3.Size = new Size(55, 15);
            label3.TabIndex = 6;
            label3.Text = "Tc Kimlik";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label4.Location = new Point(605, 154);
            label4.Name = "label4";
            label4.Size = new Size(46, 15);
            label4.TabIndex = 7;
            label4.Text = "Telefon";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label5.Location = new Point(586, 185);
            label5.Name = "label5";
            label5.Size = new Size(66, 15);
            label5.TabIndex = 8;
            label5.Text = "Mail Adresi";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label6.Location = new Point(635, 220);
            label6.Name = "label6";
            label6.Size = new Size(14, 15);
            label6.TabIndex = 9;
            label6.Text = "İl";
            label6.Click += label6_Click;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label7.Location = new Point(623, 249);
            label7.Name = "label7";
            label7.Size = new Size(26, 15);
            label7.TabIndex = 10;
            label7.Text = "İlçe";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label8.Location = new Point(611, 282);
            label8.Name = "label8";
            label8.Size = new Size(37, 15);
            label8.TabIndex = 11;
            label8.Text = "Adres";
            // 
            // txtad
            // 
            txtad.Location = new Point(682, 45);
            txtad.Name = "txtad";
            txtad.Size = new Size(121, 23);
            txtad.TabIndex = 12;
            // 
            // txtsoyad
            // 
            txtsoyad.Location = new Point(682, 83);
            txtsoyad.Name = "txtsoyad";
            txtsoyad.Size = new Size(121, 23);
            txtsoyad.TabIndex = 13;
            // 
            // txttc
            // 
            txttc.Location = new Point(682, 119);
            txttc.Mask = "00000000000";
            txttc.Name = "txttc";
            txttc.Size = new Size(121, 23);
            txttc.TabIndex = 14;
            txttc.ValidatingType = typeof(int);
            // 
            // txttel
            // 
            txttel.Location = new Point(682, 154);
            txttel.Mask = "(999) 000-0000";
            txttel.Name = "txttel";
            txttel.Size = new Size(121, 23);
            txttel.TabIndex = 15;
            // 
            // txtmail
            // 
            txtmail.Location = new Point(682, 185);
            txtmail.Name = "txtmail";
            txtmail.Size = new Size(121, 23);
            txtmail.TabIndex = 16;
            // 
            // comboil
            // 
            comboil.FormattingEnabled = true;
            comboil.Location = new Point(682, 220);
            comboil.Name = "comboil";
            comboil.Size = new Size(121, 23);
            comboil.TabIndex = 17;
            // 
            // comboilce
            // 
            comboilce.FormattingEnabled = true;
            comboilce.Location = new Point(682, 249);
            comboilce.Name = "comboilce";
            comboilce.Size = new Size(121, 23);
            comboilce.TabIndex = 18;
            // 
            // txtadres
            // 
            txtadres.Location = new Point(682, 278);
            txtadres.Name = "txtadres";
            txtadres.Size = new Size(121, 71);
            txtadres.TabIndex = 19;
            txtadres.Text = "";
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label9.Location = new Point(930, 52);
            label9.Name = "label9";
            label9.Size = new Size(48, 15);
            label9.TabIndex = 20;
            label9.Text = "Cinsiyet";
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label10.Location = new Point(902, 91);
            label10.Name = "label10";
            label10.Size = new Size(80, 15);
            label10.TabIndex = 21;
            label10.Text = "Doğum Tarihi";
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label11.Location = new Point(938, 130);
            label11.Name = "label11";
            label11.Size = new Size(41, 15);
            label11.TabIndex = 22;
            label11.Text = "Ünvan";
            // 
            // radioErkek
            // 
            radioErkek.AutoSize = true;
            radioErkek.Location = new Point(6, 22);
            radioErkek.Name = "radioErkek";
            radioErkek.Size = new Size(53, 19);
            radioErkek.TabIndex = 23;
            radioErkek.TabStop = true;
            radioErkek.Text = "Erkek";
            radioErkek.UseVisualStyleBackColor = true;
            // 
            // radioKadin
            // 
            radioKadin.AutoSize = true;
            radioKadin.Location = new Point(65, 21);
            radioKadin.Name = "radioKadin";
            radioKadin.Size = new Size(55, 19);
            radioKadin.TabIndex = 24;
            radioKadin.TabStop = true;
            radioKadin.Text = "Kadın";
            radioKadin.UseVisualStyleBackColor = true;
            // 
            // txtunvan
            // 
            txtunvan.Location = new Point(985, 127);
            txtunvan.Name = "txtunvan";
            txtunvan.Size = new Size(132, 23);
            txtunvan.TabIndex = 26;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label12.Location = new Point(944, 162);
            label12.Name = "label12";
            label12.Size = new Size(35, 15);
            label12.TabIndex = 27;
            label12.Text = "Ücret";
            // 
            // label13
            // 
            label13.AutoSize = true;
            label13.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label13.Location = new Point(893, 203);
            label13.Name = "label13";
            label13.Size = new Size(88, 15);
            label13.TabIndex = 28;
            label13.Text = "Medeni Durum";
            // 
            // txtucret
            // 
            txtucret.Location = new Point(985, 159);
            txtucret.Name = "txtucret";
            txtucret.Size = new Size(132, 23);
            txtucret.TabIndex = 29;
            // 
            // radioEvli
            // 
            radioEvli.AutoSize = true;
            radioEvli.Location = new Point(6, 13);
            radioEvli.Name = "radioEvli";
            radioEvli.Size = new Size(43, 19);
            radioEvli.TabIndex = 30;
            radioEvli.TabStop = true;
            radioEvli.Text = "Evli";
            radioEvli.UseVisualStyleBackColor = true;
            // 
            // radioBekar
            // 
            radioBekar.AutoSize = true;
            radioBekar.Location = new Point(64, 13);
            radioBekar.Name = "radioBekar";
            radioBekar.Size = new Size(54, 19);
            radioBekar.TabIndex = 31;
            radioBekar.TabStop = true;
            radioBekar.Text = "Bekar";
            radioBekar.UseVisualStyleBackColor = true;
            // 
            // btnkaydet
            // 
            btnkaydet.BackColor = Color.YellowGreen;
            btnkaydet.FlatStyle = FlatStyle.Flat;
            btnkaydet.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnkaydet.ForeColor = Color.Black;
            btnkaydet.Location = new Point(856, 267);
            btnkaydet.Name = "btnkaydet";
            btnkaydet.Size = new Size(77, 40);
            btnkaydet.TabIndex = 32;
            btnkaydet.Text = "Kaydet";
            btnkaydet.UseVisualStyleBackColor = false;
            btnkaydet.Click += btnkaydet_Click;
            // 
            // btnGuncelle
            // 
            btnGuncelle.BackColor = Color.PaleGoldenrod;
            btnGuncelle.FlatStyle = FlatStyle.Flat;
            btnGuncelle.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnGuncelle.Location = new Point(964, 267);
            btnGuncelle.Name = "btnGuncelle";
            btnGuncelle.Size = new Size(80, 40);
            btnGuncelle.TabIndex = 33;
            btnGuncelle.Text = "Güncelle";
            btnGuncelle.UseVisualStyleBackColor = false;
            btnGuncelle.Click += btnGuncelle_Click_1;
            // 
            // btnsil
            // 
            btnsil.BackColor = Color.IndianRed;
            btnsil.FlatStyle = FlatStyle.Flat;
            btnsil.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnsil.Location = new Point(1071, 267);
            btnsil.Name = "btnsil";
            btnsil.Size = new Size(84, 39);
            btnsil.TabIndex = 34;
            btnsil.Text = "Sil";
            btnsil.UseVisualStyleBackColor = false;
            btnsil.Click += btnsil_Click;
            // 
            // grupcinsiyet
            // 
            grupcinsiyet.Controls.Add(radioErkek);
            grupcinsiyet.Controls.Add(radioKadin);
            grupcinsiyet.Location = new Point(985, 31);
            grupcinsiyet.Name = "grupcinsiyet";
            grupcinsiyet.Size = new Size(132, 52);
            grupcinsiyet.TabIndex = 35;
            grupcinsiyet.TabStop = false;
            // 
            // grupmedenidurum
            // 
            grupmedenidurum.Controls.Add(radioEvli);
            grupmedenidurum.Controls.Add(radioBekar);
            grupmedenidurum.Location = new Point(986, 188);
            grupmedenidurum.Name = "grupmedenidurum";
            grupmedenidurum.Size = new Size(131, 49);
            grupmedenidurum.TabIndex = 36;
            grupmedenidurum.TabStop = false;
            // 
            // dtpDogumTarihi
            // 
            dtpDogumTarihi.Location = new Point(983, 91);
            dtpDogumTarihi.Name = "dtpDogumTarihi";
            dtpDogumTarihi.Size = new Size(184, 23);
            dtpDogumTarihi.TabIndex = 37;
            // 
            // lblpersonelid
            // 
            lblpersonelid.AutoSize = true;
            lblpersonelid.Location = new Point(388, 302);
            lblpersonelid.Name = "lblpersonelid";
            lblpersonelid.Size = new Size(0, 15);
            lblpersonelid.TabIndex = 38;
            lblpersonelid.Visible = false;
            // 
            // personel
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1179, 401);
            Controls.Add(lblpersonelid);
            Controls.Add(dtpDogumTarihi);
            Controls.Add(grupmedenidurum);
            Controls.Add(grupcinsiyet);
            Controls.Add(btnsil);
            Controls.Add(btnGuncelle);
            Controls.Add(btnkaydet);
            Controls.Add(txtucret);
            Controls.Add(label13);
            Controls.Add(label12);
            Controls.Add(txtunvan);
            Controls.Add(label11);
            Controls.Add(label10);
            Controls.Add(label9);
            Controls.Add(txtadres);
            Controls.Add(comboilce);
            Controls.Add(comboil);
            Controls.Add(txtmail);
            Controls.Add(txttel);
            Controls.Add(txttc);
            Controls.Add(txtsoyad);
            Controls.Add(txtad);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(btngizle);
            Controls.Add(btngoster);
            Controls.Add(datapersonel);
            Name = "personel";
            Text = "personel";
            Load += personel_Load;
            Controls.SetChildIndex(datapersonel, 0);
            Controls.SetChildIndex(btngoster, 0);
            Controls.SetChildIndex(btngizle, 0);
            Controls.SetChildIndex(label1, 0);
            Controls.SetChildIndex(label2, 0);
            Controls.SetChildIndex(label3, 0);
            Controls.SetChildIndex(label4, 0);
            Controls.SetChildIndex(label5, 0);
            Controls.SetChildIndex(label6, 0);
            Controls.SetChildIndex(label7, 0);
            Controls.SetChildIndex(label8, 0);
            Controls.SetChildIndex(txtad, 0);
            Controls.SetChildIndex(txtsoyad, 0);
            Controls.SetChildIndex(txttc, 0);
            Controls.SetChildIndex(txttel, 0);
            Controls.SetChildIndex(txtmail, 0);
            Controls.SetChildIndex(comboil, 0);
            Controls.SetChildIndex(comboilce, 0);
            Controls.SetChildIndex(txtadres, 0);
            Controls.SetChildIndex(label9, 0);
            Controls.SetChildIndex(label10, 0);
            Controls.SetChildIndex(label11, 0);
            Controls.SetChildIndex(txtunvan, 0);
            Controls.SetChildIndex(label12, 0);
            Controls.SetChildIndex(label13, 0);
            Controls.SetChildIndex(txtucret, 0);
            Controls.SetChildIndex(btnkaydet, 0);
            Controls.SetChildIndex(btnGuncelle, 0);
            Controls.SetChildIndex(btnsil, 0);
            Controls.SetChildIndex(grupcinsiyet, 0);
            Controls.SetChildIndex(grupmedenidurum, 0);
            Controls.SetChildIndex(dtpDogumTarihi, 0);
            Controls.SetChildIndex(lblpersonelid, 0);
            ((System.ComponentModel.ISupportInitialize)datapersonel).EndInit();
            grupcinsiyet.ResumeLayout(false);
            grupcinsiyet.PerformLayout();
            grupmedenidurum.ResumeLayout(false);
            grupmedenidurum.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView datapersonel;
        private Button btngoster;
        private Button btngizle;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label label7;
        private Label label8;
        private TextBox txtad;
        private TextBox txtsoyad;
        private MaskedTextBox txttc;
        private MaskedTextBox txttel;
        private TextBox txtmail;
        private ComboBox comboil;
        private ComboBox comboilce;
        private RichTextBox txtadres;
        private Label label9;
        private Label label10;
        private Label label11;
        private RadioButton radioErkek;
        private RadioButton radioKadin;
        private TextBox txtunvan;
        private Label label12;
        private Label label13;
        private TextBox txtucret;
        private RadioButton radioEvli;
        private RadioButton radioBekar;
        private Button btnkaydet;
        private Button btnGuncelle;
        private Button btnsil;
        private GroupBox grupcinsiyet;
        private GroupBox grupmedenidurum;
        private DateTimePicker dtpDogumTarihi;
        private Label lblpersonelid;
    }
}