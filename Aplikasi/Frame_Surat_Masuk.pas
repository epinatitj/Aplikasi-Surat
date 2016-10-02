unit Frame_Surat_Masuk;

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
  dxLayoutcxEditAdapters, dxLayoutContainer, Vcl.ImgList, sSpeedButton,
  dxLayoutControl, Vcl.Grids, Vcl.DBGrids, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrame1 = class(TFrame)
    OpenDialog1: TOpenDialog;
    dxLayoutControl1: TdxLayoutControl;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    edit_NoAgenda: TcxTextEdit;
    edit_NoSurat: TcxTextEdit;
    edit_TglMasuk: TcxDateEdit;
    AcroPDF1: TAcroPDF;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    edit_AsalSurat: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxRadioGroup1: TcxRadioGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    tk1: TcxRadioButton;
    tk2: TcxRadioButton;
    edit_TglSurat: TcxDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    Memo_PerihalSurat: TcxMemo;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    tk3: TcxRadioButton;
    dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    sSpeedButton1: TsSpeedButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    sSpeedButton2: TsSpeedButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    sSpeedButton5: TsSpeedButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    sSpeedButton6: TsSpeedButton;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    procedure sSpeedButton4Click(Sender: TObject);
    procedure Simpan();
    procedure Teruskan();
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure edit_TglMasukPropertiesChange(Sender: TObject);
    procedure edit_TglSuratPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Bersihkan();
  end;

var
  Status,tgl_terima,tgl_surat : string;

implementation

{$R *.dfm}

uses Data, Menu_Utama;

function RightStr (Const Str: String; Size: Word): String;
begin
  if Size > Length(Str) then Size := Length(Str) ;
  RightStr := Copy(Str, Length(Str)-Size+1, Size)
end;

procedure TFrame1.sSpeedButton1Click(Sender: TObject);
begin
  Simpan();
end;

procedure TFrame1.sSpeedButton2Click(Sender: TObject);
begin
   Bersihkan();
end;

procedure TFrame1.Bersihkan();
begin
  edit_NoAgenda.Text := '';
  edit_TglMasuk.Text := '';
  edit_NoSurat.Text := '';
  edit_TglSurat.Text := '';
  edit_AsalSurat.Text := '';
  Memo_PerihalSurat.Text := '';
  edit_TglSurat.Text := '';
  AcroPDF1.src := '';
  edit_TglMasuk.SetFocus;
end;

procedure TFrame1.Teruskan();
Var
  SQLQuery, tksurat : string;
  I : integer;
begin
  SQLQuery :='INSERT INTO disposisi ';
  SQLQuery :=SQLQuery + '(No_Agenda, Dari, Kepada, Catatan, Status, Tgl_Terima)';
  SQLQuery :=SQLQuery + ' VALUE ("';
  SQLQuery :=SQLQuery + edit_NoAgenda.Text + '", "", "", "';
  SQLQuery :=SQLQuery + 'BARU","0",CURRENT_DATE)';
  with DataModule1 do
  begin
    //ShowMessage(SQLQuery);
    ADOCommand_SuratMasuk.CommandText := SQLQuery;
    // ADOQuery1.Active := True;
    ADOCommand_SuratMasuk.Execute;
    //Simpan File
    ShowMessage('Disposisi Berhasil di Simpan!');
  end;
end;

procedure TFrame1.edit_TglMasukPropertiesChange(Sender: TObject);
//var
//  tanggal : TDate;
begin
//  tanggal := strtodate(edit_TglMasuk.Text);
//  ShowMessage(FormatDateTime('"tanggal sekarang " yyyy-mm-dd, " jam " hh:mm AM/PM', tanggal));
  tgl_terima := FormatDateTime('yyyy-mm-dd', strtodate(edit_TglMasuk.Text));
  //ShowMessage('Tanggal terima Surat ' +tgl_terima);
end;

procedure TFrame1.edit_TglSuratPropertiesChange(Sender: TObject);
//var
//  tanggal : TDate;
begin
//  tanggal := strtodate(edit_TglSurat.Text);
//  ShowMessage(FormatDateTime('"tanggal sekarang " yyyy-mm-dd, " jam " hh:mm AM/PM', tanggal));
  tgl_surat := FormatDateTime('yyyy-mm-dd', strtodate(edit_TglSurat.Text));
  //ShowMessage('Tanggal Surat ' +tgl_surat);
