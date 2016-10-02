unit Frame_Daftar_Surat_Masuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxServerModeData,
  dxServerModeADODataSource, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridServerModeTableView, cxClasses, cxGridLevel, cxGrid,
  Data.DB, cxDBData, cxGridDBTableView, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCustomPivotGrid, cxDBPivotGrid, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxContainer, cxTextEdit, cxLabel, cxScrollBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, Vcl.OleCtrls,
  AcroPDFLib_TLB, Vcl.ExtCtrls, cxRadioGroup, cxGroupBox, Vcl.Buttons,
  cxInplaceContainer, cxVGrid, dxLayoutContainer, dxLayoutControl,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TFrame2 = class(TFrame)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1No: TcxGridDBColumn;
    cxGrid1DBTableView1Tanggal_terima: TcxGridDBColumn;
    cxGrid1DBTableView1No_surat: TcxGridDBColumn;
    cxGrid1DBTableView1Tanggal_Surat: TcxGridDBColumn;
    cxGrid1DBTableView1Asal_surat: TcxGridDBColumn;
    cxGrid1DBTableView1Perihal_Surat: TcxGridDBColumn;
    cxGrid1DBTableView1Berkas: TcxGridDBColumn;
    cxGrid1DBTableView1Tk_Keamanan: TcxGridDBColumn;
    cxGrid1DBTableView1Ket: TcxGridDBColumn;
    cxGrid1DBTableView1No_Agenda: TcxGridDBColumn;
    cxGrid1DBTableView1Dari: TcxGridDBColumn;
    cxGrid1DBTableView1Kepada: TcxGridDBColumn;
    cxGrid1DBTableView1Catatan: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1Tgl_Terima: TcxGridDBColumn;
    cxGrid1DBTableView1Tgl_Baca: TcxGridDBColumn;
    cxGrid1DBTableView1Tgl_Selesai: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2No: TcxGridDBColumn;
    cxGrid1DBTableView2Tanggal_terima: TcxGridDBColumn;
    cxGrid1DBTableView2No_surat: TcxGridDBColumn;
    cxGrid1DBTableView2Tanggal_Surat: TcxGridDBColumn;
    cxGrid1DBTableView2Asal_surat: TcxGridDBColumn;
    cxGrid1DBTableView2Perihal_Surat: TcxGridDBColumn;
    cxGrid1DBTableView2Berkas: TcxGridDBColumn;
    cxGrid1DBTableView2Tk_Keamanan: TcxGridDBColumn;
    cxGrid1DBTableView2Ket: TcxGridDBColumn;
    cxGrid1DBTableView2No_Agenda: TcxGridDBColumn;
    cxGrid1DBTableView2Dari: TcxGridDBColumn;
    cxGrid1DBTableView2Kepada: TcxGridDBColumn;
    cxGrid1DBTableView2Catatan: TcxGridDBColumn;
    cxGrid1DBTableView2status: TcxGridDBColumn;
    cxGrid1DBTableView2Tgl_Terima: TcxGridDBColumn;
    cxGrid1DBTableView2Tgl_Baca: TcxGridDBColumn;
    cxGrid1DBTableView2Tgl_Selesai: TcxGridDBColumn;
    cxGrid1DBTableView2Status_Surat: TcxGridDBColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    SpeedButton2: TSpeedButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    SpeedButton3: TSpeedButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    SpeedButton4: TSpeedButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure SpeedButton4Click(Sender: TObject);
    procedure Ambildetail();
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Surat_masuk();
    procedure FrameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Data, Menu_Utama;

procedure TFrame2.Ambildetail();
Var
  s, SQLQuery : string;
  Surat : Integer;

begin
  s := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0]);
  with DataModule1 do
  begin
    //ShowMessage(Form1.Userlogin);
    ADOQuery_SuratMasukDetail.SQL.Clear;
    SQLQuery :='SELECT *,';
    SQLQuery :=  SQLQuery + ' CASE WHEN Status = "0" THEN "Belum dibaca"';
    SQLQuery :=  SQLQuery + ' WHEN Status = "1" THEN "Sudah dibaca"';
    SQLQuery :=  SQLQuery + ' WHEN Status = "2" THEN "Selesai"';
    SQLQuery :=  SQLQuery + ' ELSE "Tanpa Keterangan" END AS Status_Surat';
    SQLQuery :=  SQLQuery + ' FROM surat_masuk';
    SQLQuery :=  SQLQuery + ' INNER JOIN disposisi ON surat_masuk.no = disposisi.No_Agenda';
    SQLQuery :=  SQLQuery + ' Order by No';
//    SQLQuery :=  SQLQuery + ' WHERE No_Agenda = '+s;
    ShowMessage(SQLQuery);
    ADOQuery_SuratMasukDetail.SQL.Add(SQLQuery);
    ADOQuery_SuratMasukDetail.Active := True;
    ADOQuery_SuratMasukDetail.Open;
    if ADOQuery_SuratMasukDetail.EOF then
    begin
      ShowMessage('Tidak Ada Surat Untuk di Tindak Lanjuti');
    end else
    begin
      Surat := ADOQuery_SuratMasukDetail.RecordCount;
      ShowMessage('Anda Memiliki = '+IntToStr(Surat)+ ' Surat Untuk di Tindak Lanjuti');
    end;
  end;
end;

procedure TFrame2.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Ambildetail();
end;

procedure TFrame2.FrameClick(Sender: TObject);
begin
Surat_masuk();
end;

procedure TFrame2.Surat_masuk();
Var
  SQLQuery : string;
  Surat : Integer;
begin
  with DataModule1 do
  begin
    //ShowMessage(Form1.Userlogin);
    ADOQuery_SuratMasuk.SQL.Clear;
    SQLQuery :='SELECT * FROM surat_masuk';
    SQLQuery :=  SQLQuery + ' INNER JOIN disposisi ON surat_masuk.no = disposisi.No_Agenda';
    if pos('KADIS', UpperCase(Form1.ket_user)) > 0 then
    begin
      SQLQuery :=  SQLQuery + ' WHERE Kepada = "" or Catatan = "BARU"';
    end else
    begin
      SQLQuery :=  SQLQuery + ' WHERE Kepada = "'+Form1.Userlogin+'"';
    end;
    SQLQuery :=  SQLQuery + ' Order by No';
    //if ADOQuery_User.FieldByName('HAK').AsInteger <= 1 then SQLQuery :=  SQLQuery + '  AND Catatan = "BARU"';
    ShowMessage(SQLQuery);
    ADOQuery_SuratMasuk.SQL.Add(SQLQuery);
    ADOQuery_SuratMasuk.Active := True;
    ADOQuery_SuratMasuk.Open;
    if ADOQuery_SuratMasuk.EOF then
    begin
      ShowMessage('Tidak Ada Surat Untuk di Tindak Lanjuti');
    end else
    begin
      Surat := ADOQuery_SuratMasuk.RecordCount;
      ShowMessage('Anda Memiliki = '+IntToStr(Surat)+ ' Surat Untuk di Tindak Lanjuti');
    end;
  end;
  Ambildetail();
end;

procedure TFrame2.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.ADOQuery_SuratMasuk.SQL.Clear;
  DataModule1.ADOQuery_SuratMasuk.SQL.Add('SELECT * FROM surat_masuk where No = 2');
  DataModule1.ADOQuery_SuratMasuk.Active := True;
end;

end.
