unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    l_1: TLabel;
    l_2: TLabel;
    l_3: TLabel;
    l_4: TLabel;
    l_5: TLabel;
    pnl4: TPanel;
    Edtnilai1: TEdit;
    Edtnilai2: TEdit;
    Edtnilai3: TEdit;
    Edtbobot1: TEdit;
    Edtbobot2: TEdit;
    Edtbobot3: TEdit;
    Edttotal: TEdit;
    Edtgrade: TEdit;
    btn1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : real;
  b1, b2, b3 : real;
  grade : string;
begin
  //berfungsi untuk mengambil data nilai
  nil1 := strtofloat(Edtnilai1.Text);
  nil2 := strtofloat(Edtnilai2.Text);
  nil3 := strtofloat(Edtnilai3.Text);
  //mengambil pesan data bobot
  b1 := strtofloat(Edtbobot1.Text)/100;
  b2 := strtofloat(Edtbobot2.Text)/100;
  b3 := strtofloat(Edtbobot3.Text)/100;
//menghitung nilai akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3 ;
//menentukan grade nilai
  if (hasil >= 80) then
    grade:='A'
  else if
    (hasil >= 70) then
    grade :='B'
  else if
    (hasil >= 60) then
    grade := 'C'
  else if
    (hasil >= 50) then
    grade :='D'
  else
    grade :='E';
//Hasil dari proses....
Edttotal.Text := floattostr(hasil);
Edtgrade.Text := grade;
end;

procedure TForm4.btn_2Click(Sender: TObject);
begin
  Edtnilai1.Text := '0';
  Edtnilai2.Text := '0';
  Edtnilai3.Text := '0';
  Edttotal.Text := '';
  Edtgrade.Text := '';
end;

procedure TForm4.btn_3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
 