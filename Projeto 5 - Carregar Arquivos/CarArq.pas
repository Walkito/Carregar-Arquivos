unit CarArq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    btn_imagem: TButton;
    btn_texto: TButton;
    dg_text: TOpenTextFileDialog;
    dg_img: TOpenPictureDialog;
    btn_salvar: TButton;
    dg_save: TSaveDialog;
    procedure btn_textoClick(Sender: TObject);
    procedure btn_imagemClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_imagemClick(Sender: TObject);
begin
   if dg_img.Execute then
   begin
      Image1.Picture.LoadFromFile(dg_img.FileName);
   end;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
    if dg_text.Execute then
   begin
      Memo1.Lines.SaveToFile(dg_text.FileName + '.txt');
   end;
end;

procedure TForm1.btn_textoClick(Sender: TObject);
begin
   if dg_save.Execute then
   begin
      Memo1.Lines.LoadFromFile(dg_save.FileName);
   end;
end;

end.
