unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, ExtCtrls, StdCtrls, jpeg;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    Image1: TImage;
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm6.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);

begin
MediaPlayer1.Play;
end;

procedure TForm6.FormShow(Sender: TObject);
  var path:string;
begin
 path:=ExtractFileDir(Application.exeName);
MediaPlayer1.DeviceType:=dtAutoSelect;
MediaPlayer1.FileName:=path+'\ab.mp4';
MediaPlayer1.Display:=Panel1;
MediaPlayer1.Open;
MediaPlayer1.DisplayRect:=Panel1.ClientRect;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form2.show;
Form6.hide;
end;

end.
