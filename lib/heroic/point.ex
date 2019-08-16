defmodule Heroic.Point do
  use TypedStruct

  @derive [Poison.Encoder]

  typedstruct enforce: true do
    field :timestamp, pos_integer()
    field :value, float()
  end
end
