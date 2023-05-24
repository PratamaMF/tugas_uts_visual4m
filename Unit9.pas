unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ADODB, ComCtrls;

type
  TForm9 = class(TForm)
    pnl1: TPanel;
    l_1: TLabel;
    l_2: TLabel;
    l_3: TLabel;
    l_4: TLabel;
    l_5: TLabel;
    l_6: TLabel;
    l_7: TLabel;
    l_8: TLabel;
    l_9: TLabel;
    Edtkelas: TEdit;
    Edtmatkul: TEdit;
    Edtjmulai: TEdit;
    Edtjakhir: TEdit;
    Cbbhari: TComboBox;
    Edtruangan: TEdit;
    Edthadir: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    DBGrid1: TDBGrid;
    dtp1: TDateTimePicker;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses Unit8;

{$R *.dfm}

procedure TForm9.btn2Click(Sender: TObject);
var
  a:Integer;
begin
   if (Edtjmulai.Text='') or (Edtjmulai.Text='00:00') or (Edtjakhir.Text='') or (Edtjakhir.Text='00:00') or (Edtkelas.Text='') or (Edtmatkul.Text='') or (Edtruangan.Text='') or (Edthadir.Text='')then
   begin
     ShowMessage('DATA BELUM DIISI DENGAN BENAR');
   end else

   if (Cbbhari.Text='') or (Cbbhari.Text='-- PILIH HARI --') then
   begin
     ShowMessage('HARI BELUM DI ISI DENGAN BENAR');
   end else
   begin
        a:= Form8.qry1.RecordCount+1;
    with Form8.qry1 do
    begin
      SQL.Clear;
      SQL.Add('insert into jadwal_tb values("'+inttostr(a)+'", "'+Edtjmulai.Text+'", "'+Edtjakhir.Text+'", "'+Cbbhari.Text+'", "'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'", "'+Edtruangan.Text+'", "'+Edtmatkul.Text+'", "'+Edtkelas.Text+'", "'+Edthadir.Text+'")');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from jadwal_tb');
      Open;
      ShowMessage('DATA BERHASIL DISIMPAN');
    end;
   end;



end;

procedure TForm9.btn1Click(Sender: TObject);
begin
  Edtkelas.Text:='';
  Edtmatkul.Text:='';
  Edtjmulai.Text:='00:00';
  Edtjakhir.Text:='00:00';
  Cbbhari.Text:='-- PILIH HARI --';
  Edtruangan.Text:='';
  Edthadir.Text:='';
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
var
  a:interger;
begin
  Edtjmulai.Text:= Form8.qry1.Fields[1].AsString;
end;

end.
