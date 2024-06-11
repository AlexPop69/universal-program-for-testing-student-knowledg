unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ButtonComps, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    EncartaButton1: TEncartaButton;
    EncartaButton2: TEncartaButton;
    AOLButton1: TAOLButton;
    SelButton1: TSelButton;
    SquareButton1: TSquareButton;
    AOLButton2: TAOLButton;
    EncartaButton3: TEncartaButton;
    ImageButton1: TImageButton;
    procedure EncartaButton3Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.EncartaButton3Click(Sender: TObject);
begin
  close;
end;

end.
