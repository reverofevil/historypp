object fmGlobalSearch: TfmGlobalSearch
  Left = 259
  Top = 118
  Width = 559
  Height = 544
  Caption = 'Global History Search'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paClient: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object spContacts: TSplitter
      Left = 157
      Top = 248
      Height = 189
      ResizeStyle = rsUpdate
      Visible = False
    end
    object paSearch: TPanel
      Left = 2
      Top = 32
      Width = 547
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        547
        32)
      object laSearch: TLabel
        Left = 4
        Top = 10
        Width = 49
        Height = 13
        Caption = 'Search for'
        FocusControl = edSearch
        Transparent = True
      end
      object edSearch: THppEdit
        Left = 70
        Top = 6
        Width = 374
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnChange = edSearchChange
        OnEnter = edSearchEnter
        OnKeyDown = edSearchKeyUp
        OnKeyPress = edSearchKeyPress
      end
      object bnSearch: TButton
        Left = 450
        Top = 5
        Width = 89
        Height = 23
        Anchors = [akTop, akRight]
        Caption = 'Search'
        Enabled = False
        TabOrder = 1
        OnClick = bnSearchClick
      end
    end
    object paProgress: TPanel
      Left = 2
      Top = 437
      Width = 547
      Height = 54
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 3
      Visible = False
      DesignSize = (
        547
        54)
      object laProgress: TLabel
        Left = 12
        Top = 7
        Width = 519
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = '-'
        Transparent = True
      end
      object pb: TProgressBar
        Left = 12
        Top = 29
        Width = 519
        Height = 16
        Anchors = [akLeft, akRight, akBottom]
        Position = 34
        TabOrder = 0
      end
    end
    object paPassword: TPanel
      Left = 2
      Top = 202
      Width = 547
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      DesignSize = (
        547
        46)
      object bePassword: TBevel
        Left = 12
        Top = 10
        Width = 519
        Height = 5
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object laPass: TLabel
        Left = 8
        Top = 25
        Width = 49
        Height = 13
        Caption = 'Password:'
      end
      object laPasswordHead: TLabel
        Left = 4
        Top = 4
        Width = 154
        Height = 13
        Caption = 'Search Protected Contacts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object sbPasswordClose: THppSpeedButton
        Left = 521
        Top = 2
        Width = 18
        Height = 17
        Anchors = [akTop, akRight]
        Flat = True
        Transparent = False
        OnClick = sbPasswordCloseClick
      end
      object laPassNote: TLabel
        Left = 199
        Top = 25
        Width = 3
        Height = 13
      end
      object edPass: TPasswordEdit
        Left = 65
        Top = 21
        Width = 125
        Height = 21
        TabOrder = 0
        OnKeyDown = edSearchKeyUp
        OnKeyPress = edPassKeyPress
      end
    end
    object paContacts: TPanel
      Left = 2
      Top = 248
      Width = 155
      Height = 189
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object lvContacts: TListView
        Left = 0
        Top = 0
        Width = 155
        Height = 189
        Align = alClient
        Columns = <
          item
            Width = -1
            WidthType = (
              -1)
          end>
        ColumnClick = False
        FlatScrollBars = True
        ReadOnly = True
        RowSelect = True
        ShowColumnHeaders = False
        SmallImages = ilContacts
        TabOrder = 0
        ViewStyle = vsReport
        OnContextPopup = lvContactsContextPopup
        OnDblClick = lvContactsDblClick
        OnSelectItem = lvContactsSelectItem
      end
    end
    object paHistory: TPanel
      Left = 160
      Top = 248
      Width = 389
      Height = 189
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      object hg: THistoryGrid
        Left = 0
        Top = 0
        Width = 389
        Height = 161
        VertScrollBar.Increment = 1
        ShowBottomAligned = False
        ShowBookmarks = True
        MultiSelect = True
        ShowHeaders = False
        ExpandHeaders = False
        TxtStartup = 'Starting up...'
        TxtNoItems = 'No items found'
        TxtNoSuch = 'No items for your current filter'
        TxtFullLog = 'Full History Log'
        TxtPartLog = 'Partial History Log'
        TxtHistExport = 'History++ export'
        TxtGenHist1 = '### (generated by history++ plugin)'
        TxtGenHist2 = '<h6>Generated by <b>History++</b> Plugin</h6>'
        TxtSessions = 'Conversation started at %s'
        OnDblClick = hgDblClick
        OnItemData = hgItemData
        OnNameData = hgNameData
        OnPopup = hgPopup
        OnTranslateTime = hgTranslateTime
        OnSearchFinished = hgSearchFinished
        OnItemDelete = hgItemDelete
        OnKeyDown = hgKeyDown
        OnKeyUp = hgKeyUp
        OnInlineKeyDown = hgInlineKeyDown
        OnInlinePopup = hgInlinePopup
        OnChar = hgChar
        OnState = hgState
        OnSelect = hgSelect
        OnRTLChange = hgRTLEnabled
        OnUrlClick = hgUrlClick
        OnBookmarkClick = hgBookmarkClick
        OnItemFilter = hgItemFilter
        OnProcessRichText = hgProcessRichText
        OnSearchItem = hgSearchItem
        Reversed = False
        ReversedHeader = False
        Align = alClient
        TabStop = True
        BevelInner = bvNone
        BevelOuter = bvNone
        Padding = 4
        HideScrollBar = False
        ShowHint = True
      end
      object paFilter: TPanel
        Left = 0
        Top = 161
        Width = 389
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          389
          28)
        object sbClearFilter: THppSpeedButton
          Left = 27
          Top = 4
          Width = 23
          Height = 21
          Hint = 'Clear Search'
          Flat = True
          OnClick = sbClearFilterClick
        end
        object pbFilter: TPaintBox
          Left = 6
          Top = 6
          Width = 16
          Height = 16
          OnPaint = pbFilterPaint
        end
        object edFilter: THppEdit
          Left = 52
          Top = 4
          Width = 319
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          OnChange = edFilterChange
          OnKeyDown = edFilterKeyDown
          OnKeyPress = edFilterKeyPress
          OnKeyUp = edFilterKeyUp
        end
      end
    end
    object paAdvanced: TPanel
      Left = 2
      Top = 64
      Width = 547
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      DesignSize = (
        547
        46)
      object beAdvanced: TBevel
        Left = 16
        Top = 10
        Width = 515
        Height = 5
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object laAdvancedHead: TLabel
        Left = 4
        Top = 4
        Width = 149
        Height = 13
        Caption = 'Advanced Search Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object sbAdvancedClose: THppSpeedButton
        Left = 521
        Top = 2
        Width = 18
        Height = 17
        Anchors = [akTop, akRight]
        Flat = True
        Transparent = False
        OnClick = sbAdvancedCloseClick
      end
      object rbAny: TRadioButton
        Left = 8
        Top = 24
        Width = 155
        Height = 17
        Caption = 'Search any word'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbAll: TRadioButton
        Left = 169
        Top = 24
        Width = 156
        Height = 17
        Caption = 'Search all words'
        TabOrder = 1
      end
      object rbExact: TRadioButton
        Left = 331
        Top = 24
        Width = 163
        Height = 17
        Caption = 'Search exact phrase'
        TabOrder = 2
      end
    end
    object paRange: TPanel
      Left = 2
      Top = 156
      Width = 547
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 7
      Visible = False
      DesignSize = (
        547
        46)
      object laRange1: TLabel
        Left = 8
        Top = 25
        Width = 126
        Height = 13
        AutoSize = False
        Caption = 'Search messages from'
        Transparent = True
      end
      object laRange2: TLabel
        Left = 223
        Top = 25
        Width = 38
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'to'
      end
      object beRange: TBevel
        Left = 16
        Top = 10
        Width = 515
        Height = 5
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object laRangeHead: TLabel
        Left = 4
        Top = 4
        Width = 112
        Height = 13
        Caption = 'Limit Search Range'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object sbRangeClose: THppSpeedButton
        Left = 521
        Top = 2
        Width = 18
        Height = 17
        Anchors = [akTop, akRight]
        Flat = True
        Transparent = False
        OnClick = sbRangeCloseClick
      end
      object dtRange1: TDateTimePicker
        Left = 135
        Top = 21
        Width = 87
        Height = 21
        BiDiMode = bdLeftToRight
        Date = 29221.000000000000000000
        Time = 29221.000000000000000000
        ParentBiDiMode = False
        TabOrder = 0
      end
      object dtRange2: TDateTimePicker
        Left = 262
        Top = 22
        Width = 87
        Height = 21
        BiDiMode = bdLeftToRight
        Date = 29221.999988425930000000
        Time = 29221.999988425930000000
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
    object TopPanel: TPanel
      Left = 2
      Top = 2
      Width = 547
      Height = 30
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object ToolBar: THppToolBar
        Left = 0
        Top = 0
        Width = 547
        Height = 30
        AutoSize = True
        BorderWidth = 2
        EdgeBorders = []
        Flat = True
        Images = ilToolbar
        TabOrder = 0
        Transparent = True
        object tbAdvanced: THppToolButton
          Left = 0
          Top = 0
          Hint = 'Advanced search options'
          HelpKeyword = 'F4'
          Caption = 'Advanced search options'
          Style = tbsCheck
          OnClick = tbAdvancedClick
        end
        object tbRange: THppToolButton
          Left = 23
          Top = 0
          Hint = 'Limit search range'
          HelpKeyword = 'F5'
          Caption = 'Limit search range'
          Style = tbsCheck
          OnClick = tbRangeClick
        end
        object tbEvents: THppToolButton
          Left = 46
          Top = 0
          Hint = 'Limit event types'
          HelpKeyword = 'F6'
          Caption = 'Limit event types'
          Style = tbsCheck
          OnClick = tbEventsClick
        end
        object tbPassword: THppToolButton
          Left = 69
          Top = 0
          Hint = 'Search protected contacts'
          HelpKeyword = 'F7'
          Caption = 'Search protected contacts'
          Style = tbsCheck
          OnClick = tbPasswordClick
        end
        object ToolButton1: THppToolButton
          Left = 92
          Top = 0
          Width = 8
          Style = tbsSeparator
        end
        object tbBookmarks: THppToolButton
          Left = 100
          Top = 0
          Hint = 'Bookmarks'
          HelpKeyword = 'F9'
          Caption = 'Bookmarks'
          Style = tbsCheck
          OnClick = tbBookmarksClick
        end
        object ToolButton2: THppToolButton
          Left = 123
          Top = 0
          Width = 8
          Style = tbsSeparator
        end
        object tbSearch: THppToolButton
          Left = 131
          Top = 0
          Caption = 'Find'
          Grouped = True
          Style = tbsCheck
          Visible = False
        end
        object tbFilter: THppToolButton
          Left = 154
          Top = 0
          Caption = 'Filter'
          Grouped = True
          Style = tbsCheck
          Visible = False
        end
        object ToolButton3: THppToolButton
          Left = 177
          Top = 0
          Width = 8
          Style = tbsSeparator
          Visible = False
        end
        object tbEventsFilter: THppSpeedButton
          Left = 185
          Top = 0
          Width = 110
          Height = 22
          Enabled = False
          Flat = True
          Layout = blGlyphTop
          PopupMenu = pmEventsFilter
          Spacing = -5
          Transparent = False
          OnClick = tbEventsFilterClick
        end
        object ToolButton4: THppToolButton
          Left = 295
          Top = 0
          Width = 8
          Style = tbsSeparator
        end
        object tbCopy: THppToolButton
          Left = 303
          Top = 0
          Hint = 'Copy'
          Caption = 'Copy'
          OnClick = tbCopyClick
        end
        object tbDelete: THppToolButton
          Left = 326
          Top = 0
          Hint = 'Delete'
          Caption = 'Delete'
          OnClick = tbDeleteClick
        end
        object tbSave: THppToolButton
          Left = 349
          Top = 0
          Hint = 'Save'
          Caption = 'Save'
          OnClick = tbSaveClick
        end
      end
    end
    object paEvents: TPanel
      Left = 2
      Top = 110
      Width = 547
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 8
      Visible = False
      DesignSize = (
        547
        46)
      object laEvents: TLabel
        Left = 8
        Top = 25
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Search messages matched to'
        Transparent = True
      end
      object beEvents: TBevel
        Left = 16
        Top = 10
        Width = 515
        Height = 5
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object laEventsHead: TLabel
        Left = 4
        Top = 4
        Width = 102
        Height = 13
        Caption = 'Limit Event Types'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object sbEventsClose: THppSpeedButton
        Left = 521
        Top = 2
        Width = 18
        Height = 17
        Anchors = [akTop, akRight]
        Flat = True
        Transparent = False
        OnClick = sbEventsCloseClick
      end
      object cbEvents: TComboBox
        Left = 159
        Top = 21
        Width = 214
        Height = 21
        AutoCloseUp = True
        Style = csDropDownList
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        ParentBiDiMode = False
        TabOrder = 0
      end
    end
  end
  object sb: TStatusBar
    Left = 0
    Top = 493
    Width = 551
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object pmGrid: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 206
    Top = 266
    object Open1: TMenuItem
      Caption = 'Sh&ow in context'
      OnClick = hgDblClick
    end
    object Bookmark1: TMenuItem
      Caption = 'Set &Bookmark'
      ShortCut = 16450
      OnClick = Bookmark1Click
    end
    object SpeakMessage1: TMenuItem
      Caption = 'Speak Message'
      OnClick = SpeakMessage1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SendMessage1: TMenuItem
      Caption = 'Send &Message'
      ShortCut = 16461
      OnClick = SendMessage1Click
    end
    object ReplyQuoted1: TMenuItem
      Caption = 'Reply &Quoted'
      ShortCut = 16466
      OnClick = ReplyQuoted1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = tbCopyClick
    end
    object CopyText1: TMenuItem
      Caption = 'Copy &Text'
      ShortCut = 16468
      OnClick = CopyText1Click
    end
    object Delete1: TMenuItem
      Caption = '&Delete'
      ShortCut = 46
      OnClick = tbDeleteClick
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object SaveSelected1: TMenuItem
      Caption = '&Save Selected...'
      ShortCut = 16467
      OnClick = tbSaveClick
    end
    object N5: TMenuItem
      Caption = '-'
      Visible = False
    end
    object SelectAll1: TMenuItem
      Caption = 'Select &All'
      ShortCut = 16449
      Visible = False
      OnClick = SelectAll1Click
    end
  end
  object ilContacts: TImageList
    ShareImages = True
    Left = 470
    Top = 262
  end
  object SaveDialog: TSaveDialog
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofShareAware, ofEnableSizing]
    Title = 'Save History'
    Left = 506
    Top = 260
  end
  object tiFilter: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tiFilterTimer
    Left = 352
    Top = 376
  end
  object ilToolbar: TImageList
    Left = 520
    Top = 2
  end
  object pmEventsFilter: TPopupMenu
    OnPopup = pmEventsFilterPopup
    Left = 450
    Top = 2
    object N4: TMenuItem
      Caption = '-'
    end
    object Customize1: TMenuItem
      Caption = '&Customize...'
      OnClick = Customize1Click
    end
  end
  object pmInline: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 204
    Top = 301
    object InlineCopy: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = InlineCopyClick
    end
    object InlineCopyAll: TMenuItem
      Caption = 'Copy &Text'
      ShortCut = 16468
      OnClick = InlineCopyAllClick
    end
    object InlineSelectAll: TMenuItem
      Caption = 'Select &All'
      ShortCut = 16449
      OnClick = InlineSelectAllClick
    end
    object MenuItem10: TMenuItem
      Caption = '-'
    end
    object InlineTextFormatting: TMenuItem
      Caption = 'Text Formatting'
      ShortCut = 16464
      OnClick = InlineTextFormattingClick
    end
    object MenuItem6: TMenuItem
      Caption = '-'
    end
    object InlineSendMessage: TMenuItem
      Caption = 'Send &Message'
      ShortCut = 16461
      OnClick = SendMessage1Click
    end
    object InlineReplyQuoted: TMenuItem
      Caption = '&Reply Quoted'
      ShortCut = 16466
      OnClick = InlineReplyQuotedClick
    end
  end
  object pmLink: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 244
    Top = 266
    object OpenLinkNW: TMenuItem
      Caption = 'Open in &new window'
      Default = True
      OnClick = OpenLinkNWClick
    end
    object OpenLink: TMenuItem
      Caption = '&Open in existing window'
      OnClick = OpenLinkClick
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object CopyLink: TMenuItem
      Caption = '&Copy Link'
      OnClick = CopyLinkClick
    end
  end
  object mmAcc: TMainMenu
    Left = 482
    Top = 2
    object mmToolbar: TMenuItem
      Caption = 'Toolbar'
      OnClick = mmToolbarClick
    end
    object mmService: TMenuItem
      Caption = 'Service'
      object mmHideMenu: TMenuItem
        Caption = 'Hide Menu'
        ShortCut = 16505
        OnClick = mmHideMenuClick
      end
    end
    object mmShortcuts: TMenuItem
      Caption = '--'
      Visible = False
      object mmBookmark: TMenuItem
        Caption = '--'
        ShortCut = 16450
        OnClick = Bookmark1Click
      end
    end
  end
  object pmFile: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 244
    Top = 302
    object N7: TMenuItem
      Caption = '-'
    end
    object FileActions: TMenuItem
      Caption = '&File Actions'
      object BrowseReceivedFiles: TMenuItem
        Caption = '&Browse Received Files'
        OnClick = BrowseReceivedFilesClick
      end
      object OpenFileFolder: TMenuItem
        Caption = '&Open file folder'
        OnClick = OpenFileFolderClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object CopyFilename: TMenuItem
        Caption = '&Copy Filename'
        OnClick = CopyLinkClick
      end
    end
  end
end
