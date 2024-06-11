unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ButtonComps, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label19: TLabel;
    Back: TAOLButton;
    Memo1: TMemo;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    abv: TMemo;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    LabelVO: TLabel;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    RadioButton4: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  i,g:integer; //переменная для того, чтобы после
             // просмотра примера форма не начиналась сначала

implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
Label3.Caption:=Memo1.Lines[0]+Memo1.Lines[1]+Memo1.Lines[2];
Label2.Caption :='Вопрос №' + inttostr(n);

//вопрос с одним правильным вариантом ответа
IF (Form4.Combobox1.Text<>'') and (Form4.Combobox1.Text=Form4.TipVopr.Lines[0]) Then
 begin
  Radiobutton1.Caption :=Memo1.Lines [3] + Memo1.Lines [4] + Memo1.Lines [5];
  Radiobutton2.Caption :=Memo1.Lines [6] + Memo1.Lines [7] + Memo1.Lines [8];
  Radiobutton3.Caption :=Memo1.Lines [9] + Memo1.Lines [10] + Memo1.Lines [11];
  Radiobutton4.Caption :=Memo1.Lines [12] + Memo1.Lines [13] + Memo1.Lines [14];
  Radiobutton1.Visible:=true;
  Radiobutton2.Visible:=true;
  Radiobutton3.Visible:=true;
  Radiobutton4.Visible:=true;

  Checkbox1.Visible :=false;
  Checkbox2.Visible :=false;
  Checkbox3.Visible :=false;
  Checkbox4.Visible :=false;
  LabelVO.Visible :=false;
  Edit1.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;
    Combobox1.Visible:=false;
    Combobox2.Visible:=false;
    Combobox3.Visible:=false;
 end;

 //вопрос с двумя правильными вариантами ответа
IF (Form4.Combobox1.Text<>'') and (Form4.Combobox1.Text=Form4.TipVopr.Lines[1]) Then
  begin
  Checkbox1.Caption :=Memo1.Lines [3] + Memo1.Lines [4] + Memo1.Lines [5];
  Checkbox2.Caption :=Memo1.Lines [6] + Memo1.Lines [7] + Memo1.Lines [8];
  Checkbox3.Caption :=Memo1.Lines [9] + Memo1.Lines [10] + Memo1.Lines [11];
  Checkbox4.Caption :=Memo1.Lines [12] + Memo1.Lines [13] + Memo1.Lines [14];
  Edit1.Visible :=false;
Checkbox1.Visible:=true;
Checkbox2.Visible:=true;
Checkbox3.Visible:=true;
Checkbox4.Visible:=true;
  Radiobutton1.Visible:=false;
  Radiobutton2.Visible:=false;
  Radiobutton3.Visible:=false;
  Radiobutton4.Visible:=false;
  LabelVO.Visible :=false;
  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;
    Combobox1.Visible:=false;
    Combobox2.Visible:=false;
    Combobox3.Visible:=false;
  end;
//вопрос с вводом ответа
IF (Form4.combobox1.Text<>'') and (Form4.combobox1.Text=Form4.TipVopr.Lines[2]) Then
  begin
    Edit1.Text:=memo1.Lines [3];
  Checkbox1.Visible :=false;
  Checkbox2.Visible :=false;
  Checkbox3.Visible :=false;
  Checkbox4.Visible :=false;
  Radiobutton1.Visible:=false;
  Radiobutton2.Visible:=false;
  Radiobutton3.Visible:=false;
  Radiobutton4.Visible:=false;
    LabelVO.Visible :=true;
    Edit1.Visible :=true;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;
    Combobox1.Visible:=false;
    Combobox2.Visible:=false;
    Combobox3.Visible:=false;
  end;
//вопрос на установление соответсвий
IF (Form4.Combobox1.Text<>'') and (Form4.Combobox1.Text=Form4.TipVopr.Lines[3]) Then
  begin
    Edit1.Visible :=false;
  Checkbox1.Visible :=false;
  Checkbox2.Visible :=false;
  Checkbox3.Visible :=false;
  Checkbox4.Visible :=false;
  Radiobutton1.Visible:=false;
  Radiobutton2.Visible:=false;
  Radiobutton3.Visible:=false;
  Radiobutton4.Visible:=false;
    LabelVO.Visible:=false;
    Edit1.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=true;
  end;
    Combobox1.Visible:=true;
    Combobox2.Visible:=true;
    Combobox3.Visible:=true;
  For i:= 4 to 23 do
    begin
       (FindComponent('Label' + IntToStr(i)) as TLabel).Caption:=memo1.Lines[i-1];
    end;

  end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
g:=1;
Form5.Hide;
Form4.Show;
end;

procedure TForm5.BackClick(Sender: TObject);
begin
g:=1;
Form5.Hide;
Form4.Show;
end;

End.
