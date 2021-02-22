unit uMaquina;

interface

uses
  UIMaquina,
  Classes,
  UTroco;

type

  TMaquina = class( TInterfacedObject, IMaquina )
  public
    function MontarTroco( Troco: Double ): TList;
  end;

implementation

uses Math;

function TMaquina.MontarTroco( Troco: Double ): TList;
var
  I, Ct: Integer;
  ITroco: TTroco;
  V, Vlr: Double;
begin

  Result := TList.Create;

  Vlr := Trunc( Troco );
  I   := 0;
  while ( Vlr <> 0 ) do
  begin
    V  := ITroco.GetvalorCedula( TCedula( I ) );
    Ct := Trunc( Vlr / V );
    if ( Ct <> 0 )
    then
    begin
      Result.Add( TTroco.Create( TCedula( I ), Ct ) );
      Vlr := Math.FMod( Vlr, V );
    end;
    I := I + 1;
  end;

  Vlr := SimpleRoundTo( ( Troco - Trunc( Troco ) ), -2 );
  I   := 7;
  while ( Vlr <> 0 ) do
  begin
    V  := ITroco.GetvalorCedula( TCedula( I ) );
    Ct := Trunc( Vlr / V );
    if ( Ct <> 0 )
    then
    begin
      Result.Add( TTroco.Create( TCedula( I ), Ct ) );
      Vlr := SimpleRoundTo( Math.FMod( Vlr, V ), -2 );
    end;
    I := I + 1;
  end;
end;

end.
