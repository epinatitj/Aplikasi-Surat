unit Data;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.ImgList,
  Vcl.Controls, cxGraphics, frxClass, frxDBSet;

type
  TDataModule1 = class(TDataModule)
    DataSource_User: TDataSource;
    ADOCommand_User: TADOCommand;
    ADOQuery_User: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOQuery_SuratMasuk: TADOQuery;
    ADOCommand_SuratMasuk: TADOCommand;
    DataSource_SuratMasuk: TDataSource;
    ADOQuery_Diteruskan: TADOQuery;
    ADOCommand_Diteruskan: TADOCommand;
    DataSource_Diteruskan: TDataSource;
    ADOQuery_Disposisi: TADOQuery;
    ADOCommand_Disposisi: TADOCommand;
    DataSource_Disposisi: TDataSource;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    frxReport1: TfrxReport;
    ADOQuery_Pengguna: TADOQuery;
    ADOCommand_Pengguna: TADOCommand;
    DataSource_Pengguna: TDataSource;
    ADOQuery_Jabatan: TADOQuery;
    ADOCommand_Jabatan: TADOCommand;
    DataSource_Jabatan: TDataSource;
    ADOQuery_SuratMasukDetail: TADOQuery;
    ADOCommand_SuratMasukDetail: TADOCommand;
    DataSource_SuratMasukDetail: TDataSource;
    DataSource_file: TDataSource;
    ADOTable_file: TADOTable;
    ADOQuery_file: TADOQuery;
    ADOCommand_File: TADOCommand;
    ADOTable_fileFILES: TBlobField;
    ADOTable_fileID: TAutoIncField;
    ADOTable_fileNAMAFILE: TStringField;
    ADOTable_fileUKURAN: TIntegerField;
    ADOQuery_SuratMasukNo: TStringField;
    ADOQuery_SuratMasukTanggal_terima: TDateField;
    ADOQuery_SuratMasukNo_surat: TMemoField;
    ADOQuery_SuratMasukTanggal_Surat: TDateField;
    ADOQuery_SuratMasukAsal_surat: TMemoField;
    ADOQuery_SuratMasukPerihal_Surat: TMemoField;
    ADOQuery_SuratMasukBerkas: TStringField;
    ADOQuery_SuratMasukTk_Keamanan: TStringField;
    ADOQuery_SuratMasukKet: TMemoField;
    ADOQuery_SuratMasukFILES: TBlobField;
    ADOTable_SuratMasuk: TADOTable;
    ADOTable_SuratMasukNo: TStringField;
    ADOTable_SuratMasukTanggal_terima: TDateField;
    ADOTable_SuratMasukNo_surat: TMemoField;
    ADOTable_SuratMasukTanggal_Surat: TDateField;
    ADOTable_SuratMasukAsal_surat: TMemoField;
    ADOTable_SuratMasukPerihal_Surat: TMemoField;
    ADOTable_SuratMasukBerkas: TStringField;
    ADOTable_SuratMasukTk_Keamanan: TStringField;
    ADOTable_SuratMasukKet: TMemoField;
    ADOTable_SuratMasukFILES: TBlobField;
    ADOQuery_fileNo: TStringField;
    ADOQuery_fileTanggal_terima: TDateField;
    ADOQuery_fileNo_surat: TMemoField;
    ADOQuery_fileTanggal_Surat: TDateField;
    ADOQuery_fileAsal_surat: TMemoField;
    ADOQuery_filePerihal_Surat: TMemoField;
    ADOQuery_fileBerkas: TStringField;
    ADOQuery_fileTk_Keamanan: TStringField;
    ADOQuery_fileKet: TMemoField;
    ADOQuery_fileFILES: TBlobField;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
