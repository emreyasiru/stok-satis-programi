using System.Drawing;
using System.Windows.Forms;

public class MyRenderer : ToolStripProfessionalRenderer
{
    public MyRenderer() : base(new MyColorTable()) { }
}

public class MyColorTable : ProfessionalColorTable
{
    public override Color MenuItemSelected => Color.IndianRed;
    public override Color MenuItemBorder => Color.Firebrick;
    public override Color ToolStripDropDownBackground => Color.WhiteSmoke;
    public override Color MenuItemSelectedGradientBegin => Color.IndianRed;
    public override Color MenuItemSelectedGradientEnd => Color.IndianRed;
    public override Color MenuItemPressedGradientBegin => Color.Firebrick;
    public override Color MenuItemPressedGradientEnd => Color.Firebrick;
    public override Color ImageMarginGradientBegin => Color.WhiteSmoke;
    public override Color ImageMarginGradientMiddle => Color.WhiteSmoke;
    public override Color ImageMarginGradientEnd => Color.WhiteSmoke;
}
