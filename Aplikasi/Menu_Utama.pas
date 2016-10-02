unit Menu_Utama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxRibbonSkins, dxSkinsdxRibbonPainter, cxTextEdit,
  cxContainer, cxEdit, cxBarEditItem, dxBar, Vcl.ImgList, cxClasses, dxRibbon,
  dxStatusBar, dxRibbonStatusBar, cxStyles, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls, cxSpinEdit,
  Frame_Surat_Masuk, Frame_Daftar_Surat_Masuk, Frame_Detail_Surat_Masuk,
  Frame_User, Vcl.Imaging.jpeg, acPNG, cxImage, Frame_Logo, INIFiles, Data.DB,
   Data.Win.ADODB,
  ShellAPI, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, Vcl.OleCtrls,
  AcroPDFLib_TLB, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxRibbonCustomizationForm;

type
  TForm1 = class(TForm)
    AppBar: TPanel;
    CloseButton: TImage;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1: TdxBarManager;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    UserName: TdxBarEdit;
    Password: TdxBarEdit;
    Login_Btn: TdxBarLargeButton;
    Logout_btn: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Frame21: TFrame2;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    FrameLogo1: TFrameLogo;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    Button3: TButton;
    Button1: TButton;
    OD: TOpenDialog;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Button4: TButton;
    Edit1: TEdit;
    cxGrid1DBTableView1No1: TcxGridDBColumn;
    cxGrid1DBTableView1Tanggal_terima1: TcxGridDBColumn;
    cxGrid1DBTableView1No_surat1: TcxGridDBColumn;
    cxGrid1DBTableView1Tanggal_Surat1: TcxGridDBColumn;
    cxGrid1DBTableView1Asal_surat1: TcxGridDBColumn;
    cxGrid1DBTableView1Perihal_Surat1: TcxGridDBColumn;
    cxGrid1DBTableView1Berkas1: TcxGridDBColumn;
    cxGrid1DBTableView1Tk_Keamanan1: TcxGridDBColumn;
    cxGrid1DBTableView1Ket1: TcxGridDBColumn;
    cxGrid1DBTableView1FILES1: TcxGridDBColumn;
    AcroPDF1: TAcroPDF;
    Frame31: TFrame3;
    Frame11: TFrame1;
    Frame41: TFrame4;
    procedure CloseButtonClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure UserNameKeyPress(Sender: TObject; var Key: Char);
    procedure Login();
    procedure LogOff();
    function MD5(value: string): string;
    procedure Login_BtnClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Logout_btnClick(Sender: TObject);
    procedure Clear();
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure Frame31Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure PasswordExit(Sender: TObject);
    procedure CekBawahan();
    procedure PasswordCurChange(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RestoreFile(FileName, FieldName: string);
    procedure SaveFile(FileName, FieldName: string);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
    procedure AppBarResize;
    procedure AppBarShow(mode: integer);
  public
    Laporan, Berkas, namauser, ket_user, loginuser, hakakses, bawahan, Userlogin, Jabatan, UPT:string;
    Posisi : Integer;
    { Public declarations }
  end;

var
  Form1: TForm1;
  Pass, User, PasswordText :string;

implementation

{$R *.dfm}

uses
IdGlobal, IdHash, IdHashMessageDigest, Data;

const
  AppBarHeight = 75;

function GetSize(const AFile:String):Int64;
begin
//  Result := 0;
  with TFileStream.Create(AFile, fmOpenRead) do
  begin
    try
      Result := Size;
    finally
      Free;
    end;
  end;
end;

procedure TForm1.AppBarResize;
begin
  AppBar.SetBounds(0, AppBar.Parent.Height - AppBarHeight,
    AppBar.Parent.Width, AppBarHeight);
end;

procedure TForm1.AppBarShow(mode: integer);
begin
  if mode = -1 then // Toggle
    mode := integer(not AppBar.Visible );

  if mode = 0 then
    AppBar.Visible := False
  else
  begin
    AppBar.Visible := True;
    AppBar.BringToFront;
  end;
end;



procedure TForm1.Button1Click(Sender: TObject);
Var
  SQLQuery : string;
 /// buttonSelected : Integer;
begin
{
if OD.Execute then
BEGIN
  With DataModule1 do
  begin
    ADOQuery_file.Active := True;
    ADOQuery_file.Insert;
    ADOQuery_fileNAMAFILE.AsString := ExtractFileName(OD.FileName);
    ADOQuery_fileFILES.LoadFromFile(OD.FileName);
    ADOQuery_fileUKURAN.AsLargeInt := GetSize(OD.FileName);
    ADOQuery_file.Post;
    ShowMessage('FILE di Simpan!');
  end;
END;
}
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  AStrm : TMemoryStream;
  d,m,y : Word;
  SQLQuery, s, Namafile : string;
begin
  with DataModule1 do
  begin
    SQLQuery :='SELECT * FROM Surat_masuk where No = '+Edit1.Text;
    ADOQuery_SuratMasuk.SQL.Clear;
    ADOQuery_SuratMasuk.Active := False;
    ADOQuery_SuratMasuk.SQL.Add(SQLQuery);
    ADOQuery_SuratMasuk.Open;
    if ADOQuery_SuratMasuk.EOF then
    begin
      MessageDlg('Data Kosong',mtInformation,[mbOK],0);
      Exit;
    end else
    begin
      if MessageDlg('Load File ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        DecodeDate(Date(),y,m,d);
        s := IntToStr(d)+IntToStr(m)+IntToStr(y)+'-';
        NamaFile := ADOQuery_SuratMasuk.FieldByName('No').AsString;

        if not DirectoryExists(Berkas+'Download') then
          ForceDirectories(Berkas+'Download');

        RestoreFile(Berkas+'Download\'+NamaFile+'.pdf',  'FILES');
        AcroPDF1.src := Berkas+'Download\'+NamaFile+'.pdf'
//        ShellExecute(handle, 'Open',PChar(Berkas+'Download'), nil, nil, SW_SHOWNORMAL);
{}
{
        //download file, jika belum ada folder DOWNLOAD maka buat Foldernya dulu
        if not DirectoryExists(Berkas+'Download') then
          ForceDirectories(Berkas+'Download');

        //mengambil file dari database dan disimpan pada MemoryStream
        AStrm:=TMemoryStream.Create;
        TBlobField(ADOQuery_File.FieldByName('FILES')).SaveToStream(AStrm);

        // jika file sudah ada, maka buat file dengan nama ada tanggalnya
        if FileExists(Berkas+'Download\'+NamaFile+'') then
          AStrm.SaveToFile(Berkas+'Download\'+s+NamaFile+'')
        else
          AStrm.SaveToFile(Berkas+'Download\'+NamaFile+'');

        AStrm.Free;

        MessageDlg('Download Berhasil...!!!'+#13+'File Sudah Tersimpan di Folder '+
        #13+Berkas+'Download',mtInformation,[mbOK],0);

        //buka folder download
        ShellExecute(handle, 'Open',PChar(Berkas+'Download'), nil, nil, SW_SHOWNORMAL);
 {}
      end;
    end;
  end;
end;

procedure TForm1.RestoreFile(FileName, FieldName: string);
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

procedure TForm1.SaveFile(FileName, FieldName: string);
begin

end;
{
procedure TForm1.SaveFile(FileName, FieldName: string);
var
 blob, myFileStream : TStream;
begin
  blob := DataModule1.ADOQuery_File.CreateBlobStream(DataModule1.ADOQuery_File.FieldByName(FieldName), bmWrite);
 try
  blob.Seek(0, soFromBeginning);
  myFileStream := TFileStream.Create(FileName, fmShareDenyWrite);
  try
   blob.CopyFrom(myFileStream, myFileStream.Size) ;
  finally
    myFileStream.Free ;
  end;
 finally
  blob.Free ;
 end;
end;
}

procedure TForm1.Button3Click(Sender: TObject);
begin
dxRibbonStatusBar1.Panels[0].Text := namauser;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  SQLQuery : string;
begin
  with DataModule1 do
  begin
    SQLQuery :='SELECT * FROM Surat_masuk';
    ADOQuery_file.SQL.Clear;
    ADOQuery_file.Active := False;
    ADOQuery_file.SQL.Add(SQLQuery);
    ADOQuery_file.Open;
  end;
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
  AppBarShow(-1);
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.dxBarLargeButton1Click(Sender: TObject);
begin
  Frame11.Visible := True;
  Frame21.Visible := False;
  Frame31.Visible := False;
  Frame41.Visible := False;
  Frame11.Align := alClient;
  Frame11.Bersihkan();
end;

procedure TForm1.dxBarLargeButton4Click(Sender: TObject);
begin
  Frame11.Visible := False;
  Frame21.Visible := False;
  Frame31.Visible := True;
  Frame41.Visible := False;
  Frame31.Align := alClient;
  Frame31.SuratDisposisi();
end;

procedure TForm1.dxBarLargeButton5Click(Sender: TObject);
begin
  Frame11.Visible := False;
  Frame21.Visible := False;
  Frame31.Visible := False;
  Frame41.Visible := True;
  Frame41.Align := alClient;
end;

procedure TForm1.dxBarLargeButton2Click(Sender: TObject);
begin
  Frame11.Visible := False;
  Frame21.Visible := True;
  Frame31.Visible := False;
  Frame41.Visible := False;
  Frame21.Align := alClient;
  Frame21.Surat_masuk();
end;

procedure TForm1.Login_BtnClick(Sender: TObject);
begin
  Login();
end;

procedure TForm1.Logout_btnClick(Sender: TObject);
begin
  dxRibbon1Tab2.Visible := False;
  Clear();
  Login_Btn.Enabled := True;
  Logout_btn.Enabled := False;
end;

procedure TForm1.Clear();
begin
  dxRibbon1Tab2.Visible := False;
  dxRibbon1Tab3.Visible := False;
  dxRibbon1Tab4.Visible := False;
  Frame11.Visible := False;
  Frame21.Visible := False;
  Frame31.Visible := False;
  Frame41.Visible := False;
  loginuser := '';
  hakakses := '';
  bawahan := '';
  Userlogin := '';
  Pass := '';
  User := '';
  UserName.Text := User;
  Password.Text := Pass;
  dxRibbonStatusBar1.Panels[0].Text := '';
end;

procedure TForm1.Login();
Var
  SQLQuery : string;
  buttonSelected : Integer;
begin
  with DataModule1 do
  begin
    SQLQuery :='SELECT * FROM user';
    SQLQuery :=  SQLQuery + ' INNER JOIN jenis_user ON jenis_user.ID=user.jabatan';
    SQLQuery :=  SQLQuery + ' WHERE NIP = "';
    SQLQuery :=  SQLQuery + UserName.Text + '" AND Pass_Pengguna = "';
    SQLQuery :=  SQLQuery + MD5(Pass) + '"';
    ADOQuery_User.SQL.Clear;
    ADOQuery_User.Active := False;
    ADOQuery_User.SQL.Add(SQLQuery);
    ADOQuery_User.Open;
    if ADOQuery_User.EOF then
    begin
      buttonSelected := MessageDlg('Nama Pengguna atau Kata Kunci yang di masukkan salah.', mtError, mbYesNo, 0);
      if buttonSelected = mrYes then
      begin
        UserName.SetFocus;
      end;
      if buttonSelected = mrNo then Application.Terminate;
    end else
    begin
      namauser := UpperCase(ADOQuery_User.FieldByName('nama').AsString);
      ShowMessage(namauser +' BERHASIL........ LOGIN');
      Userlogin := ADOQuery_User.FieldByName('NIP').AsString;
      Jabatan := ADOQuery_User.FieldByName('Jabatan').AsString;
      Posisi := ADOQuery_User.FieldByName('Posisi').AsInteger;
      HakAkses := UpperCase(ADOQuery_User.FieldByName('hak').AsString);
      ket_user := UpperCase(ADOQuery_User.FieldByName('Ket_ID').AsString);
      if Copy(HakAkses, 1, 1) = '1' then
      begin
        dxRibbon1Tab2.Visible := True;
        dxBarLargeButton1.Visible := ivAlways;
      end else dxBarLargeButton1.Visible := ivNever ;
      if Copy(HakAkses, 2, 1)= '1' then
      begin
        dxRibbon1Tab3.Visible := True;
        dxBarLargeButton2.Visible := ivAlways;
      end else dxBarLargeButton2.Visible := ivNever ;
      if Copy(HakAkses, 3, 1)= '1' then
      begin
        dxRibbon1Tab3.Visible := True;
        dxBarLargeButton4.Visible := ivAlways;
      end else dxBarLargeButton4.Visible := ivNever ;
      if Copy(HakAkses, 4, 1)= '1' then
      begin
        dxRibbon1Tab4.Visible := True;
        dxBarLargeButton5.Visible := ivAlways;
      end else dxBarLargeButton5.Visible := ivNever ;
      if Copy(HakAkses, 5, 1)= '1' then
      begin
        dxRibbon1Tab4.Visible := True;
        dxBarLargeButton6.Visible := ivAlways;
      end else dxBarLargeButton6.Visible := ivNever ;
      Login_Btn.Enabled := False;
      Logout_btn.Enabled := True;
//      CekBawahan();
    end;
  end;
  dxRibbonStatusBar1.Panels[0].Text := namauser;
end;

procedure TForm1.CekBawahan();
begin
  if Userlogin = 'A' then
  begin
    loginuser := '';
    bawahan := '%';
  end
  else if Copy(Userlogin, 2, 3)= '000' then
  begin
    loginuser := Copy(Userlogin, 1, 1);
    bawahan := '2';
  end
  else if Copy(Userlogin, 3, 2)= '00' then
  begin
    loginuser := Copy(Userlogin, 1, 2);
    bawahan := '3';
  end
  else if Copy(Userlogin, 4, 1)= '0' then
  begin
    loginuser := Copy(Userlogin, 1, 3);
    bawahan := '4'
  end;
end;

procedure TForm1.LogOff();
begin
  Clear();
end;

function TForm1.MD5(value: string): string;
var
    hashMessageDigest5 : TIdHashMessageDigest5;
begin
    hashMessageDigest5 := nil;
    try
        hashMessageDigest5 := TIdHashMessageDigest5.Create;
        Result := IdGlobal.IndyLowerCase ( hashMessageDigest5.HashStringAsHex ( value + ' ' ) );
    finally
        hashMessageDigest5.Free;
    end;
end;

procedure TForm1.UserNameKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key) = 8 then
  begin
     User := Copy(User,1,length(User)-1);
  end else
  begin
      User := User+Key;
  end;
  UserName.Text := User;
  //Edit_Pass.Text := User;
end;

procedure TForm1.PasswordCurChange(Sender: TObject);
begin
  Password.CurText := PasswordText;
end;

procedure TForm1.PasswordExit(Sender: TObject);
var
  i  : integer;
begin
//  for i := 1 to length(Pass) do
//  begin
//      PasswordText := PasswordText + '*';
//  end;
//  Password.Text := PasswordText;
end;

procedure TForm1.PasswordKeyPress(Sender: TObject; var Key: Char);
var
 i  : integer;
begin
if ord(key) = 8 then
  begin
     Pass := Copy(Pass,1,length(Pass)-1);
  end else
  begin
      Pass := Pass+Key;
  end;
  PasswordText := '';
  for i := 1 to length(Pass) do
  begin
      PasswordText := PasswordText + '*';
  end;
  Password.Text := PasswordText;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Clear();
end;

procedure TForm1.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  AppBarShow(0);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    AppBarShow(-1)
  else
    AppBarShow(0);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  AppBarResize;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  s, d : string;
  myINI : TINIFile;
begin
//  dxRibbon1Tab2.Visible := False;
  myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'setting.ini');
  //Edit1.Text := myINI.ReadString('Settings', 'Database','xxx');
  s := myINI.ReadString('Settings', 'Database','xxx');
  Berkas := myINI.ReadString('File', 'Berkas', 'xxx');
  Laporan := myINI.ReadString('File', 'Laporan', 'xxx');
  //ShowMessage(SourceFile);
  DataModule1.ADOConnection1.ConnectionString := s;
  DataModule1.ADOConnection1.Connected := True;
  myINI.Free;

end;

procedure TForm1.Frame31Click(Sender: TObject);
begin
  Frame31.FrameClick(Sender);

end;

end.
