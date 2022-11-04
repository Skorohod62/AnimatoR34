unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, shellAPI, Vcl.Menus;

type
  TForm3 = class(TForm)
    Open1: TOpenDialog;
    Image1: TImage;
    Memo1: TMemo;
    Timer1: TTimer;
    Image2: TImage;
    Panel1: TPanel;
    Image3: TImage;
    Timer2: TTimer;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Open1Close(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure SaveDialog1Close(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  img:Tpicture;
  i,i1:integer;
implementation

{$R *.dfm}

uses Unit1, Unit4;





procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
// �������� ��������
image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\��������false.png');
image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\��������true.png');
image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�������false.png');
image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�������true.png');
image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�������� �����false.png');
image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�������� �����true.png');
image8.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����������false.png');
image9.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����������true.png');
image10.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����allfalse.png');
image11.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����1false.png');
image12.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����1false.png');
image13.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����allfalse.png');
image14.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����alltrue.png');
image15.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����1true.png');
image16.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����1true.png');
image17.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����alltrue.png');
image18.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����false.png');
image19.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\�����true.png');
image20.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/iconstartpain.png');
image21.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\���������false.png');
image22.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\���������true.png');
// �������� ������ ���������
form3.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/A������R34_Icon1.ico');
end;

procedure TForm3.Image10Click(Sender: TObject);
begin
//���� ����� memo �� ����� 0, �� ��������� 0 ������ � image
if memo1.Lines.Count<>0 then
begin
image1.Picture.LoadFromFile(memo1.Lines[0]);
i1:=0;
end;
image10.Visible:=false;
timer2.Enabled:=true;
end;

procedure TForm3.Image11Click(Sender: TObject);
begin
image11.Visible:=false;
timer2.Enabled:=true;
while i1<0 do
i1:=i1+1;
//��������� �������� ���������� i1 �� 1
i1:= i1-1;
i:=i1;
//����� �������� i1 �� ����� -1, �� ��������� ����� ��� ������� i1
if i1<>-1 then
image1.Picture.LoadFromFile(memo1.Lines[i1]);

end;

procedure TForm3.Image12Click(Sender: TObject);
begin
image12.Visible:=false;
timer2.Enabled:=true;
while i1>=memo1.Lines.Count do
i1:=i1-1;
//����������� �������� ���������� i1 �� 1
i1:= i1+1;
i:=i1;
//����� �������� i1 �� ����� ���������� ����� � memo, �� ��������� ����� ��� ������� i1
if i1<>memo1.lines.Count then
image1.Picture.LoadFromFile(memo1.Lines[i1]);
end;

procedure TForm3.Image13Click(Sender: TObject);
begin
//���� �������� ����� memo �� ����� 0, �� ���������� �������� ����� � image
if memo1.Lines.Count<>0 then
begin
image1.Picture.LoadFromFile(memo1.Lines[memo1.Lines.Count-1]);
i1:=memo1.Lines.Count-1;
end;
image13.Visible:=false;
timer2.Enabled:=true;
end;

procedure TForm3.Image18Click(Sender: TObject);
begin
//������������� ������1
timer1.Enabled:=false;
image18.Visible:=false;
end;

procedure TForm3.Image19Click(Sender: TObject);
begin
//��������� ������ 1 ���� �������� ����� memo �� ����� 0
if memo1.Lines.Count<>0 then
begin
timer1.Enabled:=true;
end;
image18.Visible:=true;
end;

procedure TForm3.Image20Click(Sender: TObject);
begin
// ��� ������� �� ������ ��������� ����� � ����������� ����������
form1.show;
form3.hide;
end;

procedure TForm3.Image21Click(Sender: TObject);
var
dir:string;
name:string;
line: TStringList;
begin
image21.Visible:=false;
//���������� ���������� � dir
dir:=GetCurrentDir;
//��������� Savedialog � ��������� ��� � ���������� name, ��������� ".gif"
  if Savedialog1.Execute then
    begin
          name:= savedialog1.FileName+'.gif'
    end;
//��������� � StringList �������� �������, ���������� name � ����� memo
    line:= TstringList.Create;
      line.Add(intToStr(timer1.Interval));
      line.Add(name);
      line.Add(memo1.Lines.Text);
// ����� ��������� ����� StringList � ���� animate.txt
      line.SaveToFile(ExtractfilePath(Application.ExeName)+'animate.txt');
   SetCurrentDir(dir); // ���������� �������� dir
   ShellExecute(Handle, nil,'gifanimate.py', nil, nil, SW_SHOW);// ��������� python ����
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
//������� ����� memo
memo1.Lines.Clear;
image2.Visible:=false;
timer2.Enabled:=true;
end;

procedure TForm3.Image4Click(Sender: TObject);
var i: integer;
dir:string;
begin
i1:=0;
dir:=GetCurrentDir;     // ��������� ���������� � ���������� dir
     image4.Visible:=false;
     //��������� OpenDialog � ��������� ���� � ������ � ����� memo
 if Open1.Execute then
    begin
      for i:=0 to open1.Files.Count-1 do begin
           memo1.Lines.add(open1.Files[i])
      end
    end;
 SetCurrentDir(dir);  //���������� �������� dir
end;

procedure TForm3.Image6Click(Sender: TObject);
begin
image6.Visible:=false;
timer2.Enabled:=true;
//���� �������� ����� memo �� ����� 0, �� ��������� �������� ��� ������� edit1
if memo1.Lines.Count<>0 then
begin
image1.picture.LoadFromFile(memo1.Lines[strtoint(edit1.text)-1]);
i1:=strtoint(edit1.text)-1
end
else showmessage('��� ������');
end;

procedure TForm3.Image8Click(Sender: TObject);
begin
//���� �������� edit2 �� ������, �� ��������� �������1 ������������� �������� edit2
if edit2.text<>'' then
timer1.Interval:=strtoint(edit2.text);

image8.Visible:=false;
image18.Visible:=true;
timer2.Enabled:=true;
//���� �������� ����� memo �� ����� 0, �� ��������� ������1
if memo1.lines.Count<>0 then
begin
timer1.Enabled:=True;
i:=0;
end
else showmessage('��� ������');
end;

procedure TForm3.N10Click(Sender: TObject);
begin
image11.OnClick(self);
end;

procedure TForm3.N11Click(Sender: TObject);
begin
image12.OnClick(self);
end;

procedure TForm3.N12Click(Sender: TObject);
begin
image10.OnClick(self);
end;

procedure TForm3.N13Click(Sender: TObject);
begin
image11.OnClick(self);
end;

procedure TForm3.N14Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
//��� ������� ������ ��������� ������
ShellExecute(0,PChar('Open'),PChar('A������R34help.chm'),nil,nil,SW_SHOW);
end;

procedure TForm3.N4Click(Sender: TObject);
begin
image4.OnClick(self);
end;

procedure TForm3.N5Click(Sender: TObject);
begin
image21.OnClick(self);
end;

procedure TForm3.N6Click(Sender: TObject);
begin
form3.close;
end;

procedure TForm3.N7Click(Sender: TObject);
begin
image2.OnClick(self);
end;

procedure TForm3.N8Click(Sender: TObject);
begin
image6.OnClick(self);
end;

procedure TForm3.N9Click(Sender: TObject);
begin
image8.OnClick(self);
end;

procedure TForm3.Open1Close(Sender: TObject);
begin
image4.Visible:=true;
end;

procedure TForm3.SaveDialog1Close(Sender: TObject);
begin
image21.Visible:=true;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
i1:=i;
//�������� ���� �� memo1 � image
image1.picture.LoadFromFile(memo1.lines[i]);
i:=i+1;
//���� �������� i>=����� memo, �� ������������� ������
if i>=memo1.Lines.Count then
timer1.Enabled:=false;
end;

procedure TForm3.Timer2Timer(Sender: TObject);
begin
image2.Visible:=true;
image6.Visible:=true;
image8.Visible:=true;
image10.Visible:=true;
image11.Visible:=true;
image12.Visible:=true;
image13.Visible:=true;
timer2.Enabled:=false;
end;

end.
