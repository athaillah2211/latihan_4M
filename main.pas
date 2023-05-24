unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, StdCtrls, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    cht1: TChart;
    Series1: TBarSeries;
    Button1: TButton;
    qry2: TADOQuery;
    Button2: TButton;
    Button3: TButton;
    frxDBjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    frxdetailjadwal: TfrxReport;
    frxDBdetailjadwal: TfrxDBDataset;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Ujadwal;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
cht1.Title.Text.Add('Grafik Kehadiran Praktikum');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select count(no) as jumlah_kelas, sum(kehadiran_total) as total_siswa, kelas as nama_kelas from jadwal_table group by kelas');
qry2.Open;
cht1.Series[0].Clear;

for i:= 1 to qry2.RecordCount do
  begin
    cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.fieldbyname('nama_kelas').AsString);
    qry2.Next;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
    frxjadwal.ShowReport();
end;

procedure TForm1.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.name = 'Memo 7' then
  begin
    qry2.SQL.Clear;
    qry2.SQL.Add('select * from jadwal_table where kelas="'+view.TagStr+'" ');
    qry2.Open;

    frxdetailjadwal.ShowReport();
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
form2.ShowModal;
end;

end.
