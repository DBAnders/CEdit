unit global;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  VERSION_STR : String = 'v1.20.11.25';
  COPYR_STR   : String = '(C) by Marco Anders';
  PROG_STR    : String = 'CEdit/Classic Notepad';
  INFO_STR    : String = 'Small Text Editor';
  EXE_FILE    : String = 'CEdit.exe';
  ETF_FILE    : String = 'CEdit.etf';


function GetMainName : String;
function GetSubName(Sub:String) : String;
function GetSubNameNoVer(Sub:String) : String;
function GetWithoutSuffix(S:String):String;

implementation

function GetMainName : String;
begin
  GetMainName := PROG_STR + ' - ' +
                 INFO_STR + ' - ' +
                 COPYR_STR + ' - ' +
                 VERSION_STR;
end;

function GetSubName(Sub:String) : String;
begin
   GetSubName := PROG_STR + ' - ' +
                 Sub + ' - ' +
                 VERSION_STR;

end;

function GetSubNameNoVer(Sub:String) : String;
begin
   GetSubNameNoVer := PROG_STR + ' - ' + Sub;
end;


function GetWithoutSuffix(S:String):String;
var
  S2 : String;
  I,L : Integer;
  cp : Boolean;

begin
    cp := False;
    L := Length(S);
    S2 := '';
    for I := L downto 1 do
    begin
       if cp then
       begin
           S2 := S[I] + S2;
       end
       else
           if S[I] = '.' then
               cp := true;
    end;
    GetWithoutSuffix := S2
end;

end.

