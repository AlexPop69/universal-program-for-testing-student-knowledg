unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ButtonComps, ExtCtrls, jpeg, XPMan;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelVO: TLabel;
    Ok: TAOLButton;
    str: TMemo;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    spd: TMemo;
    otv: TMemo;
    vopros: TMemo;
    NT: TEdit;
    KT: TEdit;
    Theme: TMemo;
    Vremya: TMemo;
    Timer1: TTimer;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Image1: TImage;
    Label21: TLabel;
    XPManifest1: TXPManifest;
    abv: TMemo;
    CB4: TCheckBox;
    CB3: TCheckBox;
    CB2: TCheckBox;
    CB1: TCheckBox;
    RB4: TRadioButton;
    RB3: TRadioButton;
    RB2: TRadioButton;
    RB1: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure OkClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Of1po;  //������� ��� ������� � ����� ���������� ��������� ������
    procedure Of2po;  //������� ��� ������� � ����� ����������� ���������� ������
    procedure OfVO;   //������� ��� ������� � ������ ������
    procedure OfVS;   //������� ��� ������� �� �����������
    procedure Vvo;    //������ � ������ ������
    procedure V1VO;   //������ � ����� ���������� ��������� ������
    procedure V2VO;   //������ � ����� ����������� ���������� ������
    procedure Vso;    //������ �� �����������
    procedure kon;    //����� �����
    procedure ShowTime;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  n,k,o,st,i:integer;
  Nd,NTE: string;
  min, sec: integer;  // ������, �������
  vrem: string[20];
  SRB, SCB: integer;

implementation

uses Unit1, Unit3, Unit4;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
Timer1.Enabled:=false;
st:=0;
n:=0;
o:=0;
Ok.Caption:='������';
Spd.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\SpisokDisc.txt');

NTE:='T'+IntToStr(s1+1);

  IF Ok.caption='������' then
    begin
      IF d=s then //����� ����
        begin
          Nd:='D'+inttostr(s+1);
        end;
    end;

Theme.lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Disc\'+q+'\ListT.txt');
          Label1.Caption:=w;
Str.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Disc\'+q+'\'+w+'\str.txt');
k:=StrToInt(str.Lines[0]); //���������� ��������
for i:= 1 to k Do
begin
otv.Lines.Add(' ');
end;
Vremya.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\time.txt');
min:=strtoint(Vremya.Lines[0]);
sec:=strtoint(Vremya.Lines[1]);

Combobox1.Style:=csDropDownList;
Combobox2.Style:=csDropDownList;
Combobox3.Style:=csDropDownList;
Label2.Visible:=false;
CB1.Visible:=false;
CB2.Visible:=false;
CB3.Visible:=false;
CB4.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;

ComboBox1.Visible:=false;
ComboBox2.Visible:=false;
ComboBox3.Visible:=false;
Edit1.Visible:=false;
RB1.Visible:=false;
RB2.Visible:=false;
RB3.Visible:=false;
RB4.Visible:=false;
LabelVO.Visible:=false;
end;

procedure TForm2.Of1po;
begin
RB1.Visible:=true;
RB2.Visible:=true;
RB3.Visible:=true;
RB4.Visible:=true;
Edit1.Visible:=false;
RB1.Checked:=false;
RB2.Checked:=false;
RB3.Checked:=false;
RB4.Checked:=false;
CB1.Visible:=false;
CB2.Visible:=false;
CB3.Visible:=false;
CB4.Visible:=false;
LabelVO.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;

Combobox1.Visible:=false;
Combobox2.Visible:=false;
Combobox3.Visible:=false;

Label3.Caption:=vopros.Lines[0] + vopros.Lines[1]+vopros.Lines[2];
RB1.Caption:=vopros.Lines[3]+vopros.Lines[4]+vopros.Lines[5];
RB2.Caption:=vopros.Lines[6]+vopros.Lines[7]+vopros.Lines[8];
RB3.Caption:=vopros.Lines[9]+vopros.Lines[10]+vopros.Lines[11];
RB4.Caption:=vopros.Lines[12]+vopros.Lines[13]+vopros.Lines[14];

