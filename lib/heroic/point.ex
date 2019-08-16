defmodule Heroic.Point do
  use TypedStruct

  typedstruct enforce: true do
    field :timestamp, pos_integer()
    field :value, float()
  end
end
