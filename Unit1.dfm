object principal: Tprincipal
  Left = 1371
  Top = 309
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 162
  ClientWidth = 290
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
  object lhistorico: TLabel
    Left = 180
    Top = 72
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 386
    Top = 94
    Width = 25
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object edt1: TEdit
    Left = 375
    Top = 205
    Width = 95
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object edt2: TEdit
    Left = 375
    Top = 172
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
    TabOrder = 5
    Visible = False
  end
  object Button2: TButton
    Left = 417
    Top = 94
    Width = 25
    Height = 25
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 448
    Top = 94
    Width = 25
    Height = 25
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 479
    Top = 94
    Width = 25
    Height = 25
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnClick = Button4Click
  end
  object edtresult: TEdit
    Left = 165
    Top = 91
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
    TabOrder = 9
  end
  object Button6: TButton
    Left = 276
    Top = 464
    Width = 75
    Height = 25
    Caption = '0 a 100'
    TabOrder = 10
    Visible = False
    OnClick = Button6Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 112
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
    TabOrder = 1
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
    Left = 375
    Top = 125
    Width = 129
    Height = 41
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
    OnClick = Button8Click
  end
  object Button7: TButton
    Left = 279
    Top = 205
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 12
    Visible = False
    OnClick = Button7Click
  end
  object Panel1: TPanel
    Left = 36
    Top = 205
    Width = 196
    Height = 417
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 13
    Visible = False
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
    Left = 296
    Top = 236
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 14
    Visible = False
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 112
    Top = 86
    Width = 47
    Height = 40
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button10Click
  end
  object edtb: TEdit
    Left = 9
    Top = 79
    Width = 94
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button11: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Copiar'
    TabOrder = 15
    Visible = False
    OnClick = Button11Click
    OnExit = Button11Exit
  end
  object Button12: TButton
    Left = 165
    Top = 160
    Width = 88
    Height = 25
    Caption = 'Salvar em .txt'
    TabOrder = 16
    Visible = False
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 168
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button13'
    TabOrder = 17
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 278
    Top = 416
  end
  object Timer2: TTimer
    Interval = 100
    Left = 318
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 312
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
