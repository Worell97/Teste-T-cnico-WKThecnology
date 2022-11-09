unit DTO_Pedido_produtos;

interface
uses
  System.Generics.Collections, FireDAC.Comp.Client;
type
  TDtoPedidoProduto = class;
  TDtoPedidoProdutos = class;
  TDtoPedidoProduto = class(TObject)
  private
    { private declarations }
    FId: System.Integer;
    FPedido: System.Integer;
    FCodProduto: System.Integer;
    FQuantidade: System.Double;
    FVlrUnitario: System.Double;
    FVlrTotal: System.Double;
    procedure InternalClear();
    procedure SetId(const AId: System.Integer);
    procedure SetPedido(const APedido: System.Integer);
    procedure SetCodProduto(const ACodProduto: System.Integer);
    procedure SetQuantidade(const AQuantidade: System.Double);
    procedure SetVlrUnitario(const AVlrUnitario: System.Double);
    procedure SetVlrTotal(const AVlrTotal: System.Double);
    function GetId(): System.Integer;
    function GetPedido(): System.Integer;
    function GetCodProduto(): System.Integer;
    function GetQuantidade(): System.Double;
    function GetVlrUnitario(): System.Double;
    function GetVlrTotal(): System.Double;
  public
    constructor Create();
    procedure Clear; inline;
    property Id: System.Integer read GetId write SetId;
    property Pedido: System.Integer read GetPedido write SetPedido;
    property CodProduto: System.Integer read GetCodProduto write SetCodProduto;
    property Quantidade: System.Float64 read GetQuantidade write SetQuantidade;
    property VlrUnitario: System.Float64 read GetVlrUnitario write SetVlrUnitario;
    property VlrTotal: System.Float64 read GetVlrTotal write SetVlrTotal;
  end;
  TDtoPedidoProdutos = class(TObjectList<TDtoPedidoProduto>)
  end;
implementation
{ TDtoPedidoProduto }

procedure TDtoPedidoProduto.Clear;
begin
  Self.InternalClear();
end;

constructor TDtoPedidoProduto.Create();
begin
  Self.InternalClear();
end;

function TDtoPedidoProduto.GetId: System.Integer;
begin
  Result := FId;
end;

function TDtoPedidoProduto.GetPedido: System.Integer;
begin
  Result := FPedido;
end;

function TDtoPedidoProduto.GetCodProduto: System.Integer;
begin
  Result := FCodProduto;
end;

function TDtoPedidoProduto.GetQuantidade: System.Double;
begin
  Result := FQuantidade;
end;

function TDtoPedidoProduto.GetVlrUnitario: System.Double;
begin
  Result := FVlrUnitario;
end;

function TDtoPedidoProduto.GetVlrTotal: System.Double;
begin
  Result := FVlrTotal;
end;

procedure TDtoPedidoProduto.InternalClear;
begin
  FId := 0;
  FPedido := 0;
  FCodProduto := 0;
  FQuantidade := 0;
  FVlrUnitario := 0;
  FVlrTotal := 0;
end;

procedure TDtoPedidoProduto.SetId(const AId: System.Integer);
begin
  FId := AId;
end;

procedure TDtoPedidoProduto.SetPedido(const APedido: System.Integer);
begin
  FPedido := APedido;
end;

procedure TDtoPedidoProduto.SetCodProduto(const ACodProduto: System.Integer);
begin
  FCodProduto :=ACodProduto;
end;

procedure TDtoPedidoProduto.SetQuantidade(const AQuantidade: System.Double);
begin
  FQuantidade := AQuantidade;
end;

procedure TDtoPedidoProduto.SetVlrUnitario(const AVlrUnitario: System.Double);
begin
  FVlrUnitario := AVlrUnitario;
end;

procedure TDtoPedidoProduto.SetVlrTotal(const AVlrTotal: System.Double);
begin
  FVlrTotal := AVlrTotal;
end;

end.
