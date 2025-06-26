namespace otomasyonprojesi
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            txtkullanici = new TextBox();
            txtsifre = new TextBox();
            label1 = new Label();
            label2 = new Label();
            btngiris = new Button();
            label3 = new Label();
            pictureBox1 = new PictureBox();
            pictureBox2 = new PictureBox();
            btnyenikayit = new Button();
            pictureBox3 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).BeginInit();
            SuspendLayout();
            // 
            // txtkullanici
            // 
            txtkullanici.Location = new Point(146, 241);
            txtkullanici.Name = "txtkullanici";
            txtkullanici.Size = new Size(150, 23);
            txtkullanici.TabIndex = 0;
            // 
            // txtsifre
            // 
            txtsifre.Location = new Point(146, 304);
            txtsifre.Name = "txtsifre";
            txtsifre.Size = new Size(150, 23);
            txtsifre.TabIndex = 1;
            txtsifre.UseSystemPasswordChar = true;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.ForeColor = Color.White;
            label1.Location = new Point(35, 242);
            label1.Name = "label1";
            label1.Size = new Size(81, 17);
            label1.TabIndex = 2;
            label1.Text = "Kullanıcı Adı";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label2.ForeColor = Color.White;
            label2.Location = new Point(82, 305);
            label2.Name = "label2";
            label2.Size = new Size(34, 17);
            label2.TabIndex = 3;
            label2.Text = "Şifre";
            // 
            // btngiris
            // 
            btngiris.BackColor = Color.YellowGreen;
            btngiris.FlatStyle = FlatStyle.Flat;
            btngiris.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btngiris.Location = new Point(94, 369);
            btngiris.Name = "btngiris";
            btngiris.Size = new Size(100, 35);
            btngiris.TabIndex = 4;
            btngiris.Text = "Giriş";
            btngiris.UseVisualStyleBackColor = false;
            btngiris.Click += btngiris_Click;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 20.25F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label3.ForeColor = Color.White;
            label3.Location = new Point(129, 26);
            label3.Name = "label3";
            label3.Size = new Size(169, 37);
            label3.TabIndex = 5;
            label3.Text = "Hoşgeldiniz";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.InitialImage = null;
            pictureBox1.Location = new Point(114, 241);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(26, 22);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 6;
            pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(114, 305);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(26, 22);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 7;
            pictureBox2.TabStop = false;
            // 
            // btnyenikayit
            // 
            btnyenikayit.BackColor = Color.Orange;
            btnyenikayit.FlatStyle = FlatStyle.Flat;
            btnyenikayit.Font = new Font("Constantia", 9F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 162);
            btnyenikayit.ForeColor = Color.Black;
            btnyenikayit.Location = new Point(232, 369);
            btnyenikayit.Name = "btnyenikayit";
            btnyenikayit.Size = new Size(121, 35);
            btnyenikayit.TabIndex = 8;
            btnyenikayit.Text = "Kullanıcı Ekle";
            btnyenikayit.UseVisualStyleBackColor = false;
            btnyenikayit.Click += btnyenikayit_Click;
            // 
            // pictureBox3
            // 
            pictureBox3.Image = (Image)resources.GetObject("pictureBox3.Image");
            pictureBox3.Location = new Point(129, 76);
            pictureBox3.Name = "pictureBox3";
            pictureBox3.Size = new Size(167, 137);
            pictureBox3.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox3.TabIndex = 9;
            pictureBox3.TabStop = false;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.SteelBlue;
            ClientSize = new Size(406, 527);
            Controls.Add(pictureBox3);
            Controls.Add(btnyenikayit);
            Controls.Add(pictureBox2);
            Controls.Add(pictureBox1);
            Controls.Add(label3);
            Controls.Add(btngiris);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(txtsifre);
            Controls.Add(txtkullanici);
            ForeColor = Color.Black;
            Name = "Form1";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox txtkullanici;
        private TextBox txtsifre;
        private Label label1;
        private Label label2;
        private Button btngiris;
        private Label label3;
        private PictureBox pictureBox1;
        private PictureBox pictureBox2;
        private Button btnyenikayit;
        private PictureBox pictureBox3;
    }
}
