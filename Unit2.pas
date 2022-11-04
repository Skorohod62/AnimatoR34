unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Samples.Gauges,
  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    Image2: TImage;
    Timer1: TTimer;
    Gauge1: TGauge;
    Image3: TImage;
    Image1: TImage;
    Timer2: TTimer;
    procedure Image2Clicktimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
//загрузка картинок
image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/applic.png');
image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/iconstartpani.png');
image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/iconstartpain.png');
//загрузка иконки приложения
form2.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/AниматоR34_Icon1.ico');
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
//при нажатии на кнопку запускает таймер
timer2.Enabled:=true;
Gauge1.Progress:=Gauge1.Progress+1;     //прибавляет gauge 1% каждые 20 мс
image1.Cursor:=crAppstart;
image2.Cursor:=crAppstart;
image3.Cursor:=crAppstart;
if(Gauge1.Progress=100) then          //если gauge=100, то переходит на форму с редактором анимации
begin
Timer2.Enabled:=False;
Form2.Hide;
Form3.Show;
end;
end;

procedure TForm2.Image2Clicktimer(Sender: TObject);
begin
// рип нажатии на кнопку запускает таймер
timer1.Enabled:=true;
Gauge1.Progress:=Gauge1.Progress+1;      //приибавляет gauge 1% каждые 20 мс
image1.Cursor:=crAppstart;
image2.Cursor:=crAppstart;
image3.Cursor:=crAppstart;
if(Gauge1.Progress=100) then            //если gauge=100, то переходит на форму с графическим редактором
begin
Timer1.Enabled:=False;
Form2.Hide;
Form1.Show;
end;
end;

end.
