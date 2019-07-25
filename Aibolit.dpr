program Aibolit;

uses
  Forms,
  unit_main in 'unit_main.pas' {form_main},
  unit_DM in 'unit_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tform_main, form_main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
