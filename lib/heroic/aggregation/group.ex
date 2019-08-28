defmodule Heroic.Aggregation.Group do
  use TypedStruct

  typedstruct enforce: true do
    field :type, String.t(), default: "group"
    field :of, [String.t()]
    field :each, any()
  end
end
