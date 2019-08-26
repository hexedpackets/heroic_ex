defmodule Heroic do
  use HTTPoison.Base

  @moduledoc """
  Client for interacting with the Heroic API. Documentation
  for the API can be found at https://spotify.github.io/heroic/docs/api
  """

  @headers %{"Content-Type" => "application/json"}

  def process_request_url(url) do
    endpoint() <> url
  end

  def process_response_body(body) do
    body |> Poison.decode!
  end

  def endpoint(), do: Application.get_env(:heroic, :endpoint, "http://localhost:8080")

  @doc """
  Query for the status of an instance.
  """
  def status(), do: get!("/status")

  @doc """
  Used for writing data into heroic directly.
  """
  def write(data = %Heroic.MetricCollection{}, series = %Heroic.Series{}) do
    body = %{series: series, data: data} |> Poison.encode!
    post!("/write", body, @headers)
  end

  @doc """
  Query and aggregate metrics.
  """
  def query_metrics(range, filter, aggregation, group_by) do
    body = %{
      range: range,
      filter: filter,
      aggregation: aggregation,
      groupBy: group_by
    } |> Poison.encode!
    post!("/query/metrics", body, @headers)
  end
end