Randomize;
SRB:=Random(23);

Case SRB of
0: begin      //1234
RB1.Top:= 152;
RB2.Top:= 272;
RB3.Top:= 392;
RB4.Top:= 512;
end;
1: begin     //1243
RB1.Top:= 152;
RB2.Top:= 272;
RB3.Top:= 512;
RB4.Top:= 392;
end;
2: begin     //1324
RB1.Top:= 152;
RB2.Top:= 392;
RB3.Top:= 272;
RB4.Top:= 512;
end;
3: begin     //1342
RB1.Top:= 152;
RB2.Top:= 392;
RB3.Top:= 512;
RB4.Top:= 272;
end;
4: begin     //1423
RB1.Top:= 152;
RB2.Top:= 512;
RB3.Top:= 272;
RB4.Top:= 392;
end;
5: begin     //1432
RB1.Top:= 152;
RB2.Top:= 512;
RB3.Top:= 392;
RB4.Top:= 272;
end;
6: begin     //2134
RB1.Top:= 272;
RB2.Top:= 152;
RB3.Top:= 392;
RB4.Top:= 512;
end;
7: begin     //2143
RB1.Top:= 272;
RB2.Top:= 152;
RB3.Top:= 512;
RB4.Top:= 392;
end;
8: begin     //2314
RB1.Top:= 272;
RB2.Top:= 392;
RB3.Top:= 152;
RB4.Top:= 512;
end;
9: begin     //2341
RB1.Top:= 272;
RB2.Top:= 392;
RB3.Top:= 512;
RB4.Top:= 152;
end;
10: begin     //2413
RB1.Top:= 272;
RB2.Top:= 512;
RB3.Top:= 152;
RB4.Top:= 392;
end;
11: begin     //2431
RB1.Top:= 272;
RB2.Top:= 512;
RB3.Top:= 392;
RB4.Top:= 152;
end;
12: begin     //3124
RB1.Top:= 392;
RB2.Top:= 152;
RB3.Top:= 272;
RB4.Top:= 512;
end;
13: begin     //3142
RB1.Top:= 392;
RB2.Top:= 152;
RB3.Top:= 512;
RB4.Top:= 272;
end;
14: begin     //3214
RB1.Top:= 392;
RB2.Top:= 272;
RB3.Top:= 152;
RB4.Top:= 512;
end;
15: begin     //3241
RB1.Top:= 392;
RB2.Top:= 272;
RB3.Top:= 512;
RB4.Top:= 152;
end;
16: begin     //3412
RB1.Top:= 392;
RB2.Top:= 512;
RB3.Top:= 152;
RB4.Top:= 272;
end;
17: begin     //3421
RB1.Top:= 392;
RB2.Top:= 512;
RB3.Top:= 272;
RB4.Top:= 152;
end;
18: begin     //4123
RB1.Top:= 512;
RB2.Top:= 152;
RB3.Top:= 272;
RB4.Top:= 392;
end;
19: begin     //4132
RB1.Top:= 512;
RB2.Top:= 152;
RB3.Top:= 392;
RB4.Top:= 272;
end;
20: begin     //4213
RB1.Top:= 512;
RB2.Top:= 272;
RB3.Top:= 152;
RB4.Top:= 392;
end;
21: begin     //4231
RB1.Top:= 512;
RB2.Top:= 272;
RB3.Top:= 392;
RB4.Top:= 152;
end;
22: begin     //4321
RB1.Top:= 512;
RB2.Top:= 392;
RB3.Top:= 272;
RB4.Top:= 152;
end;
23: begin     //4312
RB1.Top:= 512;
RB2.Top:= 392;
RB3.Top:= 152;
RB4.Top:= 272;
end;
end;

end;

procedure TForm2.Of2po;
begin
RB1.Visible:=false;
RB2.Visible:=false;
RB3.Visible:=false;
RB4.Visible:=false;
Edit1.Visible:=false;
CB1.Checked:=false;
CB2.Checked:=false;
CB3.Checked:=false;
CB4.Checked:=false;
CB1.Visible:=true;
CB2.Visible:=true;
CB3.Visible:=true;
CB4.Visible:=true;
LabelVO.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;

