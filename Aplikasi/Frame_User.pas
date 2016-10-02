unit Frame_User;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxClasses, Vcl.Buttons, sSpeedButton, cxGroupBox,
  cxRadioGroup, cxCheckBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrame4 = class(TFrame)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root1: TdxLayoutGroup;
    NIP: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    Pass_Pengguna: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    Nama_Lengkap: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxImageCollection1: TcxImageCollection;
    Atasan: TcxComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    sSpeedButton1: TsSpeedButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    sSpeedButton2: TsSpeedButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxCheckBox1: TcxCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxCheckBox2: TcxCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxCheckBox3: TcxCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxCheckBox4: TcxCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxCheckBox5: TcxCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    Jabatan: TcxComboBox;
    procedure AtasanList();
    procedure JabatanList();
    procedure AtasanClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    function MD5(value: string): string;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure HakAkses();
    procedure sSpeedButton3Click(Sender: TObject);
    procedure JabatanMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AtasanMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
Data, Menu_Utama, IdGlobal, IdHash, IdHashMessageDigest;

var
hak: string;

procedure TFrame4.AtasanClick(Sender: TObject);
begin
  AtasanList();
end;

procedure TFrame4.HakAkses();
var
  Hak1,Hak2,Hak3,Hak4,Hak5 : string;
begin
  //Membuat hak akses
  if cxCheckBox1.Checked = True  then Hak1 := '1' else Hak1 := '0';
  if cxCheckBox2.Checked = True  then Hak2 := '1' else Hak2 := '0';
  if cxCheckBox3.Checked = True  then Hak3 := '1' else Hak3 := '0';
  if cxCheckBox4.Checked = True  then Hak4 := '1' else Hak4 := '0';
  if cxCheckBox5.Checked = True  then Hak5 := '1' else Hak5 := '0';
  Hak := Hak1 + Hak2 + Hak3 + Hak4 + Hak5;
  ShowMessage(hak);
end;

procedure TFrame4.AtasanList();
Var
  SQLQuery : string;
//  jmlatasan, i : Integer;
begin
  with DataModule1 do
  begin
    ADOQuery_Jabatan.SQL.Clear;
    SQLQuery :='SELECT * FROM jenis_user WHERE ID BETWEEN 10000 AND 19998';
    ADOQuery_Jabatan.Active := False;
    ADOQuery_Jabatan.SQL.Add(SQLQuery);
    ADOQuery_Jabatan.Open;
    if ADOQuery_Jabatan.EOF then
    begin
      ShowMessage('Data Atasan Tidak tersedia');
    end else
    begin
//      jmlatasan := ADOQuery_Jabatan.RecordCount;
      Atasan.Properties.Items.Clear;
      while not ADOQuery_Jabatan.Recordset.EOF do
      begin
        // get value
        Atasan.Properties.Items.Add (ADOQuery_Jabatan.FieldByName('ID').AsString+' '+
                                    ADOQuery_Jabatan.FieldByName('Jabatan').AsString+' '+
                                    ADOQuery_Jabatan.FieldByName('Unit').AsString);
        ADOQuery_Jabatan.Next;
      end;
    end;
  end;
  if not(Atasan.Text = '') then Jabatan.Enabled := True
  else Jabatan.Enabled := False;
end;

procedure TFrame4.AtasanMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
AtasanList();
end;

procedure TFrame4.JabatanList();
Var
  SQLQuery : string;
  jmlatasan, i : Integer;
begin
  with DataModule1 do
  begin
    ADOQuery_Jabatan.SQL.Clear;
    SQLQuery :='SELECT * FROM jenis_user WHERE ID BETWEEN (';
    SQLQuery := SQLQuery + Copy(Atasan.Text,1 ,5 ) +'+1) AND 19999';
    ADOQuery_Jabatan.Active := False;
    ADOQuery_Jabatan.SQL.Add(SQLQuery);
    ADOQuery_Jabatan.Open;
    if ADOQuery_Jabatan.EOF then
    begin
      ShowMessage('Data Atasan Tidak tersedia');
    end else
    begin
      //jmlatasan := ADOQuery_Jabatan.RecordCount;
      Jabatan.Properties.Items.Clear;
      while not ADOQuery_Jabatan.Recordset.EOF do
      begin
        // get value
        Jabatan.Properties.Items.Add (ADOQuery_Jabatan.FieldByName('ID').AsString+' '+
                                    ADOQuery_Jabatan.FieldByName('Jabatan').AsString+' '+
                                    ADOQuery_Jabatan.FieldByName('Unit').AsString);
        ADOQuery_Jabatan.Next;
      end;
    end;
  end;
end;

procedure TFrame4.JabatanMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  JabatanList();
end;

procedure TFrame4.sSpeedButton1Click(Sender: TObject);
begin
  NIP.Text :='';
  Pass_Pengguna.Text :='';
  Nama_Lengkap.Text :='';
  Jabatan.Text :='';
end;

procedure TFrame4.sSpeedButton2Click(Sender: TObject);
Var
  kd_atasan, kd_jabatan, SQLQuery: string;
  jmluser, I : integer;
begin
  HakAkses();
  kd_atasan := Copy(Atasan.Text, 1, 5);
  kd_jabatan:= Copy(Jabatan.Text, 1, 5);
  SQLQuery := 'INSERT INTO user ';
  SQLQuery := SQLQuery + '(NIP, Pass_Pengguna, Nama, atasan, jabatan, Hak)';
  SQLQuery := SQLQuery + ' VALUE ("';
  SQLQuery := SQLQuery + NIP.Text + '", "';
  SQLQuery := SQLQuery + MD5(Pass_Pengguna.Text) + '", "';
  SQLQuery := SQLQuery + Nama_Lengkap.Text + '", "';
  SQLQuery := SQLQuery + kd_Atasan + '", "';
  SQLQuery := SQLQuery + kd_Jabatan + '", "';
  SQLQuery := SQLQuery + hak + '")';
  with DataModule1 do
  begin
    ShowMessage(SQLQuery);
    ADOCommand_SuratMasuk.CommandText := SQLQuery;
    // ADOQuery1.Active := True;
    ADOCommand_SuratMasuk.Execute;
    //Simpan File
    ShowMessage('Pengguna Berhasil di Simpan !');
  end;
end;

procedure TFrame4.sSpeedButton3Click(Sender: TObject);
begin
  if Atasan.Text = '' then ShowMessage('Atasan Belum dipilih!')
end;

function TFrame4.MD5(value: string): string;
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

end.
