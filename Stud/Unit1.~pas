unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ButtonComps, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Exit: TAOLButton;
    Next: TAOLButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Memo2: TMemo;
    ListBox1: TListBox;
    Image1: TImage;
    procedure NextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExitClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c,d,s,s1,h:integer;
  q,w  :string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.NextClick(Sender: TObject);
begin
c:=c+1;
Exit.Caption:='Назад';
 IF (Edit1.Text<>'') and (edit2.Text<>'') Then
   begin
     IF c=1 then
       begin
         Memo1.Lines[0]:=Edit1.Text;
         Memo1.Lines[1]:=Edit2.Text;
       end;

     Label1.Caption:='Выберите тему';
     ListBox1.Visible:=true;
     Label2.Visible :=false;
     Label3.Visible :=false;
     Combobox1.Visible:=true;
     Edit1.Visible:=false;
     Edit2.Visible:=false;
       IF (c=2) or (c=3) then
         begin
         s1:=ListBox1.ItemIndex;
         w:=ListBox1.Items.Strings[s1];
           Memo1.Lines[3]:=ComboBox1.Text;
           Memo1.lines.SaveToFile(ExtractFilePath(Application.ExeName)+'IshStud.txt');
            IF (ComboBox1.Text='') or (h<=0) then c:=c-1 ;
            IF (ComboBox1.Text<>'') and (h>0) then
             begin
              Form1.Hide;
              Form2.show;
              end;
         end;
   end;
 IF (Edit1.Text='') or (Edit2.Text='') Then
   begin
     c:=c-1;
     ShowMessage('Необходимо заполнить все поля');
   end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
ListBox1.Visible:=false;
ListBox1.Clear;
ComboBox1.Style:=csDropDownList;
Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IshStud.txt');
Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\SpisokDisc.txt');
Combobox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'\SpisokDisc.txt');
c:=0;
Edit1.Clear;
Edit2.Clear;
Edit1.Visible:=true;
Edit2.Visible:=true;
Combobox1.Visible:=false;
Label1.Caption:='Заполните пожалуйста форму';
Label2.Visible :=true;
Label3.Visible :=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm1.ExitClick(Sender: TObject);
begin
IF Exit.caption='Назад' Then
begin
Exit.Caption:='Выход';
ListBox1.Visible:=false;
ListBox1.Clear;
ComboBox1.Style:=csDropDownList;
Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IshStud.txt');
Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\SpisokDisc.txt');
Combobox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'\SpisokDisc.txt');
c:=0;
Edit1.Clear;
Edit2.Clear;
Edit1.Visible:=true;
Edit2.Visible:=true;
Combobox1.Visible:=false;
Label1.Caption:='Заполните пожалуйста форму';
Label2.Visible :=true;
Label3.Visible :=true;
end
Else
Application.Terminate;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
s:=ComboBox1.ItemIndex;
q:=ComboBox1.Items.Strings[s];
ListBox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Disc\'+q+'\ListT.txt');
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
h:=h+1;
end;

End.