end;

Procedure TFrame1.Simpan();
Var
  SQLQuery, tksurat,tgl_terima,tgl_surat : string;
  buttonSelected : Integer;
begin
  if edit_NoAgenda.Text = '' then edit_NoAgenda.SetFocus
  else if edit_TglMasuk.Text = '' then edit_TglMasuk.SetFocus
  else if edit_NoSurat.Text = '' then edit_NoSurat.SetFocus
  else if edit_TglSurat.Text = '' then edit_TglSurat.SetFocus
  else if edit_AsalSurat.Text = '' then edit_AsalSurat.SetFocus
  else if Memo_PerihalSurat.Text = '' then Memo_PerihalSurat.SetFocus
  else if edit_TglSurat.Text = '' then edit_TglSurat.SetFocus
  else if ExtractFileName(openDialog1.FileName) =''  then ShowMessage('Berkas Lampiran Belum ada !!')
  else
    begin
      if tk1.Checked = true then tksurat := 'SR';
      if tk2.Checked = true then tksurat := 'R';
      if tk3.Checked = true then tksurat := 'B';
      if Status = 'KOSONG' then
      begin
        ShowMessage('Data Surat Belum lengkap!!');
      end else
      begin
        //tgl_surat := FormatDateTime('yyyy-mm-dd', strtodate(edit_TglSurat.Text));
        //ShowMessage('Tanggal Surat ' +tgl_surat);
        //tgl_terima := FormatDateTime('yyyy-mm-dd', strtodate(edit_TglMasuk.Text));
        //ShowMessage('Tanggal terima Surat ' +tgl_terima);
        With DataModule1 do
        begin
          ADOTable_SuratMasuk.Active := True;
          ADOTable_SuratMasuk.Insert;
          ADOTable_SuratMasukNo.AsString := edit_NoAgenda.Text;
//          ADOTable_SuratMasukTanggal_terima.AsString := tgl_terima;
          ADOTable_SuratMasukTanggal_terima.AsString := edit_TglMasuk.Text;
          ADOTable_SuratMasukNo_surat.AsString := edit_NoSurat.Text;
