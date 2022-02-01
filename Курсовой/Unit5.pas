unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
    s: string;
    i: integer;
    p: integer;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
if p=0 then
begin
s:=Memo1.Text;
i:=0;
end;
p:=pos(Edit1.Text,s);

if p<>0 then
begin
 Memo1.SetFocus;
 Memo1.SelStart:=i+p-1;
 Memo1.SelLength:=Length(Edit1.Text);
 s:=copy(s,p+Length(Edit1.Text),Length(s));
 i:=i+p;
end else
showmessage('Поиск закончен')
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Form2.show;
Form5.hide;
end;

procedure TForm5.Memo1Change(Sender: TObject);
begin
Memo1.ScrollBars:=ssVertical;
end;

end.
