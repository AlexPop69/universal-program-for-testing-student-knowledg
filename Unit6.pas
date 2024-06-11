unit Unit6;

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
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

uses Unit1;

{$R *.dfm}

procedure TPasswordDlg.FormShow(Sender: TObject);
begin
Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\parol.txt');
end;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
IF Password.text=memo1.Text then
begin
 Form1.show;
 PasswordDlg.Hide;
end
else
begin
 ShowMessage('Пароль введен неверно');
 Password.Clear;
end;
end;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TPasswordDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
 
