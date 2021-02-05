unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtSer: TButton;
    BtPar: TButton;
    BtLim: TButton;
    BtSai: TButton;
    EdR1: TEdit;
    EdR2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LbResultado: TLabel;
    procedure BtLimClick(Sender: TObject);
    procedure BtParClick(Sender: TObject);
    procedure BtSaiClick(Sender: TObject);
    procedure BtSerClick(Sender: TObject);
    procedure EdR1Change(Sender: TObject);
    procedure EdR2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.EdR1Change(Sender: TObject);
begin

end;

procedure TForm1.EdR2Change(Sender: TObject);
begin

end;

procedure TForm1.BtSerClick(Sender: TObject);
begin
  LbResultado.Caption:=(StrToFloat(EdR1.Text)+StrToFloat(EdR2.Text)).ToString();
end;

procedure TForm1.BtParClick(Sender: TObject);
var
  R1,R2:Real;
begin
  R1:=StrToFloat(EdR1.Text);
  R2:=StrToFloat(EdR2.Text);
  LbResultado.Caption:=FloatToStr((R1*R2)/(R1+R2))
end;

procedure TForm1.BtSaiClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BtLimClick(Sender: TObject);
begin
  LbResultado.Caption:='';
  EdR2.Text:='0';
  EdR1.Text:='0';
  EdR1.SetFocus;
end;

end.

