unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ButtonComps, jpeg, ExtCtrls;

type
  TFrame1 = class(TFrame)
    BPath: TAOLButton;
    BTime: TAOLButton;
    Exit: TAOLButton;
    IzmPas: TAOLButton;
    ChangeQ: TAOLButton;
    Res: TAOLButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
