program PTelePhone;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {fmMain},
  UAddEdit in 'UAddEdit.pas' {fmAddEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmAddEdit, fmAddEdit);
  Application.Run;
end.
