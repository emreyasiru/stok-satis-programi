namespace otomasyonprojesi
{
    partial class anasayfa
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(anasayfa));
            menuStrip1 = new MenuStrip();
            anasayfaToolStripMenuItem = new ToolStripMenuItem();
            üToolStripMenuItem = new ToolStripMenuItem();
            kategorilerToolStripMenuItem = new ToolStripMenuItem();
            ürünlerToolStripMenuItem = new ToolStripMenuItem();
            personelToolStripMenuItem = new ToolStripMenuItem();
            satışToolStripMenuItem = new ToolStripMenuItem();
            satışRapolarıToolStripMenuItem = new ToolStripMenuItem();
            çıkışToolStripMenuItem = new ToolStripMenuItem();
            logobereket = new PictureBox();
            lblKasa = new Label();
            menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)logobereket).BeginInit();
            SuspendLayout();
            // 
            // menuStrip1
            // 
            menuStrip1.BackColor = Color.LightBlue;
            menuStrip1.ImageScalingSize = new Size(25, 25);
            menuStrip1.Items.AddRange(new ToolStripItem[] { anasayfaToolStripMenuItem, üToolStripMenuItem, kategorilerToolStripMenuItem, ürünlerToolStripMenuItem, personelToolStripMenuItem, satışToolStripMenuItem, satışRapolarıToolStripMenuItem, çıkışToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Size = new Size(872, 33);
            menuStrip1.TabIndex = 0;
            menuStrip1.Text = "menuStrip1";
            // 
            // anasayfaToolStripMenuItem
            // 
            anasayfaToolStripMenuItem.Image = (Image)resources.GetObject("anasayfaToolStripMenuItem.Image");
            anasayfaToolStripMenuItem.Name = "anasayfaToolStripMenuItem";
            anasayfaToolStripMenuItem.Size = new Size(92, 29);
            anasayfaToolStripMenuItem.Text = "Anasayfa";
            anasayfaToolStripMenuItem.Click += anasayfaToolStripMenuItem_Click;
            // 
            // üToolStripMenuItem
            // 
            üToolStripMenuItem.Image = (Image)resources.GetObject("üToolStripMenuItem.Image");
            üToolStripMenuItem.Name = "üToolStripMenuItem";
            üToolStripMenuItem.Size = new Size(103, 29);
            üToolStripMenuItem.Text = "Tedarikçiler";
            üToolStripMenuItem.Click += üToolStripMenuItem_Click;
            // 
            // kategorilerToolStripMenuItem
            // 
            kategorilerToolStripMenuItem.Image = (Image)resources.GetObject("kategorilerToolStripMenuItem.Image");
            kategorilerToolStripMenuItem.Name = "kategorilerToolStripMenuItem";
            kategorilerToolStripMenuItem.Size = new Size(101, 29);
            kategorilerToolStripMenuItem.Text = "Kategoriler";
            kategorilerToolStripMenuItem.Click += kategorilerToolStripMenuItem_Click;
            // 
            // ürünlerToolStripMenuItem
            // 
            ürünlerToolStripMenuItem.Image = (Image)resources.GetObject("ürünlerToolStripMenuItem.Image");
            ürünlerToolStripMenuItem.Name = "ürünlerToolStripMenuItem";
            ürünlerToolStripMenuItem.Size = new Size(83, 29);
            ürünlerToolStripMenuItem.Text = "Ürünler";
            ürünlerToolStripMenuItem.Click += ürünlerToolStripMenuItem_Click;
            // 
            // personelToolStripMenuItem
            // 
            personelToolStripMenuItem.Image = (Image)resources.GetObject("personelToolStripMenuItem.Image");
            personelToolStripMenuItem.Name = "personelToolStripMenuItem";
            personelToolStripMenuItem.Size = new Size(89, 29);
            personelToolStripMenuItem.Text = "Personel";
            personelToolStripMenuItem.Click += personelToolStripMenuItem_Click;
            // 
            // satışToolStripMenuItem
            // 
            satışToolStripMenuItem.Image = (Image)resources.GetObject("satışToolStripMenuItem.Image");
            satışToolStripMenuItem.Name = "satışToolStripMenuItem";
            satışToolStripMenuItem.Size = new Size(68, 29);
            satışToolStripMenuItem.Text = "Satış";
            satışToolStripMenuItem.Click += satışToolStripMenuItem_Click;
            // 
            // satışRapolarıToolStripMenuItem
            // 
            satışRapolarıToolStripMenuItem.Image = (Image)resources.GetObject("satışRapolarıToolStripMenuItem.Image");
            satışRapolarıToolStripMenuItem.Name = "satışRapolarıToolStripMenuItem";
            satışRapolarıToolStripMenuItem.Size = new Size(114, 29);
            satışRapolarıToolStripMenuItem.Text = "Satış Rapoları";
            satışRapolarıToolStripMenuItem.Click += satışRapolarıToolStripMenuItem_Click;
            // 
            // çıkışToolStripMenuItem
            // 
            çıkışToolStripMenuItem.Image = (Image)resources.GetObject("çıkışToolStripMenuItem.Image");
            çıkışToolStripMenuItem.Name = "çıkışToolStripMenuItem";
            çıkışToolStripMenuItem.Size = new Size(69, 29);
            çıkışToolStripMenuItem.Text = "Çıkış";
            çıkışToolStripMenuItem.Click += çıkışToolStripMenuItem_Click;
            // 
            // logobereket
            // 
            logobereket.Image = (Image)resources.GetObject("logobereket.Image");
            logobereket.Location = new Point(251, 103);
            logobereket.Name = "logobereket";
            logobereket.Size = new Size(372, 254);
            logobereket.SizeMode = PictureBoxSizeMode.StretchImage;
            logobereket.TabIndex = 1;
            logobereket.TabStop = false;
            // 
            // lblKasa
            // 
            lblKasa.AutoSize = true;
            lblKasa.Location = new Point(726, 77);
            lblKasa.Name = "lblKasa";
            lblKasa.Size = new Size(0, 15);
            lblKasa.TabIndex = 3;
            // 
            // anasayfa
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.ActiveCaption;
            ClientSize = new Size(872, 450);
            Controls.Add(lblKasa);
            Controls.Add(logobereket);
            Controls.Add(menuStrip1);
            MainMenuStrip = menuStrip1;
            Name = "anasayfa";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "anasayfa";
            Load += anasayfa_Load;
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)logobereket).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private MenuStrip menuStrip1;
        private ToolStripMenuItem anasayfaToolStripMenuItem;
        private ToolStripMenuItem üToolStripMenuItem;
        private ToolStripMenuItem kategorilerToolStripMenuItem;
        private ToolStripMenuItem ürünlerToolStripMenuItem;
        private ToolStripMenuItem personelToolStripMenuItem;
        private PictureBox logobereket;
        private ToolStripMenuItem satışToolStripMenuItem;
        private ToolStripMenuItem çıkışToolStripMenuItem;
        private ToolStripMenuItem satışRapolarıToolStripMenuItem;
        private Label lblKasa;
    }
}