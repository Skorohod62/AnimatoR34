unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
//загружает картинки
image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/infoscreen.png');
//загружает иконку
form4.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'main icons/AниматоR34_Icon1.ico');
end;

end.
