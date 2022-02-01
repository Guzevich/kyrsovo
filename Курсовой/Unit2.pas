unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ShellAPI, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit6, Unit3, Unit4;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form6.show;
Form2.hide;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
ShellExecute(0,Pchar('Open'),PChar('справочник\справочник.chm'),nil,nil,SW_SHOW);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form3.show;
Form2.hide;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form4.show;
Form2.hide;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form2.Close;
end;

end.
