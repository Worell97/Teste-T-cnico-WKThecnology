unit DTO_Pedidos;

interface
uses
  System.Generics.Collections, FireDAC.Comp.Client;
type
  TDtoPedido = class;
  TDtoPedidos = class;
  TDtoPedido = class(TObject)
  private
    { private declarations }

    FNumero: System.Integer;
    FDataEmissao: System.TDateTime;
    FCodCliente: System.Integer;
    FValorTotal: System.Double;
    procedure InternalClear();
    procedure SetNumero(const ANumero: System.Integer);
    procedure SetDataEmissao(const ADataEmissao: System.TDateTime);
    procedure SetCodCliente(const ACodCliente: System.Integer);
    procedure SetValorTotal(const AValorTotal: System.Double);
    function GetNumero(): System.Integer;
    function GetDataEmissao(): System.TDateTime;
    function GetCodCliente(): System.Integer;
    function GetValorTotal(): System.Double;
  public
    constructor Create();
    procedure Clear; inline;
    property Numero: System.Integer read GetNumero write SetNumero;
    property DataEmissao: System.TDateTime read GetDataEmissao write SetDataEmissao;
    property CodCliente: System.Integer read GetCodCliente write SetCodCliente;
    property ValorTotal: System.Double read GetValorTotal write SetValorTotal;
  end;
  TDtoPedidos = class(TObjectList<TDtoPedido>)
  end;
implementation
{ TDtoPedido }

procedure TDtoPedido.Clear;
begin
  Self.InternalClear();
end;

constructor TDtoPedido.Create();
begin
  Self.InternalClear();
end;

function TDtoPedido.GetNumero: System.Integer;
begin
  Result := FNumero;
end;

function TDtoPedido.GetDataEmissao: System.TDateTime;
begin
  Result := FDataEmissao;
end;

function TDtoPedido.GetCodCliente: System.Integer;
begin
  Result := FCodCliente;
end;

function TDtoPedido.GetValorTotal: System.Double;
begin
  Result := FValorTotal;
end;

procedure TDtoPedido.InternalClear;
begin
  FNumero := 0;
  FDataEmissao := 0;
  FCodCliente := 0;
  FValorTotal := 0;
end;

procedure TDtoPedido.SetNumero(const ANumero: System.Integer);
begin
  FNumero := ANumero;
end;

procedure TDtoPedido.SetDataEmissao(const ADataEmissao: System.TDateTime);
begin
  FDataEmissao := ADataEmissao;
end;

procedure TDtoPedido.SetCodCliente(const ACodCliente: System.Integer);
begin
  FCodCliente :=ACodCliente;
end;

procedure TDtoPedido.SetValorTotal(const AValorTotal: System.Double);
begin
  FValorTotal := AValorTotal;
end;

end.
