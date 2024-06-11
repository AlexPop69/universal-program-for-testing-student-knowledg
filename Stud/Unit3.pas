unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    stud: TMemo;
    Res: TMemo;
    path: TMemo;
    parol: TMemo;
    Image1: TImage;
    Label4: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  t:string;
  h,i,j:integer;
  mas:array of string;
  b:variant;
implementation

uses Unit2, Unit1, Unit4;

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
b:=o/k*100;
If b<50 then label8.Caption:='Неудовлетворительно';
If (b>=50) and (b<=70) then label8.Caption:='Удовлетворительно';
If (b>70) and (b<=90) then label8.Caption:='Хорошо';
If b>90 then label8.Caption:='Отлично';
SetLength(mas,StrToInt(Form2.str.Lines[0]));
For i:= 0 To High(mas) Do
begin
mas[i]:= Form2.otv.lines[i+1];
end;

For j:=7 To k+7  Do
begin
Res.Lines.Add('');
Res.Lines[j]:=mas [j-8];
end;

path.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\path.txt');
parol.Lines.loadfromfile(ExtractFilePath(Application.ExeName)+'\parol.txt');
t:=path.Lines.Text;
stud.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'IshStud.txt');
label5.Caption :=stud.Lines [0];
label6.Caption :=stud.Lines [1];
label7.Caption :=inttostr(o) + ' вопросов из '+inttostr(k);
Res.Lines[0]:='Результаты тестирования по дисциплине: '+Form2.spd.Lines[s];
Res.Lines[1]:='По теме: '+Form2.Theme.Lines[s1];
Res.Lines[2]:='Тестирование проводилось: ' + DateToStr(Date);
Res.Lines[3]:='Начало тестирования: ' + Form2.NT.Text;
Res.Lines[4]:='Завершение тестирования: '+ form2.KT.Text;
Res.Lines[5]:='Студент: ' + stud.Lines [0];
Res.Lines[6]:= 'Группа: ' + stud.Lines [1];
Res.Lines[7]:='Правильно ' + inttostr(o) + ' вопросов из '+inttostr(k);
Res.Lines.Insert(7,'Оценка: '+label8.Caption);
Res.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\VihStud.txt');

IF Not(DirectoryExists(path.Lines.text)) then
begin
ForceDirectories(path.Lines.text);
end;
IF CopyFile(PChar(ExtractFilePath(Application.ExeName)+'VihStud.txt'),PChar(t+stud.Lines[0]+'.txt'),true) then
 begin
   ShowMessage('Рузльтат отправлен на компьютер преподавателя!');
 end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form3.Hide;
PasswordDLG.show;
end;

end.
 