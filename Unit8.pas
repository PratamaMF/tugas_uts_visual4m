unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, TeEngine, Series, TeeProcs,
  Chart, DbChart, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    pnl1: TPanel;
    btn1: TButton;
    DBGrid1: TDBGrid;
    Cht1: TDBChart;
    brsrsSeries1: TBarSeries;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    Konekdb1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    qry2: TADOQuery;
    frxjadwal: TfrxReport;
    frxdbjadwal: TfrxDBDataset;
    frxdbdetailjadwal: TfrxDBDataset;
    frxdetailjadwal: TfrxReport;
    btn5: TButton;
    l_id: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit9;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);

  var
    i:Integer;
  begin
    qry1.SQL.Clear;
    qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_tb group by kelas');
    qry1.Open;
    for i:=1 to qry1.RecordCount do
      begin
        Cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
        qry1.Next;
      end;
      DBGrid1.Columns[2].Width:=90;
  end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select * from jadwal_tb');
  qry1.Open;
  DBGrid1.columns[0].Width:=30;
  DBGrid1.columns[1].Width:=70;
  DBGrid1.columns[2].Width:=70;
  DBGrid1.Columns[3].Width:=90;
  DBGrid1.Columns[5].Width:=50;
  DBGrid1.Columns[6].Width:=110;
  DBGrid1.Columns[7].Width:=90;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
  DBGrid1.columns[0].Width:=30;
  DBGrid1.Columns[2].Width:=60;
  DBGrid1.Columns[3].Width:=90;
  DBGrid1.Columns[5].Width:=50;
  DBGrid1.Columns[6].Width:=110;
  DBGrid1.Columns[7].Width:=90;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  frxjadwal.ShowReport();
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
 Form9.showmodal;
end;

end.
