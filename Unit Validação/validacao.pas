unit Validacao;

interface
function isCNPJ(CNPJ: string): boolean;
function VerificaCEP(ccep: string ; cEstado: string): Boolean;
function verificaEstado(const Estado: String): boolean;
function isCPF(CPF: string): boolean;
function testanumero(texto: string): boolean;
function verificaEmail(email:string{; var ponto, arroba : string}):boolean;
function verificaSobrenome (texto:string):boolean;

implementation
uses SysUtils; // necessário para utilizar a função "StrToInt"

function verificaSobrenome (texto:string):boolean;
var
  espaco: integer;
  I: Integer;
begin
  espaco:= pos(' ',texto);
  if espaco = 0 then
  begin
    verificaSobrenome:= false;
    exit;
  end;

  if (texto [espaco+1] ='')then
  begin
    verificaSobrenome:= false;
    exit;
  end;

  for I := 1 to Length(texto) do
  begin
    if (texto[i]=' ') and (texto[i+1]=' ') then
    begin
      verificaSobrenome:= false;
      exit;
    end;
  end;

  for I := 1 to Length(texto) do
  begin
    if not (texto[i] in ['A'..'Z',' ']) then
     begin
      verificaSobrenome:= False;
      exit;
    end;

  end;



  verificaSobrenome:= true;


end;

function verificaEmail(email:string{; var ponto, arroba : string}):boolean;
var
  P_arroba: integer;
  i,P_ponto: integer;
  repete_P,repete_arroba :integer;
begin
  repete_p:=0;
  repete_arroba:=0;
  P_arroba:= Pos('@',email);
 // arroba:= IntToStr(P_arroba);
  P_ponto := pos('.',email);
 // ponto:= IntToStr(P_ponto);

  for I := 1 to Length(email) do
  begin
    if not (email[i] in ['A'..'Z','_','@','.','0'..'9']) then
     begin
      verificaEmail:= False;
      exit;
    end;

  end;

  if email[1]= '@' then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email[1]='.' then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email[Length(email)] = '@' then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email[Length(email)] = '.' then
  begin
    verificaEmail:= False;
    exit;
  end;

  for I := 1 to Length(email) do
  begin
    if email[i]='.' then
    begin
      repete_p:=repete_p + 1;

    end;
    if email[i]='@' then
    begin
      repete_arroba:=repete_arroba + 1;

    end;

  end;
  //arroba:= IntToStr(P_arroba);
  //ponto:= IntToStr(P_ponto);
  if ((repete_P <> 1) or (repete_arroba <> 1)) then
  begin
    verificaEmail:= False;
    exit;
  end;

    if P_ponto - P_arroba = 1 then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email [P_ponto+1] <>'C' then
   begin
    verificaEmail:= False;
    exit;
  end;
  if email [P_ponto+2] <>'O' then
   begin
    verificaEmail:= False;
    exit;
  end;
  if email [P_ponto+3] <>'M' then
   begin
    verificaEmail:= False;
    exit;
  end;

  if P_ponto < P_arroba  then
  begin
    verificaEmail:= False;
    exit;
  end;

  verificaEmail:=true;

end;

function testanumero(texto: string): boolean;
var
  i: integer;
begin
  result := false;
for i := 1 to length(texto) do
  if texto[i] in ['0'..'9'] then
  begin
    result:= True;
    exit;
  end;
end;

function isCPF(CPF: string): boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              isCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;
end;




function verificaEstado(const Estado: String): boolean;
const
cEstados: string = 'ACALAMBACEDFESFNGOMAMGMSMTPAPBPEPIPRRJRNRORRRSSCSESPTO';
var
I: Integer;
Sigla: String;
begin
Result := False;
I := 1;
while I < Length(cEstados) do
begin
Sigla := Copy(cEstados, I, 2);
if (Estado = Sigla) then
begin
Result := True;
Exit;
end
else
I := I + 2;
end;
end;

