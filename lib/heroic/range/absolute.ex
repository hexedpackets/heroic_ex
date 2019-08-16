defmodule Heroic.Range.Absolute do
  use TypedStruct

  typedstruct enforce: true do
    field :type, String.t(), default: "absolute"
    field :start, pos_integer()
    field :end, pos_integer()
  end
end
