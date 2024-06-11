unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ButtonComps, OleCtrls, SHDocVw, Menus, jpeg,
  ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Back: TAOLButton;
    ComboBox1: TComboBox;
    TipVopr: TMemo;
    Edit1: TEdit;
    MQ: TMemo;
    Str: TMemo;
    ComboBox2: TComboBox;
    UpDown1: TUpDown;
    GB1: TGroupBox;
    OkKV: TAOLButton;
    GBNext: TGroupBox;
    Next: TAOLButton;
    GBOk: TGroupBox;
    OkV: TAOLButton;
    GBAplly: TGroupBox;
    Apply: TAOLButton;
    GBEx: TGroupBox;
    Exemple: TAOLButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Help: TMenuItem;
    WB: TWebBrowser;
    HelpExit: TButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BackClick(Sender: TObject);
    procedure OkKVClick(Sender: TObject);
    procedure NextClick(Sender: TObject);
    procedure OkVClick(Sender: TObject);
    procedure ApplyClick(Sender: TObject);
    procedure ExempleClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure HelpExitClick(Sender: TObject);
  private
    procedure CheckEx();
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  n,k,i:integer;  //номер вопроса, количество вопросов
  b: variant; //сообщение после изменения всех вопросов
  F: TextFile;
  Fcon:array [1..510] of string; //содержимое файла str.txt

implementation

uses Unit3, Unit1, Unit5;

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
HelpExit.Visible:=false;
WB.Hide;
For i:=1 to 510 Do  // создание
begin               // содержимого
Fcon[i]:=' ';       //  файла str.txt
end;

Label1.Caption:=Form3.SpD.text+'  '+w;
Combobox1.Style:=csDropDownList;
Combobox2.Style:=csDropDownList;
Edit1.Text:=IntToStr(UpDown1.Position);

