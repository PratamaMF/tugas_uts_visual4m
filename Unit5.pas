unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    pnl1: TPanel;
    l_1: TLabel;
    l_2: TLabel;
    l_3: TLabel;
    l_4: TLabel;
    l_5: TLabel;
    l_6: TLabel;
    l_7: TLabel;
    l_8: TLabel;
    pnl4: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    Edtnkehadiran: TEdit;
    Edtntugas: TEdit;
    Edtnuts: TEdit;
    Edtnharian: TEdit;
    Edtnuas: TEdit;
    Edtbkehadiran: TEdit;
    Edtbtugas: TEdit;
    Edtbuts: TEdit;
    Edtbharian: TEdit;
    Edtbuas: TEdit;
    Edttotal: TEdit;
    Edtgrade: TEdit;
    Edtket: TEdit;
    btnhitung: TButton;
    btnhapus: TButton;
    btnkeluar: TButton;
    procedure btnhitungClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnhitungClick(Sender: TObject);
 var
    nil1, nil2, nil3, nil4, nil5, hasil : real;
    b1, b2, b3, b4, b5 :real;
    grade, ket : string;
begin
   //berfungsi untuk mengambil data nilai
   nil1 := strtofloat(Edtnkehadiran.Text);
   nil2 := strtofloat(Edtntugas.Text);
   nil3 := strtofloat(Edtnuts.Text);
   nil4 := strtofloat(Edtnharian.Text);
   nil5 := strtofloat(Edtnuas.Text);

   //mengambil pesan data bobot
   b1 := strtofloat(Edtbkehadiran.Text)/100;
   b2 := strtofloat(Edtbtugas.Text)/100;
   b3 := strtofloat(Edtbuts.Text)/100;
   b4 := strtofloat(Edtbharian.Text)/100;
   b5 := strtofloat(Edtbuas.Text)/100;

   //menghitung nilai akhir
   hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;

  //menentukan grade nilai
  if (hasil >= 80) then
    grade:='A'
  else if
    (hasil >= 70) then
    grade :='B'
  else if
    (hasil >= 60) then
    grade := 'C'
  else if (hasil >= 50) then
    grade :='D'
  else grade :='E';

//Menentukan keterangan hasil
  if ((grade = 'A')or(grade='B')or(grade='C')) then
    ket:='LULUS'
  else
    ket:='TIDAK LULUS';

    //Hasil dari proses....
    Edttotal.Text := floattostr(hasil);
    Edtgrade.Text := grade;
    Edtket.Text := ket;

end;

procedure TForm5.btnhapusClick(Sender: TObject);
begin
  Edtnkehadiran.Text := '';
  Edtntugas.Text := '';
  Edtnuts.Text := '';
  Edtnharian.Text := '';
  Edtnuas.Text := '';
end;

procedure TForm5.btnkeluarClick(Sender: TObject);
begin
  Application.Terminate
end;

end.
