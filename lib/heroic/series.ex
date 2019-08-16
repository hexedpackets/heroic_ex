defmodule Heroic.Series do
  use TypedStruct

  typedstruct enforce: true do
    field :key, String.t()
    field :tags, %{optional(String.t()) => String.t()}
  end
end
