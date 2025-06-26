namespace otomasyonprojesi
{
    partial class satış
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(satış));
            btnsatis = new Button();
            datasatis = new DataGridView();
            txturunadi = new TextBox();
            txtbarkod = new TextBox();
            txtsatisfiyati = new TextBox();
            txtmiktar = new MaskedTextBox();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            lblid = new Label();
            pictureBox1 = new PictureBox();
            txtara = new TextBox();
            label5 = new Label();
            btnara = new Button();
            btnlisteyeekle = new Button();
            datasatislistesi = new DataGridView();
            btnsil = new Button();
            ((System.ComponentModel.ISupportInitialize)datasatis).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)datasatislistesi).BeginInit();
            SuspendLayout();
            // 
            // btnsatis
            // 
            btnsatis.BackColor = Color.YellowGreen;
            btnsatis.FlatStyle = FlatStyle.Flat;
            btnsatis.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnsatis.Location = new Point(746, 359);
            btnsatis.Name = "btnsatis";
            btnsatis.Size = new Size(89, 44);
            btnsatis.TabIndex = 8;
            btnsatis.Text = "Satışı yap";
            btnsatis.UseVisualStyleBackColor = false;
            btnsatis.Click += btnsatis_Click;
            // 
            // datasatis
            // 
            datasatis.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            datasatis.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            datasatis.Location = new Point(12, 31);
            datasatis.Name = "datasatis";
            datasatis.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            datasatis.Size = new Size(843, 156);
            datasatis.TabIndex = 9;
            datasatis.CellDoubleClick += datasatis_CellDoubleClick;
            // 
            // txturunadi
            // 
            txturunadi.Location = new Point(68, 229);
            txturunadi.Name = "txturunadi";
            txturunadi.Size = new Size(116, 23);
            txturunadi.TabIndex = 10;
            // 
            // txtbarkod
            // 
            txtbarkod.Location = new Point(68, 273);
            txtbarkod.Name = "txtbarkod";
            txtbarkod.Size = new Size(116, 23);
            txtbarkod.TabIndex = 11;
            // 
            // txtsatisfiyati
            // 
            txtsatisfiyati.Location = new Point(68, 367);
            txtsatisfiyati.Name = "txtsatisfiyati";
            txtsatisfiyati.Size = new Size(116, 23);
            txtsatisfiyati.TabIndex = 13;
            // 
            // txtmiktar
            // 
            txtmiktar.Location = new Point(68, 321);
            txtmiktar.Mask = "00000";
            txtmiktar.Name = "txtmiktar";
            txtmiktar.Size = new Size(116, 23);
            txtmiktar.TabIndex = 14;
            txtmiktar.ValidatingType = typeof(int);
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.Location = new Point(11, 232);
            label1.Name = "label1";
            label1.Size = new Size(52, 15);
            label1.TabIndex = 15;
            label1.Text = "Ürün adı";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label2.Location = new Point(19, 273);
            label2.Name = "label2";
            label2.Size = new Size(44, 15);
            label2.TabIndex = 16;
            label2.Text = "Barkod";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label3.Location = new Point(19, 324);
            label3.Name = "label3";
            label3.Size = new Size(44, 15);
            label3.TabIndex = 17;
            label3.Text = "Miktarı";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label4.Location = new Point(3, 370);
            label4.Name = "label4";
            label4.Size = new Size(61, 15);
            label4.TabIndex = 18;
            label4.Text = "Satış fiyatı";
            // 
            // lblid
            // 
            lblid.AutoSize = true;
            lblid.Location = new Point(329, 374);
            lblid.Name = "lblid";
            lblid.Size = new Size(0, 15);
            lblid.TabIndex = 19;
            lblid.Visible = false;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(153, 370);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(22, 18);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 20;
            pictureBox1.TabStop = false;
            // 
            // txtara
            // 
            txtara.Location = new Point(473, 204);
            txtara.Name = "txtara";
            txtara.Size = new Size(217, 23);
            txtara.TabIndex = 21;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(399, 207);
            label5.Name = "label5";
            label5.Size = new Size(42, 15);
            label5.TabIndex = 22;
            label5.Text = "Arama";
            // 
            // btnara
            // 
            btnara.BackColor = Color.FromArgb(192, 255, 255);
            btnara.FlatStyle = FlatStyle.Flat;
            btnara.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnara.ForeColor = Color.Black;
            btnara.Location = new Point(747, 204);
            btnara.Name = "btnara";
            btnara.Size = new Size(89, 27);
            btnara.TabIndex = 23;
            btnara.Text = "Arama yap";
            btnara.UseVisualStyleBackColor = false;
            btnara.Click += btnara_Click_1;
            // 
            // btnlisteyeekle
            // 
            btnlisteyeekle.BackColor = Color.PaleGoldenrod;
            btnlisteyeekle.FlatStyle = FlatStyle.Flat;
            btnlisteyeekle.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnlisteyeekle.Location = new Point(747, 245);
            btnlisteyeekle.Name = "btnlisteyeekle";
            btnlisteyeekle.Size = new Size(89, 42);
            btnlisteyeekle.TabIndex = 24;
            btnlisteyeekle.Text = "Satış listesine ekle";
            btnlisteyeekle.UseVisualStyleBackColor = false;
            btnlisteyeekle.Click += btnlisteyeekle_Click_1;
            // 
            // datasatislistesi
            // 
            datasatislistesi.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            datasatislistesi.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            datasatislistesi.Location = new Point(231, 240);
            datasatislistesi.Name = "datasatislistesi";
            datasatislistesi.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            datasatislistesi.Size = new Size(459, 150);
            datasatislistesi.TabIndex = 25;
            // 
            // btnsil
            // 
            btnsil.BackColor = Color.IndianRed;
            btnsil.FlatStyle = FlatStyle.Flat;
            btnsil.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnsil.Location = new Point(746, 303);
            btnsil.Name = "btnsil";
            btnsil.Size = new Size(89, 41);
            btnsil.TabIndex = 26;
            btnsil.Text = "Satışı iptal et";
            btnsil.UseVisualStyleBackColor = false;
            btnsil.Click += btnsil_Click;
            // 
            // satış
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(880, 446);
            Controls.Add(btnsil);
            Controls.Add(datasatislistesi);
            Controls.Add(btnlisteyeekle);
            Controls.Add(btnara);
            Controls.Add(label5);
            Controls.Add(txtara);
            Controls.Add(pictureBox1);
            Controls.Add(lblid);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(txtmiktar);
            Controls.Add(txtsatisfiyati);
            Controls.Add(txtbarkod);
            Controls.Add(txturunadi);
            Controls.Add(datasatis);
            Controls.Add(btnsatis);
            Name = "satış";
            Text = "a";
            Load += satış_Load;
            Controls.SetChildIndex(btnsatis, 0);
            Controls.SetChildIndex(datasatis, 0);
            Controls.SetChildIndex(txturunadi, 0);
            Controls.SetChildIndex(txtbarkod, 0);
            Controls.SetChildIndex(txtsatisfiyati, 0);
            Controls.SetChildIndex(txtmiktar, 0);
            Controls.SetChildIndex(label1, 0);
            Controls.SetChildIndex(label2, 0);
            Controls.SetChildIndex(label3, 0);
            Controls.SetChildIndex(label4, 0);
            Controls.SetChildIndex(lblid, 0);
            Controls.SetChildIndex(pictureBox1, 0);
            Controls.SetChildIndex(txtara, 0);
            Controls.SetChildIndex(label5, 0);
            Controls.SetChildIndex(btnara, 0);
            Controls.SetChildIndex(btnlisteyeekle, 0);
            Controls.SetChildIndex(datasatislistesi, 0);
            Controls.SetChildIndex(btnsil, 0);
            ((System.ComponentModel.ISupportInitialize)datasatis).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)datasatislistesi).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Button btnsatis;
        private DataGridView datasatis;
        private TextBox txturunadi;
        private TextBox txtbarkod;
        private TextBox txtsatisfiyati;
        private MaskedTextBox txtmiktar;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label lblid;
        private PictureBox pictureBox1;
        private TextBox txtara;
        private Label label5;
        private Button btnara;
        private Button btnlisteyeekle;
        private DataGridView datasatislistesi;
        private Button btnsil;
    }
}