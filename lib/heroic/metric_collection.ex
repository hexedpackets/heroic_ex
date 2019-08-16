defmodule Heroic.MetricCollection do
  use TypedStruct

  typedstruct enforce: true do
    field :type, String.t(), default: "points"
    field :data, list(Heroic.Point.t())
  end
end
