(*
  History++ plugin for Miranda IM: the free IM client for Microsoft* Windows*

  Copyright (C) 2006-2009 theMIROn, 2003-2006 Art Fedorov.
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

{ -----------------------------------------------------------------------------
  hpp_contacts (historypp project)

  Version:   1.0
  Created:   31.03.2003
  Author:    Oxygen

  [ Description ]

  Some helper routines for contacts

  [ History ]
  1.0 (31.03.2003) - Initial version

  [ Modifications ]

  [ Knows Inssues ]
  None

  Contributors: theMIROn, Art Fedorov
  ----------------------------------------------------------------------------- }

unit hpp_contacts;

interface

uses
  Windows, SysUtils,
  Forms, Classes,
  m_globaldefs,
  hpp_global, hpp_miranda_mmi,
  hpp_database;

function GetContactDisplayName(hContact: THandle; Proto: AnsiString = ''; Contact: boolean = false): String;
function GetContactProto(hContact: THandle): AnsiString; overload;
function GetContactProto(hContact: THandle; var SubContact: THandle; var SubProtocol: AnsiString): AnsiString; overload;
function GetContactID(hContact: THandle; Proto: AnsiString = ''; Contact: boolean = false): AnsiString;
function GetContactCodePage(hContact: THandle; Proto: AnsiString = ''): Cardinal; overload;
function GetContactCodePage(hContact: THandle; Proto: AnsiString; var UsedDefault: boolean): Cardinal; overload;
function WriteContactCodePage(hContact: THandle; CodePage: Cardinal; Proto: AnsiString = ''): boolean;
function GetContactRTLMode(hContact: THandle; Proto: AnsiString = ''): boolean;
function GetContactRTLModeTRTL(hContact: THandle; Proto: AnsiString = ''): TRTLMode;
function WriteContactRTLMode(hContact: THandle; RTLMode: TRTLMode; Proto: AnsiString = ''): boolean;

implementation

uses hpp_options, m_api;

function GetContactProto(hContact: THandle): AnsiString;
begin
  Result := PAnsiChar(PluginLink.CallService(MS_PROTO_GETCONTACTBASEPROTO, hContact, 0));
end;

function GetContactProto(hContact: THandle; var SubContact: THandle; var SubProtocol: AnsiString): AnsiString;
begin
  Result := PAnsiChar(PluginLink.CallService(MS_PROTO_GETCONTACTBASEPROTO, hContact, 0));
  if MetaContactsEnabled and (Result = MetaContactsProto) then
  begin
    SubContact := CallService(MS_MC_GETMOSTONLINECONTACT, hContact, 0);
    SubProtocol := PAnsiChar(CallService(MS_PROTO_GETCONTACTBASEPROTO, SubContact, 0));
  end
  else
  begin
    SubContact := hContact;
    SubProtocol := Result;
  end;
end;

function GetContactDisplayName(hContact: THandle; Proto: AnsiString = ''; Contact: boolean = false): String;
var
  ci: TContactInfo;
  RetPWideChar, UW: PChar;
begin
  if (hContact = 0) and Contact then
    Result := TranslateW('Server')
  else
  begin
    if Proto = '' then
      Proto := GetContactProto(hContact);
    if Proto = '' then
      Result := TranslateW('''(Unknown Contact)''' { TRANSLATE-IGNORE } )
    else
    begin
      ci.cbSize := SizeOf(ci);
      ci.hContact := hContact;
      ci.szProto := PAnsiChar(Proto);
      ci.dwFlag := CNF_DISPLAY + CNF_UNICODE;
      if PluginLink.CallService(MS_CONTACT_GETCONTACTINFO, 0, LPARAM(@ci)) = 0 then
      begin
        RetPWideChar := ci.retval.pwszVal;
        UW := TranslateW('''(Unknown Contact)''' { TRANSLATE-IGNORE } );
        if WideCompareText(RetPWideChar, UW) = 0 then
          Result := AnsiToWideString(GetContactID(hContact, Proto), CP_ACP)
        else
          Result := RetPWideChar;
        MirandaFree(RetPWideChar);
      end
      else
        Result := String(GetContactID(hContact, Proto));
      if Result = '' then
        Result := TranslateAnsiW(Proto { TRANSLATE-IGNORE } );
    end;
  end;
end;

function GetContactID(hContact: THandle; Proto: AnsiString = ''; Contact: boolean = false): AnsiString;
var
  uid: PAnsiChar;
  dbv: TDBVARIANT;
  cgs: TDBCONTACTGETSETTING;
  tmp: String;
begin
  Result := '';
  if not((hContact = 0) and Contact) then
  begin
    if Proto = '' then
      Proto := GetContactProto(hContact);
    uid := PAnsiChar(CallProtoService(PAnsiChar(Proto), PS_GETCAPS, PFLAG_UNIQUEIDSETTING, 0));
    if (Cardinal(uid) <> CALLSERVICE_NOTFOUND) and (uid <> nil) then
    begin
      cgs.szModule := PAnsiChar(Proto);
      cgs.szSetting := uid;
      cgs.pValue := @dbv;
      if PluginLink^.CallService(MS_DB_CONTACT_GETSETTING, hContact, LPARAM(@cgs)) = 0 then
      begin
        case dbv.type_ of
          DBVT_BYTE:
            Result := AnsiString(intToStr(dbv.bVal));
          DBVT_WORD:
            Result := AnsiString(intToStr(dbv.wVal));
          DBVT_DWORD:
            Result := AnsiString(intToStr(dbv.dVal));
          DBVT_ASCIIZ:
            Result := AnsiString(dbv.pszVal);
          DBVT_UTF8:
            begin
              tmp := AnsiToWideString(dbv.pszVal, CP_UTF8);
              Result := WideToAnsiString(tmp, hppCodepage);
            end;
          DBVT_WCHAR:
            Result := WideToAnsiString(dbv.pwszVal, hppCodepage);
        end;
        // free variant
        DBFreeVariant(@dbv);
      end;
    end;
  end;
end;

function WriteContactCodePage(hContact: THandle; CodePage: Cardinal; Proto: AnsiString = ''): boolean;
begin
  Result := false;
  if Proto = '' then
    Proto := GetContactProto(hContact);
  if Proto = '' then
    exit;
  WriteDBWord(hContact, Proto, 'AnsiCodePage', CodePage);
  Result := True;
end;

function _GetContactCodePage(hContact: THandle; Proto: AnsiString; var UsedDefault: boolean) : Cardinal;
begin
  if Proto = '' then
    Proto := GetContactProto(hContact);
  if Proto = '' then
    Result := hppCodepage
  else
  begin
    Result := GetDBWord(hContact, Proto, 'AnsiCodePage', $FFFF);
    If Result = $FFFF then
      Result := GetDBWord(0, Proto, 'AnsiCodePage', CP_ACP);
    UsedDefault := (Result = CP_ACP);
    if UsedDefault then
      Result := GetACP();
  end;
end;

function GetContactCodePage(hContact: THandle; Proto: AnsiString = ''): Cardinal;
var
  def: boolean;
begin
  Result := _GetContactCodePage(hContact, Proto, def);
end;

function GetContactCodePage(hContact: THandle; Proto: AnsiString; var UsedDefault: boolean): Cardinal; overload;
begin
  Result := _GetContactCodePage(hContact, Proto, UsedDefault);
end;

// OXY: 2006-03-30
// Changed default RTL mode from SysLocale.MiddleEast to
// Application.UseRightToLeftScrollBar because it's more correct and
// doesn't bug on MY SYSTEM!
function GetContactRTLMode(hContact: THandle; Proto: AnsiString = ''): boolean;
var
  Temp: Byte;
begin
  if Proto = '' then
    Proto := GetContactProto(hContact);
  if Proto = '' then
    Result := GetDBBool(hppDBName, 'RTL', Application.UseRightToLeftScrollBar)
  else
  begin
    Temp := GetDBByte(hContact, Proto, 'RTL', 255);
    // we have no per-proto rtl setup ui, use global instead
    // if Temp = 255 then
    // Temp := GetDBByte(0,Proto,'RTL',255);
    if Temp = 255 then
      Temp := GetDBByte(hppDBName, 'RTL', Byte(Application.UseRightToLeftScrollBar));
    Result := boolean(Temp);
  end;
end;

function WriteContactRTLMode(hContact: THandle; RTLMode: TRTLMode; Proto: AnsiString = ''): boolean;
begin
  Result := false;
  if Proto = '' then
    Proto := GetContactProto(hContact);
  if Proto = '' then
    exit;
  case RTLMode of
    hppRTLDefault: DBDeleteContactSetting(hContact, PAnsiChar(Proto), 'RTL');
    hppRTLEnable:  WriteDBByte(hContact, Proto, 'RTL', Byte(True));
    hppRTLDisable: WriteDBByte(hContact, Proto, 'RTL', Byte(false));
  end;
  Result := True;
end;

function GetContactRTLModeTRTL(hContact: THandle; Proto: AnsiString = ''): TRTLMode;
var
  Temp: Byte;
begin
  if Proto = '' then
    Proto := GetContactProto(hContact);
  if Proto = '' then
    Result := hppRTLDefault
  else
  begin
    Temp := GetDBByte(hContact, Proto, 'RTL', 255);
    case Temp of
      0: Result := hppRTLDisable;
      1: Result := hppRTLEnable;
    else
      Result := hppRTLDefault;
    end;
  end;
end;

end.
