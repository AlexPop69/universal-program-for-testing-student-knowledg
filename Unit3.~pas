unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ButtonComps, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    SpD: TComboBox;
    GB2: TGroupBox;
    Back2: TAOLButton;
    Ok: TAOLButton;
    Disc: TAOLButton;
    Tem: TAOLButton;
    GB1: TGroupBox;
    Back1: TAOLButton;
    AdDel: TAOLButton;
    Next: TAOLButton;
    SpT: TListBox;
    CB: TComboBox;
    Memo: TMemo;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Back1Click(Sender: TObject);
    procedure AdDelClick(Sender: TObject);
    procedure Back2Click(Sender: TObject);
    procedure OkClick(Sender: TObject);
    procedure SpDChange(Sender: TObject);
    procedure DiscClick(Sender: TObject);
    procedure TemClick(Sender: TObject);
    procedure CBChange(Sender: TObject);
    procedure SpDDropDown(Sender: TObject);
    procedure CBDropDown(Sender: TObject);
    procedure NextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  d        :Integer;
  s,s1,s2  :Integer;  //индексы Combob и ListBox
  DT       :byte;
  F        :TextFile;
  q,w,e    :string;

implementation

uses Unit1, Unit4, Unit5;

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
Memo.Visible:=false;
Spt.Visible:=true;
CB.Visible:=false;
Spt.Clear;
SpD.Style:=csDropDownList; //текст combobox'a
CB.Style:=csDropDownList;  //нельзя менять
Label1.Caption:='Выберите тему:';
Gb2.Visible:=false;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form3.Hide;
Form1.Show;
end;

procedure TForm3.Back1Click(Sender: TObject);
begin
Form3.Hide;
Form1.show;
end;

procedure TForm3.AdDelClick(Sender: TObject);
begin
Form3.Caption:='Редактирование дисциплин и тем';
Label1.Caption:='';
Gb2.Visible:=true;
Gb1.Visible:=false;
SpD.Visible:=false;
SpT.Visible:=false;
end;

procedure TForm3.Back2Click(Sender: TObject);
begin
Form3.Caption:='Выбор темы для редактирования';
Label1.Caption:='Выберите тему:';
Gb2.Visible:=false;
Memo.Visible:=false;
Gb1.Visible:=true;
SpD.Visible:=true;
Spt.Clear;
Spt.Visible:=true;
CB.Visible:=false;
end;

procedure TForm3.OkClick(Sender: TObject);
begin
IF DT=1 then
begin
Memo.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Stud\SpisokDisc.txt');
ShowMessage('Список Дисциплин успешно изменен');
end
Else IF DT=2 then
begin
ShowMessage('Список тем успешно изменен');
Memo.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Stud\Disc\'+e+'\ListT.txt');
end;
end;

procedure TForm3.SpDChange(Sender: TObject);
begin
S:=SpD.ItemIndex;
q:=Spd.Items.Strings[s];
SpT.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Stud\Disc\'+q+'\ListT.txt');
end;

procedure TForm3.DiscClick(Sender: TObject);
begin
Memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\SpisokDisc.txt');
Memo.Visible:=true;
CB.Visible:=false;
Label1.Caption:='Список Дисциплин:';
DT:=1;
end;

procedure TForm3.TemClick(Sender: TObject);
begin
Memo.Clear;
CB.Visible:=true;
Label1.Caption:='Выберте дисциплину, для которой хотите изменить темы';
Memo.Visible:=true;
DT:=2;
end;

procedure TForm3.CBChange(Sender: TObject);
begin
s2:=CB.ItemIndex;
e:=CB.Items.Strings[s2];
//проверка на существование папки
IF Not(DirectoryExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+e+'\')) then
begin
ForceDirectories(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+e+'\');
end;
IF NOT(FileExists(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+e+'\ListT.txt')) then
begin
AssignFile(F,(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+e+'\ListT.txt'));
Rewrite(F);
CloseFile(F);
end;
Memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\Disc\'+e+'\ListT.txt');
end;

procedure TForm3.SpDDropDown(Sender: TObject);
begin
SpD.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\SpisokDisc.txt');
end;

procedure TForm3.CBDropDown(Sender: TObject);
begin
CB.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'Stud\SpisokDisc.txt');
end;

procedure TForm3.NextClick(Sender: TObject);
begin
s1:=Spt.ItemIndex;
w:=spt.Items.Strings[s1];
g:=0;

IF NOT(w=spt.Items.Strings[s1] ) then
  begin
    ShowMessage('Необходимо выбрать тему');
  end;
IF w=spt.Items.Strings[s1] then
  begin
    d:=s+1;
    Form4.Label1.Caption:=Memo.Lines[s1+1];
    Form5.Label1.Caption:=Memo.Lines[s1+1];
    Form3.Hide;
    Form4.show;
  end;
end;

end.
