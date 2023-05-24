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
    dtp1: TDateTimePicker;
    l_10: TLabel;
    DBGrid1: TDBGrid;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  upd:string;

implementation
uses Unit8;

{$R *.dfm}

procedure TForm9.btn2Click(Sender: TObject);
var
  a: Integer;
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
begin
  try
  upd:=form8.qry1.Fields[0].AsString;
  Edtjmulai.Text:= Form8.qry1.Fields[1].AsString;
  Edtjakhir.Text:= Form8.qry1.Fields[2].AsString;
  Cbbhari.Text:= Form8.qry1.Fields[3].AsString;
  dtp1.Date:= Form8.qry1.Fields[4].AsDateTime;
  Edtruangan.Text:= Form8.qry1.Fields[5].AsString;
  Edtmatkul.Text:= Form8.qry1.Fields[6].AsString;
  Edtkelas.Text:= Form8.qry1.Fields[7].AsString;
  Edthadir.Text:=Form8.qry1.Fields[8].AsString;
  btn3.Enabled:=True;
  btn4.Enabled:=True;
  except
  //kosong
  end;
  end;

procedure TForm9.FormShow(Sender: TObject);
begin
 Form8.qry1.SQL.Clear;
 Form8.qry1.SQL.Add('select * from jadwal_tb');
 Form8.qry1.Open;

 DBGrid1.columns[0].Width:=30;
  DBGrid1.columns[1].Width:=70;
  DBGrid1.columns[2].Width:=70;
  DBGrid1.Columns[3].Width:=90;
  DBGrid1.Columns[5].Width:=50;
  DBGrid1.Columns[6].Width:=110;
  DBGrid1.Columns[7].Width:=90;

  btn3.Enabled:=False;
  btn4.Enabled:=False;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
if (Edtjmulai.Text='') or (Edtjmulai.Text='00:00') or (Edtjakhir.Text='') or (Edtjakhir.Text='00:00') or (Edtkelas.Text='') or (Edtmatkul.Text='') or (Edtruangan.Text='') or (Edthadir.Text='')then
   begin
     ShowMessage('DATA BELUM DIISI DENGAN BENAR');
   end else

   if (Cbbhari.Text='') or (Cbbhari.Text='-- PILIH HARI --') then
   begin
     ShowMessage('HARI BELUM DI ISI DENGAN BENAR');
   end else

   if (Edtjmulai.Text = Form8.qry1.Fields[1].AsString) and (Edtjakhir.Text = Form8.qry1.Fields[2].AsString) and (Cbbhari.Text = Form8.qry1.Fields[3].AsString) then
   begin
     ShowMessage('Data Tidak Ada Perubahan');
   end else

   begin
     //KodeUpdate
     with Form8.qry1 do
     begin
       SQL.Clear;
       SQL.Add('update jadwal_tb set jam_mulai="'+Edtjmulai.Text+'", jam_akhir="'+Edtjakhir.Text+'", hari="'+Cbbhari.Text+'", ruang="'+Edtruangan.Text+'", matkul="'+Edtmatkul.Text+'", kelas="'+Edtkelas.Text+'", kehadiran_total="'+Edthadir.Text+'" where no="'+upd+'"');
       ExecSQL;

       SQL.Clear;
       SQL.Add('select * from jadwal_tb');
       Open;
       ShowMessage('Data Berhasil Di Update');
     end;
   end;

end;

procedure TForm9.btn4Click(Sender: TObject);
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

     if MessageDlg('Apakah Anda Yaking Ingin Menghapus  Data Ini ??', mtWarning, [mbYes,mbNo],0)=mryes then
     begin
      with Form8.qry1 do
      begin
        SQL.Clear;
        SQL.Add('delete from jadwal_tb where id="'+upd+'"');
        ExecSQL;
      end;
        Form8.qry1.SQL.Clear;
        Form8.qry1.SQL.Add('select * from jadwal_tb');
        Form8.qry1.Open;
      ShowMessage('Data Berhasil Dihapus');
     end else
     begin
       ShowMessage('Data Batal Dihapus');
     end;
   end;
end;


end.
