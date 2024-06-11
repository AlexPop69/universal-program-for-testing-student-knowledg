unit Unit4;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, Dialogs, jpeg, ExtCtrls;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Memo1: TMemo;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TPasswordDlg.FormShow(Sender: TObject);
begin
Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\parol.txt');
end;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
IF Password.text=memo1.Text then
begin
Form3.Close;
Form1.Show;
 end
else
begin
 ShowMessage('Пароль введен неверно');
 Password.Clear;
end;
end;

procedure TPasswordDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form3.Show;
PasswordDLG.Hide;
end;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
Form3.Show;
PasswordDLG.Hide;
end;

end.
 
