unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, dxmdaset, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfmMain = class(TForm)
    dsDb: TDataSource;
    db: TdxMemData;
    dbFam: TStringField;
    dbName: TStringField;
    dbTel: TStringField;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses UAddEdit;

procedure TfmMain.Button1Click(Sender: TObject);
begin
fmAddEdit.edFam.Clear;
fmAddEdit.edName.Clear;
fmAddEdit.edTel.Clear;

if fmAddEdit.ShowModal=mrOk then
   begin
   db.Insert;//Добавить в базу
   db.FieldByName('Fam').AsString:=fmAddEdit.edFam.Text;//Фамилия
   db.FieldByName('Name').AsString:=fmAddEdit.edName.Text;//Имя
   db.FieldByName('Tel').AsString:=fmAddEdit.edTel.Text;//Телефон
   db.Post;
   end;
end;

procedure TfmMain.Button2Click(Sender: TObject);
begin
if db.RecordCount>0 then
begin
fmAddEdit.edFam.Text:=dbFam.Value;
fmAddEdit.edName.Text:=dbName.Value;
fmAddEdit.edTel.Text:=dbTel.Value;

if fmAddEdit.ShowModal=mrOk then
   begin
   db.Edit;//Изменить
   db.FieldByName('Fam').AsString:=fmAddEdit.edFam.Text;//Фамилия
   db.FieldByName('Name').AsString:=fmAddEdit.edName.Text;//Имя
   db.FieldByName('Tel').AsString:=fmAddEdit.edTel.Text;//Телефон
   db.Post;
   end;
end;

end;

procedure TfmMain.Button3Click(Sender: TObject);
begin
if db.RecordCount>0 then
begin
  db.Delete;//удалить текущую строку
end;

end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
db.SaveToTextFile('base.txt');
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
db.LoadFromTextFile('base.txt');
db.Open;
end;

end.
