defmodule Heroic.Range.Relative do
  use TypedStruct

  typedstruct enforce: true do
    field :type, String.t(), default: "relative"
    field :unit, String.t()
    field :value, float()
  end
end
