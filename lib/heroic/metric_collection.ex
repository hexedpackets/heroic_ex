defmodule Heroic.MetricCollection do
  use TypedStruct

  @derive [Poison.Encoder]

  typedstruct enforce: true do
    field :type, String.t(), default: "points"
    field :data, list(Heroic.Point.t())
  end
end
