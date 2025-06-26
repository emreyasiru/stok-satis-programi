namespace otomasyonprojesi
{
    partial class yenikayıt
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(yenikayıt));
            txtkullaniciadi = new TextBox();
            txtsifre = new TextBox();
            txtsifretekrar = new TextBox();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            btnkaydet = new Button();
            button2 = new Button();
            label4 = new Label();
            pictureBox1 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // txtkullaniciadi
            // 
            txtkullaniciadi.Location = new Point(232, 92);
            txtkullaniciadi.Name = "txtkullaniciadi";
            txtkullaniciadi.Size = new Size(142, 23);
            txtkullaniciadi.TabIndex = 0;
            // 
            // txtsifre
            // 
            txtsifre.Location = new Point(232, 147);
            txtsifre.Name = "txtsifre";
            txtsifre.Size = new Size(142, 23);
            txtsifre.TabIndex = 1;
            txtsifre.UseSystemPasswordChar = true;
            // 
            // txtsifretekrar
            // 
            txtsifretekrar.Location = new Point(232, 204);
            txtsifretekrar.Name = "txtsifretekrar";
            txtsifretekrar.Size = new Size(142, 23);
            txtsifretekrar.TabIndex = 2;
            txtsifretekrar.UseSystemPasswordChar = true;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.Location = new Point(159, 95);
            label1.Name = "label1";
            label1.Size = new Size(71, 15);
            label1.TabIndex = 3;
            label1.Text = "Kullanıcı adı";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label2.Location = new Point(193, 155);
            label2.Name = "label2";
            label2.Size = new Size(31, 15);
            label2.TabIndex = 4;
            label2.Text = "Şifre";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label3.Location = new Point(159, 207);
            label3.Name = "label3";
            label3.Size = new Size(66, 15);
            label3.TabIndex = 5;
            label3.Text = "Şifre Tekrar";
            // 
            // btnkaydet
            // 
            btnkaydet.BackColor = Color.PaleGreen;
            btnkaydet.FlatStyle = FlatStyle.Flat;
            btnkaydet.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnkaydet.Location = new Point(207, 249);
            btnkaydet.Name = "btnkaydet";
            btnkaydet.Size = new Size(83, 34);
            btnkaydet.TabIndex = 6;
            btnkaydet.Text = "Kaydet";
            btnkaydet.UseVisualStyleBackColor = false;
            btnkaydet.Click += btnkaydet_Click;
            // 
            // button2
            // 
            button2.BackColor = Color.DarkGoldenrod;
            button2.FlatStyle = FlatStyle.Flat;
            button2.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            button2.Location = new Point(328, 249);
            button2.Name = "button2";
            button2.Size = new Size(87, 34);
            button2.TabIndex = 7;
            button2.Text = "Geriye dön";
            button2.UseVisualStyleBackColor = false;
            button2.Click += button2_Click;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 18F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label4.ForeColor = Color.DarkGoldenrod;
            label4.Location = new Point(193, 32);
            label4.Name = "label4";
            label4.Size = new Size(201, 32);
            label4.TabIndex = 8;
            label4.Text = "Kullanıcı Ekleme";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(12, 12);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(115, 75);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 9;
            pictureBox1.TabStop = false;
            // 
            // yenikayıt
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.ActiveCaption;
            ClientSize = new Size(589, 392);
            Controls.Add(pictureBox1);
            Controls.Add(label4);
            Controls.Add(button2);
            Controls.Add(btnkaydet);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(txtsifretekrar);
            Controls.Add(txtsifre);
            Controls.Add(txtkullaniciadi);
            Name = "yenikayıt";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "yenikayıt";
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox txtkullaniciadi;
        private TextBox txtsifre;
        private TextBox txtsifretekrar;
        private Label label1;
        private Label label2;
        private Label label3;
        private Button btnkaydet;
        private Button button2;
        private Label label4;
        private PictureBox pictureBox1;
    }
}