Combobox1.Visible:=false;
Combobox2.Visible:=false;
Combobox3.Visible:=false;
Label3.Caption:=vopros.Lines[0] + vopros.Lines[1]+vopros.Lines[2];
CB1.Caption:=vopros.Lines[3]+vopros.Lines[4]+vopros.Lines[5];
CB2.Caption:=vopros.Lines[6]+vopros.Lines[7]+vopros.Lines[8];
CB3.Caption:=vopros.Lines[9]+vopros.Lines[10]+vopros.Lines[11];
CB4.Caption:=vopros.Lines[12]+vopros.Lines[13]+vopros.Lines[14];

Randomize;
SCB:=Random(23);

Case SCB of
0: begin      //1234
CB1.Top:= 152;
CB2.Top:= 272;
CB3.Top:= 392;
CB4.Top:= 512;
end;
1: begin     //1243
CB1.Top:= 152;
CB2.Top:= 272;
CB3.Top:= 512;
CB4.Top:= 392;
end;
2: begin     //1324
CB1.Top:= 152;
CB2.Top:= 392;
CB3.Top:= 272;
CB4.Top:= 512;
end;
3: begin     //1342
CB1.Top:= 152;
CB2.Top:= 392;
CB3.Top:= 512;
CB4.Top:= 272;
end;
4: begin     //1423
RB1.Top:= 152;
RB2.Top:= 512;
RB3.Top:= 272;
RB4.Top:= 392;
end;
5: begin     //1432
CB1.Top:= 152;
CB2.Top:= 512;
CB3.Top:= 392;
CB4.Top:= 272;
end;
6: begin     //2134
CB1.Top:= 272;
CB2.Top:= 152;
CB3.Top:= 392;
CB4.Top:= 512;
end;
7: begin     //2143
CB1.Top:= 272;
CB2.Top:= 152;
CB3.Top:= 512;
CB4.Top:= 392;
end;
8: begin     //2314
CB1.Top:= 272;
CB2.Top:= 392;
CB3.Top:= 152;
CB4.Top:= 512;
end;
9: begin     //2341
CB1.Top:= 272;
CB2.Top:= 392;
CB3.Top:= 512;
CB4.Top:= 152;
end;
10: begin     //2413
CB1.Top:= 272;
CB2.Top:= 512;
CB3.Top:= 152;
CB4.Top:= 392;
end;
11: begin     //2431
CB1.Top:= 272;
CB2.Top:= 512;
CB3.Top:= 392;
CB4.Top:= 152;
end;
12: begin     //3124
CB1.Top:= 392;
CB2.Top:= 152;
CB3.Top:= 272;
CB4.Top:= 512;
end;
13: begin     //3142
CB1.Top:= 392;
CB2.Top:= 152;
CB3.Top:= 512;
CB4.Top:= 272;
end;
14: begin     //3214
CB1.Top:= 392;
CB2.Top:= 272;
CB3.Top:= 152;
CB4.Top:= 512;
end;
15: begin     //3241
CB1.Top:= 392;
CB2.Top:= 272;
CB3.Top:= 512;
CB4.Top:= 152;
end;
16: begin     //3412
CB1.Top:= 392;
CB2.Top:= 512;
CB3.Top:= 152;
CB4.Top:= 272;
end;
17: begin     //3421
CB1.Top:= 392;
CB2.Top:= 512;
CB3.Top:= 272;
CB4.Top:= 152;
end;
18: begin     //4123
CB1.Top:= 512;
CB2.Top:= 152;
CB3.Top:= 272;
CB4.Top:= 392;
end;
19: begin     //4132
CB1.Top:= 512;
CB2.Top:= 152;
CB3.Top:= 392;
CB4.Top:= 272;
end;
20: begin     //4213
CB1.Top:= 512;
CB2.Top:= 272;
CB3.Top:= 152;
CB4.Top:= 392;
end;
21: begin     //4231
CB1.Top:= 512;
CB2.Top:= 272;
CB3.Top:= 392;
CB4.Top:= 152;
end;
22: begin     //4321
CB1.Top:= 512;
CB2.Top:= 392;
CB3.Top:= 272;
CB4.Top:= 152;
end;
23: begin     //4312
CB1.Top:= 512;
CB2.Top:= 392;
CB3.Top:= 152;
CB4.Top:= 272;
end;
end;
end;

