unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    l_1: TLabel;
    l_2: TLabel;
    l_3: TLabel;
    Edtnilai1: TEdit;
    Edtnilai2: TEdit;
    Edthasil: TEdit;
    btn_1: TButton;
    btn_2: TButton;
    l_4: TLabel;
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn_1Click(Sender: TObject);
begin
  Edthasil.Text:=IntToStr(StrToInt(Edtnilai1.text)+
  strtoint(Edtnilai2.Text));
end;

procedure TForm2.btn_2Click(Sender: TObject);
begin
  Close;
//Application.Terminate;
end;

end.
