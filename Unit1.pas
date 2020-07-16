unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Menus, Math, System.UITypes;

type
  Tprincipal = class(TForm)
    Button1: TButton;
    edt1: TEdit;
    edt2: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    edtresult: TEdit;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Button5: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    Button6: TButton;
    Timer2: TTimer;
    ProgressBar1: TProgressBar;
    ComboBox1: TComboBox;
    Button8: TButton;
    Button7: TButton;
    Panel1: TPanel;
    Button9: TButton;
    PopupMenu1: TPopupMenu;
    EsconderHistorico1: TMenuItem;
    MostrarHistorico1: TMenuItem;
    Label1: TLabel;
    Button10: TButton;
    edtb: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure EsconderHistorico1Click(Sender: TObject);
    procedure MostrarHistorico1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure edt1Exit(Sender: TObject);
    procedure edt2Exit(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    function somar(n1, n2, n3: currency): currency;
    function subtrair(n1, n2, n3: currency): currency;
    function multiplicar(n1, n2, n3: currency): currency;
    function dividir(n1, n2, n3: currency): currency;
    function raizquadrada(n1, n2: currency): currency;
    function potencia(n1, n2, n3: currency): Extended;
    function resto(n1, n2: integer): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;
  num1 : currency;
  num2 : currency;
  num3 : currency;


implementation

{$R *.dfm}

procedure Tprincipal.Button10Click(Sender: TObject);
begin

memo1.Lines.Add(CurrToStr(num1)+ ' ' + CurrToStr(num1)+ ' ' + CurrToStr(num1))

end;

procedure Tprincipal.Button1Click(Sender: TObject);
begin
  edtresult.Text := CurrToStr(somar(StrToCurr(edt1.Text), StrToCurr(edt2.Text),
    StrToCurr(edtresult.Text)));
  if subtrair(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' + ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(edt1.Text + ' + ' +
      CurrToStr(subtrair(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)) +
      ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button2Click(Sender: TObject);
begin
  edtresult.Text := CurrToStr(subtrair(StrToCurr(edt1.Text),
    StrToCurr(edt2.Text), StrToCurr(edtresult.Text)));
  if somar(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' - ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(edt1.Text + ' - ' +
      CurrToStr(somar(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)) +
      ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button3Click(Sender: TObject);
begin
  edtresult.Text := CurrToStr(dividir(StrToCurr(edt1.Text),
    StrToCurr(edt2.Text), StrToCurr(edtresult.Text)));
  if multiplicar(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' / ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(edt1.Text + ' / ' +
      CurrToStr(multiplicar(StrToCurr(edtresult.Text), StrToCurr(edt2.Text), 0))
      + ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button4Click(Sender: TObject);
begin
  edtresult.Text := CurrToStr(multiplicar(StrToCurr(edt1.Text),
    StrToCurr(edt2.Text), StrToCurr(edtresult.Text)));
  if dividir(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' * ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(CurrToStr(dividir(StrToCurr(edtresult.Text),
      StrToCurr(edt2.Text), 0)) + ' * ' + edt2.Text + ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button5Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure Tprincipal.Button6Click(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to 100 do
  begin
    Memo1.Lines.Add(IntToStr(I));

  end;
end;

procedure Tprincipal.Button7Click(Sender: TObject);
begin
  Panel1.Visible := false;
  principal.Height := 250;
end;

procedure Tprincipal.Button8Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      Button1.Click;
    1:
      Button2.Click;
    2:
      Button3.Click;
    3:
      Button4.Click;
    4:
      begin
        edtresult.Text := CurrToStr(raizquadrada(StrToCurr(edt1.Text),
          StrToCurr(edtresult.Text)));
        if potencia(StrToCurr(edtresult.Text), 2, 0) = StrToCurr(edt1.Text) then
          Memo1.Lines.Add(' ²√  ' + edt1.Text + ' = ' + edtresult.Text)
        else
          Memo1.Lines.Add
            (' ²√  ' + CurrToStr(potencia(StrToCurr(edtresult.Text), 2, 0)) +
            ' = ' + edtresult.Text);

      end;
    5:
      begin

        try

          edtresult.Text := CurrToStr(potencia(StrToCurr(edt1.Text), 2,
            StrToCurr(edtresult.Text)));
          if raizquadrada(StrToCurr(edtresult.Text), 0) = StrToCurr(edt1.Text)
          then
            Memo1.Lines.Add(' x² ' + edt1.Text + ' = ' + edtresult.Text)
          else
            Memo1.Lines.Add
              (' x²  ' + CurrToStr(raizquadrada(StrToCurr(edtresult.Text), 0)) +
              ' = ' + edtresult.Text);

        except

          MessageDlg('Numero Maior Que o Suportado', mtError, [mbOK], 0);

        end;
      end;
    6:
      begin
        edtresult.Text := CurrToStr(resto(strtoint(edt1.Text),strtoint(edt2.Text)));
        Memo1.Lines.Add( edt1.text + ' %  ' + edt2.Text + ' = ' + edtresult.Text);
      end;
  else
    MessageDlg('Você Devera Informar um Operador Aritmético', mtInformation,
      [mbOK], 0);
  end;
end;

procedure Tprincipal.Button9Click(Sender: TObject);
begin
  Panel1.Visible := true;
  principal.Height := 700;
end;

procedure Tprincipal.ComboBox1Change(Sender: TObject);
begin
  //num1 := StrToCurr(edtb.Text);
  //edtb.Clear ;
  edtresult.Text := IntToStr(0);
end;

procedure Tprincipal.edt1Exit(Sender: TObject);
begin
  edt1.Visible := false;
  edt2.Visible := true;
  Label1.Caption := 'n2';
end;

procedure Tprincipal.edt2Exit(Sender: TObject);
begin
  edt2.Visible := false;
  edt1.Visible := true;
  Label1.Caption := 'n1';
end;

procedure Tprincipal.EsconderHistorico1Click(Sender: TObject);
begin
  Panel1.Visible := false;
  principal.Height := 270;
end;

procedure Tprincipal.FormShow(Sender: TObject);
begin
  Label7.Caption := DateToStr(now);
  Label9.Caption := TimeToStr(now);
end;

procedure Tprincipal.MostrarHistorico1Click(Sender: TObject);
begin
  Panel1.Visible := true;
  principal.Height := 700;
end;

function Tprincipal.multiplicar(n1, n2, n3: currency): currency;
begin
  if n3 = 0 then
    result := n1 * n2
  else
    result := n3 * n2;
end;

function Tprincipal.dividir(n1, n2, n3: currency): currency;
begin
  if n3 = 0 then
    result := n1 / n2
  else
    result := n3 / n2;
end;

function Tprincipal.potencia(n1, n2, n3: currency): Extended;
begin
  if n3 = 0 then
    result := power(n1, n2)
  else
    result := power(n3, n1);
end;

function Tprincipal.raizquadrada(n1, n2: currency): currency;
begin
  if n2 = 0 then
    result := sqrt(n1)
  else
    result := sqrt(n2);
end;

function Tprincipal.resto(n1, n2: integer): Currency;
begin
  result := n1 mod n2;
end;

function Tprincipal.somar(n1, n2, n3: currency): currency;
begin
  if n3 = 0 then
    result := n1 + n2
  else
    result := n1 + n3;
end;

function Tprincipal.subtrair(n1, n2, n3: currency): currency;
begin
  if n3 = 0 then
    result := n1 - n2
  else
    result := n3 - n1;
end;

procedure Tprincipal.Timer1Timer(Sender: TObject);
begin
  Label7.Caption := DateToStr(now);
  Label9.Caption := TimeToStr(now);
end;

procedure Tprincipal.Timer2Timer(Sender: TObject);
var
  contador: integer;
begin
  contador := Memo1.Lines.Count;
  if contador <= 100 then
    ProgressBar1.Position := Memo1.Lines.Count
  else
  begin
    Memo1.Lines.Clear;
    MessageDlg('Limite do Historico Atingido, Limpando', mtConfirmation,
      [mbOK], 0);
  end;

end;

end.