procedure TForm2.OfVO;
begin
RB1.Visible:=false;
RB2.Visible:=false;
RB3.Visible:=false;
RB4.Visible:=false;
Edit1.Visible:=true;
Edit1.Clear;
CB1.Visible:=false;
CB2.Visible:=false;
CB3.Visible:=false;
CB4.Visible:=false;
LabelVO.Visible:=true;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;

Combobox1.Visible:=false;
Combobox2.Visible:=false;
Combobox3.Visible:=false;
Label3.Caption:=vopros.Lines[0] + vopros.Lines[1]+vopros.Lines[2];
end;

procedure TForm2.OfVS;
var
i,j:integer;
begin
RB1.Visible:=false;
RB2.Visible:=false;
RB3.Visible:=false;
RB4.Visible:=false;
Edit1.Visible:=false;
Combobox1.Clear;
Combobox2.Clear;
Combobox3.Clear;
Combobox1.Visible:=true;
Combobox2.Visible:=true;
Combobox3.Visible:=true;
Combobox1.Items.AddStrings(abv.Lines);
Combobox2.Items.AddStrings(abv.Lines);
Combobox3.Items.AddStrings(abv.Lines);
CB1.Visible:=false;
CB2.Visible:=false;
CB3.Visible:=false;
CB4.Visible:=false;
LabelVO.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=true;
  end;


Label3.Caption:=vopros.Lines[0] + vopros.Lines[1]+vopros.Lines[2];

  For i:= 4 to 23 do
    begin
       (FindComponent('Label' + IntToStr(i)) as TLabel).Caption:=vopros.Lines[i-1];
    end;

end;

procedure TForm2.V1VO;
begin
  IF StrToInt(Vopros.Lines[15])=1 then //���������� ����� 1
    begin
      IF RB1.Checked  then
        begin
          n:=n+1;
          o:=o+1;
          Otv.Lines[n-1]:=IntToStr(n-1)+'+';
          Edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            otv.Lines[n-1]:=IntToStr(n-1)+'-';
            edit2.Text:=IntToStr(o);
          end;
  end;
  if strtoint(vopros.Lines[15])=2 then //���������� ����� 2
    begin
      if RB2.Checked  then
        begin
          n:=n+1;
          o:=o+1;
          otv.Lines[n-1]:=IntToStr(n-1)+'+';
          edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            otv.Lines[n-1]:=IntToStr(n-1)+'-';
            edit2.Text:=IntToStr(o);
          end;
  end;
  if strtoint(vopros.Lines[15])=3 then //���������� ����� 3
    begin
      if RB3.Checked  then
        begin
          n:=n+1;
          o:=o+1;
          otv.Lines[n-1]:=IntToStr(n-1)+'+';
          edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            otv.Lines[n-1]:=IntToStr(n-1)+'-';
            edit2.Text:=IntToStr(o);
          end;
    end;
  if strtoint(vopros.Lines[15])=4 then //���������� ����� 4
    begin
      if RB4.Checked  then
        begin
          n:=n+1;
          o:=o+1;
          otv.Lines[n-1]:=IntToStr(n-1)+'+';
          edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            otv.Lines[n-1]:=IntToStr(n-1)+'-';
            edit2.Text:=IntToStr(o);
          end;
    end;
end;

