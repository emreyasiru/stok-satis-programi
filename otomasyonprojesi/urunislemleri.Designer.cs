namespace otomasyonprojesi
{
    partial class urunislemleri
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
            dataurunislemleri = new DataGridView();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            txturunadi = new TextBox();
            txtbarkod = new TextBox();
            txtalisfiyati = new TextBox();
            combokategori = new ComboBox();
            combotedfirma = new ComboBox();
            button1 = new Button();
            btnguncelle = new Button();
            btnsil = new Button();
            txtstokmiktari = new MaskedTextBox();
            lblid = new Label();
            txtsatisfiyati = new TextBox();
            label7 = new Label();
            ((System.ComponentModel.ISupportInitialize)dataurunislemleri).BeginInit();
            SuspendLayout();
            // 
            // dataurunislemleri
            // 
            dataurunislemleri.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dataurunislemleri.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataurunislemleri.Location = new Point(12, 36);
            dataurunislemleri.Name = "dataurunislemleri";
            dataurunislemleri.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataurunislemleri.Size = new Size(880, 233);
            dataurunislemleri.TabIndex = 1;
            dataurunislemleri.CellContentClick += dataGridView1_CellContentClick;
            dataurunislemleri.CellDoubleClick += dataurunislemleri_CellDoubleClick;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label1.Location = new Point(27, 293);
            label1.Name = "label1";
            label1.Size = new Size(54, 15);
            label1.TabIndex = 2;
            label1.Text = "Ürün Adı";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label2.Location = new Point(27, 341);
            label2.Name = "label2";
            label2.Size = new Size(44, 15);
            label2.TabIndex = 3;
            label2.Text = "Barkod";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label3.Location = new Point(236, 293);
            label3.Name = "label3";
            label3.Size = new Size(71, 15);
            label3.TabIndex = 4;
            label3.Text = "Stok miktarı";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label4.Location = new Point(236, 341);
            label4.Name = "label4";
            label4.Size = new Size(55, 15);
            label4.TabIndex = 5;
            label4.Text = "Alış fiyatı";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label5.Location = new Point(443, 293);
            label5.Name = "label5";
            label5.Size = new Size(70, 15);
            label5.TabIndex = 6;
            label5.Text = "Kategori adı";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            label6.Location = new Point(443, 341);
            label6.Name = "label6";
            label6.Size = new Size(85, 15);
            label6.TabIndex = 7;
            label6.Text = "Tedarikçi firma";
            // 
            // txturunadi
            // 
            txturunadi.Location = new Point(87, 290);
            txturunadi.Name = "txturunadi";
            txturunadi.Size = new Size(100, 23);
            txturunadi.TabIndex = 8;
            // 
            // txtbarkod
            // 
            txtbarkod.Location = new Point(87, 338);
            txtbarkod.Name = "txtbarkod";
            txtbarkod.Size = new Size(100, 23);
            txtbarkod.TabIndex = 9;
            // 
            // txtalisfiyati
            // 
            txtalisfiyati.Location = new Point(312, 338);
            txtalisfiyati.Name = "txtalisfiyati";
            txtalisfiyati.Size = new Size(100, 23);
            txtalisfiyati.TabIndex = 11;
            // 
            // combokategori
            // 
            combokategori.FormattingEnabled = true;
            combokategori.Location = new Point(531, 290);
            combokategori.Name = "combokategori";
            combokategori.Size = new Size(121, 23);
            combokategori.TabIndex = 12;
            // 
            // combotedfirma
            // 
            combotedfirma.FormattingEnabled = true;
            combotedfirma.Location = new Point(531, 338);
            combotedfirma.Name = "combotedfirma";
            combotedfirma.Size = new Size(121, 23);
            combotedfirma.TabIndex = 13;
            // 
            // button1
            // 
            button1.BackColor = Color.YellowGreen;
            button1.FlatStyle = FlatStyle.Flat;
            button1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            button1.Location = new Point(164, 385);
            button1.Name = "button1";
            button1.Size = new Size(88, 41);
            button1.TabIndex = 14;
            button1.Text = "Ürün ekle";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // btnguncelle
            // 
            btnguncelle.BackColor = Color.PaleGoldenrod;
            btnguncelle.FlatStyle = FlatStyle.Flat;
            btnguncelle.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnguncelle.Location = new Point(333, 385);
            btnguncelle.Name = "btnguncelle";
            btnguncelle.Size = new Size(90, 41);
            btnguncelle.TabIndex = 15;
            btnguncelle.Text = "Ürün Güncelle";
            btnguncelle.UseVisualStyleBackColor = false;
            btnguncelle.Click += btnguncelle_Click;
            // 
            // btnsil
            // 
            btnsil.BackColor = Color.IndianRed;
            btnsil.FlatStyle = FlatStyle.Flat;
            btnsil.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 162);
            btnsil.Location = new Point(531, 385);
            btnsil.Name = "btnsil";
            btnsil.Size = new Size(92, 41);
            btnsil.TabIndex = 16;
            btnsil.Text = "Ürünü Sil";
            btnsil.UseVisualStyleBackColor = false;
            btnsil.Click += btnsil_Click;
            // 
            // txtstokmiktari
            // 
            txtstokmiktari.Location = new Point(312, 290);
            txtstokmiktari.Mask = "00000000";
            txtstokmiktari.Name = "txtstokmiktari";
            txtstokmiktari.Size = new Size(100, 23);
            txtstokmiktari.TabIndex = 17;
            txtstokmiktari.ValidatingType = typeof(int);
            // 
            // lblid
            // 
            lblid.AutoSize = true;
            lblid.Location = new Point(705, 314);
            lblid.Name = "lblid";
            lblid.Size = new Size(0, 15);
            lblid.TabIndex = 18;
            lblid.Visible = false;
            // 
            // txtsatisfiyati
            // 
            txtsatisfiyati.Location = new Point(744, 290);
            txtsatisfiyati.Name = "txtsatisfiyati";
            txtsatisfiyati.Size = new Size(132, 23);
            txtsatisfiyati.TabIndex = 19;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(678, 293);
            label7.Name = "label7";
            label7.Size = new Size(60, 15);
            label7.TabIndex = 20;
            label7.Text = "Satış fiyatı";
            // 
            // urunislemleri
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(904, 450);
            Controls.Add(label7);
            Controls.Add(txtsatisfiyati);
            Controls.Add(lblid);
            Controls.Add(txtstokmiktari);
            Controls.Add(btnsil);
            Controls.Add(btnguncelle);
            Controls.Add(button1);
            Controls.Add(combotedfirma);
            Controls.Add(combokategori);
            Controls.Add(txtalisfiyati);
            Controls.Add(txtbarkod);
            Controls.Add(txturunadi);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(dataurunislemleri);
            Name = "urunislemleri";
            Text = "urunislemleri";
            Load += urunislemleri_Load;
            Controls.SetChildIndex(dataurunislemleri, 0);
            Controls.SetChildIndex(label1, 0);
            Controls.SetChildIndex(label2, 0);
            Controls.SetChildIndex(label3, 0);
            Controls.SetChildIndex(label4, 0);
            Controls.SetChildIndex(label5, 0);
            Controls.SetChildIndex(label6, 0);
            Controls.SetChildIndex(txturunadi, 0);
            Controls.SetChildIndex(txtbarkod, 0);
            Controls.SetChildIndex(txtalisfiyati, 0);
            Controls.SetChildIndex(combokategori, 0);
            Controls.SetChildIndex(combotedfirma, 0);
            Controls.SetChildIndex(button1, 0);
            Controls.SetChildIndex(btnguncelle, 0);
            Controls.SetChildIndex(btnsil, 0);
            Controls.SetChildIndex(txtstokmiktari, 0);
            Controls.SetChildIndex(lblid, 0);
            Controls.SetChildIndex(txtsatisfiyati, 0);
            Controls.SetChildIndex(label7, 0);
            ((System.ComponentModel.ISupportInitialize)dataurunislemleri).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dataurunislemleri;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private TextBox txturunadi;
        private TextBox txtbarkod;
        private TextBox txtalisfiyati;
        private ComboBox combokategori;
        private ComboBox combotedfirma;
        private Button button1;
        private Button btnguncelle;
        private Button btnsil;
        private MaskedTextBox txtstokmiktari;
        private Label lblid;
        private TextBox txtsatisfiyati;
        private Label label7;
    }
}