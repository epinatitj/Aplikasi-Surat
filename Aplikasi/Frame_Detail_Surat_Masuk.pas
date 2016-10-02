unit Frame_Detail_Surat_Masuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit,
  dxLayoutControl, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxClasses, dxLayoutLookAndFeels,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.OleCtrls,
  AcroPDFLib_TLB, Vcl.ImgList, Vcl.Buttons, sSpeedButton, cxMemo, cxRadioGroup,
  cxGroupBox, cxCheckBox, cxCheckComboBox, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxCheckListBox, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ShellAPI,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TFrame3 = class(TFrame)
    dxLayoutControl1: TdxLayoutControl;
    edit_NoAgenda: TcxTextEdit;
    edit_NoSurat: TcxTextEdit;
    edit_TglMasuk: TcxDateEdit;
    AcroPDF1: TAcroPDF;
    edit_AsalSurat: TcxTextEdit;
    edit_TglSurat: TcxDateEdit;
    Memo_PerihalSurat: TcxMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    edit_tkSurat: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    diteruskan_list: TcxCheckListBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    Disposisi_Memo: TcxMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    Memo_Diteruskan: TcxMemo;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item12: TdxLayoutItem;
    Edit_terimadari: TcxTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    sSpeedButton1: TsSpeedButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    sSpeedButton2: TsSpeedButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    sSpeedButton3: TsSpeedButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    sSpeedButton4: TsSpeedButton;
    dxLayoutControl1Item15: TdxLayoutItem;
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
    cxGrid1DBTableView1FILES: TcxGridDBColumn;
    dxLayoutControl1Group9: TdxLayoutGroup;
    sSpeedButton5: TsSpeedButton;
    function RightStr(Const Str: String; Size: Word): String;
    procedure Ambildetail();
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Teruskan();
    procedure Disposisi();
    procedure Disposisi_Update();
    procedure Disposisi_dari();
    procedure Surat_Dibaca();
    procedure SavePDF();
    procedure Print_Disposisi();
    procedure SpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FrameClick(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure dxLayoutControl1Group8CaptionClick(Sender: TObject);
    procedure RestoreFile(FileName, FieldName: string);
    procedure dxLayoutControl1Group10CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Group6CaptionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SuratDisposisi();
  end;

var
  iduser, diteruskan : string;
  jmlbawahan : integer;

implementation

{$R *.dfm}

uses Menu_Utama, Data;

procedure TFrame3.teruskan();
Var
  SQLQuery : string;
  i, j : Integer;
  bawahan : Boolean;
begin
  //ShowMessage(Form1.hakakses);
  with DataModule1 do
  begin
    j := 0;
    ADOQuery_Diteruskan.SQL.Clear;
    SQLQuery :='SELECT nama, NIP,jenis_user.ID, jenis_user.jabatan FROM user ';
    SQLQuery :=  SQLQuery + ' INNER JOIN jenis_user ON user.jabatan = jenis_user.ID ';
    for I := 1 to 5 do
    begin
      if Copy(Form1.Jabatan, I, 1) = '0' then j := j+1;
    end;
    if J > 0 then
    begin
      SQLQuery :=  SQLQuery + ' WHERE ID BETWEEN ('+ Form1.Jabatan +'+1)';
      SQLQuery :=  SQLQuery + ' AND '+ Copy(Form1.Jabatan, 1, 1) +'9999';
      bawahan := false;
    end else
    begin
      SQLQuery :=  SQLQuery + ' WHERE ID = '+ Form1.Jabatan;
      bawahan := true;
    end;
//    ShowMessage(SQLQuery);
    ADOQuery_Diteruskan.Active := False;
    ADOQuery_Diteruskan.SQL.Add(SQLQuery);
    // ADOQuery1.Active := True;
    ADOQuery_Diteruskan.Open;
    if bawahan then
    begin
//      ShowMessage('Tidak memiliki bawahan');
        dxLayoutControl1Group4.Visible := False;
    end else
    begin
      dxLayoutControl1Group4.Visible := True;
      jmlbawahan := ADOQuery_Diteruskan.RecordCount;
//      ShowMessage('Anda Memiliki = '+IntToStr(jmlbawahan)+ ' Bawahan');
      diteruskan_list.Clear;
      while not ADOQuery_Diteruskan.Recordset.EOF do
      begin
        // get value
        diteruskan_list.AddItem(ADOQuery_Diteruskan.FieldByName('NIP').AsString +', '
                                + ADOQuery_Diteruskan.FieldByName('Nama').AsString+', '
                                + ADOQuery_Diteruskan.FieldByName('Jabatan').AsString);
        ADOQuery_Diteruskan.Next;
      end;
//      for i := 1 to ADOQuery_Diteruskan.RecordCount do
//      begin
//        diteruskan_list.AddItem(inttostr(i));
//      end;
    end;
  end;
end;

procedure TFrame3.FrameClick(Sender: TObject);
begin
  SuratDisposisi();
end;

procedure TFrame3.Disposisi();
Var
  Data1, Data2, SQLQuery: string;
  indekpencarian, I : integer;
begin
  diteruskan :='';
  Memo_Diteruskan.Lines.Clear;
  for I := 1 to jmlbawahan do
  begin
//    ShowMessage(inttostr(I));
    if diteruskan_list.Items[i-1].State = cbsChecked then
    begin
        Data1 := diteruskan_list.Items[i-1].Text;
        Data2 := ', ';
        indekpencarian := pos( Data2, Data1 );
//        ShowMessage(data1);
        diteruskan := copy(diteruskan_list.Items[i-1].Text, 1, indekpencarian-1);
//        ShowMessage(data1+' DAN '+diteruskan);
        SQLQuery :='INSERT INTO disposisi';
        SQLQuery :=SQLQuery + ' (No_Agenda, Dari, Kepada, Catatan, status, Tgl_Terima)';
        SQLQuery :=SQLQuery + ' VALUE ("';
        SQLQuery :=SQLQuery + edit_NoAgenda.Text + '", "'+ Form1.Userlogin +'", "'+diteruskan+ '", "';
        SQLQuery :=SQLQuery + Disposisi_Memo.Text + '","0", CURRENT_DATE)';
        with DataModule1 do
        begin
//          ShowMessage(SQLQuery);
          ADOCommand_SuratMasuk.CommandText := SQLQuery;
          // ADOQuery1.Active := True;
          ADOCommand_SuratMasuk.Execute;
          //Simpan File
          ShowMessage('Disposisi Berhasil di Simpan!');
          teruskan();
        end;
    end;
  end;
  //ShowMessage(Memo_Diteruskan.Text);
end;

procedure TFrame3.Disposisi_Update();
Var
  SQLQuery: string;
begin
  SQLQuery :='UPDATE disposisi SET';
  SQLQuery :=SQLQuery + ' status= "2", Tgl_Selesai = CURRENT_DATE';
  if pos('KADIS', UpperCase(Form1.ket_user)) > 0 then
  begin
    SQLQuery :=SQLQuery + ' WHERE No_Agenda = '+edit_NoAgenda.Text+' and Catatan = "BARU"';
  end else
  begin
    SQLQuery :=SQLQuery + ' WHERE No_Agenda = '+edit_NoAgenda.Text+' and kepada = "'+Form1.Userlogin+'"';
  end;
  with DataModule1 do
  begin
    //ShowMessage(SQLQuery);
    ADOCommand_SuratMasuk.CommandText := SQLQuery;
  // ADOQuery1.Active := True;
    ADOCommand_SuratMasuk.Execute;
  //Simpan File
    ShowMessage('Surat Selesai!');
  end;
end;

procedure TFrame3.dxLayoutControl1Group10CaptionClick(Sender: TObject);
begin
  SuratDisposisi();
end;

procedure TFrame3.dxLayoutControl1Group6CaptionClick(Sender: TObject);
begin
  AcroPDF1.src  := form1.berkas+'\LampiranSM.pdf';
end;

procedure TFrame3.dxLayoutControl1Group8CaptionClick(Sender: TObject);
begin
  Surat_Dibaca();
end;

procedure TFrame3.Surat_Dibaca();
Var
  SQLQuery: string;
begin
  if not(edit_NoAgenda.Text = '') then
  begin
    SQLQuery :='UPDATE disposisi SET';
    SQLQuery :=SQLQuery + ' status = "1", Tgl_baca = CURRENT_DATE';
    if pos('KADIS', UpperCase(Form1.ket_user)) > 0 then
    begin
      SQLQuery :=SQLQuery + ' WHERE No_Agenda = '+edit_NoAgenda.Text+' and Catatan = "BARU" and';
    end else
    begin
      SQLQuery :=SQLQuery + ' WHERE No_Agenda = '+edit_NoAgenda.Text+' and kepada = "'+Form1.Userlogin+'" and';
    end;
    SQLQuery :=SQLQuery + ' Tgl_Baca is NULL';
    with DataModule1 do
    begin
      //ShowMessage(SQLQuery);
      ADOCommand_SuratMasuk.CommandText := SQLQuery;
  // ADOQuery1.Active := True;
      ADOCommand_SuratMasuk.Execute;
  //Simpan File
      ShowMessage('SURAT DENGAN NOMOR AGENDA = '+edit_NoAgenda.Text+' DIBACA!');
    end;
  end;
end;


procedure TFrame3.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Ambildetail();
end;

function TFrame3.RightStr(Const Str: String; Size: Word): String;
begin
  if Size > Length(Str) then Size := Length(Str) ;
  RightStr := Copy(Str, Length(Str)-Size+1, Size)
end;

procedure TFrame3.SpeedButton1Click(Sender: TObject);
begin
  Disposisi();
end;

procedure TFrame3.sSpeedButton2Click(Sender: TObject);
begin
  Disposisi();
  Disposisi_Update();
end;

procedure TFrame3.sSpeedButton3Click(Sender: TObject);
begin
  SuratDisposisi();
end;

procedure TFrame3.Print_Disposisi();
begin
  with DataModule1 do
  begin
    FrxReport1.LoadFromFile(form1.Laporan+'Report.fr3');
    frxReport1.Variables['No_Agenda'] := '''' + edit_NoAgenda.Text + '''';
    frxReport1.Variables['Tgl_Terima'] := '''' + edit_TglMasuk.Text + '''';
    frxReport1.Variables['Tk_Keamanan'] := '''' + edit_tkSurat.Text + '''';
    frxReport1.Variables['Tgl_Surat'] := '''' + edit_TglSurat.Text + '''';
    frxReport1.Variables['No_Surat'] := '''' + edit_NoSurat.Text + '''';
    frxReport1.Variables['Asal_Surat'] := '''' + edit_AsalSurat.Text + '''';
    frxReport1.Variables['Hal_Surat'] := '''' + Memo_PerihalSurat.Text + '''';
    frxReport1.Variables['Disposisi'] := '''' + Memo_Diteruskan.Text + '''';
    Frxreport1.ShowReport();
  end;
end;


procedure TFrame3.sSpeedButton4Click(Sender: TObject);
begin
  Print_Disposisi();
end;

procedure TFrame3.SuratDisposisi();
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
      SQLQuery :=  SQLQuery + ' WHERE status <= 1 and Catatan = "BARU"';
    end else
    begin
      SQLQuery :=  SQLQuery + ' WHERE status <= 1 and Kepada = "'+Form1.Userlogin+'"';
    end;
    SQLQuery :=  SQLQuery + ' Order by No';
    //if ADOQuery_User.FieldByName('HAK').AsInteger <= 1 then SQLQuery :=  SQLQuery + '  AND Catatan = "BARU"';
    //ShowMessage(SQLQuery);
    ADOQuery_SuratMasuk.Active := False;
    ADOQuery_SuratMasuk.SQL.Add(SQLQuery);
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
end;

procedure TFrame3.Ambildetail();
var
   s: string;
 //  DC: TcxCustomDataController;
   j : Integer;
begin
//    s := '';
//    DC := cxGrid1DBTableView1.DataController;
//    for i := 0 to cxGrid1DBTableView1.ColumnCount -1 do
//    begin
//        s := s + vartostr(DC.Values[DC.FocusedRecordIndex, cxGrid1DBTableView1.Columns[i].Index]) + ',';
//    end;
//    if Length(s) > 0 then
//        s := Copy(s,1,Length(s)-1);
//    ShowMessage(s)
    for J := 0 to cxGrid1DBTableView1.Controller.SelectedRows[0].ValueCount -1 do
    begin
      s := s + inttostr(j)+'='+ VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[J]) + ',';
    //  ShowMessage(VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[I].Values[J]));
    end;