procedure TForm2.V2VO;
begin
// ���������� ������ 1 � 2
  IF (StrToInt(Vopros.Lines[15])=12) OR (StrToInt(Vopros.Lines[15])=21) then
    begin
      if ((CB1.Checked=true) and (CB2.Checked=true) and (CB3.Checked=false) and (CB4.Checked=false)) then
        begin
          n:=n+1;
          o:=o+1;
          Otv.Lines[n-1]:=IntToStr(n-1)+'+';
          Edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            otv.Lines[n-1]:=IntToStr(n-1)+'-';
            Edit2.Text:=IntToStr(o);
          end;
  end;
 // ���������� ������ 1 � 3
  IF (StrToInt(Vopros.Lines[15])=13) OR (StrToInt(Vopros.Lines[15])=31) then
    begin
      if ((CB1.Checked=true) and (CB2.Checked=false) and (CB3.Checked=true) and (CB4.Checked=false)) then
       begin
         n:=n+1;
         o:=o+1;
         Otv.Lines[n-1]:=IntToStr(n-1)+'+';
         Edit2.Text:=IntToStr(o);
       end
       else
         begin
           n:=n+1;
           Otv.Lines[n-1]:=IntToStr(n-1)+'-';
           Edit2.Text:=IntToStr(o);
         end;
  end;
// ���������� ������ 1 � 4
  IF (StrToInt(vopros.Lines[15])=14) OR (StrToInt(vopros.Lines[15])=41) then
    begin
      if ((CB1.Checked=true) and (CB2.Checked=false) and (CB3.Checked=false) and (CB4.Checked=true)) then
        begin
          n:=n+1;
          o:=o+1;
          Otv.Lines[n-1]:=IntToStr(n-1)+'+';
          Edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            Otv.Lines[n-1]:=IntToStr(n-1)+'-';
            Edit2.Text:=IntToStr(o);
          end;
  end;
// ���������� ������ 2 � 3
  IF (StrToInt(vopros.Lines[15])=23) OR (StrToInt(vopros.Lines[15])=32) then
    begin
      if ((CB1.Checked=false) and (CB2.Checked=true) and (CB3.Checked=true) and (CB4.Checked=false)) then
        begin
          n:=n+1;
          o:=o+1;
          Otv.Lines[n-1]:=IntToStr(n-1)+'+';
          Edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            Otv.Lines[n-1]:=IntToStr(n-1)+'-';
            Edit2.Text:=IntToStr(o);
          end;
  end;
// ���������� ������ 2 � 4
  IF (StrToInt(vopros.Lines[15])=24) OR (StrToInt(vopros.Lines[15])=24)  then
    begin
      If ((CB1.Checked=false) and (CB2.Checked=true) and (CB3.Checked=false) and (CB4.Checked=true)) then
        begin
          n:=n+1;
          o:=o+1;
          Otv.Lines[n-1]:=IntToStr(n-1)+'+';
          Edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            Otv.Lines[n-1]:=IntToStr(n-1)+'-';
            Edit2.Text:=IntToStr(o);
          end;
  end;
 // ���������� ������ 3 � 4
  IF (StrToInt(vopros.Lines[15])=34) OR (StrToInt(vopros.Lines[15])=43)  then
    begin
      if ((CB1.Checked=false) and (CB2.Checked=false) and (CB3.Checked=true) and (CB4.Checked=true)) then
        begin
          n:=n+1;
          o:=o+1;
          Otv.Lines[n-1]:=IntToStr(n-1)+'+';
          Edit2.Text:=IntToStr(o);
        end
        else
          begin
            n:=n+1;
            Otv.Lines[n-1]:=IntToStr(n-1)+'-';
            Edit2.Text:=IntToStr(o);
          end;
  end;
end;

procedure TForm2.Vso;
begin
//������ ����������� 1(���=012)
    IF StrToInt(vopros.Lines[23])=1 then
      begin
        IF ((ComboBox1.Text=abv.Lines[0]) and (ComboBox2.Text=abv.Lines[1]) and (ComboBox3.Text=abv.Lines[2])) then
          begin
            n:=n+1;
            o:=o+1;
            Otv.Lines[n-1]:=IntToStr(n-1)+'+';
            Edit2.Text:=IntToStr(o);
          end
          else
            begin
              n:=n+1;
              Otv.Lines[n-1]:=IntToStr(n-1)+'-';
              Edit2.Text:=IntToStr(o);
            end;
        end;
