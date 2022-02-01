unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image4: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit5, Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form5.Show;
Form5.Memo1.Lines.LoadFromFile('123.txt');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form5.Show;
Form5.Memo1.Lines.LoadFromFile('223.txt');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form5.Show;
Form5.Memo1.Lines.LoadFromFile('323.txt');
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Form2.show;
Form3.hide;
end;

end.
