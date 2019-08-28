defmodule Heroic.Aggregation do
  alias Heroic.Aggregation.Sampling

  @doc """
  Creates an aggregation that collapses all results into a single series.
  """
  def collapse(aggregation), do: %Heroic.Aggregation.Group{of: [], each: aggregation}

  @doc """
  Aggregation that averages over the given samples.
  """
  def average(sampling = %Sampling{}), do: %Heroic.Aggregation.Average{sampling: sampling}

  @doc """
  Create the sampling definition to be used within an aggregation.
  """
  def sampling(value, unit), do: %Sampling{unit: unit, value: value}
end
