object principal: Tprincipal
  Left = 1371
  Top = 309
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 232
  ClientWidth = 243
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 109
    Top = 94
    Width = 15
    Height = 25
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeftNoAlign
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 147
    Top = 69
    Width = 69
    Height = 19
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 6
    Top = 8
    Width = 41
    Height = 18
    Caption = 'Data :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 53
    Top = 8
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 6
    Top = 32
    Width = 41
    Height = 18
    Caption = 'Hora :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 53
    Top = 32
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 53
    Top = 54
    Width = 12
    Height = 13
    Caption = 'n1'
  end
  object Button1: TButton
    Left = 213
    Top = 371
    Width = 25
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object edt1: TEdit
    Left = 8
    Top = 73
    Width = 95
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = edt1Exit
  end
  object edt2: TEdit
    Left = 9
    Top = 73
    Width = 94
    Height = 27
    Alignment = taCenter
    Color = clMenuBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = edt2Exit
  end
  object Button2: TButton
    Left = 237
    Top = 371
    Width = 25
    Height = 25
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 257
    Top = 371
    Width = 25
    Height = 25
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 278
    Top = 371
    Width = 25
    Height = 25
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = Button4Click
  end
  object edtresult: TEdit
    Left = 130
    Top = 94
    Width = 105
    Height = 33
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object Button6: TButton
    Left = 228
    Top = 456
    Width = 75
    Height = 25
    Caption = '0 a 100'
    TabOrder = 7
    Visible = False
    OnClick = Button6Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 106
    Width = 95
    Height = 27
    AutoDropDown = True
    BevelEdges = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = 'Operador'
    OnChange = ComboBox1Change
    Items.Strings = (
      '+'
      '-'
      '/'
      '*'
      #178#8730
      'x'#178
      '%')
  end
  object Button8: TButton
    Left = 53
    Top = 183
    Width = 129
    Height = 41
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button7: TButton
    Left = 231
    Top = 197
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 10
    Visible = False
    OnClick = Button7Click
  end
  object Panel1: TPanel
    Left = 20
    Top = 236
    Width = 196
    Height = 417
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 11
    object Label5: TLabel
      Left = 42
      Top = 3
      Width = 103
      Height = 33
      BiDiMode = bdLeftToRight
      Caption = 'Historico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Button5: TButton
      Left = 17
      Top = 384
      Width = 153
      Height = 25
      Caption = 'Limpar Historico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button5Click
    end
    object Memo1: TMemo
      Left = 11
      Top = 42
      Width = 173
      Height = 313
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object ProgressBar1: TProgressBar
      Left = 11
      Top = 361
      Width = 173
      Height = 17
      TabOrder = 2
    end
  end
  object Button9: TButton
    Left = 248
    Top = 228
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 12
    Visible = False
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 147
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button10'
    TabOrder = 13
    OnClick = Button10Click
  end
  object edtb: TEdit
    Left = 8
    Top = 150
    Width = 94
    Height = 21
    TabOrder = 14
    Visible = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 230
    Top = 408
  end
  object Timer2: TTimer
    Interval = 100
    OnTimer = Timer2Timer
    Left = 270
    Top = 408
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 304
    object EsconderHistorico1: TMenuItem
      Caption = 'Esconder Historico'
      OnClick = EsconderHistorico1Click
    end
    object MostrarHistorico1: TMenuItem
      Caption = 'Mostrar Historico'
      OnClick = MostrarHistorico1Click
    end
  end
end