//    ShowMessage(s);
    edit_NoAgenda.Text := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0]);
    edit_TglMasuk.Text := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[1]);
    edit_NoSurat.Text := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[2]);
    edit_TglSurat.Text := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[3]);
    edit_AsalSurat.Text := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[4]);
    Memo_PerihalSurat.Text := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[5]);
    //if VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[10]) = '' then
    //Edit_terimadari.Text := 'SURAT BARU';
//    ShowMessage(ExtractFilePath(Application.ExeName));
//    AcroPDF1.src  := form1.berkas+VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0])+'.pdf';
    SavePDF();
 //   ShowMessage(form1.berkas+VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0])+'.pdf');
    if VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[7]) = 'SR' then edit_tkSurat.Text := 'Sangat Rahasia';
    if VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[7]) = 'R' then edit_tkSurat.Text := 'Rahasia';
    if VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[7]) = 'B' then edit_tkSurat.Text := 'Biasa';
    teruskan();
    Disposisi_dari();

//    Keterangan := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[8]);

//     s := Copy(s,1,length(s)-1);
//     ShowMessage(s)
//ShowMessage(cxGrid1DBTableView1.DataController.GetItemByFieldName('cxGrid1DBTableView1Perihal_Surat').Index.ToString());
//View.DataController.GetItemByFieldName(AFieldName).Index
end;

