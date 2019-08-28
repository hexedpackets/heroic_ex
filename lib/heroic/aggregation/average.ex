defmodule Heroic.Aggregation.Average do
  use TypedStruct

  typedstruct enforce: true do
    field :type, String.t(), default: "average"
    field :sampling, Heroic.Aggregation.Sampling.t()
  end
end
