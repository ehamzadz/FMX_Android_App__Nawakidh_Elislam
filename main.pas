unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Effects, FMX.Objects, FMX.Layouts, FMX.TabControl, RTL.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo;

type
  TForm1 = class(TForm)
    RTLFixer1: TRTLFixer;
    TabControl1: TTabControl;
    logoTab: TTabItem;
    BG_logo: TRectangle;
    Image1: TImage;
    FloatAnimation1: TFloatAnimation;
    Image2: TImage;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    light_grey: TBrushObject;
    SpeedButton2: TSpeedButton;
    VertScrollBox1: TVertScrollBox;
    one: TTabItem;
    Text4: TText;
    VertScrollBox2: TVertScrollBox;
    Rectangle2: TRectangle;
    SpeedButton3: TSpeedButton;
    Text6: TText;
    SpeedButton4: TSpeedButton;
    Text5: TText;
    Text7: TText;
    Text9: TText;
    Text8: TText;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    Text13: TText;
    Text14: TText;
    Text15: TText;
    Text16: TText;
    procedure BG_logoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure Text6Click(Sender: TObject);
    procedure Text5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.BG_logoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if(Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
  sleep(1000);
  tabcontrol1.TabIndex := 1;
  FloatAnimation1.Enabled := false;
end;

procedure TForm1.Text5Click(Sender: TObject);
begin
  Image1.Opacity := 0;
  tabcontrol1.TabIndex := 0;
  FloatAnimation1.Enabled := true;
end;

procedure TForm1.Text6Click(Sender: TObject);
begin
  tabcontrol1.TabIndex := 2;
end;

end.