IF g<>1 then
begin
//проверка на существование папки
IF Not(DirectoryExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\')) Then
begin
ForceDirectories(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\');
end;

//*********загружаю структуру теста
IF FileExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt') Then
begin
Str.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt');
end
Else IF Not(FileExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt')) Then
begin
AssignFile(F,(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt'));
Rewrite(F);
For i:=1 to 501 do
begin
WriteLn(F,Fcon[i]);
end;
CloseFile(F);
Str.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt');
end;

Label2.Caption:='Введите количество вопросов:';
n:=1;
Updown1.Visible:=true;
Label3.Caption:='';
Label4.Caption:='';
    Back.Top:=128;
    Back.Left:=432;
    GB1.Visible:=true;
    GBNext.Visible:=false;
    Edit1.Visible:=true;
    Combobox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\TipVopr.txt');
    TipVopr.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\TipVopr.txt');
    MQ.Visible:=false;
    GBOk.Visible:=false;
    GBAplly.Visible:=false;
    GBEx.Visible:=false;
    Combobox1.Visible:=false;
    Combobox2.Visible:=false;
    Label5.Visible:=false;
end;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4.Hide;
Form3.show;
g:=0;
end;

procedure TForm4.BackClick(Sender: TObject);
begin
IF n=1 Then
 begin
   Form4.Hide;
   Form3.show;
 end;
 IF n>1 Then
   begin
     n:=n-1;
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
     MQ.Visible:=false;
     Edit1.Visible:=false;
     Label3.Caption:='';
     Label4.Caption:='';
     GB1.Visible:=false;
     GBAplly.Visible:=false;
     GBEx.Visible:=false;
     Back.Top:=176;
     Back.Left:=432;
     GBNext.Top:=160;
     GBNext.Left:=672;
     Combobox2.Visible:=false;
     Label5.Visible:=false;
     Combobox1.Visible:=true;
     GBOk.Visible:=true;
   end;
end;

procedure TForm4.OkKVClick(Sender: TObject);
begin
  IF Edit1.Text<>'' Then
    begin
      k:=StrToInt(Edit1.text);
        IF (k>0) Then
          begin
            Str.Lines[0]:=IntToStr(k);
            Edit1.Visible:=false;
            GB1.Visible:=false;
            GBNext.Visible:=true;
            Updown1.Visible:=false;
            Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
            Combobox1.Visible:=true;
            GBOk.Visible:=true;
            Back.Top:=176;
            Back.Left:=432;
            GBNext.Top:=160;
            GBNext.Left:=672;
          end;
     end;
end;

procedure TForm4.NextClick(Sender: TObject);
begin
GBNext.Top:=160;  //расположение кнопок
GBNext.Left:=672;
Back.Top:=176;
Back.Left:=432;
GBEx.Visible:=false;
Combobox2.Visible:=false;
Label5.Visible:=false;
n:=n+1;//номер вопроса
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
 IF n>k Then
  begin
   b:=MessageDlg ('Все Вопросы изменены, перейти на главную форму?',mtWarning, [mbYes, mbNo],0);
   MQ.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\'+inttostr(n)+'.txt');
   str.Lines[n]:='1';
   str.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt');
    IF b=mryes Then
      begin
        Form4.Hide;
        Form1.show;
        g:=0;
      end
      Else
       n:=n-1;
   end;
     MQ.Visible:=false;
     GBAplly.Visible:=false;
     Label3.Caption:='';
     Label4.Caption:='';
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
        Combobox1.Visible:=true;
        GBOk.Visible:=true;
end;

procedure TForm4.OkVClick(Sender: TObject);
begin
//тип вопроса "один правильный вариант ответа"
  IF (Combobox1.Text<>'') and (Combobox1.Text=TipVopr.Lines[0]) Then
   begin
     Label3.Caption:='Выбран тип вопроса: ' + TipVopr.Lines[0];
     Label4.Caption:='Введите вопрос и варианты ответа(4) и номер правильного ответа';
     MQ.Visible:=true;
     GBAplly.Visible:=true;
     GBEx.Visible:=true;
     combobox2.Visible:=false;
     Label5.Visible:=false;
     GBNext.Top:=538;
     GBNext.Left:=304;
     Back.Top:=552;
     Back.Left:=184;
     Combobox1.Visible:=false;
     GBOk.Visible:=false;
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
     Str.Lines[n]:='1'; //тип вопроса записываю в STR(memo)
CheckEx;
end;
//тип вопроса "2 правильных варианта ответов"
If (Combobox1.Text<>'') and (Combobox1.Text=TipVopr.Lines[1]) Then
   begin
     Label3.Caption:='Выбран тип вопроса: ' + TipVopr.Lines[1];
     Label4.Caption:='Введите вопрос и варианты ответов(4) и номера правильных ответов';
     MQ.Visible:=true;
     GBAplly.Visible:=true;
     GBEx.Visible:=true;
     combobox2.Visible:=false;
     Label5.Visible:=false;
     GBNext.Top:=538;
     GBNext.Left:=304;
     Back.Top:=552;
     Back.Left:=184;
     Combobox1.Visible:=false;
     GBOk.Visible:=false;
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
     Str.Lines[n]:='2';
CheckEx;
end;
//тип вопроса "ввод ответа"
IF (Combobox1.Text<>'') and (Combobox1.Text=TipVopr.Lines[2]) Then
   begin
     Label3.Caption:='Выбран тип вопроса: ' + TipVopr.Lines[2];
     Label4.Caption:='Введите вопрос и ответ';
     MQ.Visible:=true;
     GBAplly.Visible:=true;
     Combobox1.Visible:=false;
     GBEx.Visible:=true;
     Combobox2.Visible:=false;
     Label5.Visible:=false;
     GBNext.Top:=538;
     GBNext.Left:=304;
     Back.Top:=552;
     Back.Left:=184;
     Combobox1.Visible:=false;
     GBOk.Visible:=false;
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
     Str.Lines[n]:='3';
CheckEx;
end;
//тип вопроса "соответсвия"
IF (Combobox1.Text<>'') and (Combobox1.Text=TipVopr.Lines[3]) Then
   begin
     Label3.Caption:='Выбран тип вопроса: ' + TipVopr.Lines[3];
     Label4.Caption:='Введите вопрос, соответсвия и номер правильного соответствия';
     MQ.Visible:=true;
     GBAplly.Visible:=true;
     GBEx.Visible:=true;
     combobox2.Visible:=true;
     label5.Visible:=true;
     GBNext.Top:=538;
     GBNext.Left:=304;
     Back.Top:=552;
     Back.Left:=184;
     Combobox1.Visible:=false;
     GBOk.Visible:=false;
     Label2.Caption:='Выберите тип вопроса для вопроса №'+IntToStr(n)+' из '+IntToStr(k);
     Str.Lines[n]:='4';
CheckEx;
   end;
end;

procedure TForm4.CheckEx;
begin
IF FileExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\'+IntToStr(n)+'.txt')then
begin
MQ.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\'+IntToStr(n)+'.txt');
end
else IF not(FileExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\'+IntToStr(n)+'.txt')) then
begin
MQ.Clear;
MQ.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\'+IntToStr(n)+'.txt');
end;
end;

procedure TForm4.ApplyClick(Sender: TObject);
begin
ShowMessage('Вопрос успешно изменен');
MQ.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\'+inttostr(n)+'.txt');
Str.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+q+'\'+w+'\str.txt');
end;

procedure TForm4.ExempleClick(Sender: TObject);
begin
Form5.Label1.Caption:=Label1.Caption;
Form5.Memo1.lines:= Form4.MQ.lines;
Form5.Caption :='Выбран: ' + Combobox1.Text  ;
Form4.Hide;
Form5.Show;
end;

procedure TForm4.HelpClick(Sender: TObject);
begin
 HelpExit.Visible:=true;
 Wb.Show;
 WB.Navigate(ExtractFilePath(Application.ExeName)+'help\Index.html');
end;

procedure TForm4.HelpExitClick(Sender: TObject);
begin
WB.Hide;
HelpExit.Visible:=false;
end;

End.
