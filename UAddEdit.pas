unit UAddEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmAddEdit = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edFam: TEdit;
    edName: TEdit;
    edTel: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddEdit: TfmAddEdit;

implementation

{$R *.dfm}

end.
