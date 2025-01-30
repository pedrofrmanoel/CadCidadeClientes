unit uFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB;

function MascaraCpfCnpj(sValor: string): String;
function TiraMascara(Text: String): String;
function CarregaCamposCombo(dts:TDataSource; Combo:TComboBox ):string;
function FormataCEP(sCEP:String):String;
function FormataTelefoneCelular(sFone,Tipo: String): String;
Function ENumero(Campo : String) : Boolean;
Function SomenteNumeros(InString : String) : String;

implementation

function TiraMascara(Text: String): String;
var Aux: String;
    I  : Integer;
begin
  Aux:= '';
  For I:= 1 to Length(Text) do begin
    If (Copy (Text, I, 1) <> '.') and
       (Copy (Text, I, 1) <> ' ') and
       (Copy (Text, I, 1) <> '-') and
       (Copy (Text, I, 1) <> '/') and
       (Copy (Text, I, 1) <> '\') and
       (Copy (Text, I, 1) <> '(') and
       (Copy (Text, I, 1) <> ')') then
       Aux := Aux + Copy (Text, I, 1);
  end;
  Result:= Aux;
end;

Function MascaraCpfCnpj(sValor: string): String;
Var sDoc: String;
Begin
  sDoc := Tiramascara( sValor );
  if      Length(sDoc) = 11 then                                      ///Cpf
     Result := Copy(sDoc,1,3)+ '.' +
               Copy(sDoc,4,3)+ '.' +
               Copy(sDoc,7,3)+ '-' +
               Copy(sDoc,10,2)
  else if Length(sDoc) = 14 then                                     ///Cnpj
     Result := Copy(sDoc,01,2)+ '.' +
               Copy(sDoc,03,3)+ '.' +
               Copy(sDoc,06,3)+ '/' +
               Copy(sDoc,09,4)+ '-' +
               Copy(sDoc,13,2)
  else Result := sValor;
end;

function CarregaCamposCombo(dts:TDataSource; Combo:TComboBox ):string;
var
  I: Integer;
begin

  Combo.Clear;

  for I := 0 to dts.DataSet.FieldCount -1 do begin
    Combo.Items.Add(dts.DataSet.Fields[i].DisplayName);
  end;
  Combo.ItemIndex := 0;
end;

function FormataCEP(sCEP:String):String;
begin

  if trim(sCEP) = '' then Result := ''
  else begin
    sCEP := tiramascara(sCEP);
    Result := copy(sCEP,1,5)+'-'+copy(sCEP,6,3)
  end;

end;

function FormataTelefoneCelular(sFone,Tipo: String): String;
var Aux, Texto: String;
    I  : Integer;
begin
  texto := somentenumeros(sFone);
  aux   := '';
  For I:= 1 to Length(texto) do begin
    if Tipo = 'C' then begin
      if      i = 1 then aux := '('+copy(texto,i,1)
      //else if i = 3 then aux := aux +copy(texto,i,1)+')'
      else if i = 2 then aux := aux +copy(texto,i,1)+')'
      else if i = 8 then aux := aux +'-'+copy(texto,i,1)
      else               aux := aux +Copy(texto, I, 1);
    end else begin
      if      i = 1 then aux := '('+copy(texto,i,1)
      //else if i = 3 then aux := aux +copy(texto,i,1)+')'
      else if i = 2 then aux := aux +copy(texto,i,1)+')'
      else if i = 7 then aux := aux +'-'+copy(texto,i,1)
      else               aux := aux +Copy(texto, I, 1);
    end;
  end;

  Result:= Aux;
end;

Function ENumero(Campo : String) : Boolean;
begin
  if Pos(Campo, '0123456789') > 0 then
       result := True
  else result := False;
end;

Function SomenteNumeros(InString : String) : String;
var i   : Integer;
    Tmp : String;
begin
  Tmp := '';

  for i := 1 to Length(InString) do
   if ENumero(InString[i]) then
    Tmp := Tmp + InString[i];

  result := Tmp;
end;

end.
