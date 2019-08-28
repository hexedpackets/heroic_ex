defmodule Heroic.Aggregation.Sampling do
  use TypedStruct

  typedstruct enforce: true do
    field :unit, String.t()
    field :value, pos_integer()
  end
end
