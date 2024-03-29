object HistoryFrm: THistoryFrm
  Left = 245
  Top = 167
  Width = 586
  Height = 424
  VertScrollBar.Tracking = True
  VertScrollBar.Visible = False
  ActiveControl = hg
  Caption = '%s - History++'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
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
    Width = 578
    Height = 378
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object spHolder: TSplitter
      Left = 158
      Top = 32
      Height = 319
      AutoSnap = False
      MinSize = 100
      ResizeStyle = rsUpdate
      Visible = False
    end
    object paGrid: TPanel
      Left = 161
      Top = 32
      Width = 415
      Height = 319
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object hg: THistoryGrid
        Left = 0
        Top = 0
        Width = 415
        Height = 319
        VertScrollBar.Increment = 1
        ShowBottomAligned = False
        ShowBookmarks = True
        MultiSelect = True
        ShowHeaders = False
        ExpandHeaders = False
        TxtStartup = 'Starting up...'
        TxtNoItems = 'History is empty'
        TxtNoSuch = 'No such items'
        TxtFullLog = 'Full History Log'
        TxtPartLog = 'Partial History Log'
        TxtHistExport = 'History++ export'
        TxtGenHist1 = '### (generated by history++ plugin)'
        TxtGenHist2 = '<h6>Generated by <b>History++</b> Plugin</h6>'
        TxtSessions = 'Conversation started at %s'
        OnDblClick = hgDblClick
        OnItemData = hgItemData
        OnPopup = hgPopup
        OnTranslateTime = hgTranslateTime
        OnSearchFinished = hgSearchFinished
        OnItemDelete = hgItemDelete
        OnKeyDown = hgKeyDown
        OnKeyUp = hgKeyUp
        OnInlineKeyDown = hgInlineKeyDown
        OnInlinePopup = hgInlinePopup
        OnProcessInlineChange = hgProcessInlineChange
        OnOptionsChange = hgOptionsChange
        OnChar = hgChar
        OnState = hgState
        OnSelect = hgSelect
        OnXMLData = hgXMLData
        OnMCData = hgMCData
        OnRTLChange = hgRTLEnabled
        OnUrlClick = hgUrlClick
        OnBookmarkClick = hgBookmarkClick
        OnItemFilter = hgItemFilter
        OnProcessRichText = hgProcessRichText
        OnSearchItem = hgSearchItem
        OnFilterChange = hgFilterChange
        Reversed = False
        ReversedHeader = False
        Align = alClient
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Shell Dlg'
        Font.Style = []
        BevelInner = bvNone
        BevelOuter = bvNone
        Padding = 4
        HideScrollBar = False
        ShowHint = True
      end
    end
    object paSearch: TPanel
      Left = 2
      Top = 351
      Width = 574
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object paSearchPanel: TPanel
        Left = 0
        Top = 0
        Width = 495
        Height = 25
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          495
          25)
        object pbSearch: TPaintBox
          Left = 2
          Top = 6
          Width = 16
          Height = 16
          OnPaint = pbSearchPaint
        end
        object sbClearFilter: THppSpeedButton
          Left = 21
          Top = 4
          Width = 23
          Height = 21
          Hint = 'Clear Search'
          Flat = True
          OnClick = sbClearFilterClick
        end
        object pbFilter: TPaintBox
          Left = 2
          Top = 6
          Width = 16
          Height = 16
          OnPaint = pbFilterPaint
        end
        object edSearch: THppEdit
          Left = 47
          Top = 3
          Width = 443
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          OnChange = edSearchChange
          OnKeyDown = edSearchKeyDown
          OnKeyPress = edPassKeyPress
          OnKeyUp = edSearchKeyUp
        end
      end
      object paSearchButtons: TPanel
        Left = 532
        Top = 0
        Width = 42
        Height = 25
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          42
          25)
        object sbSearchNext: THppSpeedButton
          Left = 0
          Top = 4
          Width = 21
          Height = 21
          Anchors = [akTop, akRight]
          Flat = True
          Layout = blGlyphTop
          Spacing = 0
          OnClick = sbSearchNextClick
        end
        object sbSearchPrev: THppSpeedButton
          Left = 21
          Top = 4
          Width = 21
          Height = 21
          Anchors = [akTop, akRight]
          Flat = True
          Layout = blGlyphTop
          Spacing = 0
          OnClick = sbSearchPrevClick
        end
      end
      object paSearchStatus: TPanel
        Left = 495
        Top = 0
        Width = 37
        Height = 25
        Align = alRight
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 2
        Visible = False
        object laSearchState: TLabel
          Left = 22
          Top = 3
          Width = 12
          Height = 19
          Align = alRight
          Caption = '>>'
          Transparent = True
          Layout = tlCenter
        end
        object imSearchEndOfPage: TImage
          Left = 3
          Top = 6
          Width = 16
          Height = 16
        end
        object imSearchNotFound: TImage
          Left = 3
          Top = 6
          Width = 16
          Height = 16
          Transparent = True
        end
      end
    end
    object TopPanel: TPanel
      Left = 2
      Top = 2
      Width = 574
      Height = 30
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object Toolbar: THppToolBar
        Left = 0
        Top = 0
        Width = 574
        Height = 30
        AutoSize = True
        BorderWidth = 2
        EdgeBorders = []
        Flat = True
        Images = ilToolbar
        PopupMenu = pmToolbar
        TabOrder = 0
        Transparent = True
        Wrapable = False
        OnDblClick = ToolbarDblClick
        object tbUserDetails: THppToolButton
          Left = 0
          Top = 0
          Hint = 'User Details'
          HelpKeyword = 'Ctrl+I'
          Caption = 'User Details'
          OnClick = tbUserDetailsClick
        end
        object tbUserMenu: THppToolButton
          Left = 23
          Top = 0
          Hint = 'User Menu'
          Caption = 'User Menu'
          OnClick = tbUserMenuClick
        end
        object ToolButton1: THppToolButton
          Left = 46
          Top = 0
          Width = 8
          Style = tbsDivider
        end
        object tbSessions: THppToolButton
          Left = 54
          Top = 0
          Hint = 'Conversations'
          HelpKeyword = 'F4'
          Caption = 'Conversations'
          Style = tbsCheck
          OnClick = tbSessionsClick
        end
        object tbBookmarks: THppToolButton
          Left = 77
          Top = 0
          Hint = 'Bookmarks'
          HelpKeyword = 'F5'
          Caption = 'Bookmarks'
          Style = tbsCheck
          OnClick = tbBookmarksClick
        end
        object ToolButton2: THppToolButton
          Left = 100
          Top = 0
          Width = 7
          Style = tbsSeparator
        end
        object tbSearch: THppToolButton
          Left = 107
          Top = 0
          Hint = 'Find'
          HelpKeyword = 'Ctrl+F'
          AllowAllUp = True
          Caption = 'Find'
          Grouped = True
          Style = tbsCheck
          OnClick = tbSearchClick
        end
        object tbFilter: THppToolButton
          Left = 130
          Top = 0
          Hint = 'Filter'
          HelpKeyword = 'Ctrl+E'
          AllowAllUp = True
          Caption = 'Filter'
          Grouped = True
          Style = tbsCheck
          OnClick = tbFilterClick
        end
        object ToolButton3: THppToolButton
          Left = 153
          Top = 0
          Width = 7
          Style = tbsSeparator
        end
        object tbEventsFilter: THppSpeedButton
          Left = 160
          Top = 0
          Width = 110
          Height = 22
          Flat = True
          Layout = blGlyphTop
          PopupMenu = pmEventsFilter
          Spacing = -5
          Transparent = False
          OnClick = tbEventsFilterClick
        end
        object ToolButton4: THppToolButton
          Left = 270
          Top = 0
          Width = 7
          Style = tbsSeparator
        end
        object tbCopy: THppToolButton
          Left = 277
          Top = 0
          Hint = 'Copy'
          Caption = 'Copy'
          OnClick = tbCopyClick
        end
        object tbDelete: THppToolButton
          Left = 300
          Top = 0
          Hint = 'Delete'
          Caption = 'Delete'
          OnClick = tbDeleteClick
        end
        object tbSave: THppToolButton
          Left = 323
          Top = 0
          Hint = 'Save'
          Caption = 'Save'
          OnClick = tbSaveClick
        end
        object ToolButton5: THppToolButton
          Left = 346
          Top = 0
          Width = 8
          Style = tbsSeparator
        end
        object tbHistory: THppToolButton
          Left = 354
          Top = 0
          Hint = 'History Actions'
          Caption = 'History Actions'
          DropdownMenu = pmHistory
          PopupMenu = pmHistory
          Style = tbsDropDown
          OnClick = tbHistoryClick
          WholeDropDown = True
        end
        object tbHistorySearch: THppToolButton
          Left = 386
          Top = 0
          Hint = 'History Search'
          Caption = 'History Search'
          OnClick = tbHistorySearchClick
        end
      end
    end
    object paHolder: TPanel
      Left = 2
      Top = 32
      Width = 156
      Height = 319
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      OnResize = paHolderResize
      object spBook: TSplitter
        Left = 0
        Top = 150
        Width = 156
        Height = 3
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        MinSize = 60
        ResizeStyle = rsUpdate
        Visible = False
        OnMoved = spBookMoved
      end
      object paBook: TPanel
        Left = 0
        Top = 153
        Width = 156
        Height = 166
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object paBookInt: TPanel
          Left = 0
          Top = 0
          Width = 156
          Height = 21
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          DesignSize = (
            156
            21)
          object laBook: TLabel
            Left = 6
            Top = 2
            Width = 128
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 'Bookmarks'
            Transparent = True
            Layout = tlCenter
          end
          object sbCloseBook: THppSpeedButton
            Left = 135
            Top = 2
            Width = 18
            Height = 17
            AllowAllUp = True
            Anchors = [akTop, akRight]
            Flat = True
            OnClick = sbCloseBookClick
          end
        end
        object lvBook: TListView
          Left = 0
          Top = 21
          Width = 156
          Height = 145
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Columns = <
            item
              AutoSize = True
            end>
          FlatScrollBars = True
          RowSelect = True
          ShowColumnHeaders = False
          SmallImages = ilBook
          TabOrder = 1
          ViewStyle = vsReport
          OnContextPopup = lvBookContextPopup
          OnEdited = lvBookEdited
          OnKeyDown = lvBookKeyDown
          OnSelectItem = lvBookSelectItem
        end
      end
      object paSess: TPanel
        Left = 0
        Top = 0
        Width = 156
        Height = 150
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object paSessInt: TPanel
          Left = 0
          Top = 0
          Width = 156
          Height = 21
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          DesignSize = (
            156
            21)
          object laSess: TLabel
            Left = 6
            Top = 2
            Width = 128
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 'Conversations'
            Transparent = True
            Layout = tlCenter
          end
          object sbCloseSess: THppSpeedButton
            Left = 135
            Top = 2
            Width = 18
            Height = 17
            AllowAllUp = True
            Anchors = [akTop, akRight]
            Flat = True
            OnClick = sbCloseSessClick
          end
        end
        object tvSess: TTreeView
          Left = 0
          Top = 21
          Width = 156
          Height = 129
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Images = ilSessions
          Indent = 19
          MultiSelect = True
          PopupMenu = pmSessions
          ReadOnly = True
          RightClickSelect = True
          RowSelect = True
          TabOrder = 1
          ToolTips = False
          OnChange = tvSessChange
          OnGetSelectedIndex = tvSessGetSelectedIndex
          OnKeyDown = tvSessKeyDown
          OnKeyPress = edPassKeyPress
          OnMouseMove = tvSessMouseMove
        end
      end
    end
  end
  object sb: TStatusBar
    Left = 0
    Top = 378
    Width = 578
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object paPassHolder: TPanel
    Left = 179
    Top = 95
    Width = 325
    Height = 153
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Enabled = False
    TabOrder = 2
    Visible = False
    OnResize = paPassHolderResize
    object paPassword: TPanel
      Left = 8
      Top = 16
      Width = 301
      Height = 117
      BevelOuter = bvNone
      TabOrder = 0
      object laPass: TLabel
        Left = 54
        Top = 7
        Width = 236
        Height = 46
        AutoSize = False
        Caption = 'You need password to access this history'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Image1: TImage
        Left = 10
        Top = 8
        Width = 32
        Height = 29
        AutoSize = True
        Transparent = True
      end
      object laPass2: TLabel
        Left = 10
        Top = 60
        Width = 49
        Height = 13
        Caption = 'Password:'
        Transparent = True
      end
      object edPass: TPasswordEdit
        Left = 80
        Top = 56
        Width = 211
        Height = 21
        MaxLength = 100
        TabOrder = 0
        OnKeyPress = edPassKeyPress
        OnKeyUp = edPassKeyUp
      end
      object bnPass: TButton
        Left = 208
        Top = 82
        Width = 83
        Height = 25
        Caption = 'Enter'
        Default = True
        TabOrder = 1
        OnClick = bnPassClick
      end
    end
  end
  object SaveDialog: TSaveDialog
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofShareAware, ofEnableSizing]
    Title = 'Save History'
    Left = 540
    Top = 40
  end
  object pmGrid: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmGridPopup
    Left = 324
    Top = 257
    object Details1: TMenuItem
      Caption = '&Open'
      OnClick = Details1Click
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
    object N8: TMenuItem
      Caption = '-'
    end
    object SendMessage1: TMenuItem
      Caption = 'Send &Message'
      ShortCut = 16461
      OnClick = SendMessage1Click
    end
    object ReplyQuoted1: TMenuItem
      Caption = '&Reply Quoted'
      ShortCut = 16466
      OnClick = ReplyQuoted1Click
    end
    object N12: TMenuItem
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
    object N2: TMenuItem
      Caption = '-'
    end
    object SaveSelected1: TMenuItem
      Caption = '&Save Selected...'
      ShortCut = 16467
      OnClick = tbSaveClick
    end
    object N13: TMenuItem
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
  object pmLink: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 368
    Top = 258
    object OpenLinkNW: TMenuItem
      Caption = 'Open in &new window'
      Default = True
      OnClick = OpenLinkNWClick
    end
    object OpenLink: TMenuItem
      Caption = '&Open in existing window'
      OnClick = OpenLinkClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopyLink: TMenuItem
      Caption = '&Copy Link'
      OnClick = CopyLinkClick
    end
  end
  object ilSessions: TImageList
    BkColor = clWhite
    Left = 164
    Top = 60
  end
  object tiFilter: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tiFilterTimer
    Left = 540
    Top = 72
  end
  object ilToolbar: TImageList
    Left = 540
    Top = 4
  end
  object pmHistory: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmHistoryPopup
    Left = 444
    Top = 20
    object SaveSelected2: TMenuItem
      Caption = '&Save Selected...'
      OnClick = tbSaveClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SaveasHTML2: TMenuItem
      Caption = 'Export as &HTML...'
      OnClick = SaveasHTML2Click
    end
    object SaveasXML2: TMenuItem
      Caption = 'Export as &XML...'
      OnClick = SaveasXML2Click
    end
    object SaveasRTF2: TMenuItem
      Caption = 'Export as &RTF...'
      OnClick = SaveasRTF2Click
    end
    object SaveasMContacts2: TMenuItem
      Caption = 'Export as &mContacts...'
      OnClick = SaveasMContacts2Click
    end
    object SaveasText2: TMenuItem
      Caption = 'Export as &Text...'
      OnClick = SaveasText2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object EmptyHistory1: TMenuItem
      Caption = 'Empty history...'
      OnClick = EmptyHistory1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object ContactRTLmode: TMenuItem
      Caption = 'Text direction'
      object RTLDefault2: TMenuItem
        AutoCheck = True
        Caption = 'Default'
        Checked = True
        RadioItem = True
        OnClick = ContactRTLmode1Click
      end
      object RTLEnabled2: TMenuItem
        AutoCheck = True
        Caption = 'Always RTL'
        RadioItem = True
        OnClick = ContactRTLmode1Click
      end
      object RTLDisabled2: TMenuItem
        AutoCheck = True
        Caption = 'Always LTR'
        RadioItem = True
        OnClick = ContactRTLmode1Click
      end
    end
    object ANSICodepage: TMenuItem
      Caption = 'ANSI Encoding'
      object SystemCodepage: TMenuItem
        AutoCheck = True
        Caption = 'System default codepage'
        Checked = True
        RadioItem = True
        OnClick = CodepageChangeClick
      end
      object UnknownCodepage: TMenuItem
        AutoCheck = True
        Caption = 'Unknown codepage %u'
        RadioItem = True
        Visible = False
        OnClick = CodepageChangeClick
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Passwordprotection1: TMenuItem
      Caption = 'Password protection...'
      OnClick = Passwordprotection1Click
    end
  end
  object pmEventsFilter: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmEventsFilterPopup
    Left = 412
    Top = 20
    object Showall1: TMenuItem
      Caption = '-'
    end
    object Customize1: TMenuItem
      Caption = '&Customize...'
      OnClick = Customize1Click
    end
  end
  object pmSessions: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 198
    Top = 61
    object SessCopy: TMenuItem
      Caption = '&Copy'
      Enabled = False
    end
    object SessSelect: TMenuItem
      Caption = 'Select'
      OnClick = SessSelectClick
    end
    object SessDelete: TMenuItem
      Caption = 'Delete'
      Enabled = False
    end
    object SessSave: TMenuItem
      Caption = 'Save...'
      Enabled = False
    end
  end
  object pmToolbar: TPopupMenu
    Images = ilToolbar
    OnPopup = pmToolbarPopup
    Left = 476
    Top = 20
    object N5: TMenuItem
      Caption = '-'
    end
    object Customize2: TMenuItem
      Caption = '&Customize...'
      OnClick = Customize2Click
    end
  end
  object ilBook: TImageList
    BkColor = clWhite
    Left = 8
    Top = 60
  end
  object pmBook: TPopupMenu
    Left = 42
    Top = 61
    object RenameBookmark1: TMenuItem
      Caption = 'Rename &Bookmark'
      OnClick = RenameBookmark1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object DeleteBookmark1: TMenuItem
      Caption = 'Remove &Bookmark'
      ShortCut = 16450
      OnClick = Bookmark1Click
    end
  end
  object pmInline: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 324
    Top = 293
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
  object mmAcc: TMainMenu
    Left = 10
    Top = 98
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
    Left = 368
    Top = 294
    object N10: TMenuItem
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
      object N9: TMenuItem
        Caption = '-'
      end
      object CopyFilename: TMenuItem
        Caption = '&Copy Filename'
        OnClick = CopyLinkClick
      end
    end
  end
end
