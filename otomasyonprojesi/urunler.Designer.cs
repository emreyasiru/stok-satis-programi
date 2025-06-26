namespace otomasyonprojesi
{
    partial class urunler
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
            dataurunler = new DataGridView();
            btnurunislemleri = new Button();
            ((System.ComponentModel.ISupportInitialize)dataurunler).BeginInit();
            SuspendLayout();
            // 
            // dataurunler
            // 
            dataurunler.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dataurunler.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataurunler.Location = new Point(9, 36);
            dataurunler.Name = "dataurunler";
            dataurunler.Size = new Size(854, 222);
            dataurunler.TabIndex = 1;
            // 
            // btnurunislemleri
            // 
            btnurunislemleri.BackColor = Color.YellowGreen;
            btnurunislemleri.FlatStyle = FlatStyle.Flat;
            btnurunislemleri.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnurunislemleri.Location = new Point(378, 313);
            btnurunislemleri.Name = "btnurunislemleri";
            btnurunislemleri.Size = new Size(135, 44);
            btnurunislemleri.TabIndex = 2;
            btnurunislemleri.Text = "Ürün İşlemleri";
            btnurunislemleri.UseVisualStyleBackColor = false;
            btnurunislemleri.Click += btnurunislemleri_Click;
            // 
            // urunler
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(875, 437);
            Controls.Add(btnurunislemleri);
            Controls.Add(dataurunler);
            Name = "urunler";
            Text = "urunler";
            Load += urunler_Load;
            Controls.SetChildIndex(dataurunler, 0);
            Controls.SetChildIndex(btnurunislemleri, 0);
            ((System.ComponentModel.ISupportInitialize)dataurunler).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dataurunler;
        private Button btnurunislemleri;
    }
}