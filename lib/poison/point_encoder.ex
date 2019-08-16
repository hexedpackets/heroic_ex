defimpl Poison.Encoder, for: Heroic.Point do
  def encode(%{timestamp: timestamp, value: value}, options) do
    [timestamp, value]
    |> Poison.Encoder.List.encode(options)
  end
end
