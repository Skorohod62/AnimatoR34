unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Menus, Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,ShellAPI;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ScrollBox1: TScrollBox;
    paintbox1: TPaintBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    SpeedButton6: TSpeedButton;
    Save1: TSaveDialog;
    Open1: TOpenDialog;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    N5: TMenuItem;
    N6: TMenuItem;
    circle1: TMenuItem;
    circle2: TMenuItem;
    straightline1: TMenuItem;
    eraser1: TMenuItem;
    eraser2: TMenuItem;
    N7: TMenuItem;
    Color1: TColorDialog;
    Color2: TColorDialog;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    ctrz1: TMenuItem;
    Timer1: TTimer;
    N8: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure paintbox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure paintbox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure paintbox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure paintbox1Paint(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure circle1Click(Sender: TObject);
    procedure circle2Click(Sender: TObject);
    procedure straightline1Click(Sender: TObject);
    procedure eraser1Click(Sender: TObject);
    procedure eraser2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Color1Close(Sender: TObject);
    procedure Color2Close(Sender: TObject);
    procedure ctrz1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);

  private
  public
  end;
type TShape = (sPen, sRect, sEllipse, sPoly, sFill);

var
  Form1: TForm1;
  img, buffer,buffer2: TBitmap;
  x0,y0: integer;
  dwn: boolean;
  nowdrawing: TShape;
  col1,col2: TColor;

implementation


{$R *.dfm}

uses Unit3, Unit4;



procedure TForm1.circle1Click(Sender: TObject);
begin
speedbutton2.down:= true;
end;

procedure TForm1.circle2Click(Sender: TObject);
begin
speedbutton3.down:= true;
end;

procedure TForm1.Color1Close(Sender: TObject);
begin
image14.Visible:=true;
end;

procedure TForm1.Color2Close(Sender: TObject);
begin
image16.Visible:=true;
end;

procedure TForm1.ctrz1Click(Sender: TObject);
begin
//загружает последний шаг из buffer в img
img.Assign(buffer2);
timer1.Enabled:=true;
end;

procedure TForm1.eraser1Click(Sender: TObject);
begin
speedbutton5.down:= true;
end;

procedure TForm1.eraser2Click(Sender: TObject);
begin
  speedbutton6.down:= true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//загрузка картинок
 image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/penfalse.jpg');
 image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/circlefalse.jpg');
 image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/rectfalse.jpg');
 image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/linefalse.jpg');
 image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/fillfalse.jpg');
 image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/eraserfalse.jpg');
 image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/pentrue.jpg');
 image8.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/circletrue.jpg');
 image9.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/recttrue.jpg');
 image10.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/linetrue.jpg');
 image11.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/filltrue.jpg');
 image12.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/erasertrue.jpg');
 image13.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/iconstartpani.png');
 image14.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/цветfalse.png');
 image15.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/цветtrue.png');
 image16.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/заливкаfalse.png');
 image17.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'icons instruments/заливкаtrue.png');
//загрузка иконки
form1.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/AниматоR34_Icon1.ico');
//создаёт TBitmap
 Img:=TBitmap.Create;
 buffer:=TBitmap.Create;
 buffer2:=TBitmap.Create;
//присваитвает размер PaintBox
 img.Width:=PaintBox1.ClientWidth;
 buffer.Width:=PaintBox1.ClientWidth;
 buffer2.Width:=PaintBox1.ClientWidth;
 img.Height:=PaintBox1.ClientHeight;
 buffer.Height:=PaintBox1.ClientHeight;
 buffer2.Height:=PaintBox1.ClientHeight;
//выбирается инструмент для рисования (карандаш)
 nowdrawing:=sPen;
// переменной dwn присваивает значение false
 dwn:=false;
// цвет заливки по умолчанию -- белый
 col2:=clwhite;

end;


procedure TForm1.Image13Click(Sender: TObject);
begin
// при нажатии кнопки переходит на форму с редактором анимации
form3.show;
form1.hide;
end;

procedure TForm1.Image14Click(Sender: TObject);
begin
image14.Visible:=false;
//открывает ColorDialog и выбирается цвет пользователем
if Color1.Execute then
col1:= Color1.Color;
end;

procedure TForm1.Image16Click(Sender: TObject);
begin
image16.Visible:=false;
//открывает ColorDialog и выбирается цвет заливки пользователем
if Color2.Execute then
col2:= Color2.Color;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
speedbutton1.down:=true;
if  speedbutton1.down then image1.Visible:=false;
 if  speedbutton1.down = false then image1.Visible:=true;
 if  speedbutton2.down = false then image2.Visible:=true;
 if  speedbutton3.down = false then image3.Visible:=true;
 if  speedbutton4.down = false then image4.Visible:=true;
 if  speedbutton5.down = false then image5.Visible:=true;
 if  speedbutton6.down = false then image6.Visible:=true;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
speedbutton2.down:=true;
if  speedbutton2.down then image2.Visible:=false;
 if  speedbutton1.down = false then image1.Visible:=true;
 if  speedbutton2.down = false then image2.Visible:=true;
 if  speedbutton3.down = false then image3.Visible:=true;
 if  speedbutton4.down = false then image4.Visible:=true;
 if  speedbutton5.down = false then image5.Visible:=true;
 if  speedbutton6.down = false then image6.Visible:=true;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
speedbutton3.down:=true;
if  speedbutton3.down then image3.Visible:=false;
 if  speedbutton1.down = false then image1.Visible:=true;
 if  speedbutton2.down = false then image2.Visible:=true;
 if  speedbutton3.down = false then image3.Visible:=true;
 if  speedbutton4.down = false then image4.Visible:=true;
 if  speedbutton5.down = false then image5.Visible:=true;
 if  speedbutton6.down = false then image6.Visible:=true;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