//          ADOTable_SuratMasukTanggal_Surat.AsString := tgl_surat;
          ADOTable_SuratMasukTanggal_Surat.AsString := edit_TglSurat.Text;
          ADOTable_SuratMasukAsal_surat.AsString := edit_AsalSurat.Text;
          ADOTable_SuratMasukPerihal_Surat.AsString := Memo_PerihalSurat.Text;
          ADOTable_SuratMasukBerkas.AsString := edit_NoAgenda.Text+'.pdf';
          ADOTable_SuratMasukTk_Keamanan.AsString := tksurat;
          ADOTable_SuratMasukKet.AsString := 'Penerima Surat : '+ Form1.Userlogin;
          ADOTable_SuratMasukFILES.LoadFromFile(OpenDialog1.FileName);
          ADOTable_SuratMasuk.Post;
          ShowMessage('Surat Masuk '+#13+'Dengan Nomor Agenda '+edit_NoAgenda.Text+#13+'Telah di Simpan!');
          Teruskan();
        end;
      {
        SQLQuery :='INSERT INTO surat_masuk';
        SQLQuery :=SQLQuery + ' (No, Tanggal_terima, No_surat, Tanggal_Surat, Asal_surat,';
        SQLQuery :=SQLQuery + ' Perihal_Surat, Berkas, Tk_Keamanan, Ket, FILES)';
        SQLQuery :=SQLQuery + ' VALUE (:No, :Tanggal_terima, :No_surat, :Tanggal_Surat, :Asal_surat, ';
        SQLQuery :=SQLQuery + ' :Perihal_Surat, :Berkas, :Tk_Keamanan, :Ket, :FILES)';
        try
        with DataModule1 do
        begin
          ShowMessage(SQLQuery);
          ADOCommand_SuratMasuk.CommandText := SQLQuery;
          ADOCommand_SuratMasuk.parameters.paramByName('No').Value := edit_NoAgenda.Text;
          ADOCommand_SuratMasuk.parameters.paramByName('Tanggal_terima').Value := tgl_terima;
          ADOCommand_SuratMasuk.parameters.paramByName('No_surat').Value := edit_NoSurat.Text;
          ADOCommand_SuratMasuk.parameters.paramByName('Tanggal_Surat').Value := tgl_surat;
          ADOCommand_SuratMasuk.parameters.paramByName('Asal_surat').Value := edit_AsalSurat.Text;
          ADOCommand_SuratMasuk.parameters.paramByName('Perihal_Surat').Value := Memo_PerihalSurat.Text;
          ADOCommand_SuratMasuk.parameters.paramByName('Berkas').Value := edit_NoAgenda.Text+'.pdf';
          ADOCommand_SuratMasuk.parameters.paramByName('Tk_Keamanan').Value := tksurat;
          ADOCommand_SuratMasuk.parameters.paramByName('Ket').Value := 'Penerima Surat : '+ Form1.Userlogin;
          ADOCommand_SuratMasuk.parameters.paramByName('FILES').LoadFromFile(OpenDialog1.FileName, ftBlob);
          // ADOQuery1.Active := True;
          ADOCommand_SuratMasuk.Execute;
        //Simpan File
          CopyFile(PChar(Copy(AcroPDF1.src,8,length(AcroPDF1.src)-7)), PChar(form1.Berkas+edit_NoAgenda.Text+'.pdf'), true); // True or False operation if file exists
          ShowMessage('Surat Masuk Baru Berhasil di Simpan!');
          Teruskan();
        end;
        finally
          DataModule1.Free;
        end;
       {}
      end;
    end;
end;

procedure TFrame1.sSpeedButton4Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'Abobe Pdf File (*.pdf)|*.PDF|Any file (*.*)|*.*';
  if OpenDialog1.Execute then
  begin
    AcroPDF1.src := ExtractFilePath(openDialog1.FileName) + ExtractFileName(openDialog1.FileName);
  end;
  //Simpan File
  //  CopyFile(PChar('C:\Users\Stevi\Downloads\Documents\c4.pdf'), PChar('C:\c4.pdf'), true); // True or False operation if file exists

end;

procedure TFrame1.sSpeedButton5Click(Sender: TObject);
var
  i,j : integer;
  nomor, noagenda : string;
begin
with DataModule1 do
begin
  ADOQuery_SuratMasuk.SQL.Clear;
  ADOQuery_SuratMasuk.SQL.Add('SELECT * FROM surat_masuk');
  ADOQuery_SuratMasuk.Active := True;
  ADOQuery_SuratMasuk.Last;
  if ADOQuery_SuratMasuk.FieldByName('No').AsString = '' then
    edit_NoAgenda.Text := '000001'
  else
    begin
      //ShowMessage('ISI data '+ADOQuery_SuratMasuk.FieldByName('No').AsString);
      nomor := RightStr(ADOQuery_SuratMasuk.FieldByName('No').AsString,1);
      J := Length(IntToStr(ADOQuery_SuratMasuk.FieldByName('No').AsInteger));
      //ShowMessage('Angka paling kanan '+nomor);
      if StrToInt(nomor) = 9 then
      begin
        //ShowMessage('sembilan');
        for I := 1 to 5-J do
        begin
          noagenda := noagenda + '0';
        end
      end else
      begin
        //ShowMessage('bukan sembilan');
        for I := 1 to 6-J do
        begin
          noagenda := noagenda + '0';
        end;
      end;
      edit_NoAgenda.Text := noagenda + inttostr(ADOQuery_SuratMasuk.FieldByName('No').AsInteger + 1) ;
    end;



//  DataModule1.ADOQuery_SuratMasuk.SQL.Clear;
//  DataModule1.ADOQuery_SuratMasuk.SQL.Add('select count(*) as total_records from surat_masuk');
//  DataModule1.ADOQuery_SuratMasuk.Active := True;
//  j:= length(DataModule1.ADOQuery_SuratMasuk.FieldByName('total_records').AsString);
//  for I := 0 to 5-j do
//  begin
//    noagenda := noagenda + '0';
//  end;
//  noagenda := noagenda + DataModule1.ADOQuery_SuratMasuk.FieldByName('total_records').AsString;
//  edit_NoAgenda.Text := noagenda
end;
end;

end.
