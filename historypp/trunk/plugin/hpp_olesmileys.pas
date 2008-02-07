(*
    History++ plugin for Miranda IM: the free IM client for Microsoft* Windows*

    Copyright (�) 2006-2007 theMIROn, 2003-2006 Art Fedorov.
    History+ parts (C) 2001 Christian Kastner

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

{-----------------------------------------------------------------------------
 hpp_olesmileys (historypp project)

 Version:   1.5
 Created:   04.02.2007
 Author:    theMIROn

 [ Description ]

 [ History ]

 1.5 (04.02.2007)
   First version

 [ Modifications ]
 none

 [ Known Issues ]
 none

 Contributors: theMIROn
-----------------------------------------------------------------------------}

unit hpp_olesmileys;

interface

uses ActiveX;

const
  IID_ITooltipData:     TGUID = '{58B32D03-1BD2-4840-992E-9AE799FD4ADE}';
  IID_IGifSmileyCtrl:   TGUID = '{CB64102B-8CE4-4A55-B050-131C435A3A3F}';
  IID_ISmileyAddSmiley: TGUID = '{105C56DF-6455-4705-A501-51F1CCFCF688}';
  IID_IEmoticonsImage:  TGUID = '{2FD9449B-7EBB-476a-A9DD-AE61382CCE08}';

type
  ITooltipData = interface(IUnknown)
   ['{58B32D03-1BD2-4840-992E-9AE799FD4ADE}']
   function SetTooltip(const bstrHint: WideString): HRESULT; stdcall;
   function GetTooltip(out bstrHint: WideString): HRESULT; stdcall;
  end;

  IGifSmileyCtrl = interface(IUnknown)
    ['{CB64102B-8CE4-4A55-B050-131C435A3A3F}']
    procedure Set_BackColor(pclr: OLE_COLOR); safecall;
    function Get_BackColor: OLE_COLOR; safecall;
    function Get_HWND: Integer; safecall;
    procedure LoadFromFile(const bstrFileName: WideString); safecall;
    procedure LoadFromFileSized(const bstrFileName: WideString; nHeight: SYSINT); safecall;
    procedure SetHostWindow(hwndHostWindow: Integer; nNotyfyMode: SYSINT); safecall;
    procedure ShowHint( ); safecall;
    property BackColor: OLE_COLOR read Get_BackColor write Set_BackColor;
    property HWND: Integer read Get_HWND;
  end;

  ISmileyAddSmiley = interface(IUnknown)
    ['{105C56DF-6455-4705-A501-51F1CCFCF688}']
  end;

  IEmoticonsImage = interface(IUnknown)
    ['{2FD9449B-7EBB-476a-A9DD-AE61382CCE08}']
  end;

implementation

end.