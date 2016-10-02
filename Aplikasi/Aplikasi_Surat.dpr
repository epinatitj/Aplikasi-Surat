program Aplikasi_Surat;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Menu_Utama in 'Menu_Utama.pas' {Form1},
  Data in 'Data.pas' {DataModule1: TDataModule},
  Frame_Daftar_Surat_Masuk in 'Frame_Daftar_Surat_Masuk.pas' {Frame2: TFrame},
  Frame_Surat_Masuk in 'Frame_Surat_Masuk.pas' {Frame1: TFrame},
  Frame_Detail_Surat_Masuk in 'Frame_Detail_Surat_Masuk.pas' {Frame3: TFrame},
  Frame_User in 'Frame_User.pas' {Frame4: TFrame},
  Frame_Logo in 'Frame_Logo.pas' {FrameLogo: TFrame},
  Frame_Pengaturan_Aplikasi in 'Frame_Pengaturan_Aplikasi.pas' {Frame5: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.UseMetropolisUI;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Metropolis UI Application';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