procedure TFrame3.SavePDF();
var
  AStrm : TMemoryStream;
  d,m,y : Word;
  SQLQuery, s, Namafile : string;
begin
  with DataModule1 do
  begin
    SQLQuery :='SELECT * FROM Surat_masuk where No = '+ VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0]);
    ADOQuery_file.SQL.Clear;
    ADOQuery_file.Active := False;
    ADOQuery_file.SQL.Add(SQLQuery);
    ADOQuery_file.Open;
    if ADOQuery_file.EOF then
    begin
      MessageDlg('Data Kosong',mtInformation,[mbOK],0);
      Exit;
    end else
    begin
      //if MessageDlg('Load File ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    //  begin
//        DecodeDate(Date(),y,m,d);
//        s := IntToStr(d)+IntToStr(m)+IntToStr(y)+'-';
        NamaFile := 'LampiranSM.pdf';

        if not DirectoryExists(Form1.Berkas) then
          ForceDirectories(Form1.Berkas);

        RestoreFile(Form1.Berkas+NamaFile,  'FILES');
        //ShellExecute(handle, 'Open',PChar(Form1.Berkas), nil, nil, SW_SHOWNORMAL);

{
        DecodeDate(Date(),y,m,d);
        s := IntToStr(d)+IntToStr(m)+IntToStr(y)+'-';

        //mengambil file dari database dan disimpan pada MemoryStream
        AStrm:=TMemoryStream.Create;
        TBlobField(ADOQuery_SuratMasuk.FieldByName('FILES')).SaveToStream(AStrm);

        AStrm.SaveToFile(folderfile+'\'+NamaFile+'');
        AStrm.Free;

        MessageDlg('Download Berhasil...!!!'+#13+'File Sudah Tersimpan di Folder '+
        #13+folderfile,mtInformation,[mbOK],0);

        //buka folder download
        //ShellExecute(handle, 'Open',PChar(form1.berkas+'Download'), nil, nil, SW_SHOWNORMAL);
}
        //MessageDlg(folderfile+'\'+NamaFile,mtInformation,[mbOK],0);
//      end;
    end;
  end;
end;

procedure TFrame3.RestoreFile(FileName, FieldName: string);
var
  blob : TStream;
 // blob1 : TBlobStream;
begin
 ///cds.Open;
 blob := DataModule1.ADOQuery_SuratMasuk.CreateBlobStream(DataModule1.ADOQuery_SuratMasuk.FieldByName(FieldName), bmRead);
 try
  blob.Seek(0, soFromBeginning);
  with TFileStream.Create(FileName, fmCreate) do
    try
      CopyFrom(blob, blob.Size);
    finally
      Free;
    end;
 finally
  blob.Free;
 end;
end;


procedure TFrame3.Disposisi_dari();
Var
  SQLQuery, Dari, Kepada, Catt, tgl : string;
begin
  with DataModule1 do
  begin
    ADOQuery_Disposisi.SQL.Clear;
    diteruskan := VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0]);
    SQLQuery :='SELECT * FROM disposisi';
    SQLQuery :=SQLQuery + ' WHERE No_Agenda = "'+VarToStr(cxGrid1DBTableView1.Controller.SelectedRows[0].Values[0])+ '"';
    SQLQuery :=SQLQuery + ' and NOT kepada=""';
    //ShowMessage(SQLQuery);

    ADOQuery_Disposisi.Active := False;
    ADOQuery_Disposisi.SQL.Add(SQLQuery);
    ADOQuery_Disposisi.Open;

    if ADOQuery_Disposisi.EOF then
    begin
    end else
    begin
//      jmlbawahan := ADOQuery_Diteruskan.RecordCount;
      Memo_Diteruskan.Clear;
      while not ADOQuery_Disposisi.Recordset.EOF do
      begin
        // get value
        //ShowMessage(' ada data ');
        Dari := ADOQuery_Disposisi.FieldByName('Dari').AsString;
        Kepada := ADOQuery_Disposisi.FieldByName('Kepada').AsString;
        tgl := ADOQuery_Disposisi.FieldByName('Tgl_Terima').AsString;
        Catt := ADOQuery_Disposisi.FieldByName('Catatan').AsString;
        if Catt = '' then Memo_Diteruskan.Lines.Clear
        else
        begin
          Memo_Diteruskan.Lines.Add('Dari : '+Dari);
          Memo_Diteruskan.Lines.Add('Kepada : '+Kepada);
          Memo_Diteruskan.Lines.Add('Tanggal : '+tgl);
          Memo_Diteruskan.Lines.Add('Isi Disposisi : '+Catt);
          Memo_Diteruskan.Lines.Add(' ');
          ADOQuery_Disposisi.Next;
        end;
      end;
    end;
  end;
end;

end.