//������ ����������� 2(���=021)
          If StrToInt(Vopros.Lines[23])=2 then
            begin
              If ((combobox1.Text=abv.Lines[0]) and (combobox2.Text=abv.Lines[2]) and (combobox3.Text=abv.Lines[1])) then
                begin
                  n:=n+1;
                  o:=o+1;
                  Otv.Lines[n-1]:=IntToStr(n-1)+'+';
                  Edit2.Text:=IntToStr(o);
                end
                else
                  begin
                    n:=n+1;
                    Otv.Lines[n-1]:=IntToStr(n-1)+'-';
                    Edit2.Text:=IntToStr(o);
                  end;
        end;
//������ ����������� 3(���=102)
          If StrToInt(Vopros.Lines[23])=3 then
            begin
              If ((combobox1.Text=abv.Lines[1]) and (combobox2.Text=abv.Lines[0]) and (combobox3.Text=abv.Lines[2])) then
                begin
                  n:=n+1;
                  o:=o+1;
                  Otv.Lines[n-1]:=IntToStr(n-1)+'+';
                  Edit2.Text:=IntToStr(o);
                end
                else
                  begin
                    n:=n+1;
                    Otv.Lines[n-1]:=IntToStr(n-1)+'-';
                    Edit2.Text:=IntToStr(o);
                  end;
        end;
//������ ����������� 4(���=120)
          If StrToInt(vopros.Lines[23])=4 then
            begin
              If ((combobox1.Text=abv.Lines[1]) and (combobox2.Text=abv.Lines[2]) and (combobox3.Text=abv.Lines[0])) then
                begin
                  n:=n+1;
                  o:=o+1;
                  Otv.Lines[n-1]:=IntToStr(n-1)+'+';
                  Edit2.Text:=IntToStr(o);
                end
                else
                  begin
                    n:=n+1;
                    Otv.Lines[n-1]:=IntToStr(n-1)+'-';
                    Edit2.Text:=IntToStr(o);
                  end;
        end;
//������ ����������� 5(���=201)
          If StrToInt(vopros.Lines[23])=5 then
            begin
              If ((combobox1.Text=abv.Lines[2]) and (combobox2.Text=abv.Lines[0]) and (combobox3.Text=abv.Lines[1])) then
                begin
                  n:=n+1;
                  o:=o+1;
                  Otv.Lines[n-1]:=IntToStr(n-1)+'+';
                  Edit2.Text:=IntToStr(o);
                end
                else
                  begin
                    n:=n+1;
                    Otv.Lines[n-1]:=IntToStr(n-1)+'-';
                    Edit2.Text:=IntToStr(o);
                  end;
        end;
//������ ����������� 6(���=210)
          If StrToInt(vopros.Lines[23])=6 then
            begin
              If ((combobox1.Text=abv.Lines[2]) and (combobox2.Text=abv.Lines[1]) and (combobox3.Text=abv.Lines[0])) then
                begin
                  n:=n+1;
                  o:=o+1;
                  Otv.Lines[n-1]:=IntToStr(n-1)+'+';
                  Edit2.Text:=IntToStr(o);
                end
                else
                  begin
                    n:=n+1;
                    Otv.Lines[n-1]:=IntToStr(n-1)+'-';
                    Edit2.Text:=IntToStr(o);
                  end;
        end;
end;

procedure TForm2.Vvo;
begin
  IF (Vopros.Lines[3] = Edit1.Text) then
    begin
      o:=o+1;
      n:=n+1;
      Otv.Lines[n-1]:=IntToStr(n-1)+'+';
      Edit2.Text:=IntToStr(o);
    end
    else
      begin
        n:=n+1;
        Otv.Lines[n-1]:=IntToStr(n-1)+'-';
        Edit2.Text:=IntToStr(o);
      end;
end;

