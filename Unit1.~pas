unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ButtonComps, Menus, Unit2, ShellApi,
  OleCtrls, SHDocVw, ExtCtrls, jpeg, XPMan;

type
  TForm1 = class(TForm)
    PassBox: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ChangePass: TAOLButton;
    BackPass: TAOLButton;
    OldPass: TEdit;
    NewPass: TEdit;
    PNewPass: TEdit;
    MemoPass: TMemo;
    TimeBox: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ChangeTime: TAOLButton;
    BackTime: TAOLButton;
    Edit2: TEdit;
    UpDown1: TUpDown;
    Edit3: TEdit;
    UpDown2: TUpDown;
    vremya: TMemo;
    EditPath: TEdit;
    Label1: TLabel;
    Path: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Help: TMenuItem;
    Frame11: TFrame1;
    GBBPath: TGroupBox;
    OkPath: TAOLButton;
    BackPath: TAOLButton;
    HelpExit: TButton;
    WB: TWebBrowser;
    Image1: TImage;
    XPManifest1: TXPManifest;
    procedure Frame11BackClick(Sender: TObject);
    procedure Frame11ResClick(Sender: TObject);
    procedure Frame11BTimeClick(Sender: TObject);
    procedure Frame11BPathClick(Sender: TObject);
    procedure BackTimeClick(Sender: TObject);
    procedure BackPassClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OkPathClick(Sender: TObject);
    procedure BackPathClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure ChangeTimeClick(Sender: TObject);
    procedure ChangePassClick(Sender: TObject);
    procedure Frame11IzmPasClick(Sender: TObject);
    procedure HelpExitClick(Sender: TObject);
    procedure Frame11ChangeQClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  T:integer;
  min, sec: integer;  // минуты, секунды
  vrem: string[20];
  b: variant;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
Frame11.ChangeQ.Caption:='Изменить вопросы';
Frame11.BPath.Caption:='Изменить путь к ПК преподавателя';
Frame11.BTime.Caption:='Время';
Frame11.IzmPas.Caption:='Изменить пароль';
Frame11.Res.Caption:='Посмотреть результаты';
Frame11.Exit.Caption:='Выход';

HelpExit.Visible:=false;
Wb.hide;
Vremya.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\time.txt');
Min:=strtoint(vremya.Lines[0]);
Sec:=strtoint(vremya.Lines[1]);
UpDown1.Position:=strtoint(vremya.Lines[0]);
UpDown1.Position:=strtoint(vremya.Lines[1]);
Edit2.text:=vremya.Lines[0];
Edit3.text:=vremya.Lines[1];

MemoPass.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\parol.txt');

TimeBox.Visible:=false;
PassBox.Visible:=false;
EditPath.Visible:=false;
Label1.Visible:=false;
GBBPath.Visible:=false;
Path.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\path.txt');
EditPath.Text:=Path.Text;
end;

procedure TForm1.Frame11BackClick(Sender: TObject);
begin
Form1.Enabled:=false;
b:=MessageDlg ('Вы уверены что хотите выйти?',mtWarning, [mbYes, mbNo],0);
IF b=mryes Then
      begin
Application.Terminate;
      end
      Else
Form1.Enabled:=true;
end;

procedure TForm1.Frame11ResClick(Sender: TObject);
begin
ShellExecute(Handle,'open',pchar(Path.Text),nil,nil,SW_SHOW)
end;

procedure TForm1.Frame11BTimeClick(Sender: TObject);
begin
Frame11.Hide;
TimeBox.Visible:=true;
end;

procedure TForm1.Frame11BPathClick(Sender: TObject);
begin
Path.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\path.txt');
EditPath.Text:=Path.Text;
Frame11.Hide;
EditPath.Visible:=true;
label1.Visible:=true;
GBBPath.Visible:=true;
end;

procedure TForm1.BackTimeClick(Sender: TObject);
begin
TimeBox.Visible:=false;
Frame11.Show;
end;

procedure TForm1.BackPassClick(Sender: TObject);
begin
PassBox.Visible:=false;
Frame11.Show;
end;
procedure TForm1.OkPathClick(Sender: TObject);
begin
IF EditPath.text='' then showmessage('Необходимо ввести путь');
IF EditPath.text<>'' then
 Begin
  IF ForceDirectories(EditPath.Text) then ShowMessage('Путь успешно изменен');
  Path.Lines.Text:=EditPath.Text;
  Path.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\path.txt');
 end;
end;

procedure TForm1.BackPathClick(Sender: TObject);
begin
EditPath.Visible:=false;
Label1.Visible:=false;
Frame11.Show;
GBBPath.Visible:=false;
end;

procedure TForm1.HelpClick(Sender: TObject);
begin
 HelpExit.Visible:=true;
 Wb.Show;
 WB.Navigate(ExtractFilePath(Application.ExeName)+'help\Index.html');
end;

procedure TForm1.ChangeTimeClick(Sender: TObject);
begin
Min := UpDown1.Position;
Sec := UpDown2.Position;
Vremya.Lines[0]:=inttostr(min);
Vremya.Lines[1]:=inttostr(sec);
Vremya.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\time.txt');
ShowMessage('Время успешно изменено');
end;

procedure TForm1.ChangePassClick(Sender: TObject);
begin
  IF OldPass.text<>MemoPass.Lines.Text then
    Begin
      ShowMessage ('Старый пароль введен неверно');
      OldPass.Clear;
    End;
  IF NewPass.text<>PNewPass.Text then
    Begin
      ShowMessage('Новый пароль и его подтверждение не совпадают');
      NewPass.Clear;
      PNewPass.Clear;
    End;
  IF (OldPass.Text=MemoPass.Text) and (NewPass.Text=PNewPass.Text) and (NewPass.Text<>'')  then
   Begin
      MemoPass.Lines.Text:=PNewPass.Text;
      MemoPass.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\parol.txt');
      ShowMessage('Пароль успешно изменен');
   End;
   IF (OldPass.text='') or (NewPass.text='') or (PNewPass.text='') then
    Begin
      ShowMessage('Необходимо заполнить все поля!');
    End;
end;

procedure TForm1.Frame11IzmPasClick(Sender: TObject);
begin
MemoPass.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\parol.txt');
OldPass.Clear;
NewPass.Clear;
PNewPass.Clear;
Frame11.Hide;
PassBox.Visible:=true;
end;

procedure TForm1.HelpExitClick(Sender: TObject);
begin
WB.Hide;
HelpExit.Visible:=false;
end;

procedure TForm1.Frame11ChangeQClick(Sender: TObject);
begin
Form1.Hide;
Form3.Show;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
