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
// загрузка картинок
image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\очиститьfalse.png');
image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\очиститьtrue.png');
image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\открытьfalse.png');
image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\открытьtrue.png');
image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\просмотр кадраfalse.png');
image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\просмотр кадраtrue.png');
image8.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\анимироватьfalse.png');
image9.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\анимироватьtrue.png');
image10.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\назадallfalse.png');
image11.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\назад1false.png');
image12.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\вперёд1false.png');
image13.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\вперёдallfalse.png');
image14.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\назадalltrue.png');
image15.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\назад1true.png');
image16.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\вперёд1true.png');
image17.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\вперёдalltrue.png');
image18.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\паузаfalse.png');
image19.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\паузаtrue.png');
image20.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/iconstartpain.png');
image21.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\сохранитьfalse.png');
image22.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments\сохранитьtrue.png');
// загрузка иконки программы
form3.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/AниматоR34_Icon1.ico');
end;

procedure TForm3.Image10Click(Sender: TObject);
begin
//если линий memo не равно 0, то открывает 0 строку в image
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
//уменьшает значение переменной i1 на 1
i1:= i1-1;
i:=i1;
//елсли значение i1 не равно -1, то открывает линию под номером i1
if i1<>-1 then
image1.Picture.LoadFromFile(memo1.Lines[i1]);

end;

procedure TForm3.Image12Click(Sender: TObject);
begin
image12.Visible:=false;
timer2.Enabled:=true;
while i1>=memo1.Lines.Count do
i1:=i1-1;
//увеличивает значение переменной i1 на 1
i1:= i1+1;
i:=i1;
//елсли значение i1 не равно количеству лмний в memo, то открывает линию под номером i1
if i1<>memo1.lines.Count then
image1.Picture.LoadFromFile(memo1.Lines[i1]);
end;

procedure TForm3.Image13Click(Sender: TObject);
begin
//если значение линий memo не равно 0, то открывавет посленюю линию в image
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
//останавливает таймер1
timer1.Enabled:=false;
image18.Visible:=false;
end;

procedure TForm3.Image19Click(Sender: TObject);
begin
//запускает таймер 1 если значение линий memo не равно 0
if memo1.Lines.Count<>0 then
begin
timer1.Enabled:=true;
end;
image18.Visible:=true;
end;

procedure TForm3.Image20Click(Sender: TObject);
begin
// при нажатии на кнопку открывает форму с графическим редактором
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
//сохранияет директорию в dir
dir:=GetCurrentDir;
//открывает Savedialog и сохраняет имя в переменную name, прибавляя ".gif"
  if Savedialog1.Execute then
    begin
          name:= savedialog1.FileName+'.gif'
    end;
//добавляет в StringList интервал таймера, переменную name и линии memo
    line:= TstringList.Create;
      line.Add(intToStr(timer1.Interval));
      line.Add(name);
      line.Add(memo1.Lines.Text);
// после сохраняет линии StringList в файл animate.txt
      line.SaveToFile(ExtractfilePath(Application.ExeName)+'animate.txt');
   SetCurrentDir(dir); // возвращает значение dir
   ShellExecute(Handle, nil,'gifanimate.py', nil, nil, SW_SHOW);// запускает python файл
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
//очичает линии memo
memo1.Lines.Clear;
image2.Visible:=false;
timer2.Enabled:=true;
end;

procedure TForm3.Image4Click(Sender: TObject);
var i: integer;
dir:string;
begin
i1:=0;
dir:=GetCurrentDir;     // сохраняет директорию в переменную dir
     image4.Visible:=false;
     //открывает OpenDialog и добавляет пути к файлам в линии memo
 if Open1.Execute then
    begin
      for i:=0 to open1.Files.Count-1 do begin
           memo1.Lines.add(open1.Files[i])
      end
    end;
 SetCurrentDir(dir);  //возвращает значение dir
end;

procedure TForm3.Image6Click(Sender: TObject);
begin
image6.Visible:=false;
timer2.Enabled:=true;
//если значение линий memo не равно 0, то открывает картинку под номером edit1
if memo1.Lines.Count<>0 then
begin
image1.picture.LoadFromFile(memo1.Lines[strtoint(edit1.text)-1]);
i1:=strtoint(edit1.text)-1
end
else showmessage('Нет кадров');
end;

procedure TForm3.Image8Click(Sender: TObject);
begin
//если значение edit2 не пустое, то интервалу таймеру1 присваивается значение edit2
if edit2.text<>'' then
timer1.Interval:=strtoint(edit2.text);

image8.Visible:=false;
image18.Visible:=true;
timer2.Enabled:=true;
//если значение линий memo не равно 0, то запускает таймер1
if memo1.lines.Count<>0 then
begin
timer1.Enabled:=True;
i:=0;
end
else showmessage('Нет кадров');
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
//при нажатии кнопки запускает спрвку
ShellExecute(0,PChar('Open'),PChar('AниматоR34help.chm'),nil,nil,SW_SHOW);
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
//заружает пути из memo1 в image
image1.picture.LoadFromFile(memo1.lines[i]);
i:=i+1;
//если значение i>=линий memo, то останавливает таймер
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
