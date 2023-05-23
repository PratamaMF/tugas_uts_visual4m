unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    l_1: TLabel;
    l_2: TLabel;
    grp1: TGroupBox;
    l_3: TLabel;
    l_4: TLabel;
    l_5: TLabel;
    l_6: TLabel;
    Edttambah: TEdit;
    Edtkurang: TEdit;
    Edtkali: TEdit;
    Edtbagi: TEdit;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    Edtinput1: TEdit;
    Edtinput2: TEdit;
    btn_1: TButton;
    l_7: TLabel;
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn_1Click(Sender: TObject);
begin
  Edttambah.Text:=IntToStr(StrToInt(Edtinput1.text)+strtoint(Edtinput2.Text));
  Edtkurang.Text:=IntToStr(StrToInt(Edtinput1.text)-strtoint(Edtinput2.Text));
  Edtkali.Text:=IntToStr(StrToInt(Edtinput1.text)*strtoint(Edtinput2.Text));
  Edtbagi.Text:=FloatToStr(StrToInt(Edtinput1.text)/strtoint(Edtinput2.Text));
end;

procedure TForm3.btn_2Click(Sender: TObject);
begin
  Edttambah.Text:=IntToStr(StrToInt(Edtinput1.text)+strtoint(Edtinput2.Text));
end;

procedure TForm3.btn_3Click(Sender: TObject);
begin
  Edtkurang.Text:=IntToStr(StrToInt(Edtinput1.text)-strtoint(Edtinput2.Text));
end;

procedure TForm3.btn_4Click(Sender: TObject);
begin
  Edtkali.Text:=IntToStr(StrToInt(Edtinput1.text)*strtoint(Edtinput2.Text));
end;

procedure TForm3.btn_5Click(Sender: TObject);
begin
  Edtbagi.Text:=FloatToStr(StrToInt(Edtinput1.text)/strtoint(Edtinput2.Text));
end;

end.
 