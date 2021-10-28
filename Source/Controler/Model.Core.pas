unit Model.Core;

interface
Type
  CallBack<T> = Reference to procedure(this: T);

  TFlow<T> = class
  private
    function GetThis: T;   virtual; abstract;
    class function new: T; virtual; abstract;
    function GetCallBack(this: CallBack<T>): T;
  protected
    property This: T read GetThis;
  public
    property CallBack[this: CallBack<T>]: T read GetCallBack;
  end;

  TFluentFlow = class(TFlow<TFluentFlow>)
  protected
    function GetThis: TFluentFlow; override;
  public
    class function new: TFluentFlow; override;
  end;

implementation

{ TFlow<T> }

function TFlow<T>.GetCallBack(this: CallBack<T>): T;
begin
  Result := Self.This;
  This(Self.This);
end;

{ TFluentFlow }

function TFluentFlow.GetThis: TFluentFlow;
begin
  Result := Self;
end;

class function TFluentFlow.new: TFluentFlow;
begin
  Result := TFluentFlow.Create;
end;


end.
