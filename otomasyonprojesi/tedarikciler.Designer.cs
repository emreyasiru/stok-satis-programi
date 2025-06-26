namespace otomasyonprojesi
{
    partial class tedarikciler
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
            datatedarikci = new DataGridView();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            txttedadi = new TextBox();
            txttedadresi = new TextBox();
            txttedemail = new TextBox();
            txttedyetkili = new TextBox();
            btntedkaydet = new Button();
            btntedsil = new Button();
            btntedguncelle = new Button();
            txttedtel = new MaskedTextBox();
            lbltedid = new Label();
            ((System.ComponentModel.ISupportInitialize)datatedarikci).BeginInit();
            SuspendLayout();
            // 
            // datatedarikci
            // 
            datatedarikci.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            datatedarikci.Location = new Point(12, 38);
            datatedarikci.Name = "datatedarikci";
            datatedarikci.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            datatedarikci.Size = new Size(527, 198);
            datatedarikci.TabIndex = 1;
            datatedarikci.CellContentClick += datatedarikci_CellContentClick;
            datatedarikci.CellDoubleClick += datatedarikci_CellDoubleClick;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.Location = new Point(561, 51);
            label1.Name = "label1";
            label1.Size = new Size(73, 15);
            label1.TabIndex = 2;
            label1.Text = "Tedarikçi adı";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label2.Location = new Point(561, 91);
            label2.Name = "label2";
            label2.Size = new Size(88, 15);
            label2.TabIndex = 3;
            label2.Text = "Tedarikçi adresi";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label3.Location = new Point(561, 132);
            label3.Name = "label3";
            label3.Size = new Size(94, 15);
            label3.TabIndex = 4;
            label3.Text = "Tedarikçi telefon";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label4.Location = new Point(561, 175);
            label4.Name = "label4";
            label4.Size = new Size(91, 15);
            label4.TabIndex = 5;
            label4.Text = "Tedarikçi e-mail";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label5.Location = new Point(561, 221);
            label5.Name = "label5";
            label5.Size = new Size(96, 15);
            label5.TabIndex = 6;
            label5.Text = "Tedarikçi yetkilisi";
            // 
            // txttedadi
            // 
            txttedadi.Location = new Point(687, 48);
            txttedadi.Name = "txttedadi";
            txttedadi.Size = new Size(134, 23);
            txttedadi.TabIndex = 7;
            // 
            // txttedadresi
            // 
            txttedadresi.Location = new Point(687, 88);
            txttedadresi.Name = "txttedadresi";
            txttedadresi.Size = new Size(134, 23);
            txttedadresi.TabIndex = 8;
            // 
            // txttedemail
            // 
            txttedemail.Location = new Point(687, 172);
            txttedemail.Name = "txttedemail";
            txttedemail.Size = new Size(134, 23);
            txttedemail.TabIndex = 10;
            // 
            // txttedyetkili
            // 
            txttedyetkili.Location = new Point(687, 213);
            txttedyetkili.Name = "txttedyetkili";
            txttedyetkili.Size = new Size(134, 23);
            txttedyetkili.TabIndex = 11;
            // 
            // btntedkaydet
            // 
            btntedkaydet.BackColor = Color.YellowGreen;
            btntedkaydet.FlatStyle = FlatStyle.Flat;
            btntedkaydet.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btntedkaydet.Location = new Point(546, 263);
            btntedkaydet.Name = "btntedkaydet";
            btntedkaydet.Size = new Size(88, 35);
            btntedkaydet.TabIndex = 12;
            btntedkaydet.Text = "Kaydet";
            btntedkaydet.UseVisualStyleBackColor = false;
            btntedkaydet.Click += btntedkaydet_Click;
            // 
            // btntedsil
            // 
            btntedsil.BackColor = Color.IndianRed;
            btntedsil.FlatStyle = FlatStyle.Flat;
            btntedsil.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btntedsil.Location = new Point(768, 263);
            btntedsil.Name = "btntedsil";
            btntedsil.Size = new Size(92, 35);
            btntedsil.TabIndex = 13;
            btntedsil.Text = "Sil";
            btntedsil.UseVisualStyleBackColor = false;
            btntedsil.Click += btntedsil_Click;
            // 
            // btntedguncelle
            // 
            btntedguncelle.BackColor = Color.PaleGoldenrod;
            btntedguncelle.FlatStyle = FlatStyle.Flat;
            btntedguncelle.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btntedguncelle.Location = new Point(661, 263);
            btntedguncelle.Name = "btntedguncelle";
            btntedguncelle.Size = new Size(85, 35);
            btntedguncelle.TabIndex = 14;
            btntedguncelle.Text = "Güncelle";
            btntedguncelle.UseVisualStyleBackColor = false;
            btntedguncelle.Click += btntedguncelle_Click;
            // 
            // txttedtel
            // 
            txttedtel.Location = new Point(687, 129);
            txttedtel.Mask = "(999) 000-0000";
            txttedtel.Name = "txttedtel";
            txttedtel.Size = new Size(134, 23);
            txttedtel.TabIndex = 15;
            // 
            // lbltedid
            // 
            lbltedid.AutoSize = true;
            lbltedid.Location = new Point(188, 263);
            lbltedid.Name = "lbltedid";
            lbltedid.Size = new Size(0, 15);
            lbltedid.TabIndex = 16;
            lbltedid.Visible = false;
            // 
            // tedarikciler
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(872, 342);
            Controls.Add(lbltedid);
            Controls.Add(txttedtel);
            Controls.Add(btntedguncelle);
            Controls.Add(btntedsil);
            Controls.Add(btntedkaydet);
            Controls.Add(txttedyetkili);
            Controls.Add(txttedemail);
            Controls.Add(txttedadresi);
            Controls.Add(txttedadi);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(datatedarikci);
            Name = "tedarikciler";
            Text = "tedarikciler";
            Load += tedarikciler_Load;
            Controls.SetChildIndex(datatedarikci, 0);
            Controls.SetChildIndex(label1, 0);
            Controls.SetChildIndex(label2, 0);
            Controls.SetChildIndex(label3, 0);
            Controls.SetChildIndex(label4, 0);
            Controls.SetChildIndex(label5, 0);
            Controls.SetChildIndex(txttedadi, 0);
            Controls.SetChildIndex(txttedadresi, 0);
            Controls.SetChildIndex(txttedemail, 0);
            Controls.SetChildIndex(txttedyetkili, 0);
            Controls.SetChildIndex(btntedkaydet, 0);
            Controls.SetChildIndex(btntedsil, 0);
            Controls.SetChildIndex(btntedguncelle, 0);
            Controls.SetChildIndex(txttedtel, 0);
            Controls.SetChildIndex(lbltedid, 0);
            ((System.ComponentModel.ISupportInitialize)datatedarikci).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView datatedarikci;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private TextBox txttedadi;
        private TextBox txttedadresi;
        private TextBox txttedemail;
        private TextBox txttedyetkili;
        private Button btntedkaydet;
        private Button btntedsil;
        private Button btntedguncelle;
        private MaskedTextBox txttedtel;
        private Label lbltedid;
    }
}