unit uTroco;

interface

type

  TCedula = ( CeNota100, CeNota50, CeNota20, CeNota10, CeNota5, CeNota2,
              CeMoeda100, CeMoeda50, CeMoeda25, CeMoeda10, CeMoeda5, CeMoeda1 );

  TTroco = class
  private
    FTipo: TCedula;
    FQuantidade: Integer;
  public
    constructor Create( Tipo: TCedula; Quantidade: Integer ); reintroduce;
    function GetTipo: TCedula;
    function GetQuantidade: Integer;
    function GetvalorCedula( Tipo: TCedula ): Double;
    procedure SetQuantidade( Quantidade: Integer );
  end;

const
  CValorCedula: array [ TCedula ] of Double = ( 100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01 );

implementation

constructor TTroco.Create( Tipo: TCedula; Quantidade: Integer );
begin
  inherited Create;
  FTipo       := Tipo;
  FQuantidade := Quantidade;
end;

function TTroco.GetTipo: TCedula;
begin
  Result := FTipo;
end;

function TTroco.GetvalorCedula( Tipo: TCedula ): Double;
begin
  Result := CValorCedula[ Tipo ];
end;

function TTroco.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

procedure TTroco.SetQuantidade( Quantidade: Integer );
begin
  FQuantidade := Quantidade;
end;

end.
