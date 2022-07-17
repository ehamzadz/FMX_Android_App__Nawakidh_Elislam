unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Effects, FMX.Objects, FMX.Layouts, FMX.TabControl, RTL.Controls;

type
  TForm1 = class(TForm)
    RTLFixer1: TRTLFixer;
    TabControl1: TTabControl;
    logoTab: TTabItem;
    BG_logo: TRectangle;
    Image1: TImage;
    FloatAnimation1: TFloatAnimation;
    Image2: TImage;
    TabItem1: TTabItem;
    procedure BG_logoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure BG_logoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.BG_logoClick(Sender: TObject);
begin

end;

procedure TForm1.BG_logoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if(Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

end.
