defmodule Heroic.Range.Relative do
  use TypedStruct

  @derive [Poison.Encoder]

  typedstruct enforce: true do
    field :type, String.t(), default: "relative"
    field :unit, String.t()
    field :value, float()
  end
end