speedbutton4.down:=true;
if  speedbutton4.down then image4.Visible:=false;
 if  speedbutton1.down = false then image1.Visible:=true;
 if  speedbutton2.down = false then image2.Visible:=true;
 if  speedbutton3.down = false then image3.Visible:=true;
 if  speedbutton4.down = false then image4.Visible:=true;
 if  speedbutton5.down = false then image5.Visible:=true;
 if  speedbutton6.down = false then image6.Visible:=true;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
speedbutton5.down:=true;
if  speedbutton5.down then image5.Visible:=false;
 if  speedbutton1.down = false then image1.Visible:=true;
 if  speedbutton2.down = false then image2.Visible:=true;
 if  speedbutton3.down = false then image3.Visible:=true;
 if  speedbutton4.down = false then image4.Visible:=true;
 if  speedbutton5.down = false then image5.Visible:=true;
 if  speedbutton6.down = false then image6.Visible:=true;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
speedbutton6.down:=true;
if  speedbutton6.down then image6.Visible:=false;
 if  speedbutton1.down = false then image1.Visible:=true;
 if  speedbutton2.down = false then image2.Visible:=true;
 if  speedbutton3.down = false then image3.Visible:=true;
 if  speedbutton4.down = false then image4.Visible:=true;
 if  speedbutton5.down = false then image5.Visible:=true;
 if  speedbutton6.down = false then image6.Visible:=true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
//открывает OpenDialog с выбором рисунка для открытия
  if Open1.Execute then
    begin
      img:=TBitmap.create;
      img.loadfromfile(Open1.FileName); //загружает выбранные файл в PaintBox
      paintbox1.width:=img.width;
      paintbox1.height:=img.height;
    end
  else ShowMessage('Вы не выбрали файл')
end;

procedure TForm1.N3Click(Sender: TObject);
var name:string;
begin
// открывает SaveDialog
  if Save1.Execute then
    begin
    //сохранияет рисунок под именем выбранным пользователем и добавляет .bmp
      name:= Save1.FileName+'.bmp';
      img.SaveToFile(name);
    end
  else ShowMessage('Вы не созранили файл');

end;

procedure TForm1.N4Click(Sender: TObject);
begin
// закрыввает программу
  close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
 speedbutton1.down:= true;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
//загружает справку
ShellExecute(0,PChar('Open'),PChar('AниматоR34help.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
//загружает форму информационного окна
form4.show;
end;

procedure TForm1.paintbox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 buffer.Assign(img); //загружает img в buffer
 //если нажата левая кнопка мыши, то загружает buffer в img и принимает положение мыши
 if button=mbLeft then begin
 img.assign(buffer);
 x0:=x; y0:=y;
 //проверка какая кнопка для рисования нажата
 if SpeedButton1.Down then
  begin
    nowdrawing:=sPen;
    img.canvas.MoveTo(x,y);
  end else
 if SpeedButton2.Down then
  nowdrawing:=sEllipse else
 if SpeedButton3.Down then
  nowdrawing:=sRect else
 if SpeedButton4.Down then
  nowdrawing:=sPoly else
 if SpeedButton5.Down then
  nowdrawing:=sFill;

 dwn:=true;
 img.Canvas.Pen.Color:=col1;
 img.Canvas.Brush.Color:=col2;

 //если нажата кнопка "ластик", то принимает значение кнопки "карандаш", но с белым цветом
 if SpeedButton6.Down then
  begin
    nowdrawing:=sPen;
    img.Canvas.MoveTo(x,y);
    img.Canvas.Pen.Color:=clWhite;
  end;

 // ширина для рисования принимает значение позиции TrackBar
 img.Canvas.pen.Width:=TrackBar1.Position;

 if nowdrawing=sFill then
  begin
    img.Canvas.FloodFill(x0,y0,img.Canvas.Pixels[x,y],fsSurface);
    dwn:=false;
  end
 end else
 begin
  if (dwn)and(nowdrawing=sPoly) then begin
  x0:=x;
  y0:=y;
  buffer.Assign(img);
 end;
 end;
// загружает img в buffer2
buffer2.Assign(img);
 paintbox1.Canvas.CopyRect(bounds(0,0,img.Width,img.Height),
                    img.Canvas,bounds(0,0,img.Width,img.Height));

end;

procedure TForm1.paintbox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//если dwn опущена то не рисует
 if not dwn then exit;
  img.assign(buffer);
 case nowdrawing of
 //рисует в зависимости, какое значение принимает nowdarawing
  sPen:begin
  img.Canvas.LineTo(x,y);
 buffer.Assign(img);
 end;
  sRect:begin
  img.Canvas.Rectangle(x0,y0,x,y);
 end;
  sEllipse:begin
  img.Canvas.Ellipse(x0,y0,x,y);
 end;
  sPoly:begin
  img.Canvas.MoveTo(x0,y0);
  img.Canvas.LineTo(x,y);
 end;
 sFill:begin

 end;
 end;

 paintbox1.Canvas.CopyRect(bounds(0,0,img.Width,img.Height),
                    img.Canvas,bounds(0,0,img.Width,img.Height));

end;

procedure TForm1.paintbox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//если кнопка на Paintbox отпустилась, переменной dwn присваивает значение false
 if button=mbLeft then dwn:=false;

end;

procedure TForm1.paintbox1Paint(Sender: TObject);
begin
 paintbox1.Canvas.CopyRect(bounds(0,0,img.Width,img.Height),
                 buffer.Canvas,bounds(0,0,img.Width,img.Height));
                 timer1.Enabled:=false;
end;

procedure TForm1.straightline1Click(Sender: TObject);
begin
speedbutton4.down:= true;
end;


end.
