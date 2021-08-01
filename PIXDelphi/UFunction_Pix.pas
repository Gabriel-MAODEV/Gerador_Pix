unit UFunction_Pix;

interface

uses SysUtils;

Function GeraPix(pChavePIX, pBeneficiario, pCidade, pReferencia, pValor :String) :String;

implementation

Function CRC16CCITT(TXT :String) :WORD;
Const
  cPolynomial = $1021;
Var
  vCRC       :WORD;
  I, E       :Integer;
  B          :Byte;
  vBIT, vB15 :Boolean;
begin
  vCRC := $FFFF;

  For I := 1 to length(TXT) do
    begin
      B := Byte(TXT[I]);

      for E := 0 to 7 do
        begin
          vBIT := (((B shr (7 - E)) and 1) = 1);
          vB15 := (((vCRC shr 15) and 1) = 1);
          vCRC := vCRC shl 1;

          if (vB15 xor vBIT) then
            vCRC := vCRC xor cPolynomial;
        end;
    end;

  Result := vCRC and $FFFF;
end;

Function GeraPix(pChavePIX, pBeneficiario, pCidade, pReferencia, pValor :String) :String;
Const
  cPay_Format_Ind :String = '000201';
  cCategory_Code  :String = '52040000';
  cCountry_Code   :String = '5802BR';
  cTrans_Curr     :String = '530398654';
  cCRC162         :String = '6304';

Var
  vPix, vTxt: String;

begin
  //Tamanho do Merchant Account
  vTxt   := FormatFloat('00', Length('0014BR.GOV.BCB.PIX01' + IntToStr(Length(pChavePIX)) + pChavePIX));

  vPix   := cPay_Format_Ind + '26' + vTxt + '0014BR.GOV.BCB.PIX01' + IntToStr(Length(pChavePIX)) + pChavePIX + cCategory_Code + cTrans_Curr;

  //Formatar Valor
  pValor := FormatFloat('#####0.00;00.00', StrToFloat(pValor));
  pValor := StringReplace(pValor, ',', '.', []);
  vPix   := vPix + FormatFloat('00', Length(pValor)) + pValor;

  //Beneficiário
  vPix   := vPix + cCountry_Code + '59' + FormatFloat('00', Length(pBeneficiario)) + pBeneficiario + '60' + FormatFloat('00', Length(pCidade)) + pCidade;

  //Referencia do Pagamento
  vTxt   := FormatFloat('00', Length('05' + FormatFloat('00', LengTh(pReferencia)) + pReferencia));
  vPix   := vPix + '62' + vTxt + '05' + FormatFloat('00', LengTh(pReferencia)) + pReferencia + cCRC162;

  //Hexadecimal CRC16
  vPix   := vPix + IntToHex(CRC16CCITT(vPix), 4);

  result := vPix;
end;

end.
