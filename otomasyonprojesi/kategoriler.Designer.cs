namespace otomasyonprojesi
{
    partial class kategoriler
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
            datakategoriler = new DataGridView();
            txtkategoriadi = new TextBox();
            label1 = new Label();
            txtkaydet = new Button();
            txtguncelle = new Button();
            txtsil = new Button();
            lblktgid = new Label();
            ((System.ComponentModel.ISupportInitialize)datakategoriler).BeginInit();
            SuspendLayout();
            // 
            // datakategoriler
            // 
            datakategoriler.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            datakategoriler.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            datakategoriler.Location = new Point(12, 36);
            datakategoriler.Name = "datakategoriler";
            datakategoriler.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            datakategoriler.Size = new Size(836, 166);
            datakategoriler.TabIndex = 1;
            datakategoriler.CellContentClick += datakategoriler_CellContentClick;
            datakategoriler.CellDoubleClick += datakategoriler_CellDoubleClick;
            // 
            // txtkategoriadi
            // 
            txtkategoriadi.Location = new Point(295, 284);
            txtkategoriadi.Name = "txtkategoriadi";
            txtkategoriadi.Size = new Size(147, 23);
            txtkategoriadi.TabIndex = 2;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.Location = new Point(217, 288);
            label1.Name = "label1";
            label1.Size = new Size(72, 15);
            label1.TabIndex = 3;
            label1.Text = "Kategori Adı";
            // 
            // txtkaydet
            // 
            txtkaydet.BackColor = Color.YellowGreen;
            txtkaydet.FlatStyle = FlatStyle.Flat;
            txtkaydet.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            txtkaydet.Location = new Point(466, 219);
            txtkaydet.Name = "txtkaydet";
            txtkaydet.Size = new Size(85, 40);
            txtkaydet.TabIndex = 4;
            txtkaydet.Text = "Kaydet";
            txtkaydet.UseVisualStyleBackColor = false;
            txtkaydet.Click += txtkaydet_Click;
            // 
            // txtguncelle
            // 
            txtguncelle.BackColor = Color.PaleGoldenrod;
            txtguncelle.FlatStyle = FlatStyle.Flat;
            txtguncelle.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            txtguncelle.Location = new Point(466, 275);
            txtguncelle.Name = "txtguncelle";
            txtguncelle.Size = new Size(85, 38);
            txtguncelle.TabIndex = 5;
            txtguncelle.Text = "Güncelle";
            txtguncelle.UseVisualStyleBackColor = false;
            txtguncelle.Click += txtguncelle_Click;
            // 
            // txtsil
            // 
            txtsil.BackColor = Color.IndianRed;
            txtsil.FlatStyle = FlatStyle.Flat;
            txtsil.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            txtsil.Location = new Point(466, 331);
            txtsil.Name = "txtsil";
            txtsil.Size = new Size(85, 36);
            txtsil.TabIndex = 6;
            txtsil.Text = "Sil";
            txtsil.UseVisualStyleBackColor = false;
            txtsil.Click += txtsil_Click;
            // 
            // lblktgid
            // 
            lblktgid.AutoSize = true;
            lblktgid.Location = new Point(251, 235);
            lblktgid.Name = "lblktgid";
            lblktgid.Size = new Size(0, 15);
            lblktgid.TabIndex = 7;
            lblktgid.Visible = false;
            // 
            // kategoriler
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(874, 392);
            Controls.Add(lblktgid);
            Controls.Add(txtsil);
            Controls.Add(txtguncelle);
            Controls.Add(txtkaydet);
            Controls.Add(label1);
            Controls.Add(txtkategoriadi);
            Controls.Add(datakategoriler);
            Name = "kategoriler";
            Text = "kategoriler";
            Load += kategoriler_Load;
            Controls.SetChildIndex(datakategoriler, 0);
            Controls.SetChildIndex(txtkategoriadi, 0);
            Controls.SetChildIndex(label1, 0);
            Controls.SetChildIndex(txtkaydet, 0);
            Controls.SetChildIndex(txtguncelle, 0);
            Controls.SetChildIndex(txtsil, 0);
            Controls.SetChildIndex(lblktgid, 0);
            ((System.ComponentModel.ISupportInitialize)datakategoriler).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView datakategoriler;
        private TextBox txtkategoriadi;
        private Label label1;
        private Button txtkaydet;
        private Button txtguncelle;
        private Button txtsil;
        private Label lblktgid;
    }
}