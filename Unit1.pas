unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Menus, Math, System.UITypes, ClipBrd;

type
  Tprincipal = class(TForm)
    Button1: TButton;
    edt1: TEdit;
    edt2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    edtresult: TEdit;
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
    Button10: TButton;
    edtb: TEdit;
    lhistorico: TLabel;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure EsconderHistorico1Click(Sender: TObject);
    procedure MostrarHistorico1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button11Exit(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    function somar(n1, n2, n3: currency): currency;
    function subtrair(n1, n2, n3: currency): currency;
    function multiplicar(n1, n2, n3: currency): currency;
    function dividir(n1, n2, n3: currency): currency;
    function raizquadrada(n1, n2: currency): currency;
    function potencia(n1, n2, n3: currency): Extended;
    function resto(n1, n2: integer): currency;
    procedure stringzar;
    procedure atualizarlhistorico(numero: integer);
    procedure salvartxt;
    procedure pegarpasta;
    procedure maximohistorico;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;
  num1: currency;
  num2: currency;
  num3: currency;
  snum1, snum2, snum3, sresultado: string;
  resultado: currency;
  pasta: string;

implementation

{$R *.dfm}

procedure Tprincipal.atualizarlhistorico(numero: integer);
begin
  case numero of
    0:
      begin
        lhistorico.Caption := currtostr(num1) + ' ' + ComboBox1.Text + ' ' +
          currtostr(num2) + ' = ';
      end;
    1:
      begin
        lhistorico.Caption := currtostr(num1) + ' ' + ComboBox1.Text + ' ' +
          sresultado + ' = ';
      end;
    02:
      begin
        lhistorico.Caption := currtostr(num1) + ' ' + ComboBox1.Text + ' ' +
          currtostr(num2) + ' = ';
      end;
    12:
      begin
        lhistorico.Caption := sresultado + ' ' + ComboBox1.Text + ' ' +
          currtostr(num2) + ' = ';
      end;
    03:
      begin
        lhistorico.Caption := ComboBox1.Text + ' ' + currtostr(num1) + ' = ';
      end;
    13:
      begin
        lhistorico.Caption := ComboBox1.Text + ' ' + sresultado + ' = ';
      end;
    04:
      begin
        lhistorico.Caption := currtostr(num1) + ComboBox1.Text + ' = ';
      end;
    14:
      begin
        lhistorico.Caption := sresultado + ComboBox1.Text + ' = ';
      end;

  end;

end;

procedure Tprincipal.Button10Click(Sender: TObject);
begin
  try
    num2 := StrToCurr(edtb.Text);
  except

  end;

  num3 := StrToCurr(edtresult.Text);
  snum1 := currtostr(num1);
  snum2 := currtostr(num2);
  snum3 := currtostr(num3);
  atualizarlhistorico(0);

  case ComboBox1.ItemIndex of
    0:
      begin

        resultado := StrToCurr(edtresult.Text);
        edtresult.Text := currtostr(somar(num1, num2, num3));
        stringzar;
        if subtrair(num3, num1, 0) = num2 then
        begin
          Memo1.Lines.Add(snum1 + ' + ' + snum2 + ' = ' + snum3);
          atualizarlhistorico(0);
        end
        else
        begin
          Memo1.Lines.Add(snum1 + ' + ' + sresultado + ' = ' + snum3);
          atualizarlhistorico(1);
        end;

      end;
    1:
      begin
        resultado := StrToCurr(edtresult.Text);
        edtresult.Text := currtostr(subtrair(num1, num2, num3));
        stringzar;
        if somar(num3, num1, 0) = num2 then
        begin
          Memo1.Lines.Add(snum1 + ' - ' + snum2 + ' = ' + snum3);
          atualizarlhistorico(0);
        end

        else
        begin
          Memo1.Lines.Add(snum1 + ' - ' + sresultado + ' = ' + snum3);
          atualizarlhistorico(1);
        end;

      end;
    2:
      begin
        resultado := StrToCurr(edtresult.Text);
        edtresult.Text := currtostr(dividir(num1, num2, num3));
        stringzar;
        if multiplicar(num3, num2, 0) = num1 then
        begin
          Memo1.Lines.Add(snum1 + ' / ' + snum2 + ' = ' + snum3);
          atualizarlhistorico(0);
        end

        else
        begin
          Memo1.Lines.Add(snum1 + ' / ' + sresultado + ' = ' + snum3);
          atualizarlhistorico(1);
        end;

      end;
    3:
      begin
        resultado := StrToCurr(edtresult.Text);
        edtresult.Text := currtostr(multiplicar(num1, num2, num3));
        stringzar;
        if dividir(num3, num1, 0) = num2 then
        begin
          Memo1.Lines.Add(snum1 + ' * ' + currtostr(num2) + ' = ' + snum3);
          atualizarlhistorico(02);
        end

        else
        begin
          Memo1.Lines.Add(sresultado + ' * ' + snum2 + ' = ' + snum3);
          atualizarlhistorico(12);
        end;

      end;
    4:
      begin

        resultado := StrToCurr(edtresult.Text);
        edtresult.Text := currtostr(raizquadrada(num1, num3));
        stringzar;
        if potencia(num3, 2, 0) = num1 then
        begin
          Memo1.Lines.Add(' ²√  ' + snum1 + ' = ' + snum3);
          atualizarlhistorico(03);
        end

        else
        begin
          Memo1.Lines.Add(' ²√  ' + sresultado + ' = ' + snum3);
          atualizarlhistorico(13);
        end;

      end;
    5:
      begin
        try
          resultado := StrToCurr(edtresult.Text);
          edtresult.Text := currtostr(potencia(num1, 2, num3));
          stringzar;
          if raizquadrada(num3, 0) = num1 then
          begin
            Memo1.Lines.Add(' x² ' + snum1 + ' = ' + snum3);
            atualizarlhistorico(04);
          end

          else
          begin
            Memo1.Lines.Add(' x² ' + sresultado + ' = ' + snum3);
            atualizarlhistorico(14);
          end;

        except
          MessageDlg(' Numero Maior Que o Suportado ', mtError, [mbOK], 0)
        end;

      end;
    6:
      begin
        resultado := StrToCurr(edtresult.Text);
        edtresult.Text := currtostr(resto(strtoint(currtostr(num1)),
          strtoint(currtostr(num2))));
        stringzar;
        Memo1.Lines.Add(snum1 + ' % ' + snum2 + ' = ' + snum3);
      end;
  end;
  maximohistorico;
end;

procedure Tprincipal.Button11Click(Sender: TObject);
begin
  Clipboard.AsText := Memo1.Text;
  Button11.Caption := 'Copiado';
end;

procedure Tprincipal.Button11Exit(Sender: TObject);
begin
  Button11.Caption := 'Copiar';
end;

procedure Tprincipal.Button12Click(Sender: TObject);
begin
  pegarpasta;
  salvartxt;
  showmessage('Historico De Contas Salvo')
end;

procedure Tprincipal.Button1Click(Sender: TObject);
begin
  edtresult.Text := currtostr(somar(StrToCurr(edt1.Text), StrToCurr(edt2.Text),
    StrToCurr(edtresult.Text)));
  if subtrair(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' + ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(edt1.Text + ' + ' +
      currtostr(subtrair(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)) +
      ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button2Click(Sender: TObject);
begin
  edtresult.Text := currtostr(subtrair(StrToCurr(edt1.Text),
    StrToCurr(edt2.Text), StrToCurr(edtresult.Text)));
  if somar(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' - ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(edt1.Text + ' - ' +
      currtostr(somar(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)) +
      ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button3Click(Sender: TObject);
begin
  edtresult.Text := currtostr(dividir(StrToCurr(edt1.Text),
    StrToCurr(edt2.Text), StrToCurr(edtresult.Text)));
  if multiplicar(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' / ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(edt1.Text + ' / ' +
      currtostr(multiplicar(StrToCurr(edtresult.Text), StrToCurr(edt2.Text), 0))
      + ' = ' + edtresult.Text);
end;

procedure Tprincipal.Button4Click(Sender: TObject);
begin
  edtresult.Text := currtostr(multiplicar(StrToCurr(edt1.Text),
    StrToCurr(edt2.Text), StrToCurr(edtresult.Text)));
  if dividir(StrToCurr(edtresult.Text), StrToCurr(edt1.Text), 0)
    = StrToCurr(edt2.Text) then
    Memo1.Lines.Add(edt1.Text + ' * ' + edt2.Text + ' = ' + edtresult.Text)
  else
    Memo1.Lines.Add(currtostr(dividir(StrToCurr(edtresult.Text),
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
        edtresult.Text := currtostr(raizquadrada(StrToCurr(edt1.Text),
          StrToCurr(edtresult.Text)));
        if potencia(StrToCurr(edtresult.Text), 2, 0) = StrToCurr(edt1.Text) then
          Memo1.Lines.Add(' ²√  ' + edt1.Text + ' = ' + edtresult.Text)
        else
          Memo1.Lines.Add
            (' ²√  ' + currtostr(potencia(StrToCurr(edtresult.Text), 2, 0)) +
            ' = ' + edtresult.Text);

      end;
    5:
      begin

        try

          edtresult.Text := currtostr(potencia(StrToCurr(edt1.Text), 2,
            StrToCurr(edtresult.Text)));
          if raizquadrada(StrToCurr(edtresult.Text), 0) = StrToCurr(edt1.Text)
          then
            Memo1.Lines.Add(' x² ' + edt1.Text + ' = ' + edtresult.Text)
          else
            Memo1.Lines.Add
              (' x²  ' + currtostr(raizquadrada(StrToCurr(edtresult.Text), 0)) +
              ' = ' + edtresult.Text);

        except

          MessageDlg('Numero Maior Que o Suportado', mtError, [mbOK], 0);

        end;
      end;
    6:
      begin
        edtresult.Text := currtostr(resto(strtoint(edt1.Text),
          strtoint(edt2.Text)));
        Memo1.Lines.Add(edt1.Text + ' %  ' + edt2.Text + ' = ' +
          edtresult.Text);
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

  try
    num1 := StrToCurr(edtb.Text);
    atualizarlhistorico(0);
    edtb.Clear;
    edtresult.Text := IntToStr(0);
  except
    MessageDlg(' Insira um Numero Antes de Selecionar o Operador Aritmético ',
      mtError, [mbOK], 0);
  end;

end;

procedure Tprincipal.EsconderHistorico1Click(Sender: TObject);
begin
  Panel1.Visible := false;
  principal.Height := 200;
  Button11.Visible := false;
  Button12.Visible := false;
end;

procedure Tprincipal.FormShow(Sender: TObject);
begin
  Label7.Caption := DateToStr(now);
  Label9.Caption := TimeToStr(now);
end;

procedure Tprincipal.maximohistorico;
var
  contador: integer;
begin
  contador := Memo1.Lines.Count;

  if (contador <= 89) and (contador >= 0) then
    ProgressBar1.Position := Memo1.Lines.Count
  else if (contador = 90) then
  begin
    case MessageDlg
      ('Limite do Historico Está Muito Perto, Deseja Salvar Antes De Limpar?, Aperte "OK" Para Copiar',
      mtConfirmation, [mbYes, mbNo, mbOK], 0) of
      1:
        Clipboard.AsText := Memo1.Text;
      6:
        begin
          pegarpasta;
          salvartxt;
        end;

      7:
        begin
          exit;
        end;
    else

      exit;
    end;
  end
  else if (contador >= 91) and (contador <= 99) then
  begin
    ProgressBar1.Position := Memo1.Lines.Count
  end
  else
  begin
    Memo1.Clear;
    showmessage('Historico Maximo Atingido Limpando')
  end;
  ProgressBar1.Position := Memo1.Lines.Count
end;

procedure Tprincipal.MostrarHistorico1Click(Sender: TObject);
begin
  Panel1.Visible := true;
  principal.Height := 700;
  Button11.Visible := true;
  Button12.Visible := true;
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

procedure Tprincipal.pegarpasta;
var
  OpenDialog: TFileOpenDialog;

begin
  OpenDialog := TFileOpenDialog.Create(principal);
  try
    OpenDialog.Options := OpenDialog.Options + [fdoPickFolders];
    if not OpenDialog.Execute then
      Abort;
    pasta := OpenDialog.FileName;
  finally
    OpenDialog.Free;
  end;
end;

function Tprincipal.potencia(n1, n2, n3: currency): Extended;
begin
  if n3 = 0 then
    result := power(n1, n2)
  else
    result := power(n3, n2);
end;

function Tprincipal.raizquadrada(n1, n2: currency): currency;
begin
  if n2 = 0 then
    result := sqrt(n1)
  else
    result := sqrt(n2);
end;

function Tprincipal.resto(n1, n2: integer): currency;
begin
  result := n1 mod n2;
end;

procedure Tprincipal.salvartxt;
var
  texto: TStringlist;
begin
  texto := TStringlist.Create;
  try
    texto.Text := Memo1.Text;
    texto.SaveToFile(pasta + '\historico.txt');
  except
    texto.Free
  end;

end;

function Tprincipal.somar(n1, n2, n3: currency): currency;
begin
  if n3 = 0 then
    result := n1 + n2
  else
    result := n1 + n3;
end;

procedure Tprincipal.stringzar;
begin
  num3 := StrToCurr(edtresult.Text);
  snum3 := currtostr(num3);
  sresultado := currtostr(resultado);
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

end.