function VerificaCEP(ccep: string ; cEstado: string): Boolean;
var
 cCEP1 : Integer;
begin
 cCep := copy(cCep,1,5) + copy(cCep,7,3);
 cCEP1 := StrToInt(copy(cCep,1,3));
 if Length(trim(cCep)) > 0 then
 begin
    if Length(trim(copy(cCep,6,3))) < 3 then Result := False else
    if (cEstado = 'SP') and (cCEP1 >= 10 ) and (cCEP1 <= 199) then Result := True else
    if (cEstado = 'RJ') and (cCEP1 >= 200) and (cCEP1 <= 289) then Result := True else
    if (cEstado = 'ES') and (cCEP1 >= 290) and (cCEP1 <= 299) then Result := True else
    if (cEstado = 'MG') and (cCEP1 >= 300) and (cCEP1 <= 399) then Result := True else
    if (cEstado = 'BA') and (cCEP1 >= 400) and (cCEP1 <= 489) then Result := True else
    if (cEstado = 'SE') and (cCEP1 >= 490) and (cCEP1 <= 499) then Result := True else
    if (cEstado = 'PE') and (cCEP1 >= 500) and (cCEP1 <= 569) then Result := True else
    if (cEstado = 'AL') and (cCEP1 >= 570) and (cCEP1 <= 579) then Result := True else
    if (cEstado = 'PB') and (cCEP1 >= 580) and (cCEP1 <= 589) then Result := True else
    if (cEstado = 'RN') and (cCEP1 >= 590) and (cCEP1 <= 599) then Result := True else
    if (cEstado = 'CE') and (cCEP1 >= 600) and (cCEP1 <= 639) then Result := True else
    if (cEstado = 'PI') and (cCEP1 >= 640) and (cCEP1 <= 649) then Result := True else
    if (cEstado = 'MA') and (cCEP1 >= 650) and (cCEP1 <= 659) then Result := True else
    if (cEstado = 'PA') and (cCEP1 >= 660) and (cCEP1 <= 688) then Result := True else
    if (cEstado = 'AM') and ((cCEP1 >= 690) and (cCEP1 <= 692) or (cCEP1 >= 694) and

    (cCEP1 <= 698)) then Result := True else
    if (cEstado = 'AP') and (cCEP1 = 689) then Result := True else
    if (cEstado = 'RR') and (cCEP1 = 693) then Result := True else
    if (cEstado = 'AC') and (cCEP1 = 699) then Result := True else
    if ((cEstado = 'DF') or (cEstado = 'GO')) and (cCEP1 >= 000)and(cCEP1 <= 999)then
    Result := True else
    if (cEstado = 'TO') and (cCEP1 >= 770) and (cCEP1 <= 779) then Result := True else
    if (cEstado = 'MT') and (cCEP1 >= 780) and (cCEP1 <= 788) then Result := True else
    if (cEstado = 'MS') and (cCEP1 >= 790) and (cCEP1 <= 799) then Result := True else
    if (cEstado = 'RO') and (cCEP1 = 789) then Result := True else
    if (cEstado = 'PR') and (cCEP1 >= 800) and (cCEP1 <= 879) then Result := True else
    if (cEstado = 'SC') and (cCEP1 >= 880) and (cCEP1 <= 899) then Result := True else
    if (cEstado = 'RS') and (cCEP1 >= 900) and (cCEP1 <= 999) then Result := True else

    Result := False
 end
 else
 begin
  Result := True;
  VerificaCEP:=Result;
 end
end;

function isCNPJ(CNPJ: string): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            isCNPJ := false;
            exit;
          end;

// "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then isCNPJ := true
    else isCNPJ := false;
  except
    isCNPJ := false
  end;
end;

function imprimeCNPJ(CNPJ: string): string;
begin
{ máscara do CNPJ: 99.999.999.9999-99 }
  imprimeCNPJ := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
    copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
end;

end.