procedure TForm2.kon;
begin
IF n > k Then
begin
  RB1.Visible:=false;
  RB2.Visible:=false;
  RB3.Visible:=false;
  RB4.Visible:=false;
  CB1.Visible:=false;
  CB2.Visible:=false;
  CB3.Visible:=false;
  CB4.Visible:=false;

  For i := 4 to 32 do
  begin
    (FindComponent('Label' + IntToStr(i)) as TLabel).Visible:=false;
  end;

  Combobox1.Visible:=false;
  Combobox2.Visible:=false;
  Combobox3.Visible:=false;
    Label3.Caption:='';
    LabelVO.Visible:=false;
    Edit1.Visible:=false;
    Ok.Caption:='������';
    Label1.Caption:='';
    label2.Visible:=false;
    KT.Text :=TimeToStr(Time);
end;
end;

procedure TForm2.OkClick(Sender: TObject);
begin
IF Ok.Caption='������' then
begin
st:=1;
Form2.Hide;
Form3.Show;
KT.Text:=TimeToStr(Time);
Timer1.Enabled:=false;
end;

Ok.Caption:='�����';

//********* ����� �������
IF n=0 then
begin
    Timer1.Enabled :=true;
    NT.Text:=TimeToStr(Time);
    n:=n+1;
    label2.Visible:=true;
    vopros.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Disc\'+q+'\'+w+'\1.txt'); //�������� ������� �������
    label3.Caption:=vopros.Lines[0] + vopros.Lines[1]+vopros.Lines[2];
     label2.Caption:='������ �' + inttostr(n)+' �� '+IntToStr(k);  //����� ������ �������
//������� ��� �������
         IF StrToInt(str.Lines[1])=1 then
           begin
              Of1po;
           end;
       IF StrToInt(str.Lines[1])=2 then
           begin
             Of2po;
           end;
           IF StrToInt(str.Lines[1])=3 then
           begin
             OfVO;
           end;
       IF StrToInt(str.Lines[1])=4 then
           begin
             OfVS;
           end;
       end
ELSE IF n<>0 then
  begin
 label2.Caption:='������ �' + IntToStr(n+1)+' �� '+IntToStr(k);

IF n<=k then
begin
           IF (StrToInt(str.Lines[n])=1)  then
           begin
             V1VO;
           end
           Else IF (StrToInt(str.Lines[n])=2)  then
           begin
             V2VO;
           end
           Else IF (StrToInt(str.Lines[n])=3)  then
           begin
             Vvo;
           end
           Else IF StrToInt(str.Lines[n])=4 then
           begin
             Vso;
           end;
end;
kon;
           IF n<=k  then
           begin
//*******�������� �������
     vopros.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Disc\'+q+'\'+w+'\'+IntToStr(n)+'.txt');
           IF StrToInt(str.Lines[n])=1 then
           begin
              Of1po;
           end
           Else IF StrToInt(str.Lines[n])=2 then
           begin
              Of2po;
           end
           Else IF StrToInt(str.Lines[n])=3 then
           begin
              OfVO;
           end
           Else IF StrToInt(str.Lines[n])=4 then
           begin
              OfVS;
           end;
           end;
         end;
end;

procedure TForm2.ShowTime;
begin
  Vrem := '�������� ';
  // ������ � ������� ������� ����� �������
  IF Min < 10 then
     Vrem := Vrem + '0' + IntToStr(min) + ' : '
  Else
     Vrem := Vrem + IntToStr(min) + ' : ';
  IF Sec < 10 then
    Vrem := Vrem + '0' + IntToStr(sec)
  Else
   Vrem := Vrem + IntToStr(sec);
  Form2.Caption := vrem +'     '+ spd.Lines[s];
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Sec := Sec - 1;
  IF ((min = 0) and (sec = 0)) or (st=1)  Then
    // �������� �������� �����
    Begin
      Timer1.Enabled := False; // ���������� ������
      KT.Text:=TimeToStr(Time);
      Form2.Hide;
      Form3.show;
      Exit;
    End;
  IF (Sec = 0) and (Min > 0) then
     Begin
         Sec := 60;
         Min := Min - 1;
     End;
ShowTime; // ��������, ������� ������� ��������
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Hide;
Form1.Show;
Form2.Label3.Caption:='';
end;

End.
