unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
 input1, input2, tambah, kurang, kali, bagi : Real;
begin
  input1 := StrToFloat(edt1.Text);
  input2 := StrToFloat(edt2.Text);

  tambah:= input1 + input2;
  edt3.Text := FloatToStr(tambah);

   kurang:= input1 - input2;
  edt4.Text := FloatToStr(kurang);

   kali:= input1 * input2;
  edt5.Text := FloatToStr(kali);

   bagi:= input1 / input2;
  edt6.Text := FloatToStr(bagi);


end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Close;
end;

end.
