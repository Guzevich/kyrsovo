unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit5;

{$R *.dfm}

procedure TForm4.Button4Click(Sender: TObject);
begin
Form2.show;
Form4.hide;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form5.Show;
Form5.Memo1.Lines.LoadFromFile('111.txt');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Form5.Show;
Form5.Memo1.Lines.LoadFromFile('211.txt');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form5.Show;
Form5.Memo1.Lines.LoadFromFile('311.txt');
end;

end.
