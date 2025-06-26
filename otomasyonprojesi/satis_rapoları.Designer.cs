namespace otomasyonprojesi
{
    partial class satis_rapoları
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
            datasatisrapor = new DataGridView();
            listViewDetay = new ListView();
            columnHeader1 = new ColumnHeader();
            columnHeader2 = new ColumnHeader();
            columnHeader3 = new ColumnHeader();
            columnHeader4 = new ColumnHeader();
            btnDetayGoster = new Button();
            btnfaturayisil = new Button();
            ((System.ComponentModel.ISupportInitialize)datasatisrapor).BeginInit();
            SuspendLayout();
            // 
            // datasatisrapor
            // 
            datasatisrapor.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            datasatisrapor.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            datasatisrapor.Location = new Point(12, 42);
            datasatisrapor.Name = "datasatisrapor";
            datasatisrapor.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            datasatisrapor.Size = new Size(855, 184);
            datasatisrapor.TabIndex = 2;
            // 
            // listViewDetay
            // 
            listViewDetay.Columns.AddRange(new ColumnHeader[] { columnHeader1, columnHeader2, columnHeader3, columnHeader4 });
            listViewDetay.Location = new Point(12, 232);
            listViewDetay.Name = "listViewDetay";
            listViewDetay.Size = new Size(622, 196);
            listViewDetay.TabIndex = 3;
            listViewDetay.UseCompatibleStateImageBehavior = false;
            // 
            // columnHeader1
            // 
            columnHeader1.Text = "Ürün Adı";
            columnHeader1.Width = 150;
            // 
            // columnHeader2
            // 
            columnHeader2.Text = "Miktar";
            columnHeader2.TextAlign = HorizontalAlignment.Right;
            // 
            // columnHeader3
            // 
            columnHeader3.Text = "Fiyat ";
            columnHeader3.TextAlign = HorizontalAlignment.Right;
            columnHeader3.Width = 80;
            // 
            // columnHeader4
            // 
            columnHeader4.Text = "Barkod ";
            columnHeader4.Width = 100;
            // 
            // btnDetayGoster
            // 
            btnDetayGoster.BackColor = Color.FromArgb(192, 255, 255);
            btnDetayGoster.FlatStyle = FlatStyle.Flat;
            btnDetayGoster.Location = new Point(684, 269);
            btnDetayGoster.Name = "btnDetayGoster";
            btnDetayGoster.Size = new Size(98, 46);
            btnDetayGoster.TabIndex = 4;
            btnDetayGoster.Text = "Fatura Detayını Göster";
            btnDetayGoster.UseVisualStyleBackColor = false;
            btnDetayGoster.Click += btnDetayGoster_Click;
            // 
            // btnfaturayisil
            // 
            btnfaturayisil.BackColor = Color.IndianRed;
            btnfaturayisil.FlatStyle = FlatStyle.Flat;
            btnfaturayisil.Location = new Point(684, 351);
            btnfaturayisil.Name = "btnfaturayisil";
            btnfaturayisil.Size = new Size(98, 40);
            btnfaturayisil.TabIndex = 5;
            btnfaturayisil.Text = "Faturayı Sil";
            btnfaturayisil.UseVisualStyleBackColor = false;
            btnfaturayisil.Click += btnfaturayisil_Click;
            // 
            // satis_rapoları
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(879, 462);
            Controls.Add(btnfaturayisil);
            Controls.Add(btnDetayGoster);
            Controls.Add(listViewDetay);
            Controls.Add(datasatisrapor);
            Name = "satis_rapoları";
            Text = "satis_rapoları";
            Load += satis_rapoları_Load;
            Controls.SetChildIndex(datasatisrapor, 0);
            Controls.SetChildIndex(listViewDetay, 0);
            Controls.SetChildIndex(btnDetayGoster, 0);
            Controls.SetChildIndex(btnfaturayisil, 0);
            ((System.ComponentModel.ISupportInitialize)datasatisrapor).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView datasatisrapor;
        private ListView listViewDetay;
        private ColumnHeader columnHeader1;
        private ColumnHeader columnHeader2;
        private ColumnHeader columnHeader3;
        private ColumnHeader columnHeader4;
        private Button btnDetayGoster;
        private Button btnfaturayisil;
    }
